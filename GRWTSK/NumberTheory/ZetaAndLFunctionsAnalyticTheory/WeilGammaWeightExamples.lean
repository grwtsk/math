/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilGammaRationalWeights
import Mathlib.Analysis.Complex.ExponentialBounds
import Mathlib.Data.Matrix.Notation

/-!
# Explicit rational gamma-weight data

Five nonzero source tail intervals and four panel intervals. The assertions
about the rational sums are proved by exact arithmetic, then transported
through the preceding original-kernel integral theorem. Python reproduced
the finite rational checks; that is not Lean elaboration or kernel replay.

These are coefficient fixtures, not a passing Weil sign certificate or an
optimized quadrature mesh. All other source observations retain their debt.
SOURCE_PROOF_CANDIDATE; formal execution and independent review NOT_RUN.
-/

set_option autoImplicit false
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.GammaWeightExamples

open GammaRationalWeights GammaCutoffResidual GammaGeometricQuadrature

/-- Exponential coordinates, in decreasing order. -/
def coordinate : Fin 5 → ℚ := ![15 / 16, 3 / 4, 1 / 2, 1 / 4, 1 / 8]

def truncation : Fin 5 → ℕ := ![96, 24, 12, 6, 4]

def lower : Fin 5 → ℚ :=
  ![2470144883 / 1000000000, 1616456183 / 1000000000,
    1012953753 / 1000000000, 500391475 / 1000000000,
    250012208 / 1000000000]

def upper (i : Fin 5) : ℚ := lower i + 1 / 1000000000

/-- Each finite rational comparison includes the COMPLETE series remainder. -/
set_option maxRecDepth 8192 in
set_option maxHeartbeats 4000000 in
theorem table_arithmetic (i : Fin 5) :
    0 < coordinate i ∧ coordinate i < 1 ∧
      lower i ≤ rationalTailLower (coordinate i) (truncation i) ∧
      rationalTailUpper (coordinate i) (truncation i) ≤ upper i := by
  fin_cases i <;>
    norm_num [coordinate, truncation, lower, upper,
      rationalTailLower, rationalTailUpper, rationalTailError, Finset.sum_range_succ]

/-- The numerical intervals enclose the actual improper source integral. -/
theorem tail_table (i : Fin 5) :
    (lower i : ℝ) ≤ tailWeight (logarithmicLag (coordinate i : ℝ)) ∧
      tailWeight (logarithmicLag (coordinate i : ℝ)) ≤ (upper i : ℝ) := by
  obtain ⟨h0, h1, hl, hu⟩ := table_arithmetic i
  exact tailWeight_enclosure (coordinate i) (truncation i) (lower i) (upper i) h0 h1 hl hu

/-- Midpoints of the tail intervals have radius 1/(2*10^9). -/
theorem tail_midpoint_error (i : Fin 5) :
    |tailWeight (logarithmicLag (coordinate i : ℝ)) -
      ((lower i + 1 / 2000000000 : ℚ) : ℝ)| ≤ (1 / 2000000000 : ℝ) := by
  obtain ⟨hl, hu⟩ := tail_table i
  simp only [upper, Rat.cast_add, Rat.cast_div, Rat.cast_one, Rat.cast_ofNat] at hu ⊢
  exact abs_le.mpr ⟨by linarith, by linarith⟩

/-- Panel errors pay both endpoint intervals, hence radius 1/10^9. -/
theorem panel_midpoint_error (i : Fin 4) :
    |cellWeight (logarithmicLag (coordinate i.castSucc : ℝ))
        (logarithmicLag (coordinate i.succ : ℝ)) -
      ((lower i.castSucc - lower i.succ : ℚ) : ℝ)| ≤ (1 / 1000000000 : ℝ) := by
  have hv := (table_arithmetic i.succ).1
  have hu := (table_arithmetic i.castSucc).2.1
  have horder : coordinate i.succ ≤ coordinate i.castSucc := by
    fin_cases i <;> norm_num [coordinate]
  have h := cellWeight_enclosure (coordinate i.castSucc) (coordinate i.succ)
    (lower i.castSucc) (upper i.castSucc) (lower i.succ) (upper i.succ)
    hv horder hu (tail_table i.castSucc) (tail_table i.succ)
  simp only [upper, Rat.cast_add, Rat.cast_sub, Rat.cast_div,
    Rat.cast_one, Rat.cast_ofNat] at h ⊢
  exact abs_le.mpr ⟨by linarith [h.1], by linarith [h.2]⟩

/-- The last logarithmic lag lies beyond width four, as needed at radius two. -/
theorem last_lag_gt_four :
    4 < logarithmicLag (coordinate (4 : Fin 5) : ℝ) := by
  have hlog : Real.log ((1 / 8 : ℚ) : ℝ) = -3 * Real.log 2 := by
    rw [show ((1 / 8 : ℚ) : ℝ) = ((2 : ℝ) ^ (3 : ℕ))⁻¹ by norm_num,
      Real.log_inv, Real.log_pow]
    norm_num <;> ring
  change 4 < -2 * Real.log ((1 / 8 : ℚ) : ℝ)
  rw [hlog]
  nlinarith [Real.log_two_gt_d9]

/-- Coefficient rounding alone costs at most this multiple of the full input norm. -/
theorem four_panel_coefficient_charge :
    (4 * (∑ _i : Fin 4, (1 / 1000000000 : ℚ)) + 2 * (1 / 2000000000 : ℚ)) =
      17 / 1000000000 := by norm_num

/-- A first omitted term is NOT a bound for the complete omitted tail. -/
theorem next_term_is_not_complete_tail :
    (rationalTailLower (1 / 2) 2 : ℝ) < tailWeight (logarithmicLag ((1 / 2 : ℚ) : ℝ)) := by
  have hl := (rationalTail_bounds (1 / 2) 3 (by norm_num) (by norm_num)).1
  have hc : rationalTailLower (1 / 2) 2 < rationalTailLower (1 / 2) 3 := by
    norm_num [rationalTailLower, Finset.sum_range_succ]
  have hcR : (rationalTailLower (1 / 2) 2 : ℝ) < (rationalTailLower (1 / 2) 3 : ℝ) := by
    exact_mod_cast hc
  exact hcR.trans_le hl

end GRWTSK.NumberTheory.WeilQuadraticForm.GammaWeightExamples
