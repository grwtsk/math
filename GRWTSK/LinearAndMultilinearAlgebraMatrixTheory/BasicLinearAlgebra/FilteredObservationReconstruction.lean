/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.ForcedHodgeStability

/-!
# Reconstruction after filtered, truncated observations

Reuse the repository's finite diagonal heat, masks, synthesis and complete
simulation-defect budget. Full finite heat is invertible. Masking is not:
unobserved coordinates retain their ENTIRE source amplitude. Measured retained
coordinates pay exp(t*a_i^2) times their actual filtered error when reconstructed.
The source return also charges the independent analytic tail.

This is a finite observation/reconstruction theorem, not heat flow of Weil's
operator, a generative diffusion-model specification, a zero-motion theorem,
a proof that an AI uses diffusion, or a cofinal spectral certificate. The mode
spectrum and synthesis map must be identified separately for each application.

Primary proof: exponential inverse, exact coordinate cases, finite triangle
inequality. Hostile check: a nonzero masked coordinate has the same observation
as zero. The simulation consumer uses every actual local defect, including the
initial error, rather than only the last residual. No new Hodge model is defined.
AI-assisted source candidate. Elaboration, fresh kernel replay, transitive axiom
audit, independent review: NOT_RUN. Novelty UNASSESSED.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.Hodge.FilteredReconstruction

open GRWTSK.Algebra.LinearAlgebra.FinitePositiveHodgeHeat
open GRWTSK.Analysis.Hodge.HeatApproximation
open GRWTSK.Analysis.Hodge.ForcedStability

universe u v
variable {ι : Type u} {Z : Type v}

/-- No information is lost by the exact, fully observed finite heat map. -/
theorem undo_heat (a : ι → ℝ) (t : ℝ) (x : ι → ℝ) :
    heat a (-t) (heat a t x) = x := by
  funext i
  change Real.exp (-(-t) * a i ^ 2) *
    (Real.exp (-t * a i ^ 2) * x i) = x i
  rw [← mul_assoc, ← Real.exp_add,
    show -(-t) * a i ^ 2 + -t * a i ^ 2 = 0 by ring,
    Real.exp_zero, one_mul]

def observe (a : ι → ℝ) (t : ℝ) (mask : ι → Bool) (x : ι → ℝ) : ι → ℝ :=
  maskProjector mask (heat a t x)

def reconstruct (a : ι → ℝ) (t : ℝ) (mask : ι → Bool)
    (measured : ι → ℝ) : ι → ℝ :=
  maskProjector mask (heat a (-t) measured)

/-- Retained noise is amplified; an omitted source coordinate is not set to zero
in the ERROR merely because it was set to zero in the reconstruction. -/
theorem coordinate_error_exact (a exact measured : ι → ℝ) (t : ℝ)
    (mask : ι → Bool) (i : ι) :
    |reconstruct a t mask measured i - exact i| =
      if mask i = true then
        Real.exp (t * a i ^ 2) * |measured i - heat a t exact i|
      else |exact i| := by
  by_cases retained : mask i = true
  · simpa [reconstruct, maskProjector_apply, retained, undo_heat] using
      inverse_error a measured (heat a t exact) t i
  · simp [reconstruct, maskProjector_apply, retained]

def reconstructionBudget [Fintype ι] (basis : ι → Z → ℂ)
    (a exact noise : ι → ℝ) (t : ℝ) (mask : ι → Bool) (z : Z) : ℝ :=
  ∑ i, (if mask i = true then Real.exp (t * a i ^ 2) * noise i
    else |exact i|) * ‖basis i z‖

/-- The observer norms, discarded modes and inverse gains are all explicit. -/
theorem synthesis_reconstruction_bound [Fintype ι] (basis : ι → Z → ℂ)
    (a exact measured noise : ι → ℝ) (t : ℝ) (mask : ι → Bool) (z : Z)
    (noise_bound : ∀ i, mask i = true →
      |measured i - heat a t exact i| ≤ noise i) :
    ‖synthesis basis (reconstruct a t mask measured) z - synthesis basis exact z‖ ≤
      reconstructionBudget basis a exact noise t mask z := by
  refine (synthesis_error basis (reconstruct a t mask measured) exact z).trans ?_
  apply Finset.sum_le_sum
  intro i hi
  apply mul_le_mul_of_nonneg_right _ (norm_nonneg _)
  rw [coordinate_error_exact]
  by_cases retained : mask i = true
  · simp only [retained, if_true]
    exact mul_le_mul_of_nonneg_left (noise_bound i retained) (Real.exp_pos _).le
  · simp only [retained, if_false, le_refl]

/-- A finite reconstruction is compared to the original source only after its
independent omitted analytic tail is included. -/
theorem source_reconstruction_bound [Fintype ι] (source : Z → ℂ)
    (basis : ι → Z → ℂ) (a exact measured noise : ι → ℝ)
    (t tail : ℝ) (mask : ι → Bool) (z : Z)
    (source_tail : ‖source z - synthesis basis exact z‖ ≤ tail)
    (noise_bound : ∀ i, mask i = true →
      |measured i - heat a t exact i| ≤ noise i) :
    ‖source z - synthesis basis (reconstruct a t mask measured) z‖ ≤
      tail + reconstructionBudget basis a exact noise t mask z := by
  have comparison := synthesis_reconstruction_bound basis a exact measured noise
    t mask z noise_bound
  have reverse : ‖synthesis basis exact z -
      synthesis basis (reconstruct a t mask measured) z‖ ≤
        reconstructionBudget basis a exact noise t mask z := by
    simpa only [norm_sub_rev] using comparison
  exact (norm_sub_le_norm_sub_add_norm_sub _ (synthesis basis exact z) _).trans
    (add_le_add source_tail reverse)

/-- Compose reconstruction with the EXISTING complete simulation-error budget.
The reference endpoint must actually equal the filtered source coordinates.
Simulation time tau and observation time t are deliberately distinct. -/
theorem simulated_reconstruction_bound [Fintype ι] (basis : ι → Z → ℂ)
    (a b exact : ι → ℝ) (t tau : ℝ) (mask : ι → Bool)
    (measured reference : ℕ → ι → ℝ) (n : ℕ) (z : Z)
    (endpoint : reference n = heat a t exact) :
    ‖synthesis basis (reconstruct a t mask (measured n)) z -
      synthesis basis exact z‖ ≤
        reconstructionBudget basis a exact
          (recursiveBudget b tau measured reference n) t mask z := by
  apply synthesis_reconstruction_bound
  intro i retained
  rw [← endpoint]
  exact error_le_recursive b tau measured reference n i

/-- One retained coordinate does not reveal a discarded nonzero coordinate. -/
theorem masked_observation_is_not_injective (a : Bool → ℝ) (t : ℝ) :
    ¬ Function.Injective (observe a t (fun i : Bool => i)) := by
  intro injective
  let hidden : Bool → ℝ := fun i => if i = false then 1 else 0
  have same : observe a t (fun i : Bool => i) hidden =
      observe a t (fun i : Bool => i) (fun _ => 0) := by
    funext i
    cases i <;> simp [observe, maskProjector_apply, heat, functionalCalculus,
      diagonal, hidden]
  have impossible := congrFun (injective same) false
  norm_num [hidden] at impossible

end GRWTSK.Analysis.Hodge.FilteredReconstruction
