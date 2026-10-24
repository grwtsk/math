# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.OfAdjunction.Variant25e4a6482002f3dc06f0ef9646b09b133c4c293126445c9b9c337a07c09baa72

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d2cdc48a01abb69e4bfda627a7b5775badc41ded` · SHA-256 `34677c4616d2647ceb682180cca89c3c48e5cf120dcf819c55d0cc456ac5d074`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasLeftCalculusOfFractions.Variant762655fc35c8e9253f77d9b18a2484538f6edc8976ff02aebd9015a7803b1d06","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"762655fc35c8e9253f77d9b18a2484538f6edc8976ff02aebd9015a7803b1d06","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.HasLeftCalculusOfFractions.Variant762655fc35c8e9253f77d9b18a2484538f6edc8976ff02aebd9015a7803b1d06","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"762655fc35c8e9253f77d9b18a2484538f6edc8976ff02aebd9015a7803b1d06","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Localization/CalculusOfFractions/OfAdjunction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Adjunction.Opposites
import Mathlib.CategoryTheory.Adjunction.FullyFaithful
import Mathlib.CategoryTheory.Localization.CalculusOfFractions

/-!
# The calculus of fractions deduced from an adjunction

If `G ⊣ F` is an adjunction, and `F` is fully faithful,
then there is a left calculus of fractions for
the inverse image by `G` of the class of isomorphisms.

(The dual statement is also obtained.)

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasLeftCalculusOfFractions.Variant762655fc35c8e9253f77d9b18a2484538f6edc8976ff02aebd9015a7803b1d06

namespace CategoryTheory

open MorphismProperty

namespace Adjunction

variable {C₁ C₂ : Type*} [Category C₁] [Category C₂]
  {G : C₁ ⥤ C₂} {F : C₂ ⥤ C₁} [F.Full] [F.Faithful]

lemma hasLeftCalculusOfFractions (adj : G ⊣ F) :
    ((isomorphisms C₂).inverseImage G).HasLeftCalculusOfFractions where
  exists_leftFraction X Y φ := by
    obtain ⟨W, s, _, f, rfl⟩ := φ.cases
    have : IsIso (G.map s) := by assumption
    exact ⟨{
      f := adj.unit.app X ≫ F.map (inv (G.map s)) ≫ F.map (G.map f)
      s := adj.unit.app Y
      hs := by
        simp only [inverseImage_iff, isomorphisms.iff]
        infer_instance }, by
      have := adj.unit.naturality s
      dsimp at this ⊢
      rw [reassoc_of% this, Functor.map_inv, IsIso.hom_inv_id_assoc, adj.unit_naturality]⟩
  ext X' X Y f₁ f₂ s _ h := by
    have : IsIso (G.map s) := by assumption
    refine ⟨_, adj.unit.app Y, ?_, ?_⟩
    · simp only [inverseImage_iff, isomorphisms.iff]
      infer_instance
    · rw [← adj.unit_naturality f₁, ← adj.unit_naturality f₂]
      congr 2
      rw [← cancel_epi (G.map s), ← G.map_comp, ← G.map_comp, h]

lemma hasRightCalculusOfFractions (adj : F ⊣ G) :
    ((isomorphisms C₂).inverseImage G).HasRightCalculusOfFractions := by
  suffices ((isomorphisms C₂).inverseImage G).op.HasLeftCalculusOfFractions from
    inferInstanceAs ((isomorphisms C₂).inverseImage G).op.unop.HasRightCalculusOfFractions
  simpa only [← isomorphisms_op] using adj.op.hasLeftCalculusOfFractions

end Adjunction

end CategoryTheory
```
