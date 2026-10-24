# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Skeleton.Variantceb5a67d7fd7027077c487b8e1f222cd5d042133da6b4756f743bbaa8a6a2c23

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `20cda89ff131eabebf681e57a7f353be27140755` · SHA-256 `ceb5a67d7fd7027077c487b8e1f222cd5d042133da6b4756f743bbaa8a6a2c23`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Bhavik Mehta. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Bhavik Mehta
-/
import Mathlib.CategoryTheory.Monoidal.Braided
import Mathlib.CategoryTheory.Monoidal.Transport
import Mathlib.CategoryTheory.Skeletal

#align_import category_theory.monoidal.skeleton from "leanprover-community/mathlib"@"70fd9563a21e7b963887c9360bd29b2393e6225a"

/-!
# The monoid on the skeleton of a monoidal category

The skeleton of a monoidal category is a monoid.
-/


namespace CategoryTheory

open MonoidalCategory

universe v u

variable {C : Type u} [Category.{v} C] [MonoidalCategory C]

/-- If `C` is monoidal and skeletal, it is a monoid.
See note [reducible non-instances]. -/
@[reducible]
def monoidOfSkeletalMonoidal (hC : Skeletal C) : Monoid C where
  mul X Y := (X ⊗ Y : C)
  one := (𝟙_ C : C)
  one_mul X := hC ⟨λ_ X⟩
  mul_one X := hC ⟨ρ_ X⟩
  mul_assoc X Y Z := hC ⟨α_ X Y Z⟩
#align category_theory.monoid_of_skeletal_monoidal CategoryTheory.monoidOfSkeletalMonoidal

/-- If `C` is braided and skeletal, it is a commutative monoid. -/
def commMonoidOfSkeletalBraided [BraidedCategory C] (hC : Skeletal C) : CommMonoid C :=
  { monoidOfSkeletalMonoidal hC with mul_comm := fun X Y => hC ⟨β_ X Y⟩ }
#align category_theory.comm_monoid_of_skeletal_braided CategoryTheory.commMonoidOfSkeletalBraided

/-- The skeleton of a monoidal category has a monoidal structure itself, induced by the equivalence.
-/
noncomputable instance : MonoidalCategory (Skeleton C) :=
  Monoidal.transport (skeletonEquivalence C).symm

/--
The skeleton of a monoidal category can be viewed as a monoid, where the multiplication is given by
the tensor product, and satisfies the monoid axioms since it is a skeleton.
-/
noncomputable instance : Monoid (Skeleton C) :=
  monoidOfSkeletalMonoidal (skeletonIsSkeleton _).skel

-- TODO: Transfer the braided structure to the skeleton of C along the equivalence, and show that
-- the skeleton is a commutative monoid.
end CategoryTheory
```
