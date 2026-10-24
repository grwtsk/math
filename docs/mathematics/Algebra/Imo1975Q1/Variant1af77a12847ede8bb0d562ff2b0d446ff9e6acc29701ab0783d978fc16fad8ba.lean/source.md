# Complete source: GRWTSK.Algebra.Imo1975Q1.Variant1af77a12847ede8bb0d562ff2b0d446ff9e6acc29701ab0783d978fc16fad8ba

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4f2673edea2a46ccb63820edd7ba2de5cd5bacd5` · SHA-256 `1af77a12847ede8bb0d562ff2b0d446ff9e6acc29701ab0783d978fc16fad8ba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Mantas Bakšys. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mantas Bakšys
-/
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.Order.Rearrangement
import Mathlib.Data.Real.Basic
import Mathlib.Order.Interval.Finset.Nat

/-!
# IMO 1975 Q1

Let `x₁, x₂, ... , xₙ` and `y₁, y₂, ... , yₙ` be two sequences of real numbers, such that
`x₁ ≥ x₂ ≥ ... ≥ xₙ` and `y₁ ≥ y₂ ≥ ... ≥ yₙ`. Prove that if `z₁, z₂, ... , zₙ` is any permutation
of `y₁, y₂, ... , yₙ`, then `∑ (xᵢ - yᵢ)^2 ≤ ∑ (xᵢ - zᵢ)^2`

# Solution

Firstly, we expand the squares within both sums and distribute into separate finite sums. Then,
noting that `∑ yᵢ ^ 2 = ∑ zᵢ ^ 2`, it remains to prove that `∑ xᵢ * zᵢ ≤ ∑ xᵢ * yᵢ`, which is true
by the Rearrangement Inequality
-/


/- Let `n` be a natural number, `x` and `y` be as in the problem statement and `σ` be the
permutation of natural numbers such that `z = y ∘ σ` -/
variable (n : ℕ) (σ : Equiv.Perm ℕ) (x y : ℕ → ℝ)

theorem imo1975_q1 (hσ : {x | σ x ≠ x} ⊆ Finset.Icc 1 n)
    (hx : AntitoneOn x (Finset.Icc 1 n)) (hy : AntitoneOn y (Finset.Icc 1 n)) :
    ∑ i ∈ Finset.Icc 1 n, (x i - y i) ^ 2 ≤ ∑ i ∈ Finset.Icc 1 n, (x i - y (σ i)) ^ 2 := by
  simp only [sub_sq, Finset.sum_add_distrib, Finset.sum_sub_distrib]
  -- a finite sum is invariant if we permute the order of summation
  have hσy : ∑ i ∈ Finset.Icc 1 n, y i ^ 2 = ∑ i ∈ Finset.Icc 1 n, y (σ i) ^ 2 := by
    rw [← Equiv.Perm.sum_comp σ (Finset.Icc 1 n) _ hσ]
  -- let's cancel terms appearing on both sides
  rw [hσy, add_le_add_iff_right, sub_le_sub_iff_left]
  simp only [gt_iff_lt, Nat.lt_one_iff, mul_assoc, ← Finset.mul_sum, zero_lt_two, mul_le_mul_left]
  -- what's left to prove is a version of the rearrangement inequality
  apply MonovaryOn.sum_mul_comp_perm_le_sum_mul _ hσ
  -- finally we need to show that `x` and `y` 'vary' together on `[1, n]` and this is due to both of
  -- them being `decreasing`
  exact AntitoneOn.monovaryOn hx hy
```
