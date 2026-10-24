# Complete source: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.SuppliedCircleAndHalfTurn.Variant4e2379377c9ff955.SuppliedCircleIncidence

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4b4c9a8ada38954a995f2dfc2894723c973909f6` · SHA-256 `5c7cba5f72f8c184fe6421f2d4ae04e14f6290dc23a43d006e78d0a3f8010e7d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
SuppliedCircleIncidence — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 4e2379377c9ff95507b952ec8f7cda9198696a02ff44cb8388a3fcf9e908be66
Organized SHA-256: 0f9d71913c56d473935ae808113adc2641bd8dd826e9cc8b64ec33efa36f3e40
PMD: 510.3.010.010 euclidean geometry (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole real Point, squaredDistance, strictly positive-radius Circle, Contains equation and full three-point CircumcircleDatum with all supplied incidences. No existence, noncollinearity, uniqueness or floating point realization theorem is supplied. -/

import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Ring

/-!
# Euclidean runtime vocabulary

Small exact semantic records for the finite two-dimensional geometry exposed by
the client. They specify the mathematical objects; they do not prove that a
floating-point JavaScript implementation realizes them.
-/

namespace GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.SuppliedCircleAndHalfTurn.Variant4e2379377c9ff955


namespace BitMatrix.Geometry.Euclidean

/-- A point of the real affine plane. -/
structure Point where
  x : ℝ
  y : ℝ


/-- Squared Euclidean distance, avoiding an unnecessary square root. -/
def squaredDistance (left right : Point) : ℝ :=
  (left.x - right.x) ^ 2 + (left.y - right.y) ^ 2


/-- A positive-radius Euclidean circle. -/
structure Circle where
  center : Point
  radius : ℝ
  radiusPositive : 0 < radius


/-- Circle membership in squared-distance form. -/
def Circle.Contains (circle : Circle) (point : Point) : Prop :=
  squaredDistance circle.center point = circle.radius ^ 2


/-- Three points together with a circle containing all three. -/
structure CircumcircleDatum where
  first : Point
  second : Point
  third : Point
  circle : Circle
  firstOnCircle : circle.Contains first
  secondOnCircle : circle.Contains second
  thirdOnCircle : circle.Contains third


end BitMatrix.Geometry.Euclidean

end GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.SuppliedCircleAndHalfTurn.Variant4e2379377c9ff955
```
