require 'pry'
story = File.open("story.txt") 

word_array = story.readlines[0].split(" ")

new_words = {}

word_array.each do |word|
  if word.include?("((") && word.include?("))")
    word.delete!("(")
    word.delete!(")")
    clean_word = word.gsub("_", " ")
    puts "Please enter a #{clean_word}"
    #check the new_words array to see if clean_word already exists
    if new_words.has_key?(clean_word) == false
        clean_word.gsub("_"," ")
        clean_word.delete!("?")
        clean_word.delete!("!")
        clean_word.delete!(".")
        clean_word.delete!(",")
        new_words[clean_word] = gets.chomp
    end
  end
end

#start with the word_array 
#iterate over the array
#if a word has "((" - delete () and punctutation
    #see if that word matches a key in the new_words hash, if so, print out the value

sentence = ""
word_array.each do |word|
    if word.include?("_")
        word.delete!("(") 
        word.delete!(")")
        word.delete!("?")
        word.delete!("!")
        word.delete!(".")
        word.delete!(",")
        word.gsub!("_", " ")
        if new_words.has_key?(word)
            sentence << new_words[word]
            sentence << " "
        end
    else
        sentence << word
        sentence << " "
    end

end

puts sentence








