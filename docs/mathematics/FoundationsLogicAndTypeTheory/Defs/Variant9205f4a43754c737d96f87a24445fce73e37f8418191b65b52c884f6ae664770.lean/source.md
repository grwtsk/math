# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Defs.Variant9205f4a43754c737d96f87a24445fce73e37f8418191b65b52c884f6ae664770

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8054694a0be89aa2efd05116b5fadf302068af30` · SHA-256 `9205f4a43754c737d96f87a24445fce73e37f8418191b65b52c884f6ae664770`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Mathlib.Tactic.Positivity
public import Mathlib.Algebra.Order.Field.Basic

/-!
# Rational approximations to square roots of naturals

This file defines `Nat.ratSqrt x prec`, a rational approximation of the square root of a
natural number `x` to within `1 / prec`, and proves the basic bounds it satisfies.

See also `Mathlib.Analysis.Rat.NatSqrt.Real` for comparisons with the real square root.
-/

@[expose] public section

namespace Nat

/--
Approximate the square root of a natural number as a rational number, to within `1 / prec`.
-/
def ratSqrt (x : ℕ) (prec : ℕ) : ℚ := ((x * prec ^ 2).sqrt : ℚ) / prec

theorem ratSqrt_nonneg (x prec : ℕ) : 0 ≤ ratSqrt x prec := by
  unfold ratSqrt
  positivity

theorem ratSqrt_sq_le (x : ℕ) {prec : ℕ} (h : 0 < prec) : (ratSqrt x prec) ^ 2 ≤ x := by
  unfold ratSqrt
  rw [div_pow, div_le_iff₀ (by positivity)]
  norm_cast
  exact sqrt_le' (x * prec ^ 2)

theorem lt_ratSqrt_add_inv_prec_sq (x : ℕ) {prec : ℕ} (h : 0 < prec) :
    x < (ratSqrt x prec + 1 / prec) ^ 2 := by
  unfold ratSqrt
  rw [← mul_lt_mul_iff_of_pos_right (a := (prec ^ 2 : ℚ)) (by positivity)]
  rw [← mul_pow, add_mul]
  rw [div_mul_cancel₀, div_mul_cancel₀]
  · norm_cast
    exact lt_succ_sqrt' (x * prec ^ 2)
  all_goals norm_cast; positivity

end Nat
```
