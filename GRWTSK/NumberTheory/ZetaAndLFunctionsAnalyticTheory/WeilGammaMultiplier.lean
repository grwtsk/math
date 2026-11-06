/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.MeasureAndIntegration.AnalysisDigammaSeries
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddMultiplierBounds

/-!
# The literal Weil gamma multiplier and the actual digamma bracket

At parity `a` the positive real digamma argument is `1/4 + a/2`.
Scaling it and the imaginary frequency `w/2` by two gives the literal
kernel rates and exactly the factor of two in each periodic summand.
The convergent digamma difference series therefore identifies the
periodic multiplier pointwise for every real frequency. The constant
term restores the real digamma value at zero frequency and the
conductor logarithm.

For zeta the result has the scalar gamma bracket in Zeta23
`ExplicitFormula.lean` at commit `16a5ce41304fcdaea4e0be7c132e1c361dc26da5`.
The integral transport to its Fourier test convention and the zero-side
explicit formula are separate. Independent analytical review is pending.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.GammaMultiplier

open OddRootProjection OddMultiplierBounds

/-- The periodic multiplier is the difference of the actual complex digamma
real parts at the normalized frequency. -/
theorem periodicMultiplier_eq_digamma_difference (a : ℕ) (w : ℝ) :
    periodicMultiplier a w =
      (Complex.digamma ((1 / 4 + (a : ℝ) / 2 : ℝ) + (w / 2 : ℝ) * Complex.I)).re -
      (Complex.digamma (1 / 4 + (a : ℝ) / 2 : ℝ)).re := by
  let u : ℝ := 1 / 4 + (a : ℝ) / 2
  have hu : 0 < u := by dsimp [u]; positivity
  change periodicMultiplier a w =
    (Complex.digamma ((u : ℂ) + (w / 2 : ℝ) * Complex.I)).re - (Complex.digamma u).re
  rw [periodicMultiplier, ← (GRWTSK.Analysis.DigammaSeries.hasSum_difference hu (w / 2)).tsum_eq]
  apply tsum_congr
  intro j
  have hj : 0 < u + j := add_pos_of_pos_of_nonneg hu (Nat.cast_nonneg j)
  have hrate : multiplierRate a j = 2 * (u + j) := by
    unfold multiplierRate u
    ring
  rw [periodicMultiplierTerm, PeriodicBoundary.multiplierSummand, hrate]
  field_simp

/-- The constant and periodic multiplier together equal the real digamma
bracket with the literal conductor and parity. -/
theorem gammaConstant_add_periodicMultiplier (q a : ℕ) (w : ℝ) :
    gammaConstant q a + periodicMultiplier a w = Real.log ((q : ℝ) / Real.pi) +
      (Complex.digamma ((1 / 4 + (a : ℝ) / 2 : ℝ) + (w / 2 : ℝ) * Complex.I)).re := by
  rw [gammaConstant, real_digamma_eq (by positivity), periodicMultiplier_eq_digamma_difference]
  ring

/-- The zeta bracket uses the frequency `w` with imaginary part `w/2`. -/
theorem zetaGammaBracket_eq (w : ℝ) :
    (Complex.digamma (1 / 4 + Complex.I * (w : ℂ) / 2)).re - Real.log Real.pi =
      gammaConstant 1 0 + periodicMultiplier 0 w := by
  rw [gammaConstant_add_periodicMultiplier, Nat.cast_one,
    Real.log_div (by norm_num : (1 : ℝ) ≠ 0) Real.pi_pos.ne']
  have h : ((1 / 4 + ((0 : ℕ) : ℝ) / 2 : ℝ) : ℂ) + (w / 2 : ℝ) * Complex.I =
      1 / 4 + Complex.I * (w : ℂ) / 2 := by
    push_cast
    ring
  simp only [Real.log_one, zero_sub, h]
  ring

end GRWTSK.NumberTheory.WeilQuadraticForm.GammaMultiplier
