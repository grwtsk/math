-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorReflectsPrecoherent.Variant5326783d8c1bcc9b0f13a559c97e7fd2dd463d9659bfc10afc0ad7dac472e119","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5326783d8c1bcc9b0f13a559c97e7fd2dd463d9659bfc10afc0ad7dac472e119","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.FunctorReflectsPrecoherent.Variant5326783d8c1bcc9b0f13a559c97e7fd2dd463d9659bfc10afc0ad7dac472e119","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"5326783d8c1bcc9b0f13a559c97e7fd2dd463d9659bfc10afc0ad7dac472e119","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Sites/Coherent/ReflectsPrecoherent.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.CategoryTheory.EffectiveEpi.Enough
import Mathlib.CategoryTheory.EffectiveEpi.Preserves
import Mathlib.CategoryTheory.Sites.Coherent.CoherentTopology
/-!

# Reflecting the property of being precoherent

We prove that given a fully faithful functor `F : C ⥤ D` which preserves and reflects finite
effective epimorphic families, such that for every object `X` of `D` there exists an object `W` of
`C` with an effective epi `π : F.obj W ⟶ X`, the category `C` is `Precoherent` whenever `D` is.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorReflectsPrecoherent.Variant5326783d8c1bcc9b0f13a559c97e7fd2dd463d9659bfc10afc0ad7dac472e119

namespace CategoryTheory

variable {C D : Type*} [Category C] [Category D] (F : C ⥤ D)
  [F.PreservesFiniteEffectiveEpiFamilies] [F.ReflectsFiniteEffectiveEpiFamilies]
  [F.EffectivelyEnough]
  [Precoherent D] [F.Full] [F.Faithful]

include F in
lemma Functor.reflects_precoherent : Precoherent C where
  pullback {B₁ B₂} f α _ X₁ π₁ _ := by
    obtain ⟨β, _, Y₂, τ₂, H, i, ι, hh⟩ := Precoherent.pullback (F.map f) _ _
      (fun a ↦ F.map (π₁ a)) inferInstance
    refine ⟨β, inferInstance, _, fun b ↦ F.preimage (F.effectiveEpiOver (Y₂ b) ≫ τ₂ b),
      F.finite_effectiveEpiFamily_of_map _ _ ?_,
        ⟨i, fun b ↦ F.preimage (F.effectiveEpiOver (Y₂ b) ≫ ι b), ?_⟩⟩
    · simp only [Functor.map_preimage]
      infer_instance
    · intro b
      apply F.map_injective
      simp [hh b]

end CategoryTheory
