/-
Copyright (c) 2026 R. A. Jacob Martone. All rights reserved.
Original contributions: MIT (repository LICENSE).
Formalization assistance: OpenAI ChatGPT.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.WienerIkeharaLambdaLogKernelUniformBound
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks

open GRWTSK.RiemannHypothesis
open Real Set MeasureTheory Filter Finset
open scoped ArithmeticFunction BigOperators

/-- The FULL positive logarithmic density really has mass
2*pi^2 for every scale T, not an unspecified uniform constant. -/
theorem wiener_logCauchy_exact_mass (T : ℝ) :
    (∫ y : ℝ, wienerShiftedCauchy T y) =
      2 * Real.pi ^ 2 :=
  wienerShiftedCauchy_integral T

/-- The actual positive real weighted kernel has an integrable
tail on x>1 even when T is not an integer or power of two. -/
theorem wiener_log_kernel_real_integrable
    {T : ℝ} (hT : 0 < T) :
    IntegrableOn (wienerRealLogWeight T)
      (Set.Ioi (1 : ℝ)) volume :=
  wienerRealLogWeight_integrableOn_one hT

/-- The actual half-line integral is bounded by the full-line Cauchy
mass. No unproved interchange or sigma-boundary growth hypothesis. -/
theorem wiener_log_kernel_real_integral_bound
    {T : ℝ} (hT : 0 < T) :
    (∫ x in Set.Ioi (1 : ℝ),
       wienerRealLogWeight T x) ≤
        2 * Real.pi ^ 2 :=
  wienerRealLogWeight_integral_le hT

/-- Explicit first term, whose contribution is responsible for the
leading constant 1 in the uniform estimate. -/
theorem wiener_log_kernel_first_term_le
    {T : ℝ} (hT : 0 < T) :
    wienerRealLogWeight T 1 ≤ 1 :=
  wienerRealLogWeight_one_le hT

/-- This controls the actual shifted infinite denominator weights
for every T>0, not merely a finite check or dyadic samples. -/
theorem wiener_log_kernel_shifted_weight_summable
    {T : ℝ} (hT : 0 < T) :
    Summable (wienerShiftedLogWeight T) ∧
      (∑' k : ℕ, wienerShiftedLogWeight T k) ≤
        1 + 2 * Real.pi ^ 2 :=
  wienerShiftedLogWeight_tsum_le hT

/-- The actual shifted von Mangoldt series is summable with its
uniform Chebyshev bound. This uses no pointwise Lambda bound. -/
theorem wiener_log_kernel_shifted_lambda_bound
    {T : ℝ} (hT : 0 < T) :
    Summable
      (fun k : ℕ =>
        wienerShiftedLambda k * wienerShiftedLogWeight T k) ∧
      (∑' k : ℕ,
        wienerShiftedLambda k * wienerShiftedLogWeight T k) ≤
          (Real.log 4 + 4) * (1 + 2 * Real.pi ^ 2) :=
  wienerShiftedLambda_logKernel_tsum_le hT

/-- The zero-safe source kernel is EXACTLY the shifted series,
including its first arithmetic coefficient Lambda(1)=0. -/
theorem wiener_log_kernel_original_shift (T : ℝ) (k : ℕ) :
    wienerLambdaLogKernel T (k + 1) =
      wienerShiftedLambda k * wienerShiftedLogWeight T k :=
  wienerLambdaLogKernel_shift_eq T k

/-- Replay the full source-derived version of maintained
Wiener.lean::bound_sum_log' at every real scale T>=1. -/
theorem wiener_actual_lambda_bound_sum_log
    {T : ℝ} (hT : 1 ≤ T) :
    Summable (wienerLambdaLogKernel T) ∧
      (∑' n : ℕ, wienerLambdaLogKernel T n) ≤
        (Real.log 4 + 4) * (1 + 2 * Real.pi ^ 2) :=
  wienerLambdaLogKernel_uniform_bound hT

/-- The normalized kernel agrees at the unit scale with the literal
original zero-safe source, without losing 2*pi. -/
theorem wiener_actual_lambda_unit_scale :
    (∑' n : ℕ, wienerLambdaLogKernel 1 n) ≤
      (Real.log 4 + 4) * (1 + 2 * Real.pi ^ 2) :=
  (wienerLambdaLogKernel_uniform_bound
    (T := 1) (by norm_num)).2

/-- Hostile audit guard: none of these strings grants a mathematical
theorem proof, kernel trust, or a continuous task in the background. -/
def remainingWienerSchwartzProofObligations : List String :=
  ["replay the actual full logarithmic kernel proof on pinned Lean 4.33 and all imported draft dependencies",
   "audit the integral comp-log and translated/scaled Cauchy integral normalization exactly",
   "prove dominated sigma-downarrow-one arithmetic Fourier limit using this uniform summable kernel",
   "prove compact smooth truncations approximate a Schwartz test in the historical Fourier seminorm",
   "prove uniform-in-T discarded-tail estimates from the new real Lambda logarithmic bound",
   "compose only kernel-checked finite-sigma first/second Fourier, q=1 boundary and old Mellin lemmas",
   "keep separately unverified PR 965 interval squeeze out of the analytic theorem's proof closure"]

end GRWTSK.RiemannHypothesis.Checks
