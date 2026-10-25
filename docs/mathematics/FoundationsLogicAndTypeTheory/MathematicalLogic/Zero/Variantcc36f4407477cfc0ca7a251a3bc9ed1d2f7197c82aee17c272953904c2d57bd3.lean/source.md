# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Zero.Variantcc36f4407477cfc0ca7a251a3bc9ed1d2f7197c82aee17c272953904c2d57bd3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8de0269aa398d8085f6b957a19912de001ee9bee` · SHA-256 `cc36f4407477cfc0ca7a251a3bc9ed1d2f7197c82aee17c272953904c2d57bd3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Mathlib.Algebra.Category.Grp.Basic
public import Mathlib.CategoryTheory.Limits.Shapes.ZeroObjects

/-!
# The category of (commutative) (additive) groups has a zero object.

`AddCommGroup` also has zero morphisms. For definitional reasons, we infer this from preadditivity
rather than from the existence of a zero object.
-/

public section

open CategoryTheory Limits

universe u

namespace GrpCat

@[to_additive]
theorem isZero_of_subsingleton (G : GrpCat) [Subsingleton G] : IsZero G := by
  refine ⟨fun X => ⟨⟨⟨1⟩, fun f => ?_⟩⟩, fun X => ⟨⟨⟨1⟩, fun f => ?_⟩⟩⟩
  · ext x
    have : x = 1 := Subsingleton.elim _ _
    rw [this, map_one, map_one]
  · ext
    subsingleton

@[to_additive AddGrpCat.hasZeroObject]
instance : HasZeroObject GrpCat :=
  ⟨⟨of PUnit, isZero_of_subsingleton _⟩⟩

@[to_additive]
lemma subsingleton_of_isZero {G : GrpCat} (h : Limits.IsZero G) :
    Subsingleton G :=
  (h.iso (isZero_of_subsingleton ↧PUnit)).groupIsoToMulEquiv.subsingleton

@[to_additive]
lemma isZero_iff_subsingleton {G : GrpCat} : Limits.IsZero G ↔ Subsingleton G :=
  ⟨fun h ↦ subsingleton_of_isZero h, fun _ ↦ isZero_of_subsingleton G⟩

@[to_additive]
lemma isZero_of_iff_subsingleton {G : Type*} [Group G] :
    Limits.IsZero (GrpCat.of G) ↔ Subsingleton G :=
  isZero_iff_subsingleton

end GrpCat

namespace CommGrpCat

@[to_additive]
theorem isZero_of_subsingleton (G : CommGrpCat) [Subsingleton G] : IsZero G := by
  refine ⟨fun X => ⟨⟨⟨1⟩, fun f => ?_⟩⟩, fun X => ⟨⟨⟨1⟩, fun f => ?_⟩⟩⟩
  · ext x
    have : x = 1 := Subsingleton.elim _ _
    rw [this, map_one, map_one]
  · ext
    subsingleton

@[to_additive AddCommGrpCat.hasZeroObject]
instance : HasZeroObject CommGrpCat :=
  ⟨⟨of PUnit, isZero_of_subsingleton _⟩⟩

@[to_additive]
lemma subsingleton_of_isZero {G : CommGrpCat} (h : Limits.IsZero G) :
    Subsingleton G :=
  (h.iso (isZero_of_subsingleton ↧PUnit)).commGroupIsoToMulEquiv.subsingleton

@[to_additive]
lemma isZero_iff_subsingleton {G : CommGrpCat} : Limits.IsZero G ↔ Subsingleton G :=
  ⟨fun h ↦ subsingleton_of_isZero h, fun _ ↦ isZero_of_subsingleton G⟩

@[to_additive]
lemma isZero_of_iff_subsingleton {G : Type*} [CommGroup G] :
    Limits.IsZero (CommGrpCat.of G) ↔ Subsingleton G :=
  isZero_iff_subsingleton

end CommGrpCat
```
