# your code goes here
class Person
attr_reader :name, :happiness, :hygiene
attr_accessor :bank_account #bank_account will need to be changed later so it is part of getter and setter method (use attr_accessor)

    def initialize(name) #no need to include bank_account as it will initialize with an attribute value of $25
        @name = name
        @bank_account = 25
        @happiness =  8
        @hygiene = 8
    end

    #write method to allow person to change their happiness within the range of 0 to 10
    def happiness=(num)
        @happiness = if num > 10
                        10
                    elsif num <0
                        0
                    else
                        num
                    end
    end

    def hygiene=(num)
        @hygiene = if num > 10
                        10
                    elsif num <0
                        0
                    else
                        num
                    end
    end

    #method to test true/false with ? after the method happy. This is a non-attribute instance methods (not part of initialize and uses self instead)
    def happy?
        self.happiness > 7
    end
    def clean?
        self.hygiene > 7
    end

    #method for get_paid to accept an amount to increment on the original amount
    def get_paid(deposit)
        @bank_account += deposit
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end
    
    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end

        # alternative way of writing start_conversation method with .each method on self and friend as well as case/when conditional statement
        # def start_conversation(friend, topic)
        #     case topic 
        #     when "politics"
        #       [self, friend].each { |person| person.happiness -= 2 }
        #       "blah blah partisan blah lobbyist"
        #     when "weather"
        #       [self, friend].each { |person| person.happiness += 1 }
        #       "blah blah sun blah rain"
        #     else
        #       "blah blah blah blah blah"
        #     end
        #   end

    end

end #end of class