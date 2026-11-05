/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CharacterEulerSource
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.ForcedHodgeStability

/-!
# Exact arithmetic synthesis through finite Hodge stability

Use two REAL coordinates per residue class, not a real-character shortcut. The
basis retains N^(-s) and the actual finite Hurwitz expression. Reconstruction
of each complex character value proves equality with the finite Euler model.
Thus the existing Hodge estimates return to the SAME actual L-function.

Complete analytic tail, propagated coefficient noise, deterministic filter bias
and every accumulated time-step defect are retained. The reference sequence for
the source-return theorem is the actual constant character vector; its nonzero
heat defect cannot be silently discarded. The cutoff is fixed along the sequence.

The finite two-term Hodge model is reused literally. No geometric Hodge
decomposition of L, infinite zero-motion theorem or Rodgers--Tao transfer is
asserted. Dissipative heat and the Newman coefficient deformation have opposite
time signs. A contraction does not manufacture a strict zero-free margin.
All positive moduli, complex characters and off-line core indices remain explicit.
AI-assisted source; compilation, kernel, axiom audit and review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Conditional.CharacterHodge

open GRWTSK.Analysis.Division
open GRWTSK.Analysis.Hodge.HeatApproximation
open GRWTSK.Algebra.LinearAlgebra.FinitePositiveHodgeHeat

variable {N : ℕ} [NeZero N]

def coordinates (χ : DirichletCharacter ℂ N) (i : ZMod N × Bool) : ℝ :=
  if i.2 then (χ i.1).im else (χ i.1).re

def basis (M : ℕ) (i : ZMod N × Bool) (s : ℂ) : ℂ :=
  if i.2 then Complex.I * ((N : ℂ) ^ (-s) * CharacterEuler.component M i.1 s)
  else (N : ℂ) ^ (-s) * CharacterEuler.component M i.1 s

/-- A source-exact mathematical comparison, not a formal resemblance. -/
theorem synthesis_eq_model (χ : DirichletCharacter ℂ N) (M : ℕ) (s : ℂ) :
    synthesis (basis M) (coordinates χ) s = CharacterEuler.model χ M s := by
  unfold synthesis coordinates basis CharacterEuler.model CharacterApproximation.combine
  rw [Fintype.sum_prod_type, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro j hj
  simp only [Fintype.sum_bool, Bool.false_eq_true, if_false, if_true]
  have reconstruct := Complex.re_add_im (χ j)
  calc
    _ = ((χ j).re + (χ j).im * Complex.I : ℂ) *
        ((N : ℂ) ^ (-s) * CharacterEuler.component M j s) := by ring
    _ = (N : ℂ) ^ (-s) * (χ j * CharacterEuler.component M j s) := by
      rw [reconstruct]
      ring

def filtered (M : ℕ) (a measured : ZMod N × Bool → ℝ) (t : ℝ) (s : ℂ) : ℂ :=
  synthesis (basis M) (heat a t measured) s

theorem source_error (χ : DirichletCharacter ℂ N) (M : ℕ)
    (a measured : ZMod N × Bool → ℝ) (t : ℝ) (time : 0 ≤ t)
    (s : ℂ) {R : ℝ} (halfPlane : 0 ≤ s.re) (pole : s ≠ 1) (size : ‖s‖ ≤ R) :
    ‖χ.LFunction s - filtered M a measured t s‖ ≤
      (N : ℝ) * CubicApproximation.radiusBudget R M +
        filterBudget (basis M) a (coordinates χ) measured t s := by
  apply complete_source_error χ.LFunction (basis M) a (coordinates χ) measured time s
  rw [synthesis_eq_model]
  exact CharacterEuler.source_radius_bound χ M s halfPlane pole size

theorem core_source_error (χ : DirichletCharacter ℂ N) (n k : ℕ)
    (a measured : ZMod N × Bool → ℝ) (t : ℝ) (time : 0 ≤ t)
    (s : ℂ) (inside : s ∈ offCore n) :
    ‖χ.LFunction s - filtered (CharacterEuler.coreCutoff N n k) a measured t s‖ ≤
      CubicApproximation.errorRate k +
        filterBudget (basis (CharacterEuler.coreCutoff N n k)) a (coordinates χ) measured t s := by
  apply complete_source_error χ.LFunction _ a (coordinates χ) measured time s
  rw [synthesis_eq_model]
  exact CharacterEuler.offCore_error χ n k s inside

theorem residual_bound (χ : DirichletCharacter ℂ N) (n k : ℕ)
    (a measured : ZMod N × Bool → ℝ) (t : ℝ) (time : 0 ≤ t)
    (s inverse : ℂ) (inside : s ∈ offCore n) {ε U : ℝ}
    (modelResidual : ‖residual (filtered (CharacterEuler.coreCutoff N n k) a measured t s)
      inverse 1‖ ≤ ε) (inverseBound : ‖inverse‖ ≤ U) :
    ‖residual (χ.LFunction s) inverse 1‖ ≤ ε +
      (CubicApproximation.errorRate k +
        filterBudget (basis (CharacterEuler.coreCutoff N n k)) a (coordinates χ) measured t s) * U :=
  Approximation.residual_source_bound modelResidual
    (core_source_error χ n k a measured t time s inside) inverseBound

/-- Multi-step source return, retaining every actual local defect. The reference
sequence is constant but is NOT assumed to solve the heat recurrence. -/
theorem trajectory_source_error (χ : DirichletCharacter ℂ N) (n k : ℕ)
    (a : ZMod N × Bool → ℝ) (measured : ℕ → ZMod N × Bool → ℝ)
    (t : ℝ) (time : 0 ≤ t) (steps : ℕ) (s : ℂ) (inside : s ∈ offCore n) :
    ‖χ.LFunction s - synthesis (basis (CharacterEuler.coreCutoff N n k)) (measured steps) s‖ ≤
      CubicApproximation.errorRate k +
        GRWTSK.Analysis.Hodge.ForcedStability.evaluationBudget
          (basis (CharacterEuler.coreCutoff N n k)) a t measured
          (fun _ => coordinates χ) steps s := by
  apply GRWTSK.Analysis.Hodge.ForcedStability.source_return
    χ.LFunction _ a time measured (fun _ => coordinates χ) steps s
  rw [synthesis_eq_model]
  exact CharacterEuler.offCore_error χ n k s inside

/-- Stability propagates to an actual unit-residual inequality, with the complete tail. -/
theorem trajectory_residual_bound (χ : DirichletCharacter ℂ N) (n k : ℕ)
    (a : ZMod N × Bool → ℝ) (measured : ℕ → ZMod N × Bool → ℝ)
    (t : ℝ) (time : 0 ≤ t) (steps : ℕ) (s inverse : ℂ)
    (inside : s ∈ offCore n) {ε U : ℝ}
    (modelResidual : ‖residual
      (synthesis (basis (CharacterEuler.coreCutoff N n k)) (measured steps) s) inverse 1‖ ≤ ε)
    (inverseBound : ‖inverse‖ ≤ U) :
    ‖residual (χ.LFunction s) inverse 1‖ ≤ ε +
      (CubicApproximation.errorRate k +
        GRWTSK.Analysis.Hodge.ForcedStability.evaluationBudget
          (basis (CharacterEuler.coreCutoff N n k)) a t measured
          (fun _ => coordinates χ) steps s) * U :=
  Approximation.residual_source_bound modelResidual
    (trajectory_source_error χ n k a measured t time steps s inside) inverseBound

theorem coordinate_sector_energy (χ : DirichletCharacter ℂ N)
    (a : ZMod N × Bool → ℝ) (mask : ZMod N × Bool → Bool) :
    energy a (coordinates χ) = energy a (maskProjector mask (coordinates χ)) +
      energy a (maskProjector (complementMask mask) (coordinates χ)) :=
  energy_mask_split a (coordinates χ) mask

theorem backward_coefficient_error (a x y : ZMod N × Bool → ℝ) (t : ℝ)
    (i : ZMod N × Bool) :
    |heat a (-t) x i - heat a (-t) y i| =
      Real.exp (t * a i ^ 2) * |x i - y i| := inverse_error a x y t i

end GRWTSK.NumberTheory.Conditional.CharacterHodge
