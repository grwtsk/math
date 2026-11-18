/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.MeasureAndIntegration.RawMomentQuadrature
import GRWTSK.MeasureAndIntegration.FourierDerivativeDecay
import Mathlib.Analysis.Calculus.MeanValue

/-!
# Derivative-cell bounds for the original supported test

MSC2020: 26D10, 65D30, 42A38. Consumer: WeilFiniteNormEvaluation.
A certified derivative bound holds throughout each cell, not just at its
sample. The mean-value inequality supplies the previous midpoint-variation
premise. The same bounds supply the actual derivative L1 norm and hence the
canonical first-order Fourier decay cost. The original test is unchanged.

SOURCE_PROOF_CANDIDATE. Lean parsing, elaboration, exact-type checks, builds,
kernel replay, transitive axiom audit, certified computation and independent
review NOT_RUN. Novelty UNASSESSED. See the adjacent analytical/provenance record.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators ContDiff

namespace GRWTSK.MeasureAndIntegration.DerivativeCellBounds

open GRWTSK.MeasureAndIntegration.RawMomentQuadrature
open GRWTSK.MeasureAndIntegration.FourierMomentEnclosure
open GRWTSK.MeasureAndIntegration.FourierDerivativeDecay

/-- A genuine derivative bound supplies within-cell variation for a complex-valued
function of a real variable. Differentiability cannot be dropped. -/
theorem norm_sub_midpoint_le_of_deriv_bound
    (f : ℝ → ℂ) (a b K : ℝ) (hab : a ≤ b)
    (hf : ∀ t ∈ Icc a b, DifferentiableAt ℝ f t)
    (hderiv : ∀ t ∈ Icc a b, ‖deriv f t‖ ≤ K)
    (t : ℝ) (ht : t ∈ Icc a b) :
    ‖f t - f ((a + b) / 2)‖ ≤ K * |t - (a + b) / 2| := by
  have hmid : (a + b) / 2 ∈ Icc a b := ⟨by linarith, by linarith⟩
  simpa only [Real.norm_eq_abs] using
    (convex_Icc a b).norm_image_sub_le_of_norm_deriv_le hf hderiv hmid ht

private theorem tsupport_subset_of_supported (f : ℝ → ℂ) (T : ℝ)
    (hs : ∀ t : ℝ, T < |t| → f t = 0) : tsupport f ⊆ Icc (-T) T := by
  apply closure_minimal _ isClosed_Icc
  intro t ht
  by_contra hout
  apply ht
  apply hs t
  by_contra hn
  exact hout (abs_le.mp (le_of_not_gt hn))

/-- The derivative is integrable and supported in the original closed interval.
Its L1 bound is the finite sum of certified derivative ranges times cell widths. -/
theorem integral_norm_deriv_le_cell_budget
    (f : ℝ → ℂ) (T : ℝ) (hT : 0 ≤ T)
    (hf : ContDiff ℝ 1 f) (hc : HasCompactSupport f)
    (hs : ∀ t : ℝ, T < |t| → f t = 0)
    (x K : ℕ → ℝ) (N : ℕ) (hx0 : x 0 = -T) (hxN : x N = T)
    (hgeom : ∀ j < N, -T ≤ x j ∧ x j ≤ x (j + 1) ∧ x (j + 1) ≤ T)
    (hderiv : ∀ j < N, ∀ t ∈ Icc (x j) (x (j + 1)), ‖deriv f t‖ ≤ K j) :
    (∫ t : ℝ, ‖deriv f t‖) ≤ cellVariationBudget x K N := by
  have hi : Integrable (deriv f) volume :=
    (hf.continuous_deriv le_rfl).integrable_of_hasCompactSupport hc.deriv
  have hsupport : ∀ t : ℝ, T < |t| → deriv f t = 0 :=
    supported_of_tsupport (tsupport_deriv_subset.trans (tsupport_subset_of_supported f T hs))
  have hb := integral_norm_le_cellL1Budget (deriv f) T hT hi hsupport
    x (fun _ => (0 : ℂ)) K N hx0 hxN hgeom
    (fun j hj t ht => by simpa only [sub_zero] using hderiv j hj t ht)
  simpa only [cellL1Budget, cellVariationBudget, norm_zero, zero_add] using hb

/-- A single derivative-range table supplies the old variation premise, all raw
moment bounds, and both norms used by the first-order infinite-tail estimate.
Midpoint value errors and whole-cell derivative ranges remain certified inputs. -/
theorem moment_l1_deriv_bounds_of_deriv_cells
    (f : ℝ → ℂ) (T : ℝ) (hT : 0 ≤ T)
    (hf : ContDiff ℝ 1 f) (hc : HasCompactSupport f)
    (hs : ∀ t : ℝ, T < |t| → f t = 0)
    (x : ℕ → ℝ) (v : ℕ → ℂ) (K r : ℕ → ℝ) (N : ℕ)
    (hx0 : x 0 = -T) (hxN : x N = T)
    (hgeom : ∀ j < N, -T ≤ x j ∧ x j ≤ x (j + 1) ∧ x (j + 1) ≤ T)
    (hK : ∀ j < N, 0 ≤ K j) (hr : ∀ j < N, 0 ≤ r j)
    (hderiv : ∀ j < N, ∀ t ∈ Icc (x j) (x (j + 1)), ‖deriv f t‖ ≤ K j)
    (hsample : ∀ j < N, ‖f ((x j + x (j + 1)) / 2) - v j‖ ≤ r j) :
    (∀ k : ℕ, ‖rawMoment f k - quadratureMoment x v N k‖ ≤
      T ^ k * cellVariationBudget x (midpointCellError x K r) N) ∧
    (∫ t : ℝ, ‖f t‖) ≤ cellL1Budget x v (midpointCellError x K r) N ∧
    (∫ t : ℝ, ‖deriv f t‖) ≤ cellVariationBudget x K N := by
  have hvariation (j : ℕ) (hj : j < N) (t : ℝ) (ht : t ∈ Icc (x j) (x (j + 1))) :
      ‖f t - f ((x j + x (j + 1)) / 2)‖ ≤
        K j * |t - (x j + x (j + 1)) / 2| :=
    norm_sub_midpoint_le_of_deriv_bound f (x j) (x (j + 1)) (K j) (hgeom j hj).2.1
      (fun u _ => hf.differentiable one_ne_zero u) (hderiv j hj) t ht
  obtain ⟨hm, h0⟩ := moment_and_l1_bounds_of_midpoint f T hT
    (hf.continuous.integrable_of_hasCompactSupport hc) hs x v K r N
    hx0 hxN hgeom hK hr hvariation hsample
  exact ⟨hm, h0, integral_norm_deriv_le_cell_budget f T hT hf hc hs x K N
    hx0 hxN hgeom hderiv⟩

/-- The zeroth-order cost is twice the original L1 norm, not the norm itself. -/
theorem derivativeL1Cost_zero_le_of_l1 (f : ℝ → ℂ) (B₀ : ℝ)
    (hB₀ : (∫ t : ℝ, ‖f t‖) ≤ B₀) : derivativeL1Cost f 0 ≤ 2 * B₀ := by
  simp only [derivativeL1Cost, pow_zero, Function.iterate_zero, id_eq, one_mul]
  linarith

/-- The first-order cost retains BOTH original norms before substitution. -/
theorem derivativeL1Cost_one_le_of_l1 (f : ℝ → ℂ) (B₀ B₁ : ℝ)
    (hB₀ : (∫ t : ℝ, ‖f t‖) ≤ B₀)
    (hB₁ : (∫ t : ℝ, ‖deriv f t‖) ≤ B₁) :
    derivativeL1Cost f 1 ≤ 2 * (B₀ + B₁) := by
  simp only [derivativeL1Cost, pow_one, Function.iterate_one]
  linarith

end GRWTSK.MeasureAndIntegration.DerivativeCellBounds
