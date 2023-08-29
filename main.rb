require_relative './quiz/question_data'
require_relative './quiz/engine'

module ConsoleApplication
    class Application
        def initialize
            @testname = "math-grade-5"
        end

        def run
            question_data = QuestionData.new("#{__dir__}/quiz/yml/#{@testname}", ".yml")
            engine = Engine.new(question_data.collection)

            engine.run
        end
    end
end

app = ConsoleApplication::Application.new

app.run