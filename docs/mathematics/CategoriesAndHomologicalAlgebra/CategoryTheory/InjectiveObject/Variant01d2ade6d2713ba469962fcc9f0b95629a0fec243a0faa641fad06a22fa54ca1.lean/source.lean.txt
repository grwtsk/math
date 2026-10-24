-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.InjectiveObject.Variant8aa4e2f97f749124507a39e4d5c96038feb367ee47b44fce5d252f61dc4629d4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8aa4e2f97f749124507a39e4d5c96038feb367ee47b44fce5d252f61dc4629d4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.InjectiveObject.Variant8aa4e2f97f749124507a39e4d5c96038feb367ee47b44fce5d252f61dc4629d4","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"8aa4e2f97f749124507a39e4d5c96038feb367ee47b44fce5d252f61dc4629d4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Preadditive/Injective/InjectiveObject.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.Limits.FullSubcategory
public import Mathlib.CategoryTheory.Preadditive.Biproducts
public import Mathlib.CategoryTheory.Preadditive.Injective.Basic

/-!
# The full subcategory of injective objects

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.InjectiveObject.Variant8aa4e2f97f749124507a39e4d5c96038feb367ee47b44fce5d252f61dc4629d4

public section

universe v u

namespace CategoryTheory

open Limits ZeroObject

variable (C : Type u) [Category.{v} C]

/-- The full subcategory of injective objects in a category `C`. -/
abbrev InjectiveObject : Type u := ObjectProperty.FullSubcategory (isInjective C)

namespace InjectiveObject

instance (J : Type*) :
    ObjectProperty.IsClosedUnderLimitsOfShape (isInjective C) (Discrete J) where
  limitsOfShape_le := by
    rintro Y ⟨p⟩
    have (j : J) : Injective (p.diag.obj ⟨j⟩) := p.prop_diag_obj _
    exact ⟨fun q i _ ↦ ⟨p.isLimit.lift (Cone.mk _
      (Discrete.natTrans (fun ⟨j⟩ ↦ (Injective.factorThru (q ≫ p.π.app ⟨j⟩) i :)))),
        p.isLimit.hom_ext (fun ⟨j⟩ ↦ by simp [p.isLimit.fac])⟩⟩

instance [HasFiniteProducts C] : HasFiniteProducts (InjectiveObject C) where
  out _ := inferInstance

instance [Preadditive C] [HasFiniteProducts C] : HasFiniteBiproducts (InjectiveObject C) :=
  HasFiniteBiproducts.of_hasFiniteProducts

instance [Preadditive C] [HasBinaryBiproducts C] : HasBinaryBiproducts (InjectiveObject C) :=
  HasBinaryBiproducts.of_hasBinaryProducts

instance [HasZeroMorphisms C] [HasZeroObject C] : (isInjective C).ContainsZero where
  exists_zero := ⟨0, by simp [IsZero.iff_id_eq_zero], Injective.zero_injective⟩

/-- The inclusion `InjectiveObject C ⥤ C` of the full subcategory of
injective objects in `C`. -/
abbrev ι : InjectiveObject C ⥤ C := ObjectProperty.ι _

instance (X : InjectiveObject C) : Injective ((ι C).obj X) := X.2

instance (X : InjectiveObject C) : Injective X.obj := X.2

end InjectiveObject

end CategoryTheory
