# Complete source: GRWTSK.Analysis.SpecialFunctions.ExponentialPolynomialDomination

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3566e10e2a75b8364c4577ebc8a7622b57f1aa2c` · SHA-256 `47961f1ecf71fcf1891b14131e5eea6d7ebc54d14dfc9c2b27ffff9329b0bc81`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under MIT license as described in the file LICENSE.
Human mathematical direction: grwtsk contributors.
Assistance: OpenAI Codex.
Mathlib imports and their results retain their upstream Apache-2.0 license.
-/

import Mathlib.Analysis.Complex.Exponential
import Mathlib.Data.Nat.Factorial.Basic
import Mathlib.Tactic

/-!
Current source verification is recorded in
`evidence/Analysis/InnerProductSpace/CausalRealization/formalization-admission.json`.
Original draft annotations and failed checks remain in the preserved evidence archive.

# An explicit exponential bound for a fixed polynomial allowance

The coefficient is a fixed nonnegative real number and the degree is a fixed
natural number. The proof uses a single finite-series term and an explicit
threshold; there is no asymptotic premise. These are generic scalar estimates,
with no assertion about a signed arithmetic vector or a realization's existence.
-/

namespace GRWTSK.Analysis.SpecialFunctions.ExponentialPolynomialDomination

/-- A fixed polynomial allowance is strictly below the exponential beyond an explicit bound.

The factorial is cast to the reals, and the strict horizon premise is essential
to this finite-series proof. The statement permits coefficient zero and degree zero.
-/
theorem polynomial_lt_exp_two_mul_div_four (C : ℝ) (d : ℕ) {T : ℝ}
    (hC : 0 ≤ C) (hT : 1 ≤ T)
    (beyond : 2 * C * ((d + 1).factorial : ℝ) < T) :
    C * (1 + T) ^ d < Real.exp (2 * T) / 4 := by
  let f : ℝ := (d + 1).factorial
  have hf : 0 < f := Nat.cast_pos.2 (Nat.factorial_pos (d + 1))
  have hbase : 0 ≤ 1 + T := by linarith
  have hbase_le : 1 + T ≤ 2 * T := by linarith
  have hpoly : (1 + T) ^ d ≤ (2 * T) ^ d := pow_le_pow_left₀ hbase hbase_le d
  have hx : 0 < 2 * T := by linarith
  have hp : 0 < (2 * T) ^ d := pow_pos hx d
  have hbeyond : 2 * C * f < T := beyond
  have hscalar : 4 * C * f < 2 * T := by linarith only [hbeyond]
  have hstrict : C * (2 * T) ^ d < ((2 * T) ^ (d + 1) / f) / 4 := by
    have hfour : (0 : ℝ) < 4 := by norm_num
    apply (lt_div_iff₀ hfour).2
    apply (lt_div_iff₀ hf).2
    calc
      (C * (2 * T) ^ d * 4) * f = (4 * C * f) * (2 * T) ^ d := by ring
      _ < (2 * T) * (2 * T) ^ d := mul_lt_mul_of_pos_right hscalar hp
      _ = (2 * T) ^ (d + 1) := by
        rw [pow_succ]
        exact mul_comm (2 * T) ((2 * T) ^ d)
  have hseries : (2 * T) ^ (d + 1) / f ≤ Real.exp (2 * T) :=
    Real.pow_div_factorial_le_exp (2 * T) hx.le (d + 1)
  calc
    C * (1 + T) ^ d ≤ C * (2 * T) ^ d :=
      mul_le_mul_of_nonneg_left hpoly hC
    _ < ((2 * T) ^ (d + 1) / f) / 4 := hstrict
    _ ≤ Real.exp (2 * T) / 4 :=
      div_le_div_of_nonneg_right hseries (by norm_num)

/-- The displayed threshold suffices for every greater or equal horizon. -/
theorem polynomial_lt_exp_two_mul_div_four_of_ge_threshold (C : ℝ) (d : ℕ) {T : ℝ}
    (hC : 0 ≤ C)
    (hT : max 1 (2 * C * ((d + 1).factorial : ℝ)) + 1 ≤ T) :
    C * (1 + T) ^ d < Real.exp (2 * T) / 4 := by
  have hleft : (1 : ℝ) ≤ max 1 (2 * C * ((d + 1).factorial : ℝ)) :=
    le_max_left _ _
  have hright : 2 * C * ((d + 1).factorial : ℝ) ≤
      max 1 (2 * C * ((d + 1).factorial : ℝ)) := le_max_right _ _
  have hone : 1 ≤ T := by linarith
  have hbeyond : 2 * C * ((d + 1).factorial : ℝ) < T := by linarith
  exact polynomial_lt_exp_two_mul_div_four C d hC hone hbeyond

end GRWTSK.Analysis.SpecialFunctions.ExponentialPolynomialDomination
```
