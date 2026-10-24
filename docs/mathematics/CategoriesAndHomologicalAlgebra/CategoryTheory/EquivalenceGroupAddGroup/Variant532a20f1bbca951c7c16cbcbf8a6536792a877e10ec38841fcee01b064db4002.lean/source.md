# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EquivalenceGroupAddGroup.Variant532a20f1bbca951c7c16cbcbf8a6536792a877e10ec38841fcee01b064db4002

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ac95b83a04e457e47c81f0e3afd533c4c59d8f72` · SHA-256 `532a20f1bbca951c7c16cbcbf8a6536792a877e10ec38841fcee01b064db4002`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jujian Zhang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jujian Zhang
-/
module

public import Mathlib.Algebra.Category.Grp.Basic

/-!
# Equivalence between `Group` and `AddGroup`

This file contains two equivalences:
* `groupAddGroupEquivalence` : the equivalence between `GrpCat` and `AddGrpCat` by sending
  `X : GrpCat` to `Additive X` and `Y : AddGrpCat` to `Multiplicative Y`.
* `commGroupAddCommGroupEquivalence` : the equivalence between `CommGrpCat` and `AddCommGrpCat`
  by sending `X : CommGrpCat` to `Additive X` and `Y : AddCommGrpCat` to `Multiplicative Y`.
-/

@[expose] public section


open CategoryTheory

namespace GrpCat

/-- The functor `GrpCat ⥤ AddGrpCat` by sending `X ↦ Additive X` and `f ↦ f`.
-/
@[simps]
def toAddGrp : GrpCat ⥤ AddGrpCat where
  obj X := ↧(Additive X)
  map {_} {_} f := AddGrpCat.ofHom f.hom.toAdditive

end GrpCat

namespace CommGrpCat

/-- The functor `CommGrpCat ⥤ AddCommGrpCat` by sending `X ↦ Additive X` and `f ↦ f`.
-/
@[simps]
def toAddCommGrp : CommGrpCat ⥤ AddCommGrpCat where
  obj X := ↧(Additive X)
  map {_} {_} f := AddCommGrpCat.ofHom f.hom.toAdditive

end CommGrpCat

namespace AddGrpCat

/-- The functor `AddGrpCat ⥤ GrpCat` by sending `X ↦ Multiplicative X` and `f ↦ f`.
-/
@[simps]
def toGrp : AddGrpCat ⥤ GrpCat where
  obj X := ↧(Multiplicative X)
  map {_} {_} f := GrpCat.ofHom f.hom.toMultiplicative

end AddGrpCat

namespace AddCommGrpCat

/-- The functor `AddCommGrpCat ⥤ CommGrpCat` by sending `X ↦ Multiplicative X` and `f ↦ f`.
-/
@[simps]
def toCommGrp : AddCommGrpCat ⥤ CommGrpCat where
  obj X := ↧(Multiplicative X)
  map {_} {_} f := CommGrpCat.ofHom f.hom.toMultiplicative

end AddCommGrpCat

/-- The equivalence of categories between `GrpCat` and `AddGrpCat`
-/
@[simps]
def groupAddGroupEquivalence : GrpCat ≌ AddGrpCat where
  functor := GrpCat.toAddGrp
  inverse := AddGrpCat.toGrp
  unitIso := Iso.refl _
  counitIso := Iso.refl _

/-- The equivalence of categories between `CommGrpCat` and `AddCommGrpCat`.
-/
@[simps]
def commGroupAddCommGroupEquivalence : CommGrpCat ≌ AddCommGrpCat where
  functor := CommGrpCat.toAddCommGrp
  inverse := AddCommGrpCat.toCommGrp
  unitIso := Iso.refl _
  counitIso := Iso.refl _
```
