# Complete source: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Circumcircle.Variante7f434a4c6b21914a8fb8c3c6f7d6497b85e6f56194e0edba7075cb384a8f4f3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0e6a130da4a9e844d2ba692118c63875076dcc01` · SHA-256 `e7f434a4c6b21914a8fb8c3c6f7d6497b85e6f56194e0edba7075cb384a8f4f3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
