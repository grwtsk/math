# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HalfTurn.Variant38ae5f49b16bc489097c004bf1d0ec385ddeeb4caaf269305e85d022ec17bbe5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `30088e30ae96987f3648b821427ded8397ec0888` · SHA-256 `38ae5f49b16bc489097c004bf1d0ec385ddeeb4caaf269305e85d022ec17bbe5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Geometry.SquaredDistance

/-!
# Affine half-turn

The half-turn is expressed by canonical vector operations on the Euclidean
plane.  Involution and metric preservation are proved, not runtime assumptions.
-/

namespace Mathematics.Geometry

/-- The affine half-turn about a designated center. -/
def halfTurn (center point : PlanePoint) : PlanePoint :=
  (2 : ℝ) • center - point

@[simp] theorem halfTurn_involutive (center point : PlanePoint) :
    halfTurn center (halfTurn center point) = point := by
  ext coordinate
  simp [halfTurn]

theorem halfTurn_difference (center point : PlanePoint) :
    center - halfTurn center point = -(center - point) := by
  ext coordinate
  simp [halfTurn]
  ring

theorem halfTurn_preserves_centered_squaredDistance
    (center point : PlanePoint) :
    planeSquaredDistance center (halfTurn center point) =
      planeSquaredDistance center point := by
  simp only [planeSquaredDistance, halfTurn_difference]
  simp [norm_sub_rev]

end Mathematics.Geometry
```
