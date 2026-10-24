# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Ring.Variant18d5449bf3317a8441d25758c876253f68e1a42fd82219fa2e4713fac0bd02be

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `395d00a09b26125e353aa752574f4741ba9cc2e0` · SHA-256 `b5144b7a3771a098a06b82f3bf7f2adb0f04f604eef11c8881ac1d000fa2ca09`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.YonedaRingObj.Variantd864dba4a82fdba4feaf99d1888f462af40364101c24391ce70814071f07c6c9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d864dba4a82fdba4feaf99d1888f462af40364101c24391ce70814071f07c6c9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.YonedaRingObj.Variantd864dba4a82fdba4feaf99d1888f462af40364101c24391ce70814071f07c6c9","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"d864dba4a82fdba4feaf99d1888f462af40364101c24391ce70814071f07c6c9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Monoidal/Cartesian/Ring.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.Algebra.Category.Ring.Basic
public import Mathlib.CategoryTheory.Monoidal.Ring

/-!
# Yoneda embedding of `RingCatObj C`

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.YonedaRingObj.Variantd864dba4a82fdba4feaf99d1888f462af40364101c24391ce70814071f07c6c9

@[expose] public section

open CategoryTheory

universe v u

namespace CategoryTheory

variable {C : Type u} [Category.{v} C] [CartesianMonoidalCategory C] [BraidedCategory C]

open scoped CommRingObj RingObj

/-- If `R` is a ring object, then `Hom(-, R)` is a presheaf of rings. -/
@[simps! obj]
def yonedaRingObj (R : C) [RingObj R] : Cᵒᵖ ⥤ RingCat.{v} where
  obj X := ↧(X.unop ⟶ R)
  map f := RingCat.ofHom
    { toFun x := f.unop ≫ x
      map_one' := by simp
      map_zero' := by simp
      map_mul' _ _ := MonObj.comp_mul _ _ _
      map_add' _ _ := AddMonObj.comp_add _ _ _ }

set_option backward.defeqAttrib.useBackward true in
@[simp]
lemma yonedaRingObj_map_apply {R : C} [RingObj R] {X Y : Cᵒᵖ} (f : X ⟶ Y) (x : X.unop ⟶ R) :
    dsimp% (yonedaRingObj R).map f x = f.unop ≫ x := rfl

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- The yoneda embedding of `RingObjCat C` into presheaves of rings. -/
def yonedaRing : RingObjCat C ⥤ Cᵒᵖ ⥤ RingCat.{v} where
  obj R := yonedaRingObj R.X
  map f :=
    { app X := RingCat.ofHom
        { toFun x := x ≫ f.hom
          map_one' := by simp
          map_zero' := by simp
          map_mul' _ _ := MonObj.mul_comp _ _ _
          map_add' _ _ := AddMonObj.add_comp _ _ _ } }

/-- If `R` is a commutative ring object, then `Hom(-, R)` is a presheaf of commutative rings. -/
@[simps obj]
def yonedaCommRingObj (R : C) [CommRingObj R] : Cᵒᵖ ⥤ CommRingCat.{v} where
  obj X := ↧(X.unop ⟶ R)
  map f := CommRingCat.ofHom ((yonedaRingObj R).map f).hom

set_option backward.defeqAttrib.useBackward true in
@[simp]
lemma yonedaCommRingObj_map_apply {R : C} [CommRingObj R] {X Y : Cᵒᵖ} (f : X ⟶ Y) (x : X.unop ⟶ R) :
    dsimp% (yonedaCommRingObj R).map f x = f.unop ≫ x := rfl

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- The yoneda embedding of `CommRingObjCat C` into presheaves of commutative rings. -/
@[simps obj]
def yonedaCommRing : CommRingObjCat C ⥤ Cᵒᵖ ⥤ CommRingCat.{v} where
  obj R := yonedaCommRingObj R.X
  map f :=
    { app X := CommRingCat.ofHom
        { toFun x := x ≫ f.hom
          map_one' := by simp
          map_zero' := by simp
          map_mul' _ _ := MonObj.mul_comp _ _ _
          map_add' _ _ := AddMonObj.add_comp _ _ _ } }

@[simp]
lemma yonedaCommRing_map_app_apply {R₁ R₂ : CommRingObjCat C} (f : R₁ ⟶ R₂)
    {X : C} (x : X ⟶ R₁.X) :
    dsimp% (yonedaCommRing.map f).app _ x = x ≫ f.hom := rfl

end CategoryTheory
```
