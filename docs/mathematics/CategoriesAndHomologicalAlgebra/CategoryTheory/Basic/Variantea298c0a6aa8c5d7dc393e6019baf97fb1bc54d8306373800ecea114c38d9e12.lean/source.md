# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantea298c0a6aa8c5d7dc393e6019baf97fb1bc54d8306373800ecea114c38d9e12

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a977b619d9da480fc241def32581b99abcc1fa7e` · SHA-256 `ea298c0a6aa8c5d7dc393e6019baf97fb1bc54d8306373800ecea114c38d9e12`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Michael Jendrusch. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michael Jendrusch, Scott Morrison
-/
import Mathlib.CategoryTheory.Monoidal.Functor
import Mathlib.CategoryTheory.Monoidal.OfChosenFiniteProducts.Basic
import Mathlib.CategoryTheory.Limits.Shapes.Types
import Mathlib.Logic.Equiv.Fin

#align_import category_theory.monoidal.types.basic from "leanprover-community/mathlib"@"95a87616d63b3cb49d3fe678d416fbe9c4217bf4"

/-!
# The category of types is a monoidal category
-/


open CategoryTheory Limits MonoidalCategory

open Tactic

universe v u

namespace CategoryTheory

noncomputable instance typesMonoidal : MonoidalCategory.{u} (Type u) :=
  monoidalOfChosenFiniteProducts Types.terminalLimitCone Types.binaryProductLimitCone
#align category_theory.types_monoidal CategoryTheory.typesMonoidal

@[simp]
theorem tensor_apply {W X Y Z : Type u} (f : W ⟶ X) (g : Y ⟶ Z) (p : W ⊗ Y) :
    (f ⊗ g) p = (f p.1, g p.2) :=
  rfl
#align category_theory.tensor_apply CategoryTheory.tensor_apply

@[simp]
theorem leftUnitor_hom_apply {X : Type u} {x : X} {p : PUnit} :
    ((λ_ X).hom : 𝟙_ (Type u) ⊗ X → X) (p, x) = x :=
  rfl
#align category_theory.left_unitor_hom_apply CategoryTheory.leftUnitor_hom_apply

@[simp]
theorem leftUnitor_inv_apply {X : Type u} {x : X} :
    ((λ_ X).inv : X ⟶ 𝟙_ (Type u) ⊗ X) x = (PUnit.unit, x) :=
  rfl
#align category_theory.left_unitor_inv_apply CategoryTheory.leftUnitor_inv_apply

@[simp]
theorem rightUnitor_hom_apply {X : Type u} {x : X} {p : PUnit} :
    ((ρ_ X).hom : X ⊗ 𝟙_ (Type u) → X) (x, p) = x :=
  rfl
#align category_theory.right_unitor_hom_apply CategoryTheory.rightUnitor_hom_apply

@[simp]
theorem rightUnitor_inv_apply {X : Type u} {x : X} :
    ((ρ_ X).inv : X ⟶ X ⊗ 𝟙_ (Type u)) x = (x, PUnit.unit) :=
  rfl
#align category_theory.right_unitor_inv_apply CategoryTheory.rightUnitor_inv_apply

@[simp]
theorem associator_hom_apply {X Y Z : Type u} {x : X} {y : Y} {z : Z} :
    ((α_ X Y Z).hom : (X ⊗ Y) ⊗ Z → X ⊗ Y ⊗ Z) ((x, y), z) = (x, (y, z)) :=
  rfl
#align category_theory.associator_hom_apply CategoryTheory.associator_hom_apply

@[simp]
theorem associator_inv_apply {X Y Z : Type u} {x : X} {y : Y} {z : Z} :
    ((α_ X Y Z).inv : X ⊗ Y ⊗ Z → (X ⊗ Y) ⊗ Z) (x, (y, z)) = ((x, y), z) :=
  rfl
#align category_theory.associator_inv_apply CategoryTheory.associator_inv_apply

-- We don't yet have an API for tensor products indexed by finite ordered types,
-- but it would be nice to state how monoidal functors preserve these.
/-- If `F` is a monoidal functor out of `Type`, it takes the (n+1)st cartesian power
of a type to the image of that type, tensored with the image of the nth cartesian power. -/
noncomputable def MonoidalFunctor.mapPi {C : Type*} [Category C] [MonoidalCategory C]
    (F : MonoidalFunctor (Type _) C) (n : ℕ) (β : Type*) :
    F.obj (Fin (n + 1) → β) ≅ F.obj β ⊗ F.obj (Fin n → β) :=
  Functor.mapIso _ (Equiv.piFinSucc n β).toIso ≪≫ (asIso (F.μ β (Fin n → β))).symm
#align category_theory.monoidal_functor.map_pi CategoryTheory.MonoidalFunctor.mapPi

end CategoryTheory
```
