-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PreservesLimitFlipObj.Variantdeaec9e9b2c3c306efd39694dea944bcd8e93a26509abdc0c9ea0f628ebff8e0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"deaec9e9b2c3c306efd39694dea944bcd8e93a26509abdc0c9ea0f628ebff8e0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.PreservesLimitFlipObj.Variantdeaec9e9b2c3c306efd39694dea944bcd8e93a26509abdc0c9ea0f628ebff8e0","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"deaec9e9b2c3c306efd39694dea944bcd8e93a26509abdc0c9ea0f628ebff8e0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Adjunction/ParametrizedLimits.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.Adjunction.Parametrized
public import Mathlib.CategoryTheory.Limits.Opposites
public import Mathlib.CategoryTheory.Limits.Preserves.Basic

/-!
# Parametrized adjunctions and limits

Given bifunctors `F : C₁ ⥤ C₂ ⥤ C₃`, `G : C₁ᵒᵖ ⥤ C₃ ⥤ C₂` and
a parametrized adjunction `adj₂ : F ⊣₂ G`, we show that for any `X₃ : C₃`,
the functor `G.flip.obj X₃ : C₁ᵒᵖ ⥤ C₃` preserves limits of shape `J`
if for any `X₂ : C₂`, the functor `F.flip.obj X₂ : C₁ ⥤ C₃`
preserves colimits of shape `Jᵒᵖ`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PreservesLimitFlipObj.Variantdeaec9e9b2c3c306efd39694dea944bcd8e93a26509abdc0c9ea0f628ebff8e0

public section

namespace CategoryTheory.ParametrizedAdjunction

open Limits Opposite

variable {C₁ C₂ C₃ : Type*} [Category* C₁] [Category* C₂] [Category* C₃]
  {F : C₁ ⥤ C₂ ⥤ C₃} {G : C₁ᵒᵖ ⥤ C₃ ⥤ C₂}
  (adj₂ : F ⊣₂ G) {J : Type*} [Category* J]

include adj₂

set_option backward.defeqAttrib.useBackward true in
lemma preservesLimit_flip_obj (P : J ⥤ C₁ᵒᵖ)
    [∀ (X₂ : C₂), PreservesColimit P.leftOp (F.flip.obj X₂)] (X₃ : C₃) :
    PreservesLimit P (G.flip.obj X₃) where
  preserves {c} hc := ⟨by
    let cocone (s : Cone (P ⋙ G.flip.obj X₃)) :
        Cocone (P.leftOp ⋙ F.flip.obj s.pt) :=
      { pt := X₃
        ι.app j := adj₂.homEquiv.symm (s.π.app j.unop)
        ι.naturality _ _ f := by
          simp [← s.w f.unop, dsimp% adj₂.homEquiv_symm_naturality_one (P.map f.unop).unop] }
    let hc' (s : Cone (P ⋙ G.flip.obj X₃)) :=
      isColimitOfPreserves (F.flip.obj s.pt) (isColimitCoconeLeftOpOfCone _ hc)
    exact {
      lift s := adj₂.homEquiv ((hc' s).desc (cocone s))
      fac s j := by
        dsimp
        rw [← dsimp% adj₂.homEquiv_naturality_one (c.π.app j).unop,
          dsimp% (hc' s).fac (cocone s) (op j)]
        simp [cocone]
      uniq s m hm := adj₂.homEquiv.symm.injective (by
        simp only [op_unop, Equiv.symm_apply_apply]
        refine (hc' s).uniq (cocone s) _ (fun j ↦ ?_)
        simp [cocone, ← hm,
          dsimp% adj₂.homEquiv_symm_naturality_one (c.π.app j.unop).unop]) }⟩

variable (J) in
lemma preservesLimitsOfShape_flip_obj
    [∀ (X₂ : C₂), PreservesColimitsOfShape Jᵒᵖ (F.flip.obj X₂)] (X₃ : C₃) :
    PreservesLimitsOfShape J (G.flip.obj X₃) where
  preservesLimit := preservesLimit_flip_obj adj₂ _ _

end CategoryTheory.ParametrizedAdjunction
