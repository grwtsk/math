/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib analytic continuation by David Loeffler and Michael Stoll retains
its upstream authorship and Apache-2.0 license. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.ArithmeticCyclicCharacterMultiplierSelection
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.ArithmeticCyclicOperatorStability
import Mathlib.NumberTheory.LSeries.DirichletContinuation

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Actual Dirichlet analytic continuation from operator-bound observations

The analytic object is DirichletCharacter.LFunction, not the naive LSeries
outside its convergence region. Its exact finite Hurwitz-zeta formula
transports complete character-sample errors to analytic function-value
errors. The explicit level/parameter-dependent condition mass is retained.

SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
At a genuine analytic zero the reconstructed scalar value is small. This
does NOT construct a nonzero full-vector approximate eigenvector of the
self-adjoint arithmetic operator. That zero-to-residual bridge is UNSUPPLIED.
-/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletAnalyticObservationError
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory
open ArithmeticCyclicCharacterPhase ArithmeticCyclicCharacterPhaseBudget
open ArithmeticCyclicCharacterUniformBudget ArithmeticCyclicOperatorStability

variable (level : ℕ) [NeZero level]

def conditionMass (s : ℂ) : ℝ :=
  ‖(level : ℂ) ^ (-s)‖ *
    ∑ j : ZMod level, ‖HurwitzZeta.hurwitzZeta (ZMod.toAddCircle j) s‖

def reconstructedResidues (χ : DirichletCharacter ℂ level) (k : ℕ)
    (r₀ rₖ : ZMod level → ℝ) : ZMod level → ℂ :=
  fun j => reconstructedSample level χ k (r₀ j) (rₖ j)

def DirichletStripZero (χ : DirichletCharacter ℂ level) (s : ℂ) : Prop :=
  DirichletCharacter.LFunction χ s = 0 ∧ 0 < s.re ∧ s.re < 1

theorem analytic_difference (χ : DirichletCharacter ℂ level)
    (r : ZMod level → ℂ) (s : ℂ) :
    DirichletCharacter.LFunction χ s - ZMod.LFunction r s =
      (level : ℂ) ^ (-s) * ∑ j : ZMod level,
        (χ j - r j) * HurwitzZeta.hurwitzZeta (ZMod.toAddCircle j) s := by
  unfold DirichletCharacter.LFunction ZMod.LFunction
  rw [← mul_sub, ← Finset.sum_sub_distrib]
  congr 1
  apply Finset.sum_congr rfl
  intro j _
  ring

theorem analytic_error_weighted (χ : DirichletCharacter ℂ level)
    (r : ZMod level → ℂ) (s : ℂ) :
    ‖DirichletCharacter.LFunction χ s - ZMod.LFunction r s‖ ≤
      ‖(level : ℂ) ^ (-s)‖ * ∑ j : ZMod level,
        ‖χ j - r j‖ * ‖HurwitzZeta.hurwitzZeta (ZMod.toAddCircle j) s‖ := by
  rw [analytic_difference, norm_mul]
  apply mul_le_mul_of_nonneg_left _ (norm_nonneg _)
  have h := norm_sum_le Finset.univ (fun j : ZMod level =>
    (χ j - r j) * HurwitzZeta.hurwitzZeta (ZMod.toAddCircle j) s)
  simpa only [norm_mul] using h

theorem analytic_error_of_uniform_samples (χ : DirichletCharacter ℂ level)
    (r : ZMod level → ℂ) (s : ℂ) (δ : ℝ)
    (hr : ∀ j, ‖χ j - r j‖ ≤ δ) :
    ‖DirichletCharacter.LFunction χ s - ZMod.LFunction r s‖ ≤ δ * conditionMass level s := by
  calc
    _ ≤ ‖(level : ℂ) ^ (-s)‖ * ∑ j : ZMod level,
        ‖χ j - r j‖ * ‖HurwitzZeta.hurwitzZeta (ZMod.toAddCircle j) s‖ :=
      analytic_error_weighted level χ r s
    _ ≤ ‖(level : ℂ) ^ (-s)‖ * ∑ j : ZMod level,
        δ * ‖HurwitzZeta.hurwitzZeta (ZMod.toAddCircle j) s‖ := by
      apply mul_le_mul_of_nonneg_left _ (norm_nonneg _)
      apply Finset.sum_le_sum
      intro j _
      exact mul_le_mul_of_nonneg_right (hr j) (norm_nonneg _)
    _ = δ * conditionMass level s := by
      rw [← Finset.mul_sum]
      unfold conditionMass
      ring

theorem sample_error_of_operator_errors (χ : DirichletCharacter ℂ level)
    (k : ℕ) (ha : |(χ (k : ZMod level)).re| ≤ 1)
    (hb : 1 / 2 ≤ |(χ (k : ZMod level)).im|)
    (t : ℝ) (r₀ rₖ : ZMod level → ℝ) (ε₀ εₖ : ℝ)
    (hε₀ : 0 ≤ ε₀) (hεₖ : 0 ≤ εₖ)
    (h₀ : ‖hamiltonianOperator level t (characterPotential level level χ ZMod.val) -
      hamiltonianOperator level t r₀‖ ≤ ε₀)
    (hₖ : ‖hamiltonianOperator level t
        (characterPotential level level χ (fun j => k * j.val)) -
      hamiltonianOperator level t rₖ‖ ≤ εₖ) (j : ZMod level) :
    ‖χ j - reconstructedResidues level χ k r₀ rₖ j‖ ≤ 3 * ε₀ + 2 * εₖ := by
  have he₀ := (operator_norm_sub_le_iff level t
    (characterPotential level level χ ZMod.val) r₀ ε₀).mp h₀ j
  have heₖ := (operator_norm_sub_le_iff level t
    (characterPotential level level χ (fun j => k * j.val)) rₖ εₖ).mp hₖ j
  have h := uniform_complex_error level level χ ZMod.val k ha hb j
    (r₀ j) (rₖ j) ε₀ εₖ hε₀ hεₖ he₀ heₖ
  simpa only [ZMod.natCast_zmod_val, reconstructedResidues] using h

/-- The strip zero is an actual analytically continued Dirichlet L-function zero. -/
theorem reconstructed_value_small_at_strip_zero (χ : DirichletCharacter ℂ level)
    (s : ℂ) (hz : DirichletStripZero level χ s)
    (r : ZMod level → ℂ) (δ : ℝ) (hr : ∀ j, ‖χ j - r j‖ ≤ δ) :
    ‖ZMod.LFunction r s‖ ≤ δ * conditionMass level s := by
  have h := analytic_error_of_uniform_samples level χ r s δ hr
  simpa only [hz.1, zero_sub, norm_neg] using h

end GRWTSK.NumberTheory.Zeta.Riemann.DirichletAnalyticObservationError
