import Mathematics.Geometry.Circle
import Mathematics.Geometry.Primitive

/-!
# Circumcircle data

A circumcircle witness reuses the canonical triangle presentation and circle
carrier.  It asserts membership only; noncollinearity and uniqueness require
separate hypotheses.
-/

namespace Mathematics.Geometry

/-- Three labeled points together with a circle containing all three. -/
structure CircumcircleDatum where
  triangle : Triangle PlanePoint
  circle : PlaneCircle
  firstOnCircle : circle.Contains triangle.first
  secondOnCircle : circle.Contains triangle.second
  thirdOnCircle : circle.Contains triangle.third

end Mathematics.Geometry
