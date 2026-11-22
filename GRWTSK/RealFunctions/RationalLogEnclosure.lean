/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import Mathlib.Analysis.SpecialFunctions.Log.Deriv
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.Data.Rat.BigOperators

/-! # Rational lower samples and outward errors for logarithms -/

set_option autoImplicit false

open Filter
open scoped BigOperators Topology

namespace GRWTSK.RealFunctions

/-- For an argument at least one, compute a lower sample and a geometric
tail bound for its logarithm by the odd power series. -/
def rationalLogEnclosure (z : ℚ) (n : ℕ) : ℚ × ℚ :=
  let t := (z - 1) / (z + 1)
  (2 * ∑ i ∈ Finset.range n, t ^ (2 * i + 1) / (2 * i + 1),
    2 * (t ^ (2 * n + 1) / (1 - t ^ 2)))

/-- The sample is nonnegative and the exact log lies between it and
the sample plus the returned tail bound. -/
theorem rationalLogEnclosure_correct (z : ℚ) (hz : 1 ≤ z) (n : ℕ) :
    0 ≤ (rationalLogEnclosure z n).1 ∧
      ((rationalLogEnclosure z n).1 : ℝ) ≤ Real.log (z : ℝ) ∧
      Real.log (z : ℝ) - ((rationalLogEnclosure z n).1 : ℝ) ≤
        ((rationalLogEnclosure z n).2 : ℝ) := by
  let t : ℚ := (z - 1) / (z + 1)
  have hzpos : 0 < z + 1 := by linarith
  have ht : 0 ≤ t := div_nonneg (sub_nonneg.mpr hz) hzpos.le
  have hlt : t < 1 := (div_lt_iff₀ hzpos).mpr (by linarith)
  have htR : (0 : ℝ) ≤ t := by exact_mod_cast ht
  have hltR : (t : ℝ) < 1 := by exact_mod_cast hlt
  have hzR : (1 : ℝ) ≤ z := by exact_mod_cast hz
  have harg : (1 + (t : ℝ)) / (1 - (t : ℝ)) = (z : ℝ) := by
    have hden : (z : ℝ) + 1 ≠ 0 := by linarith
    have hden' : 1 - (t : ℝ) ≠ 0 := by linarith
    apply (div_eq_iff hden').mpr
    dsimp only [t]
    push_cast
    field_simp [hden]
    ring
  have hlo := Real.sum_range_le_log_div htR hltR n
  have hhi := Real.log_div_le_sum_range_add htR hltR n
  rw [harg] at hlo hhi
  constructor
  · change 0 ≤ 2 * ∑ i ∈ Finset.range n, t ^ (2*i+1) / (2*i+1)
    positivity
  · let S : ℚ := ∑ i ∈ Finset.range n, t ^ (2 * i + 1) / (2 * i + 1)
    let E : ℚ := t ^ (2 * n + 1) / (1 - t ^ 2)
    change ((2 * S : ℚ) : ℝ) ≤ Real.log (z : ℝ) ∧
      Real.log (z : ℝ) - ((2 * S : ℚ) : ℝ) ≤ ((2 * E : ℚ) : ℝ)
    simp only [S, E, Rat.cast_mul, Rat.cast_sum, Rat.cast_pow, Rat.cast_div, Rat.cast_sub,
      Rat.cast_one, Rat.cast_ofNat, Rat.cast_add, Rat.cast_natCast]
    constructor <;> linarith

/-- For each fixed supported argument, the returned error tends to zero. -/
theorem tendsto_rationalLogEnclosure_error (z : ℚ) (hz : 1 ≤ z) :
    Tendsto (fun n => ((rationalLogEnclosure z n).2 : ℝ)) atTop (𝓝 0) := by
  let t : ℝ := (((z - 1) / (z + 1) : ℚ) : ℝ)
  have hzpos : 0 < z + 1 := by linarith
  have h₀ : 0 ≤ t := by
    dsimp only [t]
    exact_mod_cast (div_nonneg (sub_nonneg.mpr hz) hzpos.le)
  have h₁ : t < 1 := by
    dsimp only [t]
    exact_mod_cast ((div_lt_iff₀ hzpos).mpr (by linarith) :
      (z - 1) / (z + 1) < (1 : ℚ))
  have hsq : t ^ 2 < 1 := by nlinarith [mul_nonneg h₀ (sub_nonneg.mpr h₁.le)]
  have hpow := tendsto_pow_atTop_nhds_zero_of_lt_one (sq_nonneg t) hsq
  have he : (fun n => ((rationalLogEnclosure z n).2 : ℝ)) =
      fun n => (2 * t / (1 - t ^ 2)) * (t ^ 2) ^ n := by
    funext n
    change ((2 * ((((z - 1) / (z + 1)) ^ (2 * n + 1)) /
      (1 - ((z - 1) / (z + 1)) ^ 2)) : ℚ) : ℝ) = _
    simp only [Rat.cast_mul, Rat.cast_pow, Rat.cast_div, Rat.cast_sub, Rat.cast_one,
      Rat.cast_ofNat, Rat.cast_add]
    have ht : ((z : ℝ) - 1) / ((z : ℝ) + 1) = t := by simp [t]
    rw [ht, pow_add, pow_mul, pow_one]
    ring
  rw [he]
  simpa only [mul_zero] using tendsto_const_nhds.mul hpow

end GRWTSK.RealFunctions
