# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.End.Variantd69274c9143f3c83a6e3f51ecc0f1a9e3bbb7335625103cb5838ff5833895580

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3875bd2817165260d584147b3da4e4a26918aa22` · SHA-256 `d69274c9143f3c83a6e3f51ecc0f1a9e3bbb7335625103cb5838ff5833895580`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Mathlib.CategoryTheory.Bicategory.Basic
import Mathlib.CategoryTheory.Monoidal.Category

#align_import category_theory.bicategory.End from "leanprover-community/mathlib"@"6abb6de90754c5613a3aab6261eea9e5c72d539d"

/-!
# Endomorphisms of an object in a bicategory, as a monoidal category.
-/


namespace CategoryTheory

variable {C : Type*} [Bicategory C]

/-- The endomorphisms of an object in a bicategory can be considered as a monoidal category. -/
def EndMonoidal (X : C) :=
  X ⟶ X -- deriving Category
#align category_theory.End_monoidal CategoryTheory.EndMonoidal

-- Porting note: Deriving this fails in the definition above.
-- Adding category instance manually.
instance (X : C) : Category (EndMonoidal X) :=
  show Category (X ⟶ X) from inferInstance

instance (X : C) : Inhabited (EndMonoidal X) :=
  ⟨𝟙 X⟩

open Bicategory

open MonoidalCategory

open Bicategory

attribute [local simp] EndMonoidal in
instance (X : C) : MonoidalCategory (EndMonoidal X) where
  tensorObj f g := f ≫ g
  whiskerLeft {f g h} η := f ◁ η
  whiskerRight {f g} η h := η ▷ h
  tensorUnit' := 𝟙 _
  associator f g h := α_ f g h
  leftUnitor f := λ_ f
  rightUnitor f := ρ_ f
  tensor_comp := by
    intros
    dsimp
    rw [Bicategory.whiskerLeft_comp, Bicategory.comp_whiskerRight, Category.assoc, Category.assoc,
      Bicategory.whisker_exchange_assoc]

end CategoryTheory
```
