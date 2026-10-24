# Complete source: GRWTSK.Algebra.UniversalAlgebra.Monoidal.Variant196e6bffac12cb28e07a9c84b72b56d285a11b16709897d3d98f7cb2324b7ddd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0899fdb84fce0dcc7828dcf8979e21ef650f108f` · SHA-256 `196e6bffac12cb28e07a9c84b72b56d285a11b16709897d3d98f7cb2324b7ddd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Amelia Livingston. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Amelia Livingston
-/
module

public import Mathlib.Algebra.Category.AlgCat.Monoidal
public import Mathlib.Algebra.Category.BialgCat.Basic
public import Mathlib.Algebra.Category.CoalgCat.Monoidal
public import Mathlib.RingTheory.Bialgebra.TensorProduct

/-!
# The monoidal structure on the category of bialgebras

In `Mathlib/RingTheory/Bialgebra/TensorProduct.lean`, given two `R`-bialgebras `A, B`, we define a
bialgebra instance on `A ⊗[R] B` as well as the tensor product of two `BialgHom`s as a
`BialgHom`, and the associator and left/right unitors for bialgebras as `BialgEquiv`s.
In this file, we declare a `MonoidalCategory` instance on the category of bialgebras, with data
fields given by the definitions in `Mathlib/RingTheory/Bialgebra/TensorProduct.lean`, and Prop
fields proved by pulling back the `MonoidalCategory` instance on the category of algebras,
using `Monoidal.induced`.

-/

@[expose] public section

universe u

namespace BialgCat
open CategoryTheory TensorProduct

variable (R : Type u) [CommRing R]

@[simps]
noncomputable instance instMonoidalCategoryStruct :
    MonoidalCategoryStruct.{u} (BialgCat R) where
  tensorObj X Y := of R (X ⊗[R] Y)
  whiskerLeft X _ _ f := ofHom (f.1.lTensor X)
  whiskerRight f X := ofHom (f.1.rTensor X)
  tensorHom f g := ofHom (Bialgebra.TensorProduct.map f.1 g.1)
  tensorUnit := of R R
  associator X Y Z := (Bialgebra.TensorProduct.assoc R R X Y Z).toBialgIso
  leftUnitor X := (Bialgebra.TensorProduct.lid R X).toBialgIso
  rightUnitor X := (Bialgebra.TensorProduct.rid R R X).toBialgIso

/-- The data needed to induce a `MonoidalCategory` structure via
`BialgCat.instMonoidalCategoryStruct` and the forgetful functor to algebras. -/
@[simps]
noncomputable def MonoidalCategory.inducingFunctorData :
    Monoidal.InducingFunctorData (forget₂ (BialgCat R) (AlgCat R)) where
  μIso _ _ := Iso.refl _
  whiskerLeft_eq _ _ _ _ := by ext; rfl
  whiskerRight_eq _ _ := by ext; rfl
  tensorHom_eq _ _ := by ext; rfl
  εIso := Iso.refl _
  associator_eq _ _ _ := AlgCat.hom_ext _ <| Algebra.TensorProduct.ext
    (Algebra.TensorProduct.ext (by ext; rfl) (by ext; rfl)) (by ext; rfl)
  leftUnitor_eq _ := AlgCat.hom_ext _ <| Algebra.TensorProduct.ext rfl (by ext; rfl)
  rightUnitor_eq _ := AlgCat.hom_ext _ <| Algebra.TensorProduct.ext (by ext; rfl) rfl

noncomputable instance instMonoidalCategory : MonoidalCategory (BialgCat R) :=
  Monoidal.induced (forget₂ _ (AlgCat R)) (MonoidalCategory.inducingFunctorData R)

/-- `forget₂ (BialgCat R) (AlgCat R)` as a monoidal functor. -/
noncomputable instance : (forget₂ (BialgCat R) (AlgCat R)).Monoidal where

set_option backward.isDefEq.respectTransparency false in
/-- `forget₂ (BialgCat R) (CoalgCat R)` as a monoidal functor. -/
noncomputable instance : (forget₂ (BialgCat R) (CoalgCat R)).Monoidal :=
  Functor.CoreMonoidal.toMonoidal {
    εIso := Iso.refl _
    μIso _ _ := Iso.refl _ }

end BialgCat
```
