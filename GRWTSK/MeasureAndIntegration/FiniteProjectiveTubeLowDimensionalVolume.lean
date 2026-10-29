/- Copyright (c) 2026 grwtsk contributors. MIT.
Local source attribution: grwtsk contributors.
Mathlib and original GRWTSK author/license obligations retained. -/
import GRWTSK.MeasureAndIntegration.FiniteProjectiveTubeBallVolume

set_option autoImplicit false
noncomputable section

/-!
# Distinct 2D versus 3D finite projective tube-overlap volume factors

The new projective frame estimate with gamma=sigma²/4 provides
an enclosing Euclidean ball of radius 4(rT+rU)/sigma for any
two intersecting original straight tubes.

Mathlib's actual finite-dimensional ball-volume theorem gives
different powers in the two ambient dimensions:

  d=2: area ≤ ofReal(R)^2 * ofReal(pi)
  d=3: volume ≤ ofReal(R)^3 * ofReal(4pi/3).

These are weak ball-enclosure estimates, NOT the scale-sharp
3D convex Wolff or Kakeya maximal bounds. They also cannot
be identified with moduli-space or contact-Hodge volume.
-/

namespace GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily

namespace Tube

/-- A genuine plane Lebesgue AREA bound for two original straight
radius-positive strips under projective angular separation. -/
theorem intersection_area_le_projective_disc
    (T U : Tube 2) {sigma : ℝ}
    (hsigma : 0 < sigma)
    (hgap : sigma ≤ projectiveDirectionGap T.direction U.direction)
    (x₀ : Space 2)
    (hx₀T : x₀ ∈ T.region) (hx₀U : x₀ ∈ U.region) :
    MeasureTheory.volume (T.region ∩ U.region) ≤
      ENNReal.ofReal (T.projectiveIntersectionRadius U sigma) ^ 2 *
        ENNReal.ofReal Real.pi := by
  have h := T.intersection_volume_le_projective_ball
    U hsigma hgap x₀ hx₀T hx₀U
  simpa only [EuclideanSpace.volume_closedBall_fin_two] using h

/-- A genuine 3D Lebesgue VOLUME bound for two straight cylinders,
with a cubic ball-enclosure radius exponent rather than an
unjustified two-dimensional area or moduli measure. -/
theorem intersection_volume3_le_projective_ball
    (T U : Tube 3) {sigma : ℝ}
    (hsigma : 0 < sigma)
    (hgap : sigma ≤ projectiveDirectionGap T.direction U.direction)
    (x₀ : Space 3)
    (hx₀T : x₀ ∈ T.region) (hx₀U : x₀ ∈ U.region) :
    MeasureTheory.volume (T.region ∩ U.region) ≤
      ENNReal.ofReal (T.projectiveIntersectionRadius U sigma) ^ 3 *
        ENNReal.ofReal (Real.pi * 4 / 3) := by
  have h := T.intersection_volume_le_projective_ball
    U hsigma hgap x₀ hx₀T hx₀U
  simpa only [EuclideanSpace.volume_closedBall_fin_three] using h

end Tube
end GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily
