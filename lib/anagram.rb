# Your code goes here!
class Anagram
  def initialize(word)
    @word = word
  end

  def tokenize(words)
    possible_matches = words.map { |word| word.split('') }
    sum = possible_matches.map { |match| match.map { |letter| letter.ord }.sum  }
    sum
  end

  def match(words)
    sums = tokenize(words)
    sum = tokenize(@word.split('')).sum
    index = []
    sums.each.with_index do |n, i|
      if n == sum
        index << i
      end
    end

    if index.empty?
      []
    elsif index.size == 1
      [words[*index]]
    else
      index.map {|i| words[i]}
    end
  end
end
