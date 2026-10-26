/- Copyright (c) 2026 grwtsk contributors. MIT.
Local source attribution: grwtsk contributors.
Mathlib and original GRWTSK imports retain upstream authorship/licenses. -/
import GRWTSK.Analysis.Geometry.FiniteProjectiveFrameGeometry

set_option autoImplicit false
noncomputable section

/-!
# An explicit radius for two projectively separated straight cylinders

Unlike the previous `FiniteStraightTubeTransverseEnergy` file, this
leaf does not require a freely supplied positive frame constant
gamma or a freely supplied pair-intersection radius.

For two original straight tubes with projective chord gap at least
sigma>0, the source-proved frame constant is gamma=sigma²/4.
Any common point x₀ then centers a ball containing their ENTIRE
geometric intersection with explicit radius

           R = 4 (radius_T + radius_U) / sigma.

This bound is nonsharp, and ball volume in ambient dimension d
remains as the actual Euclidean measure of that ball; no `delta`
exponent, Kakeya maximal theorem, 3D/4D dimension transfer, or
full Wolff convex-clustering estimate is inferred.
-/

namespace GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily

variable {d : ℕ}

namespace Tube

/-- A concrete nonnegative geometric radius for the intersection
under genuinely positive projective angular separation. -/
def projectiveIntersectionRadius (T U : Tube d) (sigma : ℝ) : ℝ :=
  4 * (T.radius + U.radius) / sigma

theorem projectiveIntersectionRadius_pos
    (T U : Tube d) {sigma : ℝ} (hsigma : 0 < sigma) :
    0 < T.projectiveIntersectionRadius U sigma := by
  unfold projectiveIntersectionRadius
  apply div_pos
  · have hr : 0 < T.radius + U.radius :=
      add_pos T.radius_pos U.radius_pos
    positivity
  · exact hsigma

/-- The source-derived angular frame constant covers exactly the
required pairwise transverse budget for this explicit R. -/
theorem projectiveIntersectionRadius_budget
    (T U : Tube d) {sigma : ℝ} (hsigma : 0 < sigma) :
    4 * (T.radius ^ 2 + U.radius ^ 2) ≤
      (sigma ^ 2 / 4) *
        (T.projectiveIntersectionRadius U sigma) ^ 2 := by
  have hs : sigma ≠ 0 := ne_of_gt hsigma
  have heq :
      (sigma ^ 2 / 4) *
        (T.projectiveIntersectionRadius U sigma) ^ 2 =
      4 * (T.radius + U.radius) ^ 2 := by
    unfold projectiveIntersectionRadius
    field_simp [hs]
    ring
  rw [heq]
  have hcross : 0 ≤ T.radius * U.radius :=
    mul_nonneg T.radius_pos.le U.radius_pos.le
  nlinarith

/-- No freely supplied gamma or radius: projective separation
builds both certificates from the original Euclidean straight
unit directions and radii, at every ambient dimension d. -/
theorem intersection_subset_projective_ball
    (T U : Tube d) {sigma : ℝ}
    (hsigma : 0 < sigma)
    (hgap : sigma ≤
      projectiveDirectionGap T.direction U.direction)
    (x₀ : Space d)
    (hx₀T : x₀ ∈ T.region)
    (hx₀U : x₀ ∈ U.region) :
    T.region ∩ U.region ⊆
      Metric.closedBall x₀ (T.projectiveIntersectionRadius U sigma) := by
  let F : TwoDirectionTransversality T.direction U.direction :=
    twoDirectionTransversality_of_projective_gap
      T.direction U.direction hsigma hgap
  have hR : 0 ≤ T.projectiveIntersectionRadius U sigma :=
    (T.projectiveIntersectionRadius_pos U hsigma).le
  have hbudget :
      4 * (T.radius ^ 2 + U.radius ^ 2) ≤
        F.gamma * (T.projectiveIntersectionRadius U sigma) ^ 2 := by
    change 4 * (T.radius ^ 2 + U.radius ^ 2) ≤
      (sigma ^ 2 / 4) * (T.projectiveIntersectionRadius U sigma) ^ 2
    exact T.projectiveIntersectionRadius_budget U hsigma
  exact T.intersection_subset_ball_of_transverse_energy
    U F x₀ hx₀T hx₀U
    (T.projectiveIntersectionRadius U sigma) hR hbudget

/-- True physical pair-intersection Lebesgue measure bound in
Euclidean ambient dimension d. The ball's center comes from an
actual shared point, not a guessed common tube axis. -/
theorem intersection_volume_le_projective_ball
    (T U : Tube d) {sigma : ℝ}
    (hsigma : 0 < sigma)
    (hgap : sigma ≤
      projectiveDirectionGap T.direction U.direction)
    (x₀ : Space d)
    (hx₀T : x₀ ∈ T.region)
    (hx₀U : x₀ ∈ U.region) :
    MeasureTheory.volume (T.region ∩ U.region) ≤
      MeasureTheory.volume
        (Metric.closedBall x₀
          (T.projectiveIntersectionRadius U sigma)) :=
  MeasureTheory.measure_mono
    (T.intersection_subset_projective_ball
      U hsigma hgap x₀ hx₀T hx₀U)

end Tube
end GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily
