# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Circle.Variant03173206a54974ee1e7f2e743ee6c0f63b6beff1dfdbeba801425d5490eeed78

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a5d7d05c60ea7d2108bdaff649824ea5b60c4019` · SHA-256 `03173206a54974ee1e7f2e743ee6c0f63b6beff1dfdbeba801425d5490eeed78`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
