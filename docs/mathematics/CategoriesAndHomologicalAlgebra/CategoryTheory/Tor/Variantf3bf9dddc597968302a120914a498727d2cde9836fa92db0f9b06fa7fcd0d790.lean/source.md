# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Tor.Variantf3bf9dddc597968302a120914a498727d2cde9836fa92db0f9b06fa7fcd0d790

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b63010a86526c2d33bcd8c904fc6263ef9844b5a` · SHA-256 `f3bf9dddc597968302a120914a498727d2cde9836fa92db0f9b06fa7fcd0d790`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.CategoryTheory.Abelian.LeftDerived
import Mathlib.CategoryTheory.Monoidal.Preadditive

/-!
# Tor, the left-derived functor of tensor product

We define `Tor C n : C ⥤ C ⥤ C`, by left-deriving in the second factor of `(X, Y) ↦ X ⊗ Y`.

For now we have almost nothing to say about it!

It would be good to show that this is naturally isomorphic to the functor obtained
by left-deriving in the first factor, instead.
For now we define `Tor'` by left-deriving in the first factor,
but showing `Tor C n ≅ Tor' C n` will require a bit more theory!
Possibly it's best to axiomatize delta functors, and obtain a unique characterisation?

-/


assert_not_exists ModuleCat.abelian

noncomputable section

open CategoryTheory.Limits

open CategoryTheory.MonoidalCategory

namespace CategoryTheory

variable (C : Type*) [Category C] [MonoidalCategory C]
  [Abelian C] [MonoidalPreadditive C] [HasProjectiveResolutions C]

/-- We define `Tor C n : C ⥤ C ⥤ C` by left-deriving in the second factor of `(X, Y) ↦ X ⊗ Y`. -/
@[simps]
def Tor (n : ℕ) : C ⥤ C ⥤ C where
  obj X := Functor.leftDerived ((tensoringLeft C).obj X) n
  map f := NatTrans.leftDerived ((tensoringLeft C).map f) n

/-- An alternative definition of `Tor`, where we left-derive in the first factor instead. -/
@[simps! obj_obj map_app]
def Tor' (n : ℕ) : C ⥤ C ⥤ C :=
  Functor.flip
    { obj := fun X => Functor.leftDerived ((tensoringRight C).obj X) n
      map := fun f => NatTrans.leftDerived ((tensoringRight C).map f) n }

-- Porting note: this specific lemma was added because otherwise the internals of
-- `NatTrans.leftDerived` leaks into the RHS (it was already so in mathlib)
@[simp]
lemma Tor'_obj_map (n : ℕ) {X Y : C} (Z : C) (f : X ⟶ Y) :
    ((Tor' C n).obj Z).map f = (NatTrans.leftDerived ((tensoringRight C).map f) n).app Z := rfl

/-- The higher `Tor` groups for `X` and `Y` are zero if `Y` is projective. -/
lemma isZero_Tor_succ_of_projective (X Y : C) [Projective Y] (n : ℕ) :
    IsZero (((Tor C (n + 1)).obj X).obj Y) := by
  apply Functor.isZero_leftDerived_obj_projective_succ

/-- The higher `Tor'` groups for `X` and `Y` are zero if `X` is projective. -/
lemma isZero_Tor'_succ_of_projective (X Y : C) [Projective X] (n : ℕ) :
    IsZero (((Tor' C (n + 1)).obj X).obj Y) := by
  apply Functor.isZero_leftDerived_obj_projective_succ

end CategoryTheory
```
