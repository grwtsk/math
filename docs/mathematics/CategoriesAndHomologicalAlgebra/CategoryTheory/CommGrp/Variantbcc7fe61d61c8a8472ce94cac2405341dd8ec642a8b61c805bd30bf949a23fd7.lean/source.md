# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CommGrp.Variantbcc7fe61d61c8a8472ce94cac2405341dd8ec642a8b61c805bd30bf949a23fd7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `674b2d5fc2c764f62cae9875782ecc4c05568686` · SHA-256 `bcc7fe61d61c8a8472ce94cac2405341dd8ec642a8b61c805bd30bf949a23fd7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Monoidal.CommGrp_
import Mathlib.CategoryTheory.Preadditive.Biproducts

/-!
# Commutative group objects in additive categories.

We construct an inverse of the forgetful functor `CommGrp_ C ⥤ C` if `C` is an additive category.

This looks slightly strange because the additive structure of `C` maps to the multiplicative
structure of the commutative group objects.
-/

universe v u

namespace CategoryTheory.Preadditive

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory

variable {C : Type u} [Category.{v} C] [Preadditive C]
  [CartesianMonoidalCategory C] [BraidedCategory C]

variable (C) in
/-- The canonical functor from an additive category into its commutative group objects. This is
always an equivalence, see `commGrpEquivalence`. -/
@[simps]
def toCommGrp : C ⥤ CommGrp_ C where
  obj X :=
    { X := X
      one := 0
      mul := fst _ _ + snd _ _
      inv := -𝟙 X
      mul_assoc := by simp [add_assoc]
      mul_comm := by simp [add_comm]
      one_mul := by simp [leftUnitor_hom]
      mul_one := by simp [rightUnitor_hom] }
  map {X Y} f := { hom := f }

-- PROJECT: develop `ChosenFiniteCoproducts`, and construct `ChosenFiniteCoproducts` from
-- `CartesianMonoidalCategory` in preadditive categories, to give this lemma a proper home.
omit [BraidedCategory C] in
private theorem monoidal_hom_ext {X Y Z : C} {f g : X ⊗ Y ⟶ Z}
    (h₁ : lift (𝟙 X) 0 ≫ f = lift (𝟙 X) 0 ≫ g) (h₂ : lift 0 (𝟙 Y) ≫ f = lift 0 (𝟙 Y) ≫ g) :
    f = g :=
  BinaryCofan.IsColimit.hom_ext
    (binaryBiconeIsBilimitOfLimitConeOfIsLimit (tensorProductIsBinaryProduct X Y)).isColimit h₁ h₂

/-- Auxiliary definition for `commGrpEquivalence`. -/
@[simps!]
def commGrpEquivalenceAux : CommGrp_.forget C ⋙ toCommGrp C ≅
      𝟭 (CommGrp_ C) := by
  refine NatIso.ofComponents (fun _ => CommGrp_.mkIso (Iso.refl _) ?_ ?_) ?_
  · exact ((IsZero.iff_id_eq_zero _).2 (Subsingleton.elim _ _)).eq_of_src _ _
  · simp only [Functor.comp_obj, Mon_.forget_obj, toCommGrp_obj_X, Functor.id_obj,
      toCommGrp_obj_mul, Iso.refl_hom, Category.comp_id, tensorHom_id, id_whiskerRight,
      Category.id_comp]
    apply monoidal_hom_ext
    · simp only [comp_add, lift_fst, lift_snd, add_zero]
      convert (Mon_.lift_comp_one_right _ 0).symm
      · simp
      · infer_instance
    · simp only [comp_add, lift_fst, lift_snd, zero_add]
      convert (Mon_.lift_comp_one_left 0 _).symm
      · simp
      · infer_instance
  · aesop_cat

/-- An additive category is equivalent to its category of commutative group objects. -/
@[simps!]
def commGrpEquivalence : C ≌ CommGrp_ C where
  functor := toCommGrp C
  inverse := CommGrp_.forget C
  unitIso := Iso.refl _
  counitIso := commGrpEquivalenceAux

end CategoryTheory.Preadditive
```
