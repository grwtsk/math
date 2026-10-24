# Complete source: GRWTSK.Algebra.Ring.Variant20a6dbbc2d5b18bbc61586b6ddf8eb20996fdecccc41134882d11acc566ee914

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `67949b354e6a94c114eab2fdcf7c123101e6cddc` · SHA-256 `20a6dbbc2d5b18bbc61586b6ddf8eb20996fdecccc41134882d11acc566ee914`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Moritz Doll. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Moritz Doll
-/
module

public import Mathlib.Data.FunLike.Group
public import Mathlib.Algebra.Ring.Defs
public import Mathlib.Tactic.Finiteness.Attr

/-! # Ring instances for `FunLike` types
In this file we define various instances related to ring for `FunLike` types.

Note that currently, these are not registered as instances, but only `abbrev`s to avoid long
typeclass searches.
-/

public section

variable {F α : Type*}

section MonoidWithZero

variable [FunLike F α α] [Zero F] [One F] [Mul F] [Zero α]
  [IsZeroApply F α α] [IsOneApplyEqSelf F α] [IsMulApplyEqComp F α]
  [ZeroHomClass F α α]

/-- A `FunLike` type with `(f + g) x = f x + g x` and `(f * g) x = f (g x)` is a `MonoidWithZero`
if `α` is a `MonoidWithZero`. -/
protected abbrev FunLike.monoidWithZero : MonoidWithZero F where
  mul_zero f := by apply DFunLike.ext; simp
  zero_mul _ := by apply DFunLike.ext; simp
  mul_one _ := by apply DFunLike.ext; simp
  one_mul _ := by apply DFunLike.ext; simp
  mul_assoc _ _ _ := by apply DFunLike.ext; simp

end MonoidWithZero

section Semiring

variable [FunLike F α α] [Zero F] [One F] [Mul F] [Add F] [AddCommMonoid α]
  [IsZeroApply F α α] [IsAddApply F α α] [IsOneApplyEqSelf F α] [IsMulApplyEqComp F α]
  [SMul ℕ F] [IsSMulApply ℕ F α α] [AddMonoidHomClass F α α] [NatCast F] [IsNatCastApply F α]

/-- A `FunLike` type with `(f + g) x = f x + g x` and `(f * g) x = f (g x)` is a `Semiring` if `α`
is a `Semiring`. -/
protected abbrev FunLike.semiring : Semiring F where
  __ := FunLike.monoidWithZero
  __ := FunLike.addCommMonoid
  left_distrib f g h := by apply DFunLike.ext; simp
  right_distrib _ _ _ := by apply DFunLike.ext; simp
  natCast_zero := by apply DFunLike.ext; simp
  natCast_succ n := by apply DFunLike.ext; simp [succ_nsmul]

end Semiring

section Ring

variable [FunLike F α α] [Zero F] [One F] [Mul F] [Add F] [Neg F] [Sub F]
  [AddCommGroup α]
  [IsZeroApply F α α] [IsAddApply F α α] [IsOneApplyEqSelf F α] [IsMulApplyEqComp F α]
  [IsNegApply F α α] [IsSubApply F α α]
  [SMul ℕ F] [IsSMulApply ℕ F α α]
  [SMul ℤ F] [IsSMulApply ℤ F α α] [AddMonoidHomClass F α α]
  [NatCast F] [IsNatCastApply F α] [IntCast F] [IsIntCastApply F α]

/-- A `FunLike` type with `(f + g) x = f x + g x` and `(f * g) x = f (g x)` is a `Ring` if `α` is a
`Ring`. -/
protected abbrev FunLike.ring : Ring F where
  __ := FunLike.semiring
  __ := FunLike.addCommGroup
  intCast_ofNat _ := by apply DFunLike.ext; simp
  intCast_negSucc n := by apply DFunLike.ext; simp [succ_nsmul]

end Ring
```
