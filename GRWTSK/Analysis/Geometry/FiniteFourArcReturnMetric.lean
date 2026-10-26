/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Upstream Mathlib and GRWTSK source retain their original licenses. -/
import GRWTSK.Analysis.Geometry.FiniteFourArcReturn
import Mathlib

set_option autoImplicit false

/-!
# Exact conditioning of the geometrically realized boundary return

The actual quarter-turn transporting the chosen four Bezier arcs is
orthogonal with respect to a separately declared *positive* Euclidean
coordinate pairing. Its squared error magnitude and the three-step
descent's error magnitude are exactly preserved.

No indefinite Hermite/screw form, selected spectral matrix norm,
numerical inverse conditioning, or zeta zero theorem is inferred.
-/

namespace GRWTSK.Analysis.Geometry.FiniteFourArcContact

/-- Explicit positive bilinear pairing in the selected two-coordinate
real source chart. -/
def pointDot (x y : Plane) : ℝ :=
  x 0 * y 0 + x 1 * y 1

theorem pointDot_self_nonneg (x : Plane) :
    0 ≤ pointDot x x := by
  change 0 ≤ x 0 * x 0 + x 1 * x 1
  positivity

/-- The actual geometric quarter rotation is an exact isometry of this
positive pairing, not merely a norm-bounded numerical approximation. -/
theorem quarterTurn_pointDot (x y : Plane) :
    pointDot (quarterTurn x) (quarterTurn y) = pointDot x y := by
  simp [pointDot, quarterTurn, quarterPoint] <;> ring

/-- Errors transported along one genuine source-matched seam have no
squared Euclidean norm amplification. -/
theorem quarterTurn_error_squared (x y : Plane) :
    pointDot (quarterTurn (x - y)) (quarterTurn (x - y)) =
      pointDot (x - y) (x - y) :=
  quarterTurn_pointDot (x - y) (x - y)

/-- The first three actual geometric phase transports preserve the
positive error pairing with an exact multiplicative factor one. -/
theorem threePhaseDescent_pointDot (x y : Plane) :
    pointDot (threePhaseDescent x) (threePhaseDescent y) =
      pointDot x y := by
  change
    pointDot (quarterTurn (quarterTurn (quarterTurn x)))
      (quarterTurn (quarterTurn (quarterTurn y))) =
        pointDot x y
  rw [quarterTurn_pointDot, quarterTurn_pointDot, quarterTurn_pointDot]

/-- In the pre-existing typed finite return system, the actual final
boundary-return map is the same quarter-turn and is exactly isometric. -/
theorem geometricSystem_boundary_return_isometry (x y : Plane) :
    pointDot (geometricSystem.boundaryReturn x)
      (geometricSystem.boundaryReturn y) = pointDot x y := by
  change pointDot (quarterTurn x) (quarterTurn y) = pointDot x y
  exact quarterTurn_pointDot x y

/-- A full four-phase closed return has no source-coordinate error:
the composite operator is the identity, even though its independent
boundary map is nontrivial. -/
theorem fourPhase_source_error_exact (x y : Plane) :
    geometricSystem.returnOperator (x - y) = x - y := by
  rw [geometricSystem_return_operator]
  rfl

end GRWTSK.Analysis.Geometry.FiniteFourArcContact
