# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BitVec.Variant1efd45ec94a4cabe473e6fecb9c1d1763a4a2915dc4004b904838da0f3a5fe56

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bbe5b72b928ae5ceeb3ce2da8b101cfcd4978a42` · SHA-256 `1efd45ec94a4cabe473e6fecb9c1d1763a4a2915dc4004b904838da0f3a5fe56`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
public import Init.GrindInstances.ToInt
import all Init.Data.BitVec.Basic
import all Init.Grind.ToInt
public import Init.Data.BitVec.Lemmas
public import Init.Grind.Ring.Basic
import Init.Data.BitVec.Bootstrap
import Init.Grind.Ring.ToInt

public section

namespace Lean.Grind

instance : CommRing (BitVec w) where
  nsmul := ⟨(· * ·)⟩
  zsmul := ⟨(· * ·)⟩
  add_assoc := BitVec.add_assoc
  add_comm := BitVec.add_comm
  add_zero := BitVec.add_zero
  neg_add_cancel := BitVec.add_left_neg
  mul_assoc := BitVec.mul_assoc
  mul_comm := BitVec.mul_comm
  mul_one := BitVec.mul_one
  one_mul := BitVec.one_mul
  left_distrib _ _ _ := BitVec.mul_add
  right_distrib _ _ _ := BitVec.add_mul
  zero_mul _ := BitVec.zero_mul
  mul_zero _ := BitVec.mul_zero
  sub_eq_add_neg := BitVec.sub_eq_add_neg
  pow_zero _ := BitVec.pow_zero
  pow_succ _ _ := BitVec.pow_succ
  ofNat_succ x := BitVec.ofNat_add x 1
  intCast_neg _ := BitVec.ofInt_neg
  neg_zsmul i x := by
    change (BitVec.ofInt _ (-i) * x = _)
    rw [BitVec.ofInt_neg]
    rw [BitVec.neg_mul]
    rfl
  zsmul_natCast_eq_nsmul _ _ := rfl

instance : IsCharP (BitVec w) (2 ^ w) := IsCharP.mk' _ _
  (ofNat_eq_zero_iff := fun x => by simp [BitVec.toNat_eq])

-- Verify we can derive the instances showing how `toInt` interacts with operations:
example : ToInt.Add (BitVec w) (.uint w) := inferInstance
example : ToInt.Neg (BitVec w) (.uint w) := inferInstance
example : ToInt.Sub (BitVec w) (.uint w) := inferInstance

instance : ToInt.Pow (BitVec w) (.uint w) :=
  ToInt.pow_of_semiring (by simp)

end Lean.Grind
```
