# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Zero.Variantdf61cd07987503f97e780bae9105677f387ce2e95aa876e978a67e8736ae2655

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `188eb7bd2216aa9ca00ab6a972a2bc5f3b52d2e4` · SHA-256 `df61cd07987503f97e780bae9105677f387ce2e95aa876e978a67e8736ae2655`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Algebra.Category.Grp.Basic
import Mathlib.CategoryTheory.Limits.Shapes.ZeroObjects

/-!
# The category of (commutative) (additive) groups has a zero object.

`AddCommGroup` also has zero morphisms. For definitional reasons, we infer this from preadditivity
rather than from the existence of a zero object.
-/


open CategoryTheory

open CategoryTheory.Limits

universe u

namespace Grp

@[to_additive]
theorem isZero_of_subsingleton (G : Grp) [Subsingleton G] : IsZero G := by
  refine ⟨fun X => ⟨⟨⟨1⟩, fun f => ?_⟩⟩, fun X => ⟨⟨⟨1⟩, fun f => ?_⟩⟩⟩
  · ext x
    have : x = 1 := Subsingleton.elim _ _
    rw [this, map_one, map_one]
  · ext
    subsingleton

@[to_additive AddGrp.hasZeroObject]
instance : HasZeroObject Grp :=
  ⟨⟨of PUnit, isZero_of_subsingleton _⟩⟩

end Grp

namespace CommGrp

@[to_additive]
theorem isZero_of_subsingleton (G : CommGrp) [Subsingleton G] : IsZero G := by
  refine ⟨fun X => ⟨⟨⟨1⟩, fun f => ?_⟩⟩, fun X => ⟨⟨⟨1⟩, fun f => ?_⟩⟩⟩
  · ext x
    have : x = 1 := Subsingleton.elim _ _
    rw [this, map_one, map_one]
  · ext
    subsingleton

@[to_additive AddCommGrp.hasZeroObject]
instance : HasZeroObject CommGrp :=
  ⟨⟨of PUnit, isZero_of_subsingleton _⟩⟩

end CommGrp
```
