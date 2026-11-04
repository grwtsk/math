/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.FunctionsOfAComplexVariable.BoundaryResidual

/-!
# Source-return bounds for independently computed analytic approximations

A finite model is not the source function. This file charges its COMPLETE
additive error when testing a multiplicative inverse residual. The identity
  f*u - 1 = (A*u - 1) + (f-A)*u
shows that a model residual epsilon, source error delta and inverse bound M
produce the strict test epsilon + delta*M < 1. A finite boundary mesh additionally
pays its full between-sample variation. No inverse of the target is assumed.

This is the elementary stability mechanism used in rigorous approximation and
barrier arguments, not a port of the Rodgers--Tao or Polymath15 theorems.
Primary-source comparison: D. H. J. Polymath, Effective approximation of heat
flow evolution of the Riemann xi function (2019), arXiv:1904.12438; Tao's
2019-04-30 account distinguishes effective error control from the remaining
zero-free barrier. The present result is only the norm-algebra component.

Consumers: actual Euler--Maclaurin source bounds, calibrated heat observations,
and all-core certificate suppliers. Counterexamples retain zero targets and
an omitted additive error. Compilation, kernel checking, transitive axiom audit
and independent review: NOT_RUN. Source dependencies inspected at
7bc6fe38019589284aa5b2d12833c7cae4cecfa4. No novelty claim.
-/

set_option autoImplicit false
noncomputable section
open Set

namespace GRWTSK.Analysis.Division.Approximation

/-- The source discrepancy is multiplied by the actual supplied inverse. -/
theorem residual_source_identity (source model inverse : ℂ) :
    residual source inverse 1 = residual model inverse 1 + (source - model) * inverse := by
  dsimp [residual]
  ring

theorem residual_source_bound {source model inverse : ℂ} {ε δ M : ℝ}
    (modelBound : ‖residual model inverse 1‖ ≤ ε)
    (sourceError : ‖source - model‖ ≤ δ) (inverseBound : ‖inverse‖ ≤ M) :
    ‖residual source inverse 1‖ ≤ ε + δ * M := by
  have nonnegative : 0 ≤ δ := (norm_nonneg _).trans sourceError
  rw [residual_source_identity]
  refine (norm_add_le _ _).trans (add_le_add modelBound ?_)
  rw [norm_mul]
  exact mul_le_mul sourceError inverseBound (norm_nonneg _) nonnegative

/-- This conclusion establishes nonvanishing, rather than assuming it to divide. -/
theorem nonzero_of_model {source model inverse : ℂ} {ε δ M : ℝ}
    (modelBound : ‖residual model inverse 1‖ ≤ ε)
    (sourceError : ‖source - model‖ ≤ δ) (inverseBound : ‖inverse‖ ≤ M)
    (strict : ε + δ * M < 1) : source ≠ 0 :=
  nonzero_of_unit_residual (residual_source_bound modelBound sourceError inverseBound) strict

/-- A fixed nonzero center, not an inverse of the unknown source, supplies the candidate. -/
theorem constant_inverse_residual (source center : ℂ) (nonzero : center ≠ 0) :
    residual source center⁻¹ 1 = (source - center) * center⁻¹ := by
  dsimp [residual]
  rw [sub_mul, mul_inv_cancel₀ nonzero]

theorem constant_inverse_bound {source center : ℂ} {δ : ℝ}
    (nonzero : center ≠ 0) (error : ‖source - center‖ ≤ δ) :
    ‖residual source center⁻¹ 1‖ ≤ δ / ‖center‖ := by
  rw [constant_inverse_residual source center nonzero, norm_mul, norm_inv, div_eq_mul_inv]
  exact mul_le_mul_of_nonneg_right error (inv_nonneg.mpr (norm_nonneg _))

/-- A center lower bound and a STRICT smaller radius suffice, including source error. -/
theorem nonzero_of_center_radius {source center : ℂ} {δ m : ℝ}
    (margin : m ≤ ‖center‖) (error : ‖source - center‖ ≤ δ)
    (strict : δ < m) : source ≠ 0 := by
  have positive : 0 < ‖center‖ :=
    lt_of_le_of_lt (norm_nonneg (source - center)) (error.trans_lt (strict.trans_le margin))
  have nonzero : center ≠ 0 := norm_pos_iff.mp positive
  apply nonzero_of_unit_residual (constant_inverse_bound nonzero error)
  exact (div_lt_one positive).mpr (strict.trans_le margin)

/-- Scalar error budgets compose along the actual intermediate approximation. -/
theorem source_error_two_stages {source analytic numeric : ℂ} {tail rounding : ℝ}
    (analyticError : ‖source - analytic‖ ≤ tail)
    (numericError : ‖analytic - numeric‖ ≤ rounding) :
    ‖source - numeric‖ ≤ tail + rounding :=
  (norm_sub_le_norm_sub_add_norm_sub source analytic numeric).trans
    (add_le_add analyticError numericError)

/-- Perturbing both the source model and inverse also retains the mixed term. -/
theorem evaluated_source_bound {source model inverse inverseModel : ℂ}
    {ε tail rounding inverseError : ℝ}
    (center : ‖residual model inverseModel 1‖ ≤ ε)
    (sourceError : ‖source - model‖ ≤ tail + rounding)
    (inverseErrorBound : ‖inverse - inverseModel‖ ≤ inverseError) :
    ‖residual source inverse 1‖ ≤
      ε + (tail + rounding) * ‖inverseModel‖ + ‖model‖ * inverseError +
        (tail + rounding) * inverseError :=
  residual_evaluation_bound center sourceError inverseErrorBound

/-- Construct the existing boundary certificate from a model and a source-return estimate. -/
def boundaryOfModel (f model inverse : ℂ → ℂ) (U : Set ℂ)
    (hf : DiffContOnCl ℂ f U) (hu : DiffContOnCl ℂ inverse U)
    {ε δ M : ℝ}
    (modelBound : ∀ z ∈ frontier U, ‖residual (model z) (inverse z) 1‖ ≤ ε)
    (sourceError : ∀ z ∈ frontier U, ‖f z - model z‖ ≤ δ)
    (inverseBound : ∀ z ∈ frontier U, ‖inverse z‖ ≤ M)
    (strict : ε + δ * M < 1) : Boundary.Certificate f U where
  approximation := inverse
  bound := ε + δ * M
  strict := strict
  regular := Boundary.residual_regular hf hu
  boundary_bound := fun z hz =>
    residual_source_bound (modelBound z hz) (sourceError z hz) (inverseBound z hz)

/-- Samples concern the finite model; the analytic tail is paid at EVERY boundary point. -/
def boundaryOfSampledModel (f model inverse : ℂ → ℂ) (U : Set ℂ)
    (samples : Finset ℂ) (hf : DiffContOnCl ℂ f U)
    (hu : DiffContOnCl ℂ inverse U) {ε η δ M : ℝ}
    (sampleBound : ∀ w ∈ samples, ‖residual (model w) (inverse w) 1‖ ≤ ε)
    (variation : ∀ z ∈ frontier U, ∃ w ∈ samples,
      ‖residual (model z) (inverse z) 1 - residual (model w) (inverse w) 1‖ ≤ η)
    (sourceError : ∀ z ∈ frontier U, ‖f z - model z‖ ≤ δ)
    (inverseBound : ∀ z ∈ frontier U, ‖inverse z‖ ≤ M)
    (strict : ε + η + δ * M < 1) : Boundary.Certificate f U :=
  boundaryOfModel f model inverse U hf hu
    (Boundary.sampled_boundary_bound _ U samples sampleBound variation)
    sourceError inverseBound strict

/-- A mesh of centers also yields a constant-inverse certificate without reciprocal evaluation. -/
def boundaryOfCenter (f : ℂ → ℂ) (U : Set ℂ) (center : ℂ)
    (hf : DiffContOnCl ℂ f U) {δ : ℝ}
    (nonzero : center ≠ 0)
    (enclosure : ∀ z ∈ frontier U, ‖f z - center‖ ≤ δ)
    (strict : δ < ‖center‖) : Boundary.Certificate f U where
  approximation := fun _ => center⁻¹
  bound := δ / ‖center‖
  strict := (div_lt_one (norm_pos_iff.mpr nonzero)).mpr strict
  regular := Boundary.residual_regular hf
    ⟨differentiableOn_const, continuousOn_const⟩
  boundary_bound := fun z hz => constant_inverse_bound nonzero (enclosure z hz)

/-- An actual source zero forces any valid model-return budget to be at least one. -/
theorem zero_forces_budget {model inverse : ℂ} {ε δ M : ℝ}
    (modelBound : ‖residual model inverse 1‖ ≤ ε)
    (sourceError : ‖(0 : ℂ) - model‖ ≤ δ) (inverseBound : ‖inverse‖ ≤ M) :
    1 ≤ ε + δ * M := by
  simpa [residual] using residual_source_bound modelBound sourceError inverseBound

/-- The finite model can be perfect while the source is zero. Its tail is indispensable. -/
theorem omitted_source_error_counterexample :
    ‖residual (1 : ℂ) 1 1‖ = 0 ∧
      ‖residual (0 : ℂ) 1 1‖ = 1 ∧ ‖(0 : ℂ) - 1‖ = 1 := by
  norm_num [residual]

/-- A concrete rational budget is strictly feasible; it is not a zeta data assertion. -/
theorem rational_budget_fixture :
    (1 / 4 : ℝ) + 1 / 8 + (1 / 64) * 4 < 1 := by norm_num

end GRWTSK.Analysis.Division.Approximation
