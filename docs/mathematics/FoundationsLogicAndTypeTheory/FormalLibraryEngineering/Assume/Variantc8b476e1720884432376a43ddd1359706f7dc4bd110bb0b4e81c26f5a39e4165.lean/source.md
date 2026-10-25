# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Assume.Variantc8b476e1720884432376a43ddd1359706f7dc4bd110bb0b4e81c26f5a39e4165

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b2d2a7f1db647333d05383001e4098168365eba4` · SHA-256 `2c99825e6f3bdcf473301a3c1244e6b17277f800eb47e3225bda9a0fecd6b55a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceUnit.Variant2398ebff266200305d9bedcbd233ce112795c8749d4297f8b43029ac751a3fcc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2398ebff266200305d9bedcbd233ce112795c8749d4297f8b43029ac751a3fcc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.SourceUnit.Variant2398ebff266200305d9bedcbd233ce112795c8749d4297f8b43029ac751a3fcc","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"2398ebff266200305d9bedcbd233ce112795c8749d4297f8b43029ac751a3fcc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Tactic/Assume.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn
-/
module

public import Mathlib.Init

/-!
# The `assume` tactic
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceUnit.Variant2398ebff266200305d9bedcbd233ce112795c8749d4297f8b43029ac751a3fcc

/-- `assume e` introduces a new (unnamed) hypothesis of type `e`.
It is equivalent to `intro (_ : e)`.

The argument `e` is required to be a proposition, definitionally equal to the hypothesis
(or domain of a dependent function) in the goal. The introduced hypothesis will have
the exact form the user wrote.

Example:

```lean
example {α} (f : α → α) (h : Function.Injective f) : ∀ x y, f x = f y → x = y := by
  intro x y
  assume f x = f y
  apply h
  assumption
```
-/
syntax (name := assume) &"assume " (ppSpace colGt term)? : tactic

open Lean Meta Elab Tactic
elab_rules : tactic
  | `(tactic| assume $[$t?:term]?) => do
    let some t := t?
      | throwError "Tactic 'assume' failed: No hypotheses given."
    withMainContext do
      let e ← elabTerm t (some (.sort .zero))
      let eType ← inferType e
      let .true ← isDefEq eType (.sort .zero) |
        throwErrorAt t "Tactic 'assume' failed: Given type{indentExpr e}\nis not a proposition."
      let tgt ← getMainTarget
      let .forallE _ b _ _ ← whnf tgt |
        throwErrorAt t "Tactic 'assume' failed: Goal{indentExpr tgt}\nis not an implication."
      let .true ← isDefEq b e |
        throwErrorAt t "Tactic 'assume' failed: Given type{indentExpr e}\ndoes not match the \
        type{indentExpr b}\nof the hypothesis in the goal."
      evalTactic (← `(tactic | intro (_ : $t)))
````
