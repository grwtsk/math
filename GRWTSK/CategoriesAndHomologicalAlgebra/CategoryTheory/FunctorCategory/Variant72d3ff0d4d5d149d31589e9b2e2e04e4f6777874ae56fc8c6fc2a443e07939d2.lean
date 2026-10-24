-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AppLinearMap.Variantf08f33e4374589c795c92e87ed2c03afc57f54971e9c37783137108424f9bbeb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f08f33e4374589c795c92e87ed2c03afc57f54971e9c37783137108424f9bbeb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.AppLinearMap.Variantf08f33e4374589c795c92e87ed2c03afc57f54971e9c37783137108424f9bbeb","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"f08f33e4374589c795c92e87ed2c03afc57f54971e9c37783137108424f9bbeb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Linear/FunctorCategory.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.CategoryTheory.Preadditive.FunctorCategory
import Mathlib.CategoryTheory.Linear.Basic

/-!
# Linear structure on functor categories

If `C` and `D` are categories and `D` is `R`-linear,
then `C ⥤ D` is also `R`-linear.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AppLinearMap.Variantf08f33e4374589c795c92e87ed2c03afc57f54971e9c37783137108424f9bbeb

namespace CategoryTheory

open CategoryTheory.Limits Linear

variable {R : Type*} [Semiring R]
variable {C D : Type*} [Category C] [Category D] [Preadditive D] [Linear R D]

instance functorCategoryLinear : Linear R (C ⥤ D) where
  homModule F G :=
    { smul := fun r α =>
        { app := fun X => r • α.app X
          naturality := by
            intros
            rw [comp_smul, smul_comp, α.naturality] }
      one_smul := by
        intros
        ext
        apply one_smul
      zero_smul := by
        intros
        ext
        apply zero_smul
      smul_zero := by
        intros
        ext
        apply smul_zero
      add_smul := by
        intros
        ext
        apply add_smul
      smul_add := by
        intros
        ext
        apply smul_add
      mul_smul := by
        intros
        ext
        apply mul_smul }
  smul_comp := by
    intros
    ext
    apply smul_comp
  comp_smul := by
    intros
    ext
    apply comp_smul

namespace NatTrans

variable {F G : C ⥤ D}

/-- Application of a natural transformation at a fixed object,
as group homomorphism -/
@[simps]
def appLinearMap (X : C) : (F ⟶ G) →ₗ[R] F.obj X ⟶ G.obj X where
  toFun α := α.app X
  map_add' _ _ := rfl
  map_smul' _ _ := rfl

@[simp]
theorem app_smul (X : C) (r : R) (α : F ⟶ G) : (r • α).app X = r • α.app X :=
  rfl

end NatTrans

end CategoryTheory
