# Complete source: GRWTSK.Analysis.SpecialFunctions.ExponentialFloorGap

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `85008d082fb3322f496501cefaad022547c7c71e` · SHA-256 `7ea5e86cfbfe6c77988c08f7d0cb17cf89f7fe0eb4bb027f881c4e490882da6b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under MIT license as described in the file LICENSE.
Human mathematical direction: grwtsk contributors.
Assistance: OpenAI Codex.
Mathlib imports and their results retain their upstream Apache-2.0 license.
-/

import Mathlib.Algebra.Order.Archimedean.Real.Basic
import Mathlib.Algebra.Order.Floor.Semiring
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Tactic

/-!
Current source verification is recorded in
`evidence/Analysis/InnerProductSpace/CausalRealization/formalization-admission.json`.
Original draft annotations and failed checks remain in the preserved evidence archive.

# Exponential floor gaps

These statements concern the natural floor of a nonnegative-horizon exponential
and a scalar cost implication. They assert no realization or arithmetic estimate.
No polynomial exclusion is included.
-/

namespace GRWTSK.Analysis.SpecialFunctions.ExponentialFloorGap

/-- A nonnegative horizon has a positive natural exponential floor. -/
theorem one_le_natFloor_exp (T : ℝ) (hT : 0 ≤ T) :
    1 ≤ Nat.floor (Real.exp T) := by
  exact (Nat.one_le_floor_iff (Real.exp T)).2 (Real.one_le_exp hT)

theorem natFloor_exp_pos (T : ℝ) (hT : 0 ≤ T) :
    0 < Nat.floor (Real.exp T) := by
  exact lt_of_lt_of_le Nat.zero_lt_one (one_le_natFloor_exp T hT)

theorem natFloor_exp_cast_pos (T : ℝ) (hT : 0 ≤ T) :
    0 < (Nat.floor (Real.exp T) : ℝ) := by
  exact Nat.cast_pos.2 (natFloor_exp_pos T hT)

/-- The lower floor inequality needs no restriction on the horizon. -/
theorem natFloor_exp_le (T : ℝ) :
    (Nat.floor (Real.exp T) : ℝ) ≤ Real.exp T := by
  exact Nat.floor_le (Real.exp_pos T).le

/-- The strict upper floor inequality also holds at exact integer contact. -/
theorem exp_lt_natFloor_add_one (T : ℝ) :
    Real.exp T < (Nat.floor (Real.exp T) : ℝ) + 1 := by
  exact Nat.lt_floor_add_one (Real.exp T)

/-- The logarithmic gap is nonnegative, including exact contact. -/
theorem gap_nonneg (T : ℝ) (hT : 0 ≤ T) :
    0 ≤ T - Real.log (Nat.floor (Real.exp T) : ℝ) := by
  have hlog := Real.log_le_log (natFloor_exp_cast_pos T hT) (natFloor_exp_le T)
  rw [Real.log_exp] at hlog
  linarith

/-- The last-floor logarithmic gap is strictly smaller than the reciprocal floor. -/
theorem gap_lt_inv_natFloor (T : ℝ) (hT : 0 ≤ T) :
    T - Real.log (Nat.floor (Real.exp T) : ℝ) <
      1 / (Nat.floor (Real.exp T) : ℝ) := by
  let m : ℝ := Nat.floor (Real.exp T)
  have hm : 0 < m := natFloor_exp_cast_pos T hT
  have hm1 : 0 < m + 1 := by linarith
  have hupper : T < Real.log (m + 1) := by
    have hlog := Real.log_lt_log (Real.exp_pos T) (exp_lt_natFloor_add_one T)
    simpa only [Real.log_exp] using hlog
  have hgap : T - Real.log m < Real.log ((m + 1) / m) := by
    rw [Real.log_div hm1.ne' hm.ne']
    linarith
  have htangent : Real.log ((m + 1) / m) ≤ 1 / m := by
    calc
      Real.log ((m + 1) / m) ≤ (m + 1) / m - 1 :=
        Real.log_le_sub_one_of_pos (div_pos hm1 hm)
      _ = (m + 1) / m - m / m := by rw [div_self hm.ne']
      _ = ((m + 1) - m) / m := (sub_div (m + 1) m m).symm
      _ = 1 / m := by rw [add_sub_cancel_left]
  exact hgap.trans_le htangent

/-- Every nonnegative-horizon exponential is strictly below twice its natural floor. -/
theorem exp_lt_two_mul_natFloor (T : ℝ) (hT : 0 ≤ T) :
    Real.exp T < 2 * (Nat.floor (Real.exp T) : ℝ) := by
  have hm : (1 : ℝ) ≤ (Nat.floor (Real.exp T) : ℝ) := by
    exact_mod_cast one_le_natFloor_exp T hT
  have hupper := exp_lt_natFloor_add_one T
  linarith

/-- Squaring the strict exponential/floor comparison gives the factor-four bound. -/
theorem exp_two_mul_div_four_lt_natFloor_sq (T : ℝ) (hT : 0 ≤ T) :
    Real.exp (2 * T) / 4 < (Nat.floor (Real.exp T) : ℝ) ^ 2 := by
  have hm := natFloor_exp_cast_pos T hT
  have hsq : (Real.exp T) ^ 2 < (2 * (Nat.floor (Real.exp T) : ℝ)) ^ 2 :=
    (sq_lt_sq₀ (Real.exp_pos T).le (by positivity)).2 (exp_lt_two_mul_natFloor T hT)
  have hexp : Real.exp (2 * T) = (Real.exp T) ^ 2 := by
    simpa using Real.exp_nat_mul T 2
  rw [hexp]
  nlinarith [hsq]

/-- The cubic gap divided by the positive floor is at most its fourth reciprocal power. -/
theorem cubicAllowance_le_inv_natFloor_pow_four (T : ℝ) (hT : 0 ≤ T) :
    (T - Real.log (Nat.floor (Real.exp T) : ℝ)) ^ 3 /
        (Nat.floor (Real.exp T) : ℝ) ≤
      1 / (Nat.floor (Real.exp T) : ℝ) ^ 4 := by
  let m : ℝ := Nat.floor (Real.exp T)
  let δ : ℝ := T - Real.log m
  have hm : 0 < m := natFloor_exp_cast_pos T hT
  have hδ : 0 ≤ δ := gap_nonneg T hT
  have hδupper : δ ≤ 1 / m := (gap_lt_inv_natFloor T hT).le
  have hcube : δ ^ 3 ≤ (1 / m) ^ 3 := pow_le_pow_left₀ hδ hδupper 3
  calc
    δ ^ 3 / m ≤ (1 / m) ^ 3 / m := div_le_div_of_nonneg_right hcube hm.le
    _ = 1 / m ^ 4 := by
      rw [div_pow, one_pow, div_div, ← pow_succ]

/-- A nonnegative scalar satisfying the cubic-gap cost inequality is at least the floor squared.

The premise is conditional; at zero gap it is impossible. It does not assert the
existence of a realizing map or identify a scalar with any particular operator norm.
-/
theorem natFloor_sq_le_of_cost (T q : ℝ) (hT : 0 ≤ T) (hq : 0 ≤ q)
    (hcost : 1 ≤ q ^ 2 *
      ((T - Real.log (Nat.floor (Real.exp T) : ℝ)) ^ 3 /
        (Nat.floor (Real.exp T) : ℝ))) :
    (Nat.floor (Real.exp T) : ℝ) ^ 2 ≤ q := by
  let m : ℝ := Nat.floor (Real.exp T)
  have hm : 0 < m := natFloor_exp_cast_pos T hT
  have hallowance := cubicAllowance_le_inv_natFloor_pow_four T hT
  have hbound : 1 ≤ q ^ 2 * (1 / m ^ 4) :=
    hcost.trans (mul_le_mul_of_nonneg_left hallowance (sq_nonneg q))
  have hdiv : 1 ≤ q ^ 2 / m ^ 4 := by
    simpa only [mul_one_div] using hbound
  have hpow : m ^ 4 ≤ q ^ 2 := by
    simpa only [one_mul] using (le_div_iff₀ (pow_pos hm 4)).1 hdiv
  have hsq : (m ^ 2) ^ 2 ≤ q ^ 2 := by
    simpa only [← pow_mul] using hpow
  exact (sq_le_sq₀ (sq_nonneg m) hq).1 hsq

end GRWTSK.Analysis.SpecialFunctions.ExponentialFloorGap
```
