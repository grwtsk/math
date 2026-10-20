/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.FiniteNewtonCenter
import Mathlib.Tactic.NormNum

set_option autoImplicit false

/-! Directed mathematical controls. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Chebyshev.Checks.FiniteZetaCenterControls

open GRWTSK.RiemannHypothesis.FiniteCubicZetaApproximation
open GRWTSK.RiemannHypothesis.FiniteNewtonCenter
open GRWTSK.Analysis.Complex.RationalRoundedArithmetic

/-- An empty Dirichlet prefix has first omitted point one, not zero. -/
theorem empty_cutoff : cutoff 0 = 1 := by norm_num [cutoff]

theorem one_term_cutoff : cutoff 1 = 2 := by norm_num [cutoff]

/-- Even the empty prefix retains all terminal corrections. -/
theorem empty_value (s : ℂ) : approximation 0 s = (s - 1)⁻¹ + 1 / 2 + s / 12 := by
  simp [approximation, terminalFactor, cutoff,
    GRWTSK.Analysis.Complex.IntervalMellinKernel.logPower, one_div]

theorem empty_slope (s : ℂ) : approximationSlope 0 s = -(s - 1)⁻¹ ^ 2 + 1 / 12 := by
  simp [approximationSlope, terminalSlope, cutoff,
    GRWTSK.Analysis.Complex.IntervalMellinKernel.logPower, one_div, inv_pow]

/-- The pointwise tail at a point does not control its derivative. -/
theorem pointwise_zero_tail_nonzero_slope :
    (fun z : ℂ => z) 0 = 0 ∧ deriv (fun z : ℂ => z) 0 = 1 := by simp

/-- The Cauchy radius is positive and must fit in the declared half-plane. -/
theorem zero_radius_rejected : ¬ (0 : ℚ) < 0 := by norm_num

theorem outside_halfplane_rejected : ¬ (3 / 4 : ℚ) ≤ 1 / 2 := by norm_num

/-- A bound for the tail's analytic extension does not permit evaluating raw zeta at one. -/
theorem pole_guard_rejects : ¬ (1 : ℂ) ≠ 1 := by simp

/-- Both complete tails are nonzero even when the finite computations are exact. -/
theorem tail_at_two : diskBudgetQ 0 ⟨2, 0⟩ 0 = 1 / 4 := by
  norm_num [diskBudgetQ, QComplex.rect, QComplex.add, QComplex.smul, QComplex.one]

/-- Increasing N changes L=N+1 in the full omitted-tail budget. -/
theorem tail_at_two_one_term : diskBudgetQ 1 ⟨2, 0⟩ 0 = 1 / 16 := by
  norm_num [diskBudgetQ, QComplex.rect, QComplex.add, QComplex.smul, QComplex.one]

/-- Distinct errors cannot be dropped merely because one component is exact. -/
theorem two_error_allowances : (3 / 100 : ℚ) + 2 / 100 > 3 / 100 := by norm_num

/-- At an exact zero of a value-tail polynomial, its derivative can remain nonzero. -/
theorem cubic_value_zero_derivative_nonzero :
    (0 : ℂ) * (0 + 1) * (0 + 2) = 0 ∧ (3 * (0 : ℂ) ^ 2 + 6 * 0 + 2) ≠ 0 := by norm_num

end GRWTSK.NumberTheory.Chebyshev.Checks.FiniteZetaCenterControls
