# Your code goes here!
class Anagram
    attr_accessor :word

    def initialize(word)
        @word = word
    end
    
   def match(anagram_array)
       array_match = []
       sorted_word = @word.split("").sort.join
       anagram_array.each do |array_word|
           sorted_anagram = array_word.split("").sort.join
           if sorted_anagram == sorted_word
               array_match << array_word
           end
       end
       array_match
    end
end

#Another more simpler way to get the matching anagram word is by using .select which returns 
#the words in array when the condition is true
#
#def match(anagram_array)
#    anagram_array.select do |w|
#        w.split("").sort == word.split("").sort
#    end
#end
