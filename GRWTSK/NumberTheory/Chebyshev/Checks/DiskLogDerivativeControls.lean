/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.JensenDiskLogDerivative

set_option autoImplicit false

/-! Pure source controls, not executed fixtures. NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Chebyshev.Checks.DiskLogDerivativeControls

open GRWTSK.Analysis.ComplexAnalysis.DiskBlaschkeFactors
open GRWTSK.Analysis.ComplexAnalysis.NormalizedLogDerivativeBound

noncomputable section

theorem normalized_boundary_value : factor 3 1 3 = (1 : ℂ) := by
  norm_num [factor]

theorem normalized_center_value : factor 3 1 0 = (-1 / 3 : ℂ) := by
  norm_num [factor]

theorem removed_point_value : factor 3 1 1 = (0 : ℂ) := by
  norm_num [factor]

/-- Totalized division at a zero is not the punctured logarithmic derivative. -/
theorem at_zero_logDeriv_is_totalized : logDeriv (factor 3 1) 1 = (0 : ℂ) := by
  rw [logDeriv_apply, removed_point_value, div_zero]

/-- The normalization adds 1/7 to the bare principal contribution in this example. -/
theorem regular_term_is_not_zero :
    logDeriv (factor 3 1) 2 - (2 - 1 : ℂ)⁻¹ = 1 / 7 := by
  rw [logDeriv_factor 3 (by norm_num) 1 2 (by norm_num) (by norm_num)]
  norm_num

theorem double_factor_counts_twice :
    logDeriv (fun z : ℂ => (factor 3 1 z) ^ 2) 2 = (16 / 7 : ℂ) := by
  rw [logDeriv_fun_pow (differentiableAt_factor 3 1 2 (by norm_num)) 2,
    logDeriv_factor 3 (by norm_num) 1 2 (by norm_num) (by norm_num)]
  norm_num

/-- An arbitrary zero-free exponential factor changes the full derivative. -/
theorem zero_free_factor_changes_derivative (A : ℂ) :
    logDeriv (fun z : ℂ => Complex.exp (A * z)) 0 = A := by
  have hd := (hasDerivAt_id (0 : ℂ)).const_mul A
  rw [logDeriv_exp _ 0 hd.differentiableAt, hd.deriv]
  ring

/-- A boundary root invalidates the unit-modulus theorem's strict interior guard. -/
theorem boundary_root_not_unit : ‖factor 3 3 3‖ = (0 : ℝ) := by
  norm_num [factor]

/-- Enlarging the inner disk changes the Jensen denominator. -/
theorem disk_ratio_is_not_band_ratio : (12 / 11 : ℝ) < 6 / 5 := by norm_num

/-- The central disk does not cover the whole inherited fixed strip. -/
theorem left_strip_outside_core : (9 / 4 : ℝ) < ‖(-3 : ℂ) - 2‖ := by norm_num

end
end GRWTSK.NumberTheory.Chebyshev.Checks.DiskLogDerivativeControls
