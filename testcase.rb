####################################################################################
# WATIR SCRIPT FOR BASIC TEST SCRIPTS
# @author Telma Frege <t@telmafrege.com>
# June 2013
# Parent class for all other scripts.
####################################################################################

class Testcase
    def initialize(browser, log_file)
        @browser = browser
        @log_file = log_file
    end
    
    def phpFatalErrorsFound()
        if @browser.text.include? "Fatal Error"
            @log_file.write(Time.now.getutc.to_s + " | " + __FILE__ +" | "+__LINE__+" | "+__callee__.to_s+" | [ ERR] **** PHP Fatal error found!\n")
        end
    end
	
	def writeLog(filename, line, method, message)
    @log_file.write(Time.now.getutc.to_s + " | " + filename +" | "+ line +" | "+ method +" | " + message + "\n")    
	end
end
