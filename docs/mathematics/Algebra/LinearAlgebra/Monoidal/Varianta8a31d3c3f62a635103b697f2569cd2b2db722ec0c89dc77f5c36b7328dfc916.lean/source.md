# Complete source: GRWTSK.Algebra.LinearAlgebra.Monoidal.Varianta8a31d3c3f62a635103b697f2569cd2b2db722ec0c89dc77f5c36b7328dfc916

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b2985dcd8fdf70bd74311ada4bf4bd4225ff4ff1` · SHA-256 `a8a31d3c3f62a635103b697f2569cd2b2db722ec0c89dc77f5c36b7328dfc916`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Amelia Livingston. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Amelia Livingston
-/
import Mathlib.Algebra.Category.BialgCat.Monoidal
import Mathlib.Algebra.Category.HopfAlgCat.Basic
import Mathlib.RingTheory.HopfAlgebra.TensorProduct

/-!
# The monoidal structure on the category of Hopf algebras

In `Mathlib/RingTheory/HopfAlgebra/TensorProduct.lean`, given two Hopf `R`-algebras `A, B`, we
define a Hopf `R`-algebra instance on `A ⊗[R] B`.

Here, we use this to declare a `MonoidalCategory` instance on the category of Hopf algebras, via
the existing monoidal structure on `BialgCat`.
-/

universe u

namespace HopfAlgCat
open CategoryTheory MonoidalCategory TensorProduct

variable (R : Type u) [CommRing R]

@[simps] noncomputable instance instMonoidalCategoryStruct :
    MonoidalCategoryStruct.{u} (HopfAlgCat R) where
  tensorObj X Y := of R (X ⊗[R] Y)
  whiskerLeft X _ _ f := ofHom (f.1.lTensor X)
  whiskerRight f X := ofHom (f.1.rTensor X)
  tensorHom f g := ofHom (Bialgebra.TensorProduct.map f.1 g.1)
  tensorUnit := of R R
  associator X Y Z := (Bialgebra.TensorProduct.assoc R X Y Z).toHopfAlgIso
  leftUnitor X := (Bialgebra.TensorProduct.lid R X).toHopfAlgIso
  rightUnitor X := (Bialgebra.TensorProduct.rid R X).toHopfAlgIso

/-- The data needed to induce a `MonoidalCategory` structure via
`HopfAlgCat.instMonoidalCategoryStruct` and the forgetful functor to bialgebras. -/
@[simps]
noncomputable def MonoidalCategory.inducingFunctorData :
    Monoidal.InducingFunctorData (forget₂ (HopfAlgCat R) (BialgCat R)) where
  μIso _ _ := Iso.refl _
  whiskerLeft_eq _ _ _ _ := by ext; rfl
  whiskerRight_eq _ _ := by ext; rfl
  tensorHom_eq _ _ := by ext; rfl
  εIso := Iso.refl _
  associator_eq _ _ _ := BialgCat.Hom.ext <| BialgHom.coe_linearMap_injective <|
    TensorProduct.ext <| TensorProduct.ext (by ext; rfl)
  leftUnitor_eq _ := BialgCat.Hom.ext <| BialgHom.coe_linearMap_injective <|
    TensorProduct.ext (by ext; rfl)
  rightUnitor_eq _ := BialgCat.Hom.ext <| BialgHom.coe_linearMap_injective <|
    TensorProduct.ext (by ext; rfl)

noncomputable instance instMonoidalCategory : MonoidalCategory (HopfAlgCat R) :=
  Monoidal.induced (forget₂ _ (BialgCat R)) (MonoidalCategory.inducingFunctorData R)

/-- `forget₂ (HopfAlgCat R) (BialgCat R)` is a monoidal functor. -/
noncomputable instance : (forget₂ (HopfAlgCat R) (BialgCat R)).Monoidal where

end HopfAlgCat
```
