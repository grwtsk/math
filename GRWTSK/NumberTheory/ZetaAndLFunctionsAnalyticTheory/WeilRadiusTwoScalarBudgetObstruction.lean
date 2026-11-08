/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddModeDependentTail

/-!
# A source scalar-budget obstruction at the radius-two mode-64 cutoff

The first omitted sine mode at cutoff 64 is mode 65 on the physical interval
[-2,2].  The exact conservative budget is `OddModeDependentTail.modeWeight`
with shift -1/2, proposed prime loss 202/25, and the existing half-exponential
boundary loss.  This module proves that this scalar is at most -2221/500.
Consequently it cannot supply the budget premise for a floor of 1/5.

The proof uses the actual periodic multiplier, not a sampled approximation.
Frequency monotonicity and pi < 63/20 replace pi*65/2 by 819/8.  The existing
40-term truncation theorem bounds the full infinite tail by its logarithmic
integral plus the first omitted term.  Applying log(1+x) <= x leaves a closed
rational inequality strictly below 17/2.  The existing zeta gamma upper bound
and nonnegativity of the actual boundary loss finish the budget comparison.

This does not refute `HighFloor 2 (-1/2) (1/5) 64`, nor establish a prime-norm
bound of 202/25.  It rules out only this conservative allocation of uniform
prime and boundary losses at that cutoff.  Signed finite-middle information,
a different allocation, or a later cutoff can change the conclusion available
from a certificate.  The prior exact rational diagnostic and this derivation
share the same truncation argument; they are not independent analytic proofs.
Independent analytical review and novelty assessment remain pending.  Formal
assurance and exact-source receipts are tracked in grwtsk/noeaaeue
`docs/verification.md`.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoScalarBudgetObstruction

open OddRootProjection OddOutputTrace OddMultiplierBounds OddMultiplierObservation
open OddModeDependentTail UnitWindowOddEntries

private theorem rational_frequency_budget :
    periodicMultiplierPartial 0 (819 / 8) 40 +
      (1 / 2 : ℝ) * ((819 / 8) ^ 2 / (multiplierRate 0 40) ^ 2) +
      periodicMultiplierTerm 0 (819 / 8) 40 ≤ (17 / 2 : ℝ) := by
  norm_num [periodicMultiplierPartial, Finset.sum_range_succ,
    periodicMultiplierTerm, PeriodicBoundary.multiplierSummand, multiplierRate]

/-- The complete source multiplier at the first omitted physical mode is
bounded above, including its infinite tail. -/
theorem periodicMultiplier_mode65_le :
    periodicMultiplier 0 (frequency 2 65) ≤ (17 / 2 : ℝ) := by
  have hFrequency : frequency 2 65 ≤ (819 / 8 : ℝ) := by
    unfold frequency
    linarith [Real.pi_lt_d2]
  have hNonneg : 0 ≤ frequency 2 65 := by unfold frequency; positivity
  have hMono := periodicMultiplier_abs_mono 0 (v := frequency 2 65)
    (w := (819 / 8 : ℝ)) (by
      rw [abs_of_nonneg hNonneg, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 819 / 8)]
      exact hFrequency)
  have hLog := Real.log_le_sub_one_of_pos
    (by norm_num [multiplierRate] :
      (0 : ℝ) < 1 + (819 / 8) ^ 2 / (multiplierRate 0 40) ^ 2)
  have hTail : periodicMultiplierTailIntegral 0 (819 / 8) 40 ≤
      (1 / 2 : ℝ) * ((819 / 8) ^ 2 / (multiplierRate 0 40) ^ 2) := by
    unfold periodicMultiplierTailIntegral
    linarith only [hLog]
  have hTrunc := (periodicMultiplier_truncation_bounds 0 (819 / 8) 40).2
  linarith only [hMono, hTrunc, hTail, rational_frequency_budget]

private theorem boundaryLossHalfExp_two_nonneg :
    0 ≤ OddSharpBoundaryNorm.boundaryLossHalfExp 2 := by
  have hExp : Real.exp (-2 : ℝ) ≤ 1 := Real.exp_le_one_iff.mpr (by norm_num)
  unfold OddSharpBoundaryNorm.boundaryLossHalfExp
  linarith [Real.pi_pos]

/-- The actual conservative source budget at cutoff 64 is negative even
when the entire proposed improvement of the uniform prime loss is granted. -/
theorem sourceBudget_mode65_le :
    modeWeight 2 (-1 / 2) (202 / 25)
      (OddSharpBoundaryNorm.boundaryLossHalfExp 2) 65 ≤ (-2221 / 500 : ℝ) := by
  unfold modeWeight
  linarith only [gammaConstant_one_zero_interval.2, periodicMultiplier_mode65_le,
    boundaryLossHalfExp_two_nonneg]

/-- This particular scalar-budget premise cannot certify a floor of 1/5.
The assertion concerns the budget, not the sign of the underlying quadratic. -/
theorem not_sourceBudget_certifies_mode64_floor :
    ¬ ((1 / 5 : ℝ) ≤ modeWeight 2 (-1 / 2) (202 / 25)
      (OddSharpBoundaryNorm.boundaryLossHalfExp 2) 65) := by
  linarith only [sourceBudget_mode65_le]

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoScalarBudgetObstruction
