/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.JensenCentralLogDerivative

set_option autoImplicit false

/-!
# Exact controls for finite divisor removal

These are synthetic rational-function examples, not numerical zeta zeros.
They test the center value, exact order, coverage, and retained disk domain.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.Checks.FiniteBlaschkeRemovalControls

open Set Metric
open GRWTSK.Analysis.ComplexAnalysis.DiskBlaschkeFactors
open GRWTSK.RiemannHypothesis.JensenCentralLogDerivative

/-- A double zero is removed twice, with the full disk-normalization numerator. -/
theorem double_zero_factorization (w : ℂ) (hw : (9 : ℂ) - w ≠ 0) :
    (w - 1) ^ 2 = ((9 - w) / 3) ^ 2 * (factor 3 1 w) ^ 2 := by
  simp only [factor, map_one, one_mul]
  norm_num only [show (3 : ℂ) ^ 2 = 9 by norm_num]
  field_simp [hw]
  <;> ring

/-- The removed center has a nonzero analytic value. -/
theorem double_zero_center_value : (((9 : ℂ) - 1) / 3) ^ 2 = 64 / 9 := by norm_num

/-- Raw totalized division instead assigns zero at that same center. -/
theorem raw_double_quotient_center :
    ((1 : ℂ) - 1) ^ 2 / (factor 3 1 1) ^ 2 = 0 := by simp [factor]

theorem raw_center_not_extension :
    ((1 : ℂ) - 1) ^ 2 / (factor 3 1 1) ^ 2 ≠ (((9 : ℂ) - 1) / 3) ^ 2 := by
  rw [raw_double_quotient_center, double_zero_center_value]
  norm_num

/-- Removing only one copy leaves a zero and cannot supply a zero-free quotient. -/
theorem under_removed_center : ((1 : ℂ) - 1) * ((9 - 1) / 3) = 0 := by norm_num

/-- Omitting the distinct inner root at two leaves it in the quotient. -/
theorem omitted_inner_root : ((2 : ℂ) - 2) * ((9 - 2) / 3) ^ 2 = 0 := by norm_num

/-- A root outside the removed inner disk may remain; outer nonvanishing is not required. -/
theorem retained_outer_root :
    (11 / 4 : ℝ) < 23 / 8 ∧ (23 / 8 : ℝ) < 3 ∧
      (((23 / 8 : ℂ) - 23 / 8) * ((9 - 23 / 8) / 3) ^ 2 = 0) := by norm_num

/-- Equal heights do not identify distinct complex locations. -/
theorem same_height_distinct_locations :
    (1 : ℂ).im = (2 : ℂ).im ∧ (1 : ℂ) ≠ 2 := by norm_num

/-- A duplicated location violates the finite constructor's injectivity requirement. -/
theorem repeated_location_not_injective :
    ¬ Function.Injective (fun _ : Fin 2 => (1 : ℂ)) := by
  intro h
  have he := h (a₁ := (0 : Fin 2)) (a₂ := (1 : Fin 2)) rfl
  norm_num at he

/-- The completed central estimate still cannot be applied at real coordinate minus three. -/
theorem negative_strip_not_central : (-3 : ℝ) ∉ Icc (0 : ℝ) 2 := by norm_num

end GRWTSK.NumberTheory.Chebyshev.Checks.FiniteBlaschkeRemovalControls
