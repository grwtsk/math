# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EquivalenceGroupAddGroup.Variantfec26d111abb0afee4742868c40bd8575c948347b3b50cd60c14ff04378a02b5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bcf2e1021df57bb270d4dd0cdc07fc443c071152` · SHA-256 `fec26d111abb0afee4742868c40bd8575c948347b3b50cd60c14ff04378a02b5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jujian Zhang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jujian Zhang
-/
import Mathlib.Algebra.Category.Grp.Basic

/-!
# Equivalence between `Group` and `AddGroup`

This file contains two equivalences:
* `groupAddGroupEquivalence` : the equivalence between `Grp` and `AddGrp` by sending
  `X : Grp` to `Additive X` and `Y : AddGrp` to `Multiplicative Y`.
* `commGroupAddCommGroupEquivalence` : the equivalence between `CommGrp` and `AddCommGrp`
  by sending `X : CommGrp` to `Additive X` and `Y : AddCommGrp` to `Multiplicative Y`.
-/


open CategoryTheory

namespace Grp

/-- The functor `Grp ⥤ AddGrp` by sending `X ↦ Additive X` and `f ↦ f`.
-/
@[simps]
def toAddGrp : Grp ⥤ AddGrp where
  obj X := AddGrp.of (Additive X)
  map {_} {_} f := AddGrp.ofHom f.hom.toAdditive

end Grp

namespace CommGrp

/-- The functor `CommGrp ⥤ AddCommGrp` by sending `X ↦ Additive X` and `f ↦ f`.
-/
@[simps]
def toAddCommGrp : CommGrp ⥤ AddCommGrp where
  obj X := AddCommGrp.of (Additive X)
  map {_} {_} f := AddCommGrp.ofHom f.hom.toAdditive

end CommGrp

namespace AddGrp

/-- The functor `AddGrp ⥤ Grp` by sending `X ↦ Multiplicative Y` and `f ↦ f`.
-/
@[simps]
def toGrp : AddGrp ⥤ Grp where
  obj X := Grp.of (Multiplicative X)
  map {_} {_} f := Grp.ofHom f.hom.toMultiplicative

end AddGrp

namespace AddCommGrp

/-- The functor `AddCommGrp ⥤ CommGrp` by sending `X ↦ Multiplicative Y` and `f ↦ f`.
-/
@[simps]
def toCommGrp : AddCommGrp ⥤ CommGrp where
  obj X := CommGrp.of (Multiplicative X)
  map {_} {_} f := CommGrp.ofHom f.hom.toMultiplicative

end AddCommGrp

/-- The equivalence of categories between `Grp` and `AddGrp`
-/
@[simps]
def groupAddGroupEquivalence : Grp ≌ AddGrp where
  functor := Grp.toAddGrp
  inverse := AddGrp.toGrp
  unitIso := Iso.refl _
  counitIso := Iso.refl _

/-- The equivalence of categories between `CommGrp` and `AddCommGrp`.
-/
@[simps]
def commGroupAddCommGroupEquivalence : CommGrp ≌ AddCommGrp where
  functor := CommGrp.toAddCommGrp
  inverse := AddCommGrp.toCommGrp
  unitIso := Iso.refl _
  counitIso := Iso.refl _
```
