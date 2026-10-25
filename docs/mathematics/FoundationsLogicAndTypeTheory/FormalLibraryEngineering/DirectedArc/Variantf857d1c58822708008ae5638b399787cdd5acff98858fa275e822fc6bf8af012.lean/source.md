# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DirectedArc.Variantf857d1c58822708008ae5638b399787cdd5acff98858fa275e822fc6bf8af012

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6f0f1079f77bfc270aee4f6917e07de34a2e307b` · SHA-256 `f857d1c58822708008ae5638b399787cdd5acff98858fa275e822fc6bf8af012`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Geometry.Circle
import Mathematics.Geometry.Orientation

/-!
# Directed circular arcs

An arc carries exact endpoint-membership witnesses and an intrinsic direction.
Display-axis configuration is deliberately absent.
-/

namespace Mathematics.Geometry

/-- A directed arc on a positive-radius Euclidean circle. -/
structure DirectedArc where
  circle : PlaneCircle
  startPoint : PlanePoint
  endPoint : PlanePoint
  startOnCircle : circle.Contains startPoint
  endOnCircle : circle.Contains endPoint
  orientation : ArcOrientation

end Mathematics.Geometry
```
