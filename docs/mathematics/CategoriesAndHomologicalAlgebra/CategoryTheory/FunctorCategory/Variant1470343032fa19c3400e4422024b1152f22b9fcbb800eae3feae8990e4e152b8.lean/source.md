# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategory.Variant1470343032fa19c3400e4422024b1152f22b9fcbb800eae3feae8990e4e152b8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5c4d055b17a2cf77771ebfebff6a14c6851e0f46` · SHA-256 `dcb44ff7064aa00911fe0d2d7ccee08a3847cd77ae617125b40bab27daaec1ef`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CoimageObjIso.Variantd1ebf449869cba08d22058c4a9abd2b32a938c163d8f6efed7235fd182ad2edf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d1ebf449869cba08d22058c4a9abd2b32a938c163d8f6efed7235fd182ad2edf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.CoimageObjIso.Variantd1ebf449869cba08d22058c4a9abd2b32a938c163d8f6efed7235fd182ad2edf","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"d1ebf449869cba08d22058c4a9abd2b32a938c163d8f6efed7235fd182ad2edf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Abelian/FunctorCategory.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Mathlib.CategoryTheory.Abelian.Basic
public import Mathlib.CategoryTheory.Preadditive.FunctorCategory
public import Mathlib.CategoryTheory.Limits.FunctorCategory.Finite
public import Mathlib.CategoryTheory.Limits.Preserves.Shapes.Kernels

/-!
# If `D` is abelian, then the functor category `C ⥤ D` is also abelian.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CoimageObjIso.Variantd1ebf449869cba08d22058c4a9abd2b32a938c163d8f6efed7235fd182ad2edf

@[expose] public section


noncomputable section

namespace CategoryTheory

open CategoryTheory.Limits

namespace Abelian

section

universe z w v u

variable {C : Type u} [Category.{v} C]
variable {D : Type w} [Category.{z} D] [Abelian D]

namespace FunctorCategory

variable {F G : C ⥤ D} (α : F ⟶ G) (X : C)

set_option backward.defeqAttrib.useBackward true in
/-- The abelian coimage in a functor category can be calculated componentwise. -/
@[simps!]
def coimageObjIso : (Abelian.coimage α).obj X ≅ Abelian.coimage (α.app X) :=
  PreservesCokernel.iso ((evaluation C D).obj X) _ ≪≫
    cokernel.mapIso _ _ (PreservesKernel.iso ((evaluation C D).obj X) _) (Iso.refl _)
      (by
        dsimp
        simp only [Category.comp_id, PreservesKernel.iso_hom]
        exact (kernelComparison_comp_ι _ ((evaluation C D).obj X)).symm)

set_option backward.defeqAttrib.useBackward true in
/-- The abelian image in a functor category can be calculated componentwise. -/
@[simps!]
def imageObjIso : (Abelian.image α).obj X ≅ Abelian.image (α.app X) :=
  PreservesKernel.iso ((evaluation C D).obj X) _ ≪≫
    kernel.mapIso _ _ (Iso.refl _) (PreservesCokernel.iso ((evaluation C D).obj X) _)
      (by
        apply (cancel_mono (PreservesCokernel.iso ((evaluation C D).obj X) α).inv).1
        simp only [Category.assoc, Iso.hom_inv_id]
        dsimp
        simp only [PreservesCokernel.iso_inv, Category.id_comp, Category.comp_id]
        exact (π_comp_cokernelComparison _ ((evaluation C D).obj X)).symm)

set_option backward.defeqAttrib.useBackward true in
theorem coimageImageComparison_app :
    coimageImageComparison (α.app X) =
      (coimageObjIso α X).inv ≫ (coimageImageComparison α).app X ≫ (imageObjIso α X).hom := by
  ext
  dsimp
  dsimp [imageObjIso, coimageObjIso, cokernel.map]
  simp only [coimage_image_factorisation, PreservesKernel.iso_hom, Category.assoc,
    kernel.lift_ι, Category.comp_id, PreservesCokernel.iso_inv,
    cokernel.π_desc_assoc, Category.id_comp]
  erw [kernelComparison_comp_ι _ ((evaluation C D).obj X)]
  erw [π_comp_cokernelComparison_assoc _ ((evaluation C D).obj X)]
  conv_lhs => rw [← coimage_image_factorisation α]
  rfl

theorem coimageImageComparison_app' :
    (coimageImageComparison α).app X =
      (coimageObjIso α X).hom ≫ coimageImageComparison (α.app X) ≫ (imageObjIso α X).inv := by
  simp only [coimageImageComparison_app, Iso.hom_inv_id_assoc, Iso.hom_inv_id, Category.assoc,
    Category.comp_id]

instance functor_category_isIso_coimageImageComparison :
    IsIso (Abelian.coimageImageComparison α) := by
  have : ∀ X : C, IsIso ((Abelian.coimageImageComparison α).app X) := by
    intros
    rw [coimageImageComparison_app']
    infer_instance
  apply NatIso.isIso_of_isIso_app

end FunctorCategory

noncomputable instance functorCategoryAbelian : Abelian (C ⥤ D) :=
  let _ : HasKernels (C ⥤ D) := inferInstance
  let _ : HasCokernels (C ⥤ D) := inferInstance
  Abelian.ofCoimageImageComparisonIsIso

end

end Abelian

end CategoryTheory
```
