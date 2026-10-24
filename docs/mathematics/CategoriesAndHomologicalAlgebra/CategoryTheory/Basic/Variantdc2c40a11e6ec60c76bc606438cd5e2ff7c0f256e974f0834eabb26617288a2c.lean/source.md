# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantdc2c40a11e6ec60c76bc606438cd5e2ff7c0f256e974f0834eabb26617288a2c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `87b6846b27a5f48deac290c7accfd29d6afa45a0` · SHA-256 `dc2c40a11e6ec60c76bc606438cd5e2ff7c0f256e974f0834eabb26617288a2c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Mathlib.CategoryTheory.EqToHom

#align_import category_theory.sums.basic from "leanprover-community/mathlib"@"dc6c365e751e34d100e80fe6e314c3c3e0fd2988"

/-!
# Binary disjoint unions of categories

We define the category instance on `C ⊕ D` when `C` and `D` are categories.

We define:
* `inl_`      : the functor `C ⥤ C ⊕ D`
* `inr_`      : the functor `D ⥤ C ⊕ D`
* `swap`      : the functor `C ⊕ D ⥤ D ⊕ C`
    (and the fact this is an equivalence)

We further define sums of functors and natural transformations, written `F.sum G` and `α.sum β`.
-/


namespace CategoryTheory

universe v₁ u₁

-- morphism levels before object levels. See note [category_theory universes].
open Sum

section

variable (C : Type u₁) [Category.{v₁} C] (D : Type u₁) [Category.{v₁} D]

/- Porting note: `aesop_cat` not firing on `assoc` where autotac in Lean 3 did-/

/-- `sum C D` gives the direct sum of two categories.
-/
instance sum : Category.{v₁} (Sum C D) where
  Hom X Y :=
    match X, Y with
    | inl X, inl Y => X ⟶ Y
    | inl _, inr _ => PEmpty
    | inr _, inl _ => PEmpty
    | inr X, inr Y => X ⟶ Y
  id X :=
    match X with
    | inl X => 𝟙 X
    | inr X => 𝟙 X
  comp := @fun X Y Z f g =>
    match X, Y, Z, f, g with
    | inl X, inl Y, inl Z, f, g => f ≫ g
    | inr X, inr Y, inr Z, f, g => f ≫ g
  assoc := @fun W X Y Z f g h =>
    match X, Y, Z, W with
    | inl X, inl Y, inl Z, inl W => Category.assoc f g h
    | inr X, inr Y, inr Z, inr W => Category.assoc f g h
#align category_theory.sum CategoryTheory.sum

/- Porting note: seems similar to Mathlib4#1036 issue so marked as nolint  -/
@[simp, nolint simpComm]
theorem sum_comp_inl {P Q R : C} (f : (inl P : Sum C D) ⟶ inl Q) (g : (inl Q : Sum C D) ⟶ inl R) :
    @CategoryStruct.comp _ _ P Q R (f : P ⟶ Q) (g : Q ⟶ R) =
      @CategoryStruct.comp _ _ (inl P) (inl Q) (inl R) (f : P ⟶ Q) (g : Q ⟶ R) :=
  rfl
#align category_theory.sum_comp_inl CategoryTheory.sum_comp_inl

/- Porting note: seems similar to Mathlib4#1036 issue so marked as nolint  -/
@[simp, nolint simpComm]
theorem sum_comp_inr {P Q R : D} (f : (inr P : Sum C D) ⟶ inr Q) (g : (inr Q : Sum C D) ⟶ inr R) :
    @CategoryStruct.comp _ _ P Q R (f : P ⟶ Q) (g : Q ⟶ R) =
      @CategoryStruct.comp _ _ (inr P) (inr Q) (inr R) (f : P ⟶ Q) (g : Q ⟶ R) :=
  rfl
#align category_theory.sum_comp_inr CategoryTheory.sum_comp_inr

end

namespace Sum

variable (C : Type u₁) [Category.{v₁} C] (D : Type u₁) [Category.{v₁} D]

-- Unfortunate naming here, suggestions welcome.
/-- `inl_` is the functor `X ↦ inl X`. -/
@[simps]
def inl_ : C ⥤ Sum C D where
  obj X := inl X
  map := @fun X Y f => f
#align category_theory.sum.inl_ CategoryTheory.Sum.inl_

/-- `inr_` is the functor `X ↦ inr X`. -/
@[simps]
def inr_ : D ⥤ Sum C D where
  obj X := inr X
  map := @fun X Y f => f
#align category_theory.sum.inr_ CategoryTheory.Sum.inr_

/- Porting note: `aesop_cat` not firing on `map_comp` where autotac in Lean 3 did
but `map_id` was ok. -/

/-- The functor exchanging two direct summand categories. -/
def swap : Sum C D ⥤ Sum D C where
  obj X :=
    match X with
    | inl X => inr X
    | inr X => inl X
  map := @fun X Y f =>
    match X, Y, f with
    | inl _, inl _, f => f
    | inr _, inr _, f => f
  map_comp := fun {X} {Y} {Z} _ _ =>
    match X, Y, Z with
    | inl X, inl Y, inl Z => by rfl
    | inr X, inr Y, inr Z => by rfl
#align category_theory.sum.swap CategoryTheory.Sum.swap

@[simp]
theorem swap_obj_inl (X : C) : (swap C D).obj (inl X) = inr X :=
  rfl
#align category_theory.sum.swap_obj_inl CategoryTheory.Sum.swap_obj_inl

@[simp]
theorem swap_obj_inr (X : D) : (swap C D).obj (inr X) = inl X :=
  rfl
#align category_theory.sum.swap_obj_inr CategoryTheory.Sum.swap_obj_inr

@[simp]
theorem swap_map_inl {X Y : C} {f : inl X ⟶ inl Y} : (swap C D).map f = f :=
  rfl
#align category_theory.sum.swap_map_inl CategoryTheory.Sum.swap_map_inl

@[simp]
theorem swap_map_inr {X Y : D} {f : inr X ⟶ inr Y} : (swap C D).map f = f :=
  rfl
#align category_theory.sum.swap_map_inr CategoryTheory.Sum.swap_map_inr

namespace Swap

/- Porting note: had to manually call `cases f` for `f : PEmpty` -/

/-- `swap` gives an equivalence between `C ⊕ D` and `D ⊕ C`. -/
def equivalence : Sum C D ≌ Sum D C :=
  Equivalence.mk (swap C D) (swap D C)
    (NatIso.ofComponents (fun X => eqToIso (by cases X <;> rfl))
      (by simp only [swap]; aesop_cat_nonterminal; cases f; cases f))
    (NatIso.ofComponents (fun X => eqToIso (by cases X <;> rfl))
      (by simp only [swap]; aesop_cat_nonterminal; cases f; cases f))
#align category_theory.sum.swap.equivalence CategoryTheory.Sum.Swap.equivalence

instance isEquivalence : IsEquivalence (swap C D) :=
  (by infer_instance : IsEquivalence (equivalence C D).functor)
#align category_theory.sum.swap.is_equivalence CategoryTheory.Sum.Swap.isEquivalence

/-- The double swap on `C ⊕ D` is naturally isomorphic to the identity functor. -/
def symmetry : swap C D ⋙ swap D C ≅ 𝟭 (Sum C D) :=
  (equivalence C D).unitIso.symm
#align category_theory.sum.swap.symmetry CategoryTheory.Sum.Swap.symmetry

end Swap

end Sum

variable {A : Type u₁} [Category.{v₁} A] {B : Type u₁} [Category.{v₁} B] {C : Type u₁}
  [Category.{v₁} C] {D : Type u₁} [Category.{v₁} D]

namespace Functor

/-- The sum of two functors. -/
def sum (F : A ⥤ B) (G : C ⥤ D) : Sum A C ⥤ Sum B D
    where
  obj X :=
    match X with
    | inl X => inl (F.obj X)
    | inr X => inr (G.obj X)
  map := @fun X Y f =>
    match X, Y, f with
    | inl X, inl Y, f => F.map f
    | inr X, inr Y, f => G.map f
  map_id := @fun X => by cases X <;> aesop_cat_nonterminal; erw [F.map_id]; rfl; erw [G.map_id]; rfl
  map_comp := @fun X Y Z f g =>
    match X, Y, Z, f, g with
    | inl X, inl Y, inl Z, f, g => by
      aesop_cat_nonterminal <;>
      erw [F.map_comp] <;>
      rfl
    | inr X, inr Y, inr Z, f, g => by
      aesop_cat_nonterminal <;>
      erw [G.map_comp] <;>
      rfl
#align category_theory.functor.sum CategoryTheory.Functor.sum

@[simp]
theorem sum_obj_inl (F : A ⥤ B) (G : C ⥤ D) (a : A) : (F.sum G).obj (inl a) = inl (F.obj a) :=
  rfl
#align category_theory.functor.sum_obj_inl CategoryTheory.Functor.sum_obj_inl

@[simp]
theorem sum_obj_inr (F : A ⥤ B) (G : C ⥤ D) (c : C) : (F.sum G).obj (inr c) = inr (G.obj c) :=
  rfl
#align category_theory.functor.sum_obj_inr CategoryTheory.Functor.sum_obj_inr

@[simp]
theorem sum_map_inl (F : A ⥤ B) (G : C ⥤ D) {a a' : A} (f : inl a ⟶ inl a') :
    (F.sum G).map f = F.map f :=
  rfl
#align category_theory.functor.sum_map_inl CategoryTheory.Functor.sum_map_inl

@[simp]
theorem sum_map_inr (F : A ⥤ B) (G : C ⥤ D) {c c' : C} (f : inr c ⟶ inr c') :
    (F.sum G).map f = G.map f :=
  rfl
#align category_theory.functor.sum_map_inr CategoryTheory.Functor.sum_map_inr

end Functor

namespace NatTrans

/-- The sum of two natural transformations. -/
def sum {F G : A ⥤ B} {H I : C ⥤ D} (α : F ⟶ G) (β : H ⟶ I) : F.sum H ⟶ G.sum I
    where
  app X :=
    match X with
    | inl X => α.app X
    | inr X => β.app X
  naturality X Y f :=
    match X, Y, f with
    | inl X, inl Y, f => by aesop_cat_nonterminal <;> erw [α.naturality] <;> rfl
    | inr X, inr Y, f => by aesop_cat_nonterminal <;> erw [β.naturality] <;> rfl
#align category_theory.nat_trans.sum CategoryTheory.NatTrans.sum

@[simp]
theorem sum_app_inl {F G : A ⥤ B} {H I : C ⥤ D} (α : F ⟶ G) (β : H ⟶ I) (a : A) :
    (sum α β).app (inl a) = α.app a :=
  rfl
#align category_theory.nat_trans.sum_app_inl CategoryTheory.NatTrans.sum_app_inl

@[simp]
theorem sum_app_inr {F G : A ⥤ B} {H I : C ⥤ D} (α : F ⟶ G) (β : H ⟶ I) (c : C) :
    (sum α β).app (inr c) = β.app c :=
  rfl
#align category_theory.nat_trans.sum_app_inr CategoryTheory.NatTrans.sum_app_inr

end NatTrans

end CategoryTheory
```
