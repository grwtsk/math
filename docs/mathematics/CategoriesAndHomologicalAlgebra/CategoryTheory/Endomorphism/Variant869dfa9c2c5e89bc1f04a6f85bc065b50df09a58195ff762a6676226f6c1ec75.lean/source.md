# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Endomorphism.Variant869dfa9c2c5e89bc1f04a6f85bc065b50df09a58195ff762a6676226f6c1ec75

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b91f7da59da8316a6951fc8d48261136e17f9090` · SHA-256 `d3a705c5e2fd83da665b5d9bf6a89d073b4c3d1566e9db0a2e7a14495850227b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.End.Variantb55ca702ca9c45a8bd1cdc8d52eb659e71347820cd9df36768a8078fd583426d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b55ca702ca9c45a8bd1cdc8d52eb659e71347820cd9df36768a8078fd583426d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.End.Variantb55ca702ca9c45a8bd1cdc8d52eb659e71347820cd9df36768a8078fd583426d","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"b55ca702ca9c45a8bd1cdc8d52eb659e71347820cd9df36768a8078fd583426d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/CategoryTheory/Endomorphism.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov, Scott Morrison, Simon Hudon
-/
import Mathlib.Algebra.Hom.Equiv.Basic
import Mathlib.CategoryTheory.Groupoid
import Mathlib.CategoryTheory.Opposites
import Mathlib.GroupTheory.GroupAction.Defs


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.End.Variantb55ca702ca9c45a8bd1cdc8d52eb659e71347820cd9df36768a8078fd583426d

#align_import category_theory.endomorphism from "leanprover-community/mathlib"@"32253a1a1071173b33dc7d6a218cf722c6feb514"

/-!
# Endomorphisms

Definition and basic properties of endomorphisms and automorphisms of an object in a category.

For each `X : C`, we provide `CategoryTheory.End X := X ⟶ X` with a monoid structure,
and `CategoryTheory.Aut X := X ≅ X ` with a group structure.
-/


universe v v' u u'

namespace CategoryTheory

/-- Endomorphisms of an object in a category. Arguments order in multiplication agrees with
`Function.comp`, not with `CategoryTheory.CategoryStruct.comp`. -/
def End {C : Type u} [CategoryStruct.{v} C] (X : C) := X ⟶ X
#align category_theory.End CategoryTheory.End

namespace End

section Struct

variable {C : Type u} [CategoryStruct.{v} C] (X : C)

protected instance one : One (End X) := ⟨𝟙 X⟩
#align category_theory.End.has_one CategoryTheory.End.one

protected instance inhabited : Inhabited (End X) := ⟨𝟙 X⟩
#align category_theory.End.inhabited CategoryTheory.End.inhabited

/-- Multiplication of endomorphisms agrees with `Function.comp`, not with
`CategoryTheory.CategoryStruct.comp`. -/
protected instance mul : Mul (End X) := ⟨fun x y => y ≫ x⟩
#align category_theory.End.has_mul CategoryTheory.End.mul

variable {X}

/-- Assist the typechecker by expressing a morphism `X ⟶ X` as a term of `CategoryTheory.End X`. -/
def of (f : X ⟶ X) : End X := f
#align category_theory.End.of CategoryTheory.End.of

/-- Assist the typechecker by expressing an endomorphism `f : CategoryTheory.End X` as a term of
`X ⟶ X`. -/
def asHom (f : End X) : X ⟶ X := f
#align category_theory.End.as_hom CategoryTheory.End.asHom

@[simp] -- porting note: todo: use `of`/`asHom`?
theorem one_def : (1 : End X) = 𝟙 X := rfl
#align category_theory.End.one_def CategoryTheory.End.one_def

@[simp] -- porting note: todo: use `of`/`asHom`?
theorem mul_def (xs ys : End X) : xs * ys = ys ≫ xs := rfl
#align category_theory.End.mul_def CategoryTheory.End.mul_def

end Struct

/-- Endomorphisms of an object form a monoid -/
instance monoid {C : Type u} [Category.{v} C] {X : C} : Monoid (End X) where
  mul_one := Category.id_comp
  one_mul := Category.comp_id
  mul_assoc := fun x y z => (Category.assoc z y x).symm
#align category_theory.End.monoid CategoryTheory.End.monoid

section MulAction

variable {C : Type u} [Category.{v} C]

open Opposite

instance mulActionRight {X Y : C} : MulAction (End Y) (X ⟶ Y) where
  smul r f := f ≫ r
  one_smul := Category.comp_id
  mul_smul _ _ _ := Eq.symm <| Category.assoc _ _ _
#align category_theory.End.mul_action_right CategoryTheory.End.mulActionRight

instance mulActionLeft {X : Cᵒᵖ} {Y : C} : MulAction (End X) (unop X ⟶ Y) where
  smul r f := r.unop ≫ f
  one_smul := Category.id_comp
  mul_smul _ _ _ := Category.assoc _ _ _
#align category_theory.End.mul_action_left CategoryTheory.End.mulActionLeft

theorem smul_right {X Y : C} {r : End Y} {f : X ⟶ Y} : r • f = f ≫ r :=
  rfl
#align category_theory.End.smul_right CategoryTheory.End.smul_right

theorem smul_left {X : Cᵒᵖ} {Y : C} {r : End X} {f : unop X ⟶ Y} : r • f = r.unop ≫ f :=
  rfl
#align category_theory.End.smul_left CategoryTheory.End.smul_left

end MulAction

/-- In a groupoid, endomorphisms form a group -/
instance group {C : Type u} [Groupoid.{v} C] (X : C) : Group (End X) where
  mul_left_inv := Groupoid.comp_inv
  inv := Groupoid.inv
#align category_theory.End.group CategoryTheory.End.group

end End

theorem isUnit_iff_isIso {C : Type u} [Category.{v} C] {X : C} (f : End X) :
    IsUnit (f : End X) ↔ IsIso f :=
  ⟨fun h => { out := ⟨h.unit.inv, ⟨h.unit.inv_val, h.unit.val_inv⟩⟩ }, fun h =>
    ⟨⟨f, inv f, by simp, by simp⟩, rfl⟩⟩
#align category_theory.is_unit_iff_is_iso CategoryTheory.isUnit_iff_isIso

variable {C : Type u} [Category.{v} C] (X : C)

/-- Automorphisms of an object in a category.

The order of arguments in multiplication agrees with
`Function.comp`, not with `CategoryTheory.CategoryStruct.comp`.
-/
def Aut (X : C) := X ≅ X
set_option linter.uppercaseLean3 false in
#align category_theory.Aut CategoryTheory.Aut

namespace Aut

-- porting note: added because `Iso.ext` is not triggered automatically
@[ext]
lemma ext {X : C} {φ₁ φ₂ : Aut X} (h : φ₁.hom = φ₂.hom) : φ₁ = φ₂ :=
  Iso.ext h

protected instance inhabited : Inhabited (Aut X) := ⟨Iso.refl X⟩
set_option linter.uppercaseLean3 false in
#align category_theory.Aut.inhabited CategoryTheory.Aut.inhabited

instance : Group (Aut X) where
  one := Iso.refl X
  inv := Iso.symm
  mul x y := Iso.trans y x
  mul_assoc _ _ _ := (Iso.trans_assoc _ _ _).symm
  one_mul := Iso.trans_refl
  mul_one := Iso.refl_trans
  mul_left_inv := Iso.self_symm_id

theorem Aut_mul_def (f g : Aut X) : f * g = g.trans f := rfl
set_option linter.uppercaseLean3 false in
#align category_theory.Aut.Aut_mul_def CategoryTheory.Aut.Aut_mul_def

theorem Aut_inv_def (f : Aut X) : f⁻¹ = f.symm := rfl
set_option linter.uppercaseLean3 false in
#align category_theory.Aut.Aut_inv_def CategoryTheory.Aut.Aut_inv_def

/-- Units in the monoid of endomorphisms of an object
are (multiplicatively) equivalent to automorphisms of that object.
-/
def unitsEndEquivAut : (End X)ˣ ≃* Aut X where
  toFun f := ⟨f.1, f.2, f.4, f.3⟩
  invFun f := ⟨f.1, f.2, f.4, f.3⟩
  left_inv := fun ⟨f₁, f₂, f₃, f₄⟩ => rfl
  right_inv := fun ⟨f₁, f₂, f₃, f₄⟩ => rfl
  map_mul' f g := by cases f; cases g; rfl
set_option linter.uppercaseLean3 false in
#align category_theory.Aut.units_End_equiv_Aut CategoryTheory.Aut.unitsEndEquivAut

/-- Isomorphisms induce isomorphisms of the automorphism group -/
def autMulEquivOfIso {X Y : C} (h : X ≅ Y) : Aut X ≃* Aut Y where
  toFun x := ⟨h.inv ≫ x.hom ≫ h.hom, h.inv ≫ x.inv ≫ h.hom, _, _⟩
  invFun y := ⟨h.hom ≫ y.hom ≫ h.inv, h.hom ≫ y.inv ≫ h.inv, _, _⟩
  left_inv _ := by aesop_cat
  right_inv _ := by aesop_cat
  map_mul' := by simp [Aut_mul_def]
set_option linter.uppercaseLean3 false in
#align category_theory.Aut.Aut_mul_equiv_of_iso CategoryTheory.Aut.autMulEquivOfIso

end Aut

namespace Functor

variable {D : Type u'} [Category.{v'} D] (f : C ⥤ D)

/-- `f.map` as a monoid hom between endomorphism monoids. -/
@[simps]
def mapEnd : End X →* End (f.obj X) where
  toFun := f.map
  map_mul' x y := f.map_comp y x
  map_one' := f.map_id X
#align category_theory.functor.map_End CategoryTheory.Functor.mapEnd

/-- `f.mapIso` as a group hom between automorphism groups. -/
def mapAut : Aut X →* Aut (f.obj X) where
  toFun := f.mapIso
  map_mul' x y := f.mapIso_trans y x
  map_one' := f.mapIso_refl X
set_option linter.uppercaseLean3 false in
#align category_theory.functor.map_Aut CategoryTheory.Functor.mapAut

end Functor

end CategoryTheory
```
