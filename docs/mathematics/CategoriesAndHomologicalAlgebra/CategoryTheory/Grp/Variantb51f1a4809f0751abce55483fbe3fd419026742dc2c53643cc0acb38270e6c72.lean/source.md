# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Grp.Variantb51f1a4809f0751abce55483fbe3fd419026742dc2c53643cc0acb38270e6c72

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f78ff7579abdc9109727980280eb98a5cfecdaa0` · SHA-256 `b51f1a4809f0751abce55483fbe3fd419026742dc2c53643cc0acb38270e6c72`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
module

public import Mathlib.CategoryTheory.Monoidal.Internal.Types.Basic
public import Mathlib.CategoryTheory.Monoidal.Grp
public import Mathlib.Algebra.Category.Grp.Basic

/-!
# `Grp (Type u) ≌ GrpCat.{u}`

The category of internal group objects in `Type`
is equivalent to the category of "native" bundled groups.

Moreover, this equivalence is compatible with the forgetful functors to `Type`.
-/

@[expose] public section

assert_not_exists Field

universe v u

open CategoryTheory MonObj

namespace GrpTypeEquivalenceGrp

instance grpGroup (A : Type u) [GrpObj A] : Group A :=
  { MonTypeEquivalenceMon.monMonoid A with
    inv := ι[A]
    inv_mul_cancel a := ConcreteCategory.congr_hom (GrpObj.left_inv A) a }

/-- Converting a group object in `Type u` into a group. -/
noncomputable def functor : Grp (Type u) ⥤ GrpCat.{u} where
  obj A := ↧A.X
  map f := GrpCat.ofHom (MonTypeEquivalenceMon.functor.map f.hom).hom

/-- Converting a group into a group object in `Type u`. -/
noncomputable def inverse : GrpCat.{u} ⥤ Grp (Type u) where
  obj A :=
    { MonTypeEquivalenceMon.inverse.obj ((forget₂ GrpCat MonCat).obj A) with
      grp :=
        { inv := ↾((·⁻¹) : A → A)
          left_inv := by
            ext x
            exact inv_mul_cancel (G := A) x
          right_inv := by
            ext x
            exact mul_inv_cancel (G := A) x } }
  map f := Grp.homMk' (MonTypeEquivalenceMon.inverse.map ((forget₂ GrpCat MonCat).map f))

end GrpTypeEquivalenceGrp

/-- The category of group objects in `Type u` is equivalent to the category of groups. -/
noncomputable def grpTypeEquivalenceGrp : Grp (Type u) ≌ GrpCat.{u} where
  functor := GrpTypeEquivalenceGrp.functor
  inverse := GrpTypeEquivalenceGrp.inverse
  unitIso := Iso.refl _
  counitIso := NatIso.ofComponents
    (fun A => MulEquiv.toGrpIso { Equiv.refl _ with map_mul' := fun _ _ => rfl })
    (by cat_disch)

/-- The equivalences `Mon (Type u) ≌ MonCat.{u}` and `Grp (Type u) ≌ GrpCat.{u}`
are naturally compatible with the forgetful functors to `MonCat` and `Mon (Type u)`.
-/
noncomputable def grpTypeEquivalenceGrpForget :
    GrpTypeEquivalenceGrp.functor ⋙ forget₂ GrpCat MonCat ≅
      Grp.forget₂Mon (Type u) ⋙ MonTypeEquivalenceMon.functor :=
  Iso.refl _
```
