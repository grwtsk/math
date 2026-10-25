# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PiNotation.Variantaad6de5ebe094efcf4568fbdcdfe623d787365a3ee63517d89e2f5164e4a9b87

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `be0b1564f0f73997a483ec426db154803d87c6a5` · SHA-256 `484186fdd0b4bf9fbc7abf9601412505b82a350f3ea852f987c7235e7531afde`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PiNotation.Variant1fcc44c4de99e8ba82d97d64faa49dda7bd6112ed5a23c0356e5fa4cf7539fa8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1fcc44c4de99e8ba82d97d64faa49dda7bd6112ed5a23c0356e5fa4cf7539fa8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.PiNotation.Variant1fcc44c4de99e8ba82d97d64faa49dda7bd6112ed5a23c0356e5fa4cf7539fa8","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"1fcc44c4de99e8ba82d97d64faa49dda7bd6112ed5a23c0356e5fa4cf7539fa8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Util/PiNotation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PiNotation.Variant1fcc44c4de99e8ba82d97d64faa49dda7bd6112ed5a23c0356e5fa4cf7539fa8

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
