-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PullbackObjIso.Variant57c8c26838168cdadf47f21ffd884e21d071f71d25d7c3cd0ed1b86118f7a979","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"57c8c26838168cdadf47f21ffd884e21d071f71d25d7c3cd0ed1b86118f7a979","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.PullbackObjIso.Variant57c8c26838168cdadf47f21ffd884e21d071f71d25d7c3cd0ed1b86118f7a979","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"57c8c26838168cdadf47f21ffd884e21d071f71d25d7c3cd0ed1b86118f7a979","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Limits/FunctorCategory/Shapes/Pullbacks.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Limits.FunctorCategory.Basic
import Mathlib.CategoryTheory.Limits.Shapes.Pullback.HasPullback

/-!
# Pullbacks in functor categories

We prove the isomorphism `(pullback f g).obj d ≅ pullback (f.app d) (g.app d)`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PullbackObjIso.Variant57c8c26838168cdadf47f21ffd884e21d071f71d25d7c3cd0ed1b86118f7a979

universe v₁ v₂ u₁ u₂

namespace CategoryTheory.Limits

variable {C : Type u₁} [Category.{v₁} C] {D : Type u₂} [Category.{v₂} D] {F G H : D ⥤ C}

section Pullback

variable [HasPullbacks C]

/-- Evaluating a pullback amounts to taking the pullback of the evaluations. -/
noncomputable def pullbackObjIso (f : F ⟶ H) (g : G ⟶ H) (d : D) :
    (pullback f g).obj d ≅ pullback (f.app d) (g.app d) :=
  limitObjIsoLimitCompEvaluation (cospan f g) d ≪≫ HasLimit.isoOfNatIso (diagramIsoCospan _)

@[reassoc (attr := simp)]
theorem pullbackObjIso_hom_comp_fst (f : F ⟶ H) (g : G ⟶ H) (d : D) :
    (pullbackObjIso f g d).hom ≫ pullback.fst (f.app d) (g.app d) = (pullback.fst f g).app d := by
  simp [pullbackObjIso]

@[reassoc (attr := simp)]
theorem pullbackObjIso_hom_comp_snd (f : F ⟶ H) (g : G ⟶ H) (d : D) :
    (pullbackObjIso f g d).hom ≫ pullback.snd (f.app d) (g.app d) = (pullback.snd f g).app d := by
  simp [pullbackObjIso]

@[reassoc (attr := simp)]
theorem pullbackObjIso_inv_comp_fst (f : F ⟶ H) (g : G ⟶ H) (d : D) :
    (pullbackObjIso f g d).inv ≫ (pullback.fst f g).app d = pullback.fst (f.app d) (g.app d) := by
  simp [pullbackObjIso]

@[reassoc (attr := simp)]
theorem pullbackObjIso_inv_comp_snd (f : F ⟶ H) (g : G ⟶ H) (d : D) :
    (pullbackObjIso f g d).inv ≫ (pullback.snd f g).app d = pullback.snd (f.app d) (g.app d) := by
  simp [pullbackObjIso]

end Pullback

section Pushout

variable [HasPushouts C]

/-- Evaluating a pushout amounts to taking the pushout of the evaluations. -/
noncomputable def pushoutObjIso (f : F ⟶ G) (g : F ⟶ H) (d : D) :
    (pushout f g).obj d ≅ pushout (f.app d) (g.app d) :=
  colimitObjIsoColimitCompEvaluation (span f g) d ≪≫ HasColimit.isoOfNatIso (diagramIsoSpan _)

@[reassoc (attr := simp)]
theorem inl_comp_pushoutObjIso_hom (f : F ⟶ G) (g : F ⟶ H) (d : D) :
    (pushout.inl f g).app d ≫ (pushoutObjIso f g d).hom = pushout.inl (f.app d) (g.app d) := by
  simp [pushoutObjIso]

@[reassoc (attr := simp)]
theorem inr_comp_pushoutObjIso_hom (f : F ⟶ G) (g : F ⟶ H) (d : D) :
    (pushout.inr f g).app d ≫ (pushoutObjIso f g d).hom = pushout.inr (f.app d) (g.app d) := by
  simp [pushoutObjIso]

@[reassoc (attr := simp)]
theorem inl_comp_pushoutObjIso_inv (f : F ⟶ G) (g : F ⟶ H) (d : D) :
    pushout.inl (f.app d) (g.app d) ≫ (pushoutObjIso f g d).inv = (pushout.inl f g).app d := by
  simp [pushoutObjIso]

@[reassoc (attr := simp)]
theorem inr_comp_pushoutObjIso_inv (f : F ⟶ G) (g : F ⟶ H) (d : D) :
    pushout.inr (f.app d) (g.app d) ≫ (pushoutObjIso f g d).inv = (pushout.inr f g).app d := by
  simp [pushoutObjIso]

end Pushout

end CategoryTheory.Limits
