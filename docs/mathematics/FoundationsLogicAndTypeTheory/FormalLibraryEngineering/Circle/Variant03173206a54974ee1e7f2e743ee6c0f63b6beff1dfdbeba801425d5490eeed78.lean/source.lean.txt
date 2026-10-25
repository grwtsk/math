import Mathematics.Geometry.SquaredDistance

/-!
# Positive-radius Euclidean circles

The positivity witness is structural.  Membership is the exact squared-distance
equation, with no floating-point tolerance or rendering interpretation.
-/

namespace Mathematics.Geometry

/-- A positive-radius circle in the canonical real Euclidean plane. -/
structure PlaneCircle where
  center : PlanePoint
  radius : ℝ
  radiusPositive : 0 < radius

namespace PlaneCircle

/-- Exact circle membership in squared-distance form. -/
def Contains (circle : PlaneCircle) (point : PlanePoint) : Prop :=
  planeSquaredDistance circle.center point = circle.radius ^ 2

theorem contains_has_positive_radius
    {circle : PlaneCircle}
    {point : PlanePoint}
    (_ : circle.Contains point) :
    0 < circle.radius :=
  circle.radiusPositive

end PlaneCircle

end Mathematics.Geometry
