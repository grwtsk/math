# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variant81e806d2f5cf642e41b15bcc02fd6936020fb915ac041104a5f9f28d56d3d7e0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `95feaf45e7331a5745c37f99eecb636841c6875a` · SHA-256 `81e806d2f5cf642e41b15bcc02fd6936020fb915ac041104a5f9f28d56d3d7e0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Sebastian Ullrich
-/
module

prelude
public import Lean.Parser.Term
public import Lean.Parser.Tactic.Doc
public import Std.Tactic.Do.Syntax

public section

namespace Lean
namespace Parser
namespace Tactic

builtin_initialize
  register_parser_alias tacticSeq
  register_parser_alias tacticSeqIndentGt

-- Don't make this a docstring, because it shows up at unfortunate places
-- in hovers and completion:
/-
This is a fallback tactic parser for any identifier which exists only
to improve syntax error messages.
```
example : True := by foo -- unknown tactic
```
-/
@[builtin_tactic_parser] def «unknown»    := leading_parser
  withPosition (ident >> errorAtSavedPos "unknown tactic" true)

@[builtin_tactic_parser] def nestedTactic := tacticSeqBracketed

def matchRhs  := Term.hole <|> Term.syntheticHole <|> tacticSeq
def matchAlts := Term.matchAlts (rhsParser := matchRhs)

/-- `match` performs case analysis on one or more expressions.
See [Induction and Recursion][tpil4].
The syntax for the `match` tactic is the same as term-mode `match`, except that
the match arms are tactics instead of expressions.
```
example (n : Nat) : n = n := by
  match n with
  | 0 => rfl
  | i+1 => simp
```

[tpil4]: https://lean-lang.org/theorem_proving_in_lean4/induction_and_recursion.html
-/
@[builtin_tactic_parser] def «match» := leading_parser:leadPrec
  "match " >> optional Term.generalizingParam >>
  optional Term.motive >> sepBy1 Term.matchDiscr ", " >>
  " with " >> ppDedent matchAlts

@[builtin_tactic_parser, tactic_alt intro] def introMatch := leading_parser
  nonReservedSymbol "intro" >> matchAlts

builtin_initialize
  register_parser_alias "matchRhsTacticSeq" matchRhs

end Tactic
end Parser
end Lean
````
