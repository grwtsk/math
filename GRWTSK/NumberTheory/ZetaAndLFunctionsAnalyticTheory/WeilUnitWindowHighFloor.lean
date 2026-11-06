/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddLiteralWindow
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddMultiplierObservation
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSharpBoundaryNorm
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilUnitWindowPrimeNorm

/-!
# A numerical high floor on the entire real odd unit window

Sections 2–5 of `weil-periodic-boundary.md` compare the literal gamma
energy with the periodic multiplier and its signed boundary term.
On radius one, use the prime shift overlap to pay at most three times
the mass. The signed boundary loss is at most nine quarters. The
gamma constant is at least negative eleven halves, and the first
high multiplier at mode 1025 is greater than twenty-three halves.
These numbers give a floor of three quarters at shift zero.

This controls the entire high complement in the literal form domain.
It supplies a high input for the Schur certificate, while the retained
head still requires its own lower witness. Independent mathematical
review is pending.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.UnitWindowHighFloor

open OddRootProjection OddOutputTrace OddMultiplierBounds OddMultiplierObservation
open OddExactPeriodization OddLiteralWindow UnitWindowPrimeNorm

private theorem boundaryLoss_one_le : OddSharpBoundaryNorm.boundaryLoss 1 ≤ (9/4 : ℝ) := by
  unfold OddSharpBoundaryNorm.boundaryLoss
  linarith [Real.pi_lt_d2, Real.exp_neg_one_gt_d9]

private theorem multiplier_at_first_high_ge {N : ℕ} (hN : 1024 ≤ N) :
    (23/2 : ℝ) ≤ periodicMultiplier 0 (frequency 1 (N+1)) := by
  have hn : (1025 : ℕ) ≤ N+1 := by omega
  have hmono : frequency 1 1025 ≤ frequency 1 (N+1) := by
    simp only [frequency, div_one]
    exact mul_le_mul_of_nonneg_left (by exact_mod_cast hn) Real.pi_pos.le
  have hpos (n : ℕ) : 0 ≤ frequency 1 n := by unfold frequency; positivity
  exact twenty_three_halves_lt_periodicMultiplier_radiusOne_mode1025.le.trans
    (periodicMultiplier_abs_mono 0 (by
      rwa [abs_of_nonneg (hpos 1025), abs_of_nonneg (hpos (N+1))]))

/-- A checked high floor for the literal unit window at any retained
head of at least 1024 modes. The shift acts only on the physical input. -/
theorem highFloor_one (β γ : ℝ) {N : ℕ} (hN : 1024 ≤ N) (hγ : γ + β ≤ 3/4) :
    HighFloor 1 β γ N := by
  intro f hf hfM ho hs hh henergy
  have hprime : OddSineForm.primeEnergy 1 f ≤ 3 * (∫ t : ℝ, ‖f t‖ ^ 2) := by
    simpa only [Real.norm_eq_abs, sq_abs] using
      (le_abs_self (OddSineForm.primeEnergy 1 f)).trans (abs_primeEnergy_one_le_three hf hs)
  have hB := OddSharpBoundaryNorm.oddKernel_quadratic_ge 1 (by norm_num) f hfM
    hf.integrable_sq.integrableOn
  have hbudget : γ ≤ gammaConstant 1 0 - β + periodicMultiplier 0 (frequency 1 (N+1)) -
      3 - OddSharpBoundaryNorm.boundaryLoss 1 := by
    linarith [gammaConstant_one_zero_ge, multiplier_at_first_high_ge hN, boundaryLoss_one_le]
  exact shiftedOddCoreEnergy_ge_of_exactBudget 1 (by norm_num) β 3
    (OddSharpBoundaryNorm.boundaryLoss 1) γ hbudget hfM hf ho hs hh henergy hprime hB

end GRWTSK.NumberTheory.WeilQuadraticForm.UnitWindowHighFloor
