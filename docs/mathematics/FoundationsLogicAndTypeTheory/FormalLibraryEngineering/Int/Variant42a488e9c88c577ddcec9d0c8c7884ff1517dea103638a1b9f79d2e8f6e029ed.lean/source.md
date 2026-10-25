# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Int.Variant42a488e9c88c577ddcec9d0c8c7884ff1517dea103638a1b9f79d2e8f6e029ed

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9cbd6d064274fccf637db9bddabd33206b00ce7` · SHA-256 `42a488e9c88c577ddcec9d0c8c7884ff1517dea103638a1b9f79d2e8f6e029ed`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
public import Init.Grind.Ring.Basic
public import Init.Data.Int.Lemmas
public import Init.Data.Int.Pow
import Init.Data.Int.DivMod.Lemmas
import Init.Meta

public section

namespace Lean.Grind

instance : CommRing Int where
  nsmul := ⟨(· * ·)⟩
  add_assoc := Int.add_assoc
  add_comm := Int.add_comm
  add_zero := Int.add_zero
  neg_add_cancel := Int.add_left_neg
  mul_assoc := Int.mul_assoc
  mul_comm := Int.mul_comm
  mul_one := Int.mul_one
  one_mul := Int.one_mul
  left_distrib := Int.mul_add
  right_distrib := Int.add_mul
  zero_mul := Int.zero_mul
  mul_zero := Int.mul_zero
  pow_zero := Int.pow_zero
  pow_succ := Int.pow_succ
  ofNat_succ _ := by rfl
  sub_eq_add_neg _ _ := Int.sub_eq_add_neg
  neg_zsmul := Int.neg_mul

instance : IsCharP Int 0 := IsCharP.mk' _ _
  (ofNat_eq_zero_iff := fun x => by erw [Int.ofNat_eq_zero]; simp)

instance : NoNatZeroDivisors Int where
  no_nat_zero_divisors k a b h₁ h₂ := by
    replace h₁ : (k : Int) ≠ 0 := by simp [h₁]
    cases Int.mul_eq_mul_left_iff h₁ |>.mp h₂
    rfl

end Lean.Grind
```
