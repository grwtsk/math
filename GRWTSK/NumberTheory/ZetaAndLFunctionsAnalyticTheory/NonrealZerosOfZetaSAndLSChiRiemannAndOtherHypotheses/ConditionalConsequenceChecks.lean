/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.ConditionalProgressionIntervals

set_option autoImplicit false

noncomputable section

/-!
# Scoped integration checks for RH/GRH consequence candidates

This additive entry point does not modify GRWTSK.lean or the default build.
It exercises exact upstream arithmetic objects, a bounded-modulus GRH consumer,
empty-product behavior, a sharp finite sum, and the zero-free multiplier
obstruction. These examples reuse the main proofs; they are not independent
analytical proofs. The axiom queries below require an actual source-bound run.

Target: leanprover/lean4:v4.34.1, retained Mathlib pin
 d13f23b723b8a846827a245b89c10fc7d3f11612.
Compilation, fresh kernel checking, transitive axiom audit: NOT_RUN.
AI-assisted source work; local attribution: grwtsk contributors.
-/

namespace GRWTSK.NumberTheory.Conditional.ConsequenceChecks

open scoped BigOperators
open GRWTSK.Analysis.VerticalLine GRWTSK.NumberTheory.CriticalLine
open GRWTSK.NumberTheory.Conditional.FiniteZeros

example (h : _root_.RiemannHypothesis) {ρ : ℂ}
    (hρ : GRWTSK.RiemannHypothesis.NontrivialZetaZero ρ) {x : ℝ} (hx : 0 < x) :
    ‖(x : ℂ) ^ ρ‖ = Real.sqrt x := zeta_power_norm h hρ hx

example {ι : Type*} {N Q : ℕ} [NeZero N] {χ : DirichletCharacter ℂ N}
    (h : DirichletGRHUpTo Q) (hN : N ≤ Q) (s : Finset ι) (roots c : ι → ℂ)
    (hz : ∀ i ∈ s, DirichletStripZero χ (roots i)) {x : ℝ} (hx : 0 < x) :
    ‖dividedPowerSum s roots c x‖ ≤ Real.sqrt x * ∑ i ∈ s, ‖c i‖ / ‖roots i‖ :=
  cutoff_dividedPowerSum_bound h hN s roots c hz hx

/-- The prime-support extractor returns an actual prime in a concrete interval. -/
example : ∃ p : ℕ, p.Prime ∧ (1 : ℝ) < (p : ℝ) ∧ (p : ℝ) ≤ 2 := by
  apply PrimeIntervals.exists_prime_of_theta_lt (a := 1) (b := 2) (by norm_num)
  simpa only [Chebyshev.theta_one] using Chebyshev.theta_pos (x := 2) (by norm_num)

example (r : ℕ) :
    ∃ p : ℕ, p.Prime ∧ p % 1 = r % 1 ∧ (1 : ℝ) < (p : ℝ) ∧ (p : ℝ) ≤ 2 := by
  apply ProgressionIntervals.exists_prime_of_progressionTheta_lt
    (q := 1) (r := r) (a := 1) (b := 2) (by norm_num)
  rw [ProgressionIntervals.progressionTheta_mod_one,
    ProgressionIntervals.progressionTheta_mod_one, Chebyshev.theta_one]
  exact Chebyshev.theta_pos (by norm_num)

/-- A geometric sharpness check; 1/2 is not asserted to be an actual zeta zero. -/
example : ‖powerSum (Finset.range 2) (fun _ => (1 / 2 : ℂ)) (fun _ => 1) 4‖ = 4 := by
  have h := repeated_root_sharp 2 (ρ := (1 / 2 : ℂ)) (by norm_num)
    (x := 4) (by norm_num)
  norm_num at h
  exact h

example {ι : Type*} (roots : ι → ℂ) (z : ℂ) :
    deriv (rootProduct ∅ roots) z = 0 := empty_product_derivative roots z

example : (∀ z : ℂ, Obstruction.exponentialFactor z = 0 → z.re = 1 / 2) ∧
    deriv Obstruction.exponentialFactor (-(1 / 2 : ℂ)) = 0 ∧
    (-(1 / 2 : ℂ)).re ≠ (1 / 2 : ℝ) :=
  Obstruction.zero_free_multiplier_moves_derivative_zero

#print axioms GRWTSK.Analysis.VerticalLine.derivative_zero_on_line
#print axioms GRWTSK.Analysis.VerticalLine.Obstruction.zero_free_multiplier_moves_derivative_zero
#print axioms GRWTSK.NumberTheory.CriticalLine.dividedPowerSum_norm_le
#print axioms GRWTSK.NumberTheory.Conditional.FiniteZeros.zeta_dividedPowerSum_bound
#print axioms GRWTSK.NumberTheory.Conditional.PrimeIntervals.prime_of_rh_formula_certificates
#print axioms GRWTSK.NumberTheory.Conditional.ProgressionIntervals.prime_of_grh_formula_certificates

end GRWTSK.NumberTheory.Conditional.ConsequenceChecks
