# Complete source: GRWTSK.Topology.GeneralTopology.Cell.Variant73ff1017b6efd03d256fde17536c4f719da0b3e4121d7dfb8a9e7aa331e55b74

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4acaf7483d663468d0eaca51fde2d87b8aa715ee` · SHA-256 `73ff1017b6efd03d256fde17536c4f719da0b3e4121d7dfb8a9e7aa331e55b74`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.RHIsolation.Cut

/-!
# Analytic cells and oriented contours

The interior is the zero-counting domain.  The closed carrier is used for
compact numerical enclosures and geometric envelopes.
-/

namespace Mathematics.RHIsolation

structure OrientedContour where
  range : Set ℂ
  piecewiseSmooth : Prop
  piecewiseSmoothProof : piecewiseSmooth
  positivelyOriented : Prop
  positivelyOrientedProof : positivelyOriented

structure AnalyticCell where
  id : AnalyticCellId
  carrier : Set ℂ
  interior : Set ℂ
  compact_carrier : IsCompact carrier
  interior_open : IsOpen interior
  interior_subset : interior ⊆ carrier
  contour : OrientedContour
  contour_bounds_interior : Prop
  contour_bounds_interiorProof :
    contour_bounds_interior
  digest : CellDigest

def PairwiseDisjointInteriors
    {ι : Type*}
    (cell : ι → AnalyticCell) : Prop :=
  ∀ ⦃left right : ι⦄,
    left ≠ right →
    Disjoint (cell left).interior
      (cell right).interior

end Mathematics.RHIsolation
```
