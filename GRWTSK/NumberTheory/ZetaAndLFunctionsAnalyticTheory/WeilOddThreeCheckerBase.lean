/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilGammaData
import Mathlib.Analysis.SpecialFunctions.Log.Deriv

/-!
# The constant term of the conductor-three radius-one checker

The floor `-133*S//1000` in `scripts/verify_odd_three_sine_hs.py`, blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`, line 127, is exact at `S = 10^12`.
The source constant includes the unit energy contribution. Expressing the
odd gamma constant via the quarter-digamma identities and using the upper
harmonic approximation to Euler's constant leaves a lower bound in terms
of `π`, `log 2`, `log (π/3)`, and the exact rational harmonic sum `H₅₁₂`.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerRounding

open OddRootProjection

set_option maxRecDepth 4096 in
private theorem harmonic_512_le : harmonic 512 ≤ (681652 / 100000 : ℚ) := by
  decide +kernel

private theorem log_pi_div_three_lt : Real.log (Real.pi / 3) < (4614 / 100000 : ℝ) := by
  have hpi : Real.pi / 3 ≤ (2618 / 2500 : ℝ) := by linarith only [Real.pi_lt_d4]
  apply (Real.log_le_log (by positivity) hpi).trans_lt
  rw [show (2618 / 2500 : ℝ) = (1 + 59 / 2559) / (1 - 59 / 2559) by norm_num]
  have h := Real.log_div_le_sum_range_add (x := 59 / 2559) (by norm_num) (by norm_num) 1
  norm_num [Finset.sum_range_succ] at h
  linarith only [h]

/-- The literal checker base, divided by its fixed-point scale, bounds the
original conductor-three parity-one gamma constant plus one. -/
theorem checkerBase_le_gammaConstant : (-133 / 1000 : ℝ) ≤ 1 + gammaConstant 3 1 := by
  have hEuler : Real.eulerMascheroniConstant < (harmonic 512 : ℝ) - Real.log 512 := by
    simpa only [Real.eulerMascheroniSeq', show (512 : ℕ) ≠ 0 by decide, ite_false, Nat.cast_ofNat]
      using Real.eulerMascheroniConstant_lt_eulerMascheroniSeq' 512
  rw [show (512 : ℝ) = 2 ^ (9 : ℕ) by norm_num, Real.log_pow] at hEuler
  have hH : (harmonic 512 : ℝ) ≤ 681652 / 100000 := by
    have h : (harmonic 512 : ℝ) ≤ ((681652 / 100000 : ℚ) : ℝ) := Rat.cast_le.mpr harmonic_512_le
    simpa only [Rat.cast_div, Rat.cast_ofNat] using h
  have hlog := log_pi_div_three_lt
  rw [Real.log_div Real.pi_pos.ne' (by norm_num)] at hlog
  rw [gammaConstant_odd_eq_even_add_pi, gammaConstant_even_eq_log_add 3 (by decide),
    gammaConstant_one_zero_eq]
  norm_num only [Nat.cast_ofNat] at *
  linarith only [hEuler, hH, hlog, Real.pi_gt_d20, Real.log_two_gt_d9]

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerRounding
