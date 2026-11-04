/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.FunctionsOfAComplexVariable.FiniteReciprocalPolynomial
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CoreCubicApproximation

/-!
# Finite reciprocal candidates for the actual cubic zeta approximations

Reuse the concurrently published FiniteInverse.polynomial and its complete
error identity at 00e29bc905b5c0cc06e6c9abc1cc6e8b738240fb. No second
geometric-series or inverse-polynomial implementation is introduced.
The source error here is NOT a free field: it is the complete cubic bound at
the explicit core cutoff N=(n+2)^2*(k+1). Consequently the actual source residual
is bounded by r^m + errorRate(k)*|v|*mass(r,m), with each term retained.

The all-core consumer exposes the remaining seed/contraction and strict-budget
obligations. It does not obtain them from the existence of arbitrarily accurate
additive approximations. The pointwise center fixture records a useful rational
calibration, not a proved enclosure for a public decimal sample.

Compilation, fresh kernel checking, transitive axiom audit and independent
analytical review: NOT_RUN. No unconditional RH or novelty claim.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Conditional.CubicInverse

open GRWTSK.Analysis.Division
open GRWTSK.RiemannHypothesis.FiniteCubicZetaApproximation
open CubicApproximation

/-- This candidate is a finite expression in the supplied finite model and seed. -/
def candidate (n k : ℕ) (seed : ℂ) (degree : ℕ) (s : ℂ) : ℂ :=
  FiniteInverse.polynomial (approximation (coreCutoff n k) s) seed degree

theorem core_residual (n k : ℕ) (s seed : ℂ) (degree : ℕ) {r : ℝ}
    (inside : s ∈ rightCore n)
    (seedBound : ‖1 - approximation (coreCutoff n k) s * seed‖ ≤ r) :
    ‖residual (riemannZeta s) (candidate n k seed degree s) 1‖ ≤
      r ^ degree + errorRate k * ‖seed‖ * FiniteInverse.mass r degree :=
  FiniteInverse.residual_bound (rightCore_error n k s inside) seedBound degree

theorem uniform_core_residual (n k : ℕ) (s seed : ℂ) (degree : ℕ) {r M : ℝ}
    (inside : s ∈ rightCore n)
    (seedBound : ‖1 - approximation (coreCutoff n k) s * seed‖ ≤ r)
    (seedSize : ‖seed‖ ≤ M) :
    ‖residual (riemannZeta s) (candidate n k seed degree s) 1‖ ≤
      r ^ degree + errorRate k * M * FiniteInverse.mass r degree := by
  have hr : 0 ≤ r := (norm_nonneg _).trans seedBound
  refine (core_residual n k s seed degree inside seedBound).trans ?_
  exact add_le_add_left
    (mul_le_mul_of_nonneg_right
      (mul_le_mul_of_nonneg_left seedSize (errorRate_pos k).le)
      (FiniteInverse.mass_nonneg hr degree)) _

/-- The all-core seed and gap hypotheses remain the substantive analytic task. -/
theorem rh_of_uniform_inverse_tests
    (accuracy degree : ℕ → ℕ) (seed : ℕ → ℂ → ℂ) (r M : ℕ → ℝ)
    (seedBound : ∀ n, ∀ s ∈ rightCore n,
      ‖1 - approximation (coreCutoff n (accuracy n)) s * seed n s‖ ≤ r n)
    (seedSize : ∀ n, ∀ s ∈ rightCore n, ‖seed n s‖ ≤ M n)
    (strict : ∀ n, (r n) ^ (degree n) + errorRate (accuracy n) * M n *
      FiniteInverse.mass (r n) (degree n) < 1) : _root_.RiemannHypothesis := by
  apply rh_iff_nonzero_rightStrip.mpr
  intro s hs
  obtain ⟨n, inside⟩ := exists_rightCore hs
  exact nonzero_of_unit_residual
    (uniform_core_residual n (accuracy n) s (seed n s) (degree n) inside
      (seedBound n s inside) (seedSize n s inside)) (strict n)

/-- A certified center lower bound gives a strict rational budget; decimals alone do not. -/
theorem rational_center_test {source center : ℂ}
    (error : ‖source - center‖ ≤ (1 / 96 : ℝ))
    (centerSize : (1 / 25 : ℝ) ≤ ‖center‖) :
    ‖residual source center⁻¹ 1‖ ≤ (25 / 96 : ℝ) ∧ source ≠ 0 := by
  have positive : 0 < ‖center‖ := lt_of_lt_of_le (by norm_num) centerSize
  have nonzero : center ≠ 0 := norm_pos_iff.mp positive
  have raw := FiniteInverse.constant_cell_residual error
    (P := center) (c := center) (D := 0) (by simp) nonzero
  have ratio : ((1 / 96 : ℝ) + 0) / ‖center‖ ≤ 25 / 96 := by
    apply (div_le_iff₀ positive).mpr
    nlinarith
  have bounded : ‖residual source center⁻¹ 1‖ ≤ (25 / 96 : ℝ) := raw.trans ratio
  exact ⟨bounded, nonzero_of_unit_residual bounded (by norm_num)⟩

/-- A source zero still obstructs every explicit candidate, at every accuracy and degree. -/
theorem zero_obstructs_candidate (n k : ℕ) (seed s : ℂ) (degree : ℕ)
    (zero : riemannZeta s = 0) :
    ‖residual (riemannZeta s) (candidate n k seed degree s) 1‖ = 1 := by
  simp [residual, zero]

end GRWTSK.NumberTheory.Conditional.CubicInverse
