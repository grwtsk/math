-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MapDerivedCategory.Variantae8e297fdbd0a415d2ef4d6eeaff8d6092e0e8deeb62062a5cc884cc2eebfaaf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ae8e297fdbd0a415d2ef4d6eeaff8d6092e0e8deeb62062a5cc884cc2eebfaaf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.MapDerivedCategory.Variantae8e297fdbd0a415d2ef4d6eeaff8d6092e0e8deeb62062a5cc884cc2eebfaaf","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"ae8e297fdbd0a415d2ef4d6eeaff8d6092e0e8deeb62062a5cc884cc2eebfaaf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Homology/DerivedCategory/ExactFunctor.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.Algebra.Homology.DerivedCategory.Basic

/-!
# An exact functor induces a functor on derived categories

In this file, we show that if `F : C₁ ⥤ C₂` is an exact functor between
abelian categories, then there is an induced triangulated functor
`F.mapDerivedCategory : DerivedCategory C₁ ⥤ DerivedCategory C₂`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MapDerivedCategory.Variantae8e297fdbd0a415d2ef4d6eeaff8d6092e0e8deeb62062a5cc884cc2eebfaaf

assert_not_exists TwoSidedIdeal

universe w₁ w₂ v₁ v₂ u₁ u₂

open CategoryTheory Category Limits

variable {C₁ : Type u₁} [Category.{v₁} C₁] [Abelian C₁] [HasDerivedCategory.{w₁} C₁]
  {C₂ : Type u₂} [Category.{v₂} C₂] [Abelian C₂] [HasDerivedCategory.{w₂} C₂]
  (F : C₁ ⥤ C₂) [F.Additive] [PreservesFiniteLimits F] [PreservesFiniteColimits F]

namespace CategoryTheory.Functor

/-- The functor `DerivedCategory C₁ ⥤ DerivedCategory C₂` induced
by an exact functor `F : C₁ ⥤ C₂` between abelian categories. -/
noncomputable def mapDerivedCategory : DerivedCategory C₁ ⥤ DerivedCategory C₂ :=
  F.mapHomologicalComplexUpToQuasiIso (ComplexShape.up ℤ)

/-- The functor `F.mapDerivedCategory` is induced
by `F.mapHomologicalComplex (ComplexShape.up ℤ)`. -/
noncomputable def mapDerivedCategoryFactors :
    DerivedCategory.Q ⋙ F.mapDerivedCategory ≅
      F.mapHomologicalComplex (ComplexShape.up ℤ) ⋙ DerivedCategory.Q :=
  F.mapHomologicalComplexUpToQuasiIsoFactors _

noncomputable instance :
    Localization.Lifting DerivedCategory.Q
      (HomologicalComplex.quasiIso C₁ (ComplexShape.up ℤ))
      (F.mapHomologicalComplex _ ⋙ DerivedCategory.Q) F.mapDerivedCategory :=
  ⟨F.mapDerivedCategoryFactors⟩

/-- The functor `F.mapDerivedCategory` is induced
by `F.mapHomotopyCategory (ComplexShape.up ℤ)`. -/
noncomputable def mapDerivedCategoryFactorsh :
    DerivedCategory.Qh ⋙ F.mapDerivedCategory ≅
      F.mapHomotopyCategory (ComplexShape.up ℤ) ⋙ DerivedCategory.Qh :=
  F.mapHomologicalComplexUpToQuasiIsoFactorsh _

lemma mapDerivedCategoryFactorsh_hom_app (K : CochainComplex C₁ ℤ) :
    F.mapDerivedCategoryFactorsh.hom.app ((HomotopyCategory.quotient _ _).obj K) =
      F.mapDerivedCategory.map ((DerivedCategory.quotientCompQhIso C₁).hom.app K) ≫
        F.mapDerivedCategoryFactors.hom.app K ≫
        (DerivedCategory.quotientCompQhIso C₂).inv.app _ ≫
        DerivedCategory.Qh.map ((F.mapHomotopyCategoryFactors (ComplexShape.up ℤ)).inv.app K) :=
  F.mapHomologicalComplexUpToQuasiIsoFactorsh_hom_app K

noncomputable instance :
    Localization.Lifting DerivedCategory.Qh
      (HomotopyCategory.quasiIso C₁ (ComplexShape.up ℤ))
      (F.mapHomotopyCategory _ ⋙ DerivedCategory.Qh) F.mapDerivedCategory :=
  ⟨F.mapDerivedCategoryFactorsh⟩

noncomputable instance : F.mapDerivedCategory.CommShift ℤ :=
  Functor.commShiftOfLocalization DerivedCategory.Qh
    (HomotopyCategory.quasiIso C₁ (ComplexShape.up ℤ)) ℤ
    (F.mapHomotopyCategory _ ⋙ DerivedCategory.Qh)
    F.mapDerivedCategory

instance : NatTrans.CommShift F.mapDerivedCategoryFactorsh.hom ℤ :=
  inferInstanceAs (NatTrans.CommShift (Localization.Lifting.iso
      DerivedCategory.Qh (HomotopyCategory.quasiIso C₁ (ComplexShape.up ℤ))
        (F.mapHomotopyCategory _ ⋙ DerivedCategory.Qh)
          F.mapDerivedCategory).hom ℤ)

instance : NatTrans.CommShift F.mapDerivedCategoryFactors.hom ℤ :=
  NatTrans.CommShift.verticalComposition (DerivedCategory.quotientCompQhIso C₁).inv
    (DerivedCategory.quotientCompQhIso C₂).hom
    (F.mapHomotopyCategoryFactors (ComplexShape.up ℤ)).hom
    F.mapDerivedCategoryFactorsh.hom F.mapDerivedCategoryFactors.hom ℤ (by
      ext K
      dsimp
      simp only [id_comp, mapDerivedCategoryFactorsh_hom_app, assoc, comp_id,
        ← Functor.map_comp_assoc, Iso.inv_hom_id_app, map_id, comp_obj])

instance : F.mapDerivedCategory.IsTriangulated :=
  Functor.isTriangulated_of_precomp_iso F.mapDerivedCategoryFactorsh

end CategoryTheory.Functor
