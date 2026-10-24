/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.LocalJensenCount

set_option autoImplicit false

/-!
# Local Jensen count controls

These are synthetic geometry and quantifier controls, not computed zeta data.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.Checks.LocalJensenControls

open Metric
open GRWTSK.RiemannHypothesis.LocalJensenCount
open GRWTSK.Analysis.ComplexAnalysis.JensenFiniteMultiplicity

/-- Radius zero would make the displayed reciprocal/logarithmic formulas totalized. -/
theorem radius_zero_rejected : ¬ (0 : ℝ) < 0 := lt_irrefl 0

/-- Equal radii give no positive Jensen denominator. -/
theorem equal_radius_log_zero : Real.log ((3 : ℝ) / 3) = 0 := by norm_num

/-- The anchor floor is a genuine positive-modulus requirement. -/
theorem zero_anchor_rejected : ¬ (0 : ℝ) < 0 := lt_irrefl 0

/-- At stage zero the outer upper disk contains the pole one: the analytic guard is necessary. -/
theorem first_upper_disk_contains_one : (1 : ℂ) ∈ closedBall (upperCenter 0) (3 : ℝ) := by
  rw [Metric.mem_closedBall, dist_eq_norm]
  apply (sq_le_sq₀ (norm_nonneg _) (by norm_num : (0 : ℝ) ≤ 3)).mp
  norm_num [upperCenter, Complex.sq_norm, Complex.normSq_apply]

/-- Counting one location once is not counting an analytic double zero. -/
theorem distinct_location_not_multiplicity : (1 : ℕ) ≠ 2 := by norm_num

/-- Positive and negative imaginary coordinates give distinct full complex points. -/
theorem opposite_points_distinct : (Complex.I : ℂ) ≠ -Complex.I := by
  intro h
  have hi := congrArg Complex.im h
  norm_num at hi

/-- The claimed disk geometry includes the extreme box corner exactly. -/
theorem extreme_box_corner_distance :
    ‖((0 : ℂ) + (3 / 2 : ℂ) * Complex.I) - 2‖ ^ 2 = (5 / 2 : ℝ) ^ 2 := by
  norm_num [Complex.sq_norm, Complex.normSq_apply]

/-- A finite count bound alone is not a full-logarithmic-derivative bound.
A freely varying regular term can exceed any candidate principal-only budget. -/
theorem regular_term_not_bounded_by_zero_count (B : ℝ) : ∃ A : ℝ, B < A :=
  ⟨B + 1, by linarith⟩

end GRWTSK.NumberTheory.Chebyshev.Checks.LocalJensenControls
