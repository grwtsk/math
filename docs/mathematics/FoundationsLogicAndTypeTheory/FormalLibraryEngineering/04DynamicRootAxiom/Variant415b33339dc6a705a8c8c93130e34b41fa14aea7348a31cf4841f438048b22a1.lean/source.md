# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.04DynamicRootAxiom.Variant415b33339dc6a705a8c8c93130e34b41fa14aea7348a31cf4841f438048b22a1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f6a064d1a90d043469e3ad090e597607301d8768` · SHA-256 `415b33339dc6a705a8c8c93130e34b41fa14aea7348a31cf4841f438048b22a1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS

namespace FCRS.TheoremTransfer.NegativeChecks

open Lean Parser Elab Command

/-!
Both declarations are parsed from strings, so the source lexer sees neither an
`axiom` token nor any of its currently prohibited environment-mutation tokens.
Root-qualified names also fall outside the exported-environment scan's `FCRS`
prefix filter.
-/
run_cmd do
  let parsed := Parser.runParserCategory (← getEnv) `command
    "axiom _root_.cycle4HiddenRoot : False"
  match parsed with
  | .ok commandSyntax => elabCommand commandSyntax
  | .error message => throwError message

run_cmd do
  let parsed := Parser.runParserCategory (← getEnv) `command
    "theorem _root_.cycle4DerivedFalse : False := cycle4HiddenRoot"
  match parsed with
  | .ok commandSyntax => elabCommand commandSyntax
  | .error message => throwError message

#check _root_.cycle4DerivedFalse
#print axioms _root_.cycle4DerivedFalse

end FCRS.TheoremTransfer.NegativeChecks
```
