# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.OfColimitCommutesFiniteLimit.Variantf31b53244da406a72d0556dca0b480c861e0c8d1f2781a6ebb9de5d62a3e3a52

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c8c8098c82059c82ab99a51b1bc4ae3f31c0832` · SHA-256 `415511a288ae35893311e1c8ecc7891c8abd9bf385b07955a8a0841d41f42d8d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsFilteredOfNonemptyLimitColimitToColimitLimit.Variantb2e36df51baa3f96571adc0fd2e2e8075744e49188e0cc8579f272da7bfcc67a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b2e36df51baa3f96571adc0fd2e2e8075744e49188e0cc8579f272da7bfcc67a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.IsFilteredOfNonemptyLimitColimitToColimitLimit.Variantb2e36df51baa3f96571adc0fd2e2e8075744e49188e0cc8579f272da7bfcc67a","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"b2e36df51baa3f96571adc0fd2e2e8075744e49188e0cc8579f272da7bfcc67a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Filtered/OfColimitCommutesFiniteLimit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Limits.Types.Colimits
import Mathlib.CategoryTheory.Limits.Filtered
import Mathlib.CategoryTheory.Limits.Yoneda

/-!
# If colimits of shape `K` commute with finite limits, then `K` is filtered.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsFilteredOfNonemptyLimitColimitToColimitLimit.Variantb2e36df51baa3f96571adc0fd2e2e8075744e49188e0cc8579f272da7bfcc67a

universe v u

namespace CategoryTheory

variable {K : Type v} [SmallCategory K]

open Limits

/-- A converse to `colimitLimitIso`: if colimits of shape `K` commute with finite
limits, then `K` is filtered. -/
theorem isFiltered_of_nonempty_limit_colimit_to_colimit_limit
    (h : ∀ {J : Type v} [SmallCategory J] [FinCategory J] (F : J ⥤ K ⥤ Type v),
      Nonempty (limit (colimit F.flip) ⟶ colimit (limit F))) : IsFiltered K := by
  refine IsFiltered.iff_nonempty_limit.2 (fun {J} _ _ F => ?_)
  suffices Nonempty (limit (colimit (F.op ⋙ coyoneda).flip)) by
    obtain ⟨X, y, -⟩ := Types.jointly_surjective' (this.map (h (F.op ⋙ coyoneda)).some).some
    exact ⟨X, ⟨(limitObjIsoLimitCompEvaluation (F.op ⋙ coyoneda) _).hom y⟩⟩
  let _ (j : Jᵒᵖ) : Unique ((colimit (F.op ⋙ coyoneda).flip).obj j) :=
    ((colimitObjIsoColimitCompEvaluation (F.op ⋙ coyoneda).flip _ ≪≫
      Coyoneda.colimitCoyonedaIso _)).toEquiv.unique
  exact ⟨Types.Limit.mk (colimit (F.op ⋙ coyoneda).flip) (fun j => default) (by subsingleton)⟩

end CategoryTheory
```
