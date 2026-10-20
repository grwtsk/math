/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.Complex.Liouville
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum

set_option autoImplicit false

/-!
# Cauchy estimates with an explicit outer-to-inner disk gap

The larger disk supplies actual differentiability and boundary information.
A pointwise numerical error at the center cannot replace a disk-wide bound.
No function, derivative, or analytic enclosure is computed by these lemmas.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.Complex.ClosedDiskCauchy

open Metric Set

/-- Differentiability on the closed disk supplies continuity on the closure. -/
theorem diffContOnCl_ball {f : ℂ → ℂ} {c : ℂ} {S : ℝ} (hS : 0 < S)
    (hf : ∀ z ∈ closedBall c S, DifferentiableAt ℂ f z) :
    DiffContOnCl ℂ f (ball c S) := by
  refine ⟨fun z hz => (hf z (ball_subset_closedBall hz)).differentiableWithinAt, ?_⟩
  rw [closure_ball c (ne_of_gt hS)]
  exact fun z hz => (hf z hz).continuousAt.continuousWithinAt

/-- A disk of radius S-R about an inner point stays in the original outer disk. -/
theorem translated_disk_subset {c z : ℂ} {R S : ℝ}
    (hz : z ∈ closedBall c R) : closedBall z (S - R) ⊆ closedBall c S := by
  intro w hw
  rw [mem_closedBall] at hz hw ⊢
  exact (dist_triangle w z c).trans (by linarith)

/-- The whole inner disk receives one derivative bound; the gap must be positive. -/
theorem norm_iteratedDeriv_le_on_inner {f : ℂ → ℂ} {c : ℂ} {R S C : ℝ}
    (n : ℕ) (hRS : R < S)
    (hf : ∀ z ∈ closedBall c S, DifferentiableAt ℂ f z)
    (hC : ∀ z ∈ closedBall c S, ‖f z‖ ≤ C)
    {z : ℂ} (hz : z ∈ closedBall c R) :
    ‖iteratedDeriv n f z‖ ≤ n.factorial * C / (S - R) ^ n := by
  have hgap : 0 < S - R := sub_pos.mpr hRS
  have hsub := translated_disk_subset (S := S) hz
  exact Complex.norm_iteratedDeriv_le_of_forall_mem_sphere_norm_le n hgap
    (diffContOnCl_ball hgap (fun w hw => hf w (hsub hw)))
    (fun w hw => hC w (hsub (sphere_subset_closedBall hw)))

/-- The factorial at order two is retained. This bounds deriv(deriv f), not f. -/
theorem norm_secondDeriv_le_on_inner {f : ℂ → ℂ} {c : ℂ} {R S C : ℝ}
    (hRS : R < S)
    (hf : ∀ z ∈ closedBall c S, DifferentiableAt ℂ f z)
    (hC : ∀ z ∈ closedBall c S, ‖f z‖ ≤ C)
    {z : ℂ} (hz : z ∈ closedBall c R) :
    ‖deriv (deriv f) z‖ ≤ 2 * C / (S - R) ^ 2 := by
  simpa [iteratedDeriv_succ] using norm_iteratedDeriv_le_on_inner 2 hRS hf hC hz

/-- Differentiate the analytic difference, NOT a pointwise inequality. -/
theorem derivative_error_at_center {f g : ℂ → ℂ} {c : ℂ} {S E : ℝ}
    (hS : 0 < S)
    (hf : ∀ z ∈ closedBall c S, DifferentiableAt ℂ f z)
    (hg : ∀ z ∈ closedBall c S, DifferentiableAt ℂ g z)
    (he : ∀ z ∈ sphere c S, ‖f z - g z‖ ≤ E) :
    ‖deriv f c - deriv g c‖ ≤ E / S := by
  have hc : c ∈ closedBall c S := mem_closedBall_self hS.le
  have h := Complex.norm_deriv_le_of_forall_mem_sphere_norm_le hS
    (diffContOnCl_ball hS (fun z hz => (hf z hz).sub (hg z hz))) he
  simpa only [deriv_sub (hf c hc) (hg c hc)] using h

end GRWTSK.Analysis.Complex.ClosedDiskCauchy
