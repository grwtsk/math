# Complete source: GRWTSK.Topology.MetricTopology.Tube.Variant0fb4ba8e7a2227ce0a3f19f29ab5675b1673cfdc05f2ea47ebe70c686cc703c6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `67353e3be291ff2a90785ca59461be38c66b7dbe` · SHA-256 `0fb4ba8e7a2227ce0a3f19f29ab5675b1673cfdc05f2ea47ebe70c686cc703c6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Geometry.Kakeya.Direction
import Mathematics.Geometry.Kakeya.Scale

/-!
# Exact finite Euclidean tubes

The carrier is the closed metric neighborhood of a centered line segment.  No
raster tolerance, identifier, or presentation label enters membership.
-/

namespace Mathematics.Geometry.Kakeya

/-- A finite oriented tube in real Euclidean space. -/
structure Tube (dimension : Nat) where
  center : AmbientPoint dimension
  direction : Direction dimension
  scale : ScaleWindow

namespace Tube

/-- The point at signed axial parameter `parameter` on the center line. -/
def axisPoint {dimension : Nat}
    (tube : Tube dimension) (parameter : ℝ) :
    AmbientPoint dimension :=
  tube.center + parameter • tube.direction.vector

/-- Exact membership in the closed tube around its finite center segment. -/
def Contains {dimension : Nat}
    (tube : Tube dimension) (point : AmbientPoint dimension) : Prop :=
  ∃ parameter : ℝ,
    |parameter| ≤ tube.scale.coarse ∧
      dist point (tube.axisPoint parameter) ≤ tube.scale.fine

/-- The point-set carrier of a tube. -/
def carrier {dimension : Nat} (tube : Tube dimension) :
    Set (AmbientPoint dimension) :=
  { point | tube.Contains point }

@[simp] theorem mem_carrier_iff {dimension : Nat}
    (tube : Tube dimension) (point : AmbientPoint dimension) :
    point ∈ tube.carrier ↔ tube.Contains point :=
  Iff.rfl

/-- Every exact tube contains its designated center. -/
theorem center_mem {dimension : Nat} (tube : Tube dimension) :
    tube.Contains tube.center := by
  refine ⟨0, ?_, ?_⟩
  · simpa using tube.scale.coarseNonnegative
  · simpa [axisPoint] using tube.scale.fineNonnegative

/-- Consequently every exact tube carrier is nonempty. -/
theorem carrier_nonempty {dimension : Nat} (tube : Tube dimension) :
    tube.carrier.Nonempty :=
  ⟨tube.center, tube.center_mem⟩

end Tube

end Mathematics.Geometry.Kakeya
```
