# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ParseCommand.Variant19bb0c4bfcdc2282c8caeecac28e03a346bb6063dc32a4dd34348ff727c00dfa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d3c71c46e9aacc237021ab31e9a9b4ff6e58e2dd` · SHA-256 `19bb0c4bfcdc2282c8caeecac28e03a346bb6063dc32a4dd34348ff727c00dfa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2024 Matthew Robert Ballard. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Matthew Robert Ballard, Damiano Testa
-/

import Lean.Elab.Command
import Mathlib.Init

/-!
# `#parse` -- a command to parse text and log outputs
-/

namespace Mathlib.GuardExceptions

open Lean Parser Elab Command
/-- `captureException env s input` uses the given `Environment` `env` to parse the `String` `input`
using the `ParserFn` `s`.

This is a variation of `Lean.Parser.runParserCategory`.
-/
def captureException (env : Environment) (s : ParserFn) (input : String) : Except String Syntax :=
  let ictx := mkInputContext input "<input>"
  let s := s.run ictx { env, options := {} } (getTokenTable env) (mkParserState input)
  if !s.allErrors.isEmpty then
    .error (s.toErrorMsg ictx)
  else if ictx.input.atEnd s.pos then
    .ok s.stxStack.back
  else
    .error ((s.mkError "end of input").toErrorMsg ictx)

/-- `#parse parserFnId => str` allows to capture parsing exceptions.
`parserFnId` is the identifier of a `ParserFn` and `str` is the string that
`parserFnId` should parse.

If the parse is successful, then the output is logged;
if the parse is successful, then the output is captured in an exception.

In either case, `#guard_msgs` can then be used to capture the resulting parsing errors.

For instance, `#parse` can be used as follows
```lean
/-- error: <input>:1:3: Stacks tags must be exactly 4 characters -/
#guard_msgs in #parse Mathlib.Stacks.stacksTagFn => "A05"
```
-/
syntax (name := parseCmd) "#parse " ident " => " str : command

@[inherit_doc parseCmd]
elab_rules : command
  | `(command| #parse $parserFnId => $str) => do
    elabCommand <| ← `(command|
      run_cmd do
        let exc ← Lean.ofExcept <| captureException (← getEnv) $parserFnId $str
        logInfo $str)

end Mathlib.GuardExceptions
````
