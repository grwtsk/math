# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Skeleton.Varianta4792239ae2df110d8f459ec1ea7d60488629226b2975a04903c70e2ab386720

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `32fbf35fad6a76392250f509ee3bd513c9e6ec77` · SHA-256 `a4792239ae2df110d8f459ec1ea7d60488629226b2975a04903c70e2ab386720`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Bhavik Mehta. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Bhavik Mehta
-/
import Mathlib.CategoryTheory.Monoidal.Braided.Basic
import Mathlib.CategoryTheory.Monoidal.Transport
import Mathlib.CategoryTheory.Skeletal

/-!
# The monoid on the skeleton of a monoidal category

The skeleton of a monoidal category is a monoid.

## Main results

* `Skeleton.instMonoid`, for monoidal categories.
* `Skeleton.instCommMonoid`, for braided monoidal categories.

-/


namespace CategoryTheory

open MonoidalCategory

universe v u

variable {C : Type u} [Category.{v} C] [MonoidalCategory C]

/-- If `C` is monoidal and skeletal, it is a monoid.
See note [reducible non-instances]. -/
abbrev monoidOfSkeletalMonoidal (hC : Skeletal C) : Monoid C where
  mul X Y := (X ⊗ Y : C)
  one := (𝟙_ C : C)
  one_mul X := hC ⟨λ_ X⟩
  mul_one X := hC ⟨ρ_ X⟩
  mul_assoc X Y Z := hC ⟨α_ X Y Z⟩

/-- If `C` is braided and skeletal, it is a commutative monoid. -/
def commMonoidOfSkeletalBraided [BraidedCategory C] (hC : Skeletal C) : CommMonoid C :=
  { monoidOfSkeletalMonoidal hC with mul_comm := fun X Y => hC ⟨β_ X Y⟩ }

namespace Skeleton

/-- The skeleton of a monoidal category has a monoidal structure itself, induced by the equivalence.
-/
noncomputable instance instMonoidalCategory : MonoidalCategory (Skeleton C) :=
  Monoidal.transport (skeletonEquivalence C).symm

/--
The skeleton of a monoidal category can be viewed as a monoid, where the multiplication is given by
the tensor product, and satisfies the monoid axioms since it is a skeleton.
-/
noncomputable instance instMonoid : Monoid (Skeleton C) :=
  monoidOfSkeletalMonoidal (skeleton_isSkeleton _).skel

theorem mul_eq (X Y : Skeleton C) : X * Y = toSkeleton (X.out ⊗ Y.out) := rfl
theorem one_eq : (1 : Skeleton C) = toSkeleton (𝟙_ C) := rfl

theorem toSkeleton_tensorObj (X Y : C) : toSkeleton (X ⊗ Y) = toSkeleton X * toSkeleton Y :=
  let φ := (skeletonEquivalence C).symm.unitIso.app; Quotient.sound ⟨φ X ⊗ φ Y⟩

/-- The skeleton of a braided monoidal category has a braided monoidal structure itself, induced by
the equivalence. -/
noncomputable instance instBraidedCategory [BraidedCategory C] : BraidedCategory (Skeleton C) := by
  letI := braidedCategoryOfFullyFaithful
    (Monoidal.equivalenceTransported (skeletonEquivalence C).symm).inverse
  exact this

/--
The skeleton of a braided monoidal category can be viewed as a commutative monoid, where the
multiplication is given by the tensor product, and satisfies the monoid axioms since it is a
skeleton.
-/
noncomputable instance instCommMonoid [BraidedCategory C] : CommMonoid (Skeleton C) :=
  commMonoidOfSkeletalBraided (skeleton_isSkeleton _).skel

end Skeleton

end CategoryTheory
```
