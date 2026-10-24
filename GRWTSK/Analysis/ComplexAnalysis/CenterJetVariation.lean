/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ComplexAnalysis.ClosedDiskCauchy
import Mathlib.Analysis.Calculus.MeanValue

set_option autoImplicit false

/-!
# Whole-disk variation from a center derivative and a curvature bound

Apply the mean-value inequality to the derivative, THEN to the function.
A center derivative alone cannot bound variation away from the center.
The resulting L*R^2 term is conservative, not the sharp Taylor L*R^2/2.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.Analysis.ComplexAnalysis.CenterJetVariation

open Metric Set

/-- A genuine derivative enclosure supplies a norm upper bound at the center. -/
theorem center_derivative_norm {f : ℂ → ℂ} {c d : ℂ} {e : ℝ}
    (he : ‖deriv f c - d‖ ≤ e) : ‖deriv f c‖ ≤ ‖d‖ + e := by
  calc
    _ ≤ ‖deriv f c - d‖ + ‖d‖ := by
      simpa only [dist_eq_norm, sub_zero] using dist_triangle (deriv f c) d 0
    _ ≤ e + ‖d‖ := add_le_add_right he _
    _ = _ := add_comm _ _

/-- Every point of the closed disk is covered; curvature is not a sampled value. -/
theorem derivative_norm_le {f : ℂ → ℂ} {c z : ℂ} {R D L : ℝ}
    (hR : 0 ≤ R) (hL : 0 ≤ L) (hc : ‖deriv f c‖ ≤ D)
    (hdf : ∀ w ∈ closedBall c R, DifferentiableAt ℂ (deriv f) w)
    (hcurv : ∀ w ∈ closedBall c R, ‖deriv (deriv f) w‖ ≤ L)
    (hz : z ∈ closedBall c R) : ‖deriv f z‖ ≤ D + L * R := by
  have hv := Convex.norm_image_sub_le_of_norm_deriv_le hdf hcurv
    (convex_closedBall c R) (mem_closedBall_self hR) hz
  have hr : ‖z - c‖ ≤ R := by simpa only [mem_closedBall, dist_eq_norm] using hz
  have hvR : ‖deriv f z - deriv f c‖ ≤ L * R :=
    hv.trans (mul_le_mul_of_nonneg_left hr hL)
  calc
    _ ≤ ‖deriv f z - deriv f c‖ + ‖deriv f c‖ := by
      simpa only [dist_eq_norm, sub_zero] using dist_triangle (deriv f z) (deriv f c) 0
    _ ≤ L * R + D := add_le_add hvR hc
    _ = _ := add_comm _ _

/-- The quadratic contribution is retained, without claiming a factor one-half. -/
theorem value_variation {f : ℂ → ℂ} {c z : ℂ} {R D L : ℝ}
    (hR : 0 ≤ R) (hD : 0 ≤ D) (hL : 0 ≤ L) (hc : ‖deriv f c‖ ≤ D)
    (hf : ∀ w ∈ closedBall c R, DifferentiableAt ℂ f w)
    (hdf : ∀ w ∈ closedBall c R, DifferentiableAt ℂ (deriv f) w)
    (hcurv : ∀ w ∈ closedBall c R, ‖deriv (deriv f) w‖ ≤ L)
    (hz : z ∈ closedBall c R) : ‖f z - f c‖ ≤ (D + L * R) * R := by
  have hv := Convex.norm_image_sub_le_of_norm_deriv_le hf
    (fun w hw => derivative_norm_le hR hL hc hdf hcurv hw)
    (convex_closedBall c R) (mem_closedBall_self hR) hz
  exact hv.trans (mul_le_mul_of_nonneg_left
    (by simpa only [mem_closedBall, dist_eq_norm] using hz)
    (add_nonneg hD (mul_nonneg hL hR)))

/-- Cauchy supplies the full curvature hypothesis, retaining 2! and the radius gap. -/
theorem cauchy_derivative_norm_le {f : ℂ → ℂ} {c z : ℂ} {R S C D : ℝ}
    (hR : 0 ≤ R) (hRS : R < S) (hC0 : 0 ≤ C) (hc : ‖deriv f c‖ ≤ D)
    (hf : ∀ w ∈ closedBall c S, DifferentiableAt ℂ f w)
    (hdf : ∀ w ∈ closedBall c R, DifferentiableAt ℂ (deriv f) w)
    (hC : ∀ w ∈ closedBall c S, ‖f w‖ ≤ C)
    (hz : z ∈ closedBall c R) :
    ‖deriv f z‖ ≤ D + (2 * C / (S - R)^2) * R :=
  derivative_norm_le hR (div_nonneg (mul_nonneg (by norm_num) hC0) (sq_nonneg _))
    hc hdf (fun w hw => ClosedDiskCauchy.norm_secondDeriv_le_on_inner hRS hf hC hw) hz

end GRWTSK.Analysis.ComplexAnalysis.CenterJetVariation
