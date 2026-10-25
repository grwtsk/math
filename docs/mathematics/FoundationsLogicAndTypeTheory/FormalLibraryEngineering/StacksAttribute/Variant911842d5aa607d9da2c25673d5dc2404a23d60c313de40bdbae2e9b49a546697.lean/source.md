# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StacksAttribute.Variant911842d5aa607d9da2c25673d5dc2404a23d60c313de40bdbae2e9b49a546697

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6fbee7f267bc2900af7af923f9d3667524f36157` · SHA-256 `911842d5aa607d9da2c25673d5dc2404a23d60c313de40bdbae2e9b49a546697`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.StacksAttribute
import Mathlib.Util.ParseCommand

/-- info: No tags found. -/
#guard_msgs in
#stacks_tags

namespace X

@[stacks A04Q "A comment", kerodon B15R "Also a comment"]
theorem tagged : True := .intro

end X

/--
info: some ([Stacks Tag A04Q](https://stacks.math.columbia.edu/tag/A04Q) (A comment)

[Kerodon Tag B15R](https://kerodon.net/tag/B15R) (Also a comment))
-/
#guard_msgs in
run_cmd
  Lean.logInfo m!"{← Lean.findDocString? (← Lean.getEnv) `X.tagged}"

#guard_msgs in
@[stacks 0BR2, kerodon 0X12]
example : True := .intro

@[stacks 0BR2, stacks 0X14 "I can also have a comment"]
example : True := .intro

@[stacks 0X14 "I can also have a comment"]
example : True := .intro

@[stacks 0BR2, stacks 0X14 "I can also have a comment"]
example : True := .intro

@[stacks 0X14 "I can also have a comment"]
example : True := .intro

/-- error: <input>:1:3: Stacks tags must be exactly 4 characters -/
#guard_msgs in #parse Mathlib.StacksTag.stacksTagFn => "A05"

/-- error: <input>:1:4: Stacks tags must consist only of digits and uppercase letters. -/
#guard_msgs in #parse Mathlib.StacksTag.stacksTagFn => "A05b"

/-- info: 0BD5 -/
#guard_msgs in #parse Mathlib.StacksTag.stacksTagFn => "0BD5"

/--
info:
[Stacks Tag A04Q](https://stacks.math.columbia.edu/tag/A04Q) corresponds to declaration 'X.tagged'. (A comment)
-/
#guard_msgs in
#stacks_tags

/--
info:
[Stacks Tag A04Q](https://stacks.math.columbia.edu/tag/A04Q) corresponds to declaration 'X.tagged'. (A comment)
True
-/
#guard_msgs in
#stacks_tags!

/--
info:
[Stacks Tag B15R](https://kerodon.net/tag/B15R) corresponds to declaration 'X.tagged'. (Also a comment)
True
-/
#guard_msgs in
#kerodon_tags!

section errors

open Lean Parser Mathlib.StacksTag

def captureException (env : Environment) (s : ParserFn) (input : String) : Except String Syntax :=
  let ictx := mkInputContext input "<input>"
  let s := s.run ictx { env, options := {} } (getTokenTable env) (mkParserState input)
  if !s.allErrors.isEmpty then
    .error (s.toErrorMsg ictx)
  else if ictx.input.atEnd s.pos then
    .ok s.stxStack.back
  else
    .error ((s.mkError "end of input").toErrorMsg ictx)

/-- error: <input>:1:3: Stacks tags must be exactly 4 characters -/
#guard_msgs in
run_cmd do
  let _ ← Lean.ofExcept <| captureException (← getEnv) stacksTagFn "A05"

/-- error: <input>:1:4: Stacks tags must consist only of digits and uppercase letters. -/
#guard_msgs in
run_cmd do
  let _ ← Lean.ofExcept <| captureException (← getEnv) stacksTagFn "aaaa"

/-- error: <input>:1:0: expected stacks tag -/
#guard_msgs in
run_cmd do
  let env ← getEnv
  let _ ← Lean.ofExcept <| captureException env stacksTagFn "\"A04Q\""

end errors
```
