# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Floor.Varianta0fd602c31208b32d9728e380ed49092b8177420214449e282a908dfe97fefa0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dabe9da47d680e748ec25175d87eee2434d76bd6` · SHA-256 `a0fd602c31208b32d9728e380ed49092b8177420214449e282a908dfe97fefa0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Yuyang Zhao. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yuyang Zhao
-/
import Mathlib.Algebra.Order.Floor.Semiring
import Mathlib.Order.Filter.AtTopBot.Finite

/-!
# `a * c ^ n < (n - d)!` holds true for sufficiently large `n`.
-/

open Filter
open scoped Nat

variable {K : Type*} [Ring K] [LinearOrder K] [IsStrictOrderedRing K] [FloorSemiring K]

theorem FloorSemiring.eventually_mul_pow_lt_factorial_sub (a c : K) (d : ℕ) :
    ∀ᶠ n in atTop, a * c ^ n < (n - d)! := by
  filter_upwards [Nat.eventually_mul_pow_lt_factorial_sub ⌈|a|⌉₊ ⌈|c|⌉₊ d] with n h
  calc a * c ^ n
    _ ≤ |a * c ^ n| := le_abs_self _
    _ ≤ ⌈|a|⌉₊ * (⌈|c|⌉₊ : K) ^ n := ?_
    _ = ↑(⌈|a|⌉₊ * ⌈|c|⌉₊ ^ n) := ?_
    _ < (n - d)! := Nat.cast_lt.mpr h
  · rw [abs_mul, abs_pow]
    gcongr <;> try first | positivity | apply Nat.le_ceil
  · simp_rw [Nat.cast_mul, Nat.cast_pow]
```
