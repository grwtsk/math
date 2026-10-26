/- Copyright (c) 2026 grwtsk contributors. MIT.
Local source attribution: grwtsk contributors.
Upstream Mathlib and GRWTSK source preserve their original licenses. -/
import GRWTSK.Analysis.Geometry.FiniteProjectiveTubeOverlapRadius
import Mathlib.MeasureTheory.Measure.Lebesgue.VolumeOfBalls

set_option autoImplicit false
noncomputable section

/-!
# Explicit ambient-dimension Euclidean projective pair-volume bound

Given a source-certified projective chord gap sigma>0, there is no
longer a free transverse-coercivity constant or ball radius:
  gamma = sigma²/4,
  R = 4(radius_T+radius_U)/sigma.

Mathlib's genuine Euclidean closed-ball volume theorem gives a
dimension-indexed upper pair-volume expression:
  ofReal(R)^d * ofReal(pi^(d/2)/Gamma(d/2+1))
written with sqrt(pi)^d in the actual API.

This bound is nonsharp for Kakeya: in dimension three it scales like
R³, potentially sigma^(-3), whereas a sharp direction-sensitive
two-tube intersection typically requires substantially better
angular geometry. This is a *true* Euclidean volume statement, not
a cardinality of touched cells or a uniform convex Wolff estimate.

The ambient dimension is required positive to avoid degenerate
zero-dimensional ball and sphere conventions.
-/

namespace GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily

variable {d : ℕ} [NeZero d]

namespace Tube

/-- Exact general-dimensional Euclidean ball volume for the
projective-source-derived intersection radius, independent of
the selected physical common point x₀. -/
theorem projectiveIntersection_ball_volume
    (T U : Tube d) (sigma : ℝ) (x₀ : Space d) :
    MeasureTheory.volume
        (Metric.closedBall x₀ (T.projectiveIntersectionRadius U sigma)) =
      (ENNReal.ofReal (T.projectiveIntersectionRadius U sigma)) ^ d *
        ENNReal.ofReal
          (Real.sqrt Real.pi ^ d /
            Real.Gamma ((d : ℝ) / 2 + 1)) := by
  simpa using
    (EuclideanSpace.volume_closedBall (Fin d) x₀
      (T.projectiveIntersectionRadius U sigma))

/-- Actual source-derived geometric pair-intersection volume,
with *all* dimension, source radius and projective separation
quantifiers explicit. No external maximal theorem is imported. -/
theorem intersection_volume_projective_bound
    (T U : Tube d) {sigma : ℝ}
    (hsigma : 0 < sigma)
    (hgap : sigma ≤ projectiveDirectionGap T.direction U.direction)
    (x₀ : Space d)
    (hx₀T : x₀ ∈ T.region) (hx₀U : x₀ ∈ U.region) :
    MeasureTheory.volume (T.region ∩ U.region) ≤
      (ENNReal.ofReal (T.projectiveIntersectionRadius U sigma)) ^ d *
        ENNReal.ofReal
          (Real.sqrt Real.pi ^ d /
            Real.Gamma ((d : ℝ) / 2 + 1)) := by
  calc
    MeasureTheory.volume (T.region ∩ U.region) ≤
        MeasureTheory.volume
          (Metric.closedBall x₀
            (T.projectiveIntersectionRadius U sigma)) :=
      T.intersection_volume_le_projective_ball
        U hsigma hgap x₀ hx₀T hx₀U
    _ = _ := T.projectiveIntersection_ball_volume U sigma x₀

end Tube
end GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily
