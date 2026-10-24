# Complete source: GRWTSK.Algebra.LinearAlgebra.Monoidal.Variant33f92389fedc08f69d1c7cb41a5b6ec18f3252d50554fa60a47549db00f124eb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `13f85df42c9059d4a74b604bd660bd473a2ffb21` · SHA-256 `33f92389fedc08f69d1c7cb41a5b6ec18f3252d50554fa60a47549db00f124eb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.CategoryTheory.Monoidal.Transport
import Mathlib.Algebra.Category.AlgCat.Basic
import Mathlib.Algebra.Category.ModuleCat.Monoidal.Basic
import Mathlib.RingTheory.TensorProduct.Basic

/-!
# The monoidal category structure on R-algebras
-/

open CategoryTheory
open scoped MonoidalCategory

universe v u

variable {R : Type u} [CommRing R]

namespace AlgCat

noncomputable section

namespace instMonoidalCategory

open scoped TensorProduct

/-- Auxiliary definition used to fight a timeout when building
`AlgCat.instMonoidalCategory`. -/
@[simps!]
noncomputable abbrev tensorObj (X Y : AlgCat.{u} R) : AlgCat.{u} R :=
  of R (X ⊗[R] Y)

/-- Auxiliary definition used to fight a timeout when building
`AlgCat.instMonoidalCategory`. -/
noncomputable abbrev tensorHom {W X Y Z : AlgCat.{u} R} (f : W ⟶ X) (g : Y ⟶ Z) :
    tensorObj W Y ⟶ tensorObj X Z :=
  ofHom <| Algebra.TensorProduct.map f.hom g.hom

open MonoidalCategory

end instMonoidalCategory

open instMonoidalCategory

instance : MonoidalCategoryStruct (AlgCat.{u} R) where
  tensorObj := instMonoidalCategory.tensorObj
  whiskerLeft X _ _ f := tensorHom (𝟙 X) f
  whiskerRight {X₁ X₂} (f : X₁ ⟶ X₂) Y := tensorHom f (𝟙 Y)
  tensorHom := tensorHom
  tensorUnit := of R R
  associator X Y Z := (Algebra.TensorProduct.assoc R X Y Z).toAlgebraIso
  leftUnitor X := (Algebra.TensorProduct.lid R X).toAlgebraIso
  rightUnitor X := (Algebra.TensorProduct.rid R R X).toAlgebraIso

noncomputable instance instMonoidalCategory : MonoidalCategory (AlgCat.{u} R) :=
  Monoidal.induced
    (forget₂ (AlgCat R) (ModuleCat R))
    { μIso := fun _ _ => Iso.refl _
      εIso := Iso.refl _
      associator_eq := fun _ _ _ =>
        ModuleCat.hom_ext <| TensorProduct.ext_threefold (fun _ _ _ => rfl)
      leftUnitor_eq := fun _ => ModuleCat.hom_ext <| TensorProduct.ext' (fun _ _ => rfl)
      rightUnitor_eq := fun _ => ModuleCat.hom_ext <| TensorProduct.ext' (fun _ _ => rfl) }

/-- `forget₂ (AlgCat R) (ModuleCat R)` as a monoidal functor. -/
example : (forget₂ (AlgCat R) (ModuleCat R)).Monoidal := inferInstance

end

end AlgCat
```
