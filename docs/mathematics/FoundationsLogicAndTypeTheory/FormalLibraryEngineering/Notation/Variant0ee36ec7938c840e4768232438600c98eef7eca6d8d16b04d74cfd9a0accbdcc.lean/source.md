# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Notation.Variant0ee36ec7938c840e4768232438600c98eef7eca6d8d16b04d74cfd9a0accbdcc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `79ddc691197c644df4f0e84553aa3f0391410ec3` · SHA-256 `c6baefe098ef161e001cebf261591230af9f2976d62c1f065f681dc944ba3656`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DelabSetImageSubtype.Variant8369098a4daf415a8029253c2f9e20b4c0c3026be56ebd5ec7835238b1b110ea","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8369098a4daf415a8029253c2f9e20b4c0c3026be56ebd5ec7835238b1b110ea","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.DelabSetImageSubtype.Variant8369098a4daf415a8029253c2f9e20b4c0c3026be56ebd5ec7835238b1b110ea","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"8369098a4daf415a8029253c2f9e20b4c0c3026be56ebd5ec7835238b1b110ea","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Set/Notation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Peter Nelson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Peter Nelson
-/
import Mathlib.Util.Notation3
import Mathlib.Lean.Expr.ExtraRecognizers

/-!
# Set Notation

This file defines two pieces of scoped notation related to sets and subtypes.

The first is a coercion; for each `α : Type*` and `s : Set α`, `(↑) : Set s → Set α`
is the function coercing `t : Set s` into a set in the ambient type; i.e. `↑t = Subtype.val '' t`.

The second, for `s t : Set α`, is the notation `s ↓∩ t`, which denotes the intersection
of `s` and `t` as a set in `Set s`.

These notations are developed further in `Data.Set.Functor` and `Data.Set.Subset` respectively.
They are defined here separately so that this file can be added as an exception to the shake linter
and can thus be imported without a linting false positive when only the notation is desired.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DelabSetImageSubtype.Variant8369098a4daf415a8029253c2f9e20b4c0c3026be56ebd5ec7835238b1b110ea

namespace Set.Notation
/--
Given two sets `A` and `B`, `A ↓∩ B` denotes the intersection of `A` and `B` as a set in `Set A`.

The notation is short for `((↑) ⁻¹' B : Set A)`, while giving hints to the elaborator
that both `A` and `B` are terms of `Set α` for the same `α`.
This set is the same as `{x : ↑A | ↑x ∈ B}`.
-/
scoped notation3 A:67 " ↓∩ " B:67 => (Subtype.val ⁻¹' (B : type_of% A) : Set (A : Set _))

/-- Coercion using `(Subtype.val '' ·)` -/
instance {α : Type*} {s : Set α} : CoeHead (Set s) (Set α) := ⟨fun t => (Subtype.val '' t)⟩

open Lean PrettyPrinter Delaborator SubExpr in
/--
If the `Set.Notation` namespace is open, sets of a subtype coerced to the ambient type are
represented with `↑`.
-/
@[scoped delab app.Set.image]
def delab_set_image_subtype : Delab := whenPPOption getPPCoercions do
  let #[α, _, f, _] := (← getExpr).getAppArgs | failure
  guard <| f.isAppOfArity ``Subtype.val 2
  let some _ := α.coeTypeSet? | failure
  let e ← withAppArg delab
  `(↑$e)

end Set.Notation
```
