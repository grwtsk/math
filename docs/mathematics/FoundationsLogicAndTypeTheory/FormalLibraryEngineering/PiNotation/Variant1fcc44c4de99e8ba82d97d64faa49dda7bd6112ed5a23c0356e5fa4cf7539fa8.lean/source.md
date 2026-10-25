# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PiNotation.Variant1fcc44c4de99e8ba82d97d64faa49dda7bd6112ed5a23c0356e5fa4cf7539fa8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `18354afc9d140143dfd5b5be335b13c4c3b153df` · SHA-256 `1fcc44c4de99e8ba82d97d64faa49dda7bd6112ed5a23c0356e5fa4cf7539fa8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Kyle Miller. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
import Std.Util.ExtendedBinder

/-! # Pi type notation

Provides the `Π x : α, β x` notation as an alternative to Lean 4's built-in
`(x : α) → β x` notation. To get all non-`∀` pi types to pretty print this way
then do `open scoped PiNotation`.

The notation also accepts extended binders, like `Π x ∈ s, β x` for `Π x, x ∈ s → β x`.
-/

namespace PiNotation
open Lean.Parser Term
open Lean.PrettyPrinter.Delaborator

/-- Dependent function type (a "pi type"). The notation `Π x : α, β x` can
also be written as `(x : α) → β x`. -/
-- A direct copy of forall notation but with `Π`/`Pi` instead of `∀`/`Forall`.
@[term_parser]
def piNotation := leading_parser:leadPrec
  unicodeSymbol "Π" "Pi" >>
  many1 (ppSpace >> (binderIdent <|> bracketedBinder)) >>
  optType >> ", " >> termParser

/-- Dependent function type (a "pi type"). The notation `Π x ∈ s, β x` is
short for `Π x, x ∈ s → β x`. -/
-- A copy of forall notation from `Std.Util.ExtendedBinder` for pi notation
syntax "Π " binderIdent binderPred ", " term : term

macro_rules
  | `(Π $x:ident $pred:binderPred, $p) => `(Π $x:ident, satisfies_binder_pred% $x $pred → $p)
  | `(Π _ $pred:binderPred, $p) => `(Π x, satisfies_binder_pred% x $pred → $p)

/-- Since pi notation and forall notation are interchangeable, we can
parse it by simply using the pre-existing forall parser. -/
@[macro PiNotation.piNotation] def replacePiNotation : Lean.Macro
  | .node info _ args => return .node info ``Lean.Parser.Term.forall args
  | _ => Lean.Macro.throwUnsupported

/-- Override the Lean 4 pi notation delaborator with one that uses `Π`.
Note that this takes advantage of the fact that `(x : α) → p x` notation is
never used for propositions, so we can match on this result and rewrite it. -/
@[scoped delab forallE]
def delabPi : Delab := whenPPOption Lean.getPPNotation do
  let stx ← delabForall
  -- Replacements
  let stx : Term ←
    match stx with
    | `($group:bracketedBinder → $body) => `(Π $group:bracketedBinder, $body)
    | _ => pure stx
  -- Merging
  match stx with
  | `(Π $group, Π $groups*, $body) => `(Π $group $groups*, $body)
  | _ => pure stx

end PiNotation
```
