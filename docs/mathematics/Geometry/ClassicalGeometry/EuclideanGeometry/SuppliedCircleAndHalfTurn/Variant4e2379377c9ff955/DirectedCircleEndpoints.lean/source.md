# Complete source: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.SuppliedCircleAndHalfTurn.Variant4e2379377c9ff955.DirectedCircleEndpoints

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b71becf9ef773eaef05a26cc1aa191ac50b77694` · SHA-256 `529dadab8436915d0159813556b4e7433402c03f2c42e65e4e3386625961d9a0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
DirectedCircleEndpoints — individually reviewed exact source
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

/- Whole orientation enum and DirectedArc record retain circle, endpoints and both membership witnesses. WindingNumber is exactly an Int alias only; no actual curve winding computation, topology or arc-parametrization laws are inferred. -/

import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Ring

import GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.SuppliedCircleAndHalfTurn.Variant4e2379377c9ff955.SuppliedCircleIncidence

/-!
# Euclidean runtime vocabulary

Small exact semantic records for the finite two-dimensional geometry exposed by
the client. They specify the mathematical objects; they do not prove that a
floating-point JavaScript implementation realizes them.
-/

namespace GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.SuppliedCircleAndHalfTurn.Variant4e2379377c9ff955


namespace BitMatrix.Geometry.Euclidean

/-- Orientation of a directed circular arc. -/
inductive ArcOrientation where
  | clockwise
  | counterclockwise
  deriving DecidableEq, Repr


/-- A directed arc retains its circle, endpoints, and orientation. -/
structure DirectedArc where
  circle : Circle
  startPoint : Point
  endPoint : Point
  startOnCircle : circle.Contains startPoint
  endOnCircle : circle.Contains endPoint
  orientation : ArcOrientation


/-- Winding is integral; floating-point angle accumulation is only a runtime representation. -/
abbrev WindingNumber := ℤ


end BitMatrix.Geometry.Euclidean

end GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.SuppliedCircleAndHalfTurn.Variant4e2379377c9ff955
```
