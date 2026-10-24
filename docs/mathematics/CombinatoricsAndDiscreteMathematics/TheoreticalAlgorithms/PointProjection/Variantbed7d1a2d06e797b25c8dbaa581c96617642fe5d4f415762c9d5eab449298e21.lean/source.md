# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PointProjection.Variantbed7d1a2d06e797b25c8dbaa581c96617642fe5d4f415762c9d5eab449298e21

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dcdb1499652052d3e19a3ebe3b4b0a2f3b097603` · SHA-256 `bed7d1a2d06e797b25c8dbaa581c96617642fe5d4f415762c9d5eab449298e21`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Concept.PointUniverse
import Mathematics.Projection.Profile

/-!
# Explicit point-universe projections

A projection is a versioned view of one canonical universe.  Every point is
either selected or retained with an explicit omission reason.  The profile
does not become ontology and the projection cannot mint point identity.
-/

namespace Mathematics.Projection

inductive PointOmissionReason
  | outsideDeclaredScope
  | filteredByProfile
  | unsupportedRepresentation
  | unresolvedAuthority
  | unresolvedDescriptor
  deriving DecidableEq, Repr, Inhabited

structure OmittedPoint where
  pointId : ElementId
  reason : PointOmissionReason
  obligationIds : List StableId
  deriving DecidableEq, Repr

structure PointProjection where
  projectionId : StableId
  pointUniverseId : StableId
  pointUniverseDigest : Digest
  profile : Profile
  sourcePointIds : List ElementId
  source_point_ids_unique : sourcePointIds.Nodup
  selectedPointIds : List ElementId
  selected_ids_unique : selectedPointIds.Nodup
  omittedPoints : List OmittedPoint
  omitted_ids_unique :
    (omittedPoints.map OmittedPoint.pointId).Nodup
  selected_omitted_disjoint :
    List.Disjoint selectedPointIds
      (omittedPoints.map OmittedPoint.pointId)
  pointCoverage :
    ∀ pointId,
      pointId ∈ sourcePointIds ↔
        pointId ∈ selectedPointIds ∨
        pointId ∈ omittedPoints.map OmittedPoint.pointId
  projectionDigest : Digest
  deriving DecidableEq

def PointProjection.BoundTo
    (projection : PointProjection)
    (pointUniverse : Concept.PointUniverse) : Prop :=
  projection.pointUniverseId = pointUniverse.universeId ∧
  projection.pointUniverseDigest = pointUniverse.universeDigest ∧
  projection.sourcePointIds =
    pointUniverse.points.map Concept.MathematicalPoint.pointId

/-- A projection receipt retains the exact universe and profile coordinates. -/
structure PointProjectionReceipt
    (projection : PointProjection) where
  pointUniverse : Concept.PointUniverse
  bound : projection.BoundTo pointUniverse
  profileId : ProjectionProfileId
  profile_exact : profileId = projection.profile.id
  receiptDigest : Digest

/-- Every point has a visible selected-or-omitted disposition. -/
theorem PointProjection.no_silent_point
    (projection : PointProjection)
    {pointId : ElementId}
    (sourceMember : pointId ∈ projection.sourcePointIds) :
    pointId ∈ projection.selectedPointIds ∨
      pointId ∈
        projection.omittedPoints.map OmittedPoint.pointId :=
  (projection.pointCoverage pointId).mp sourceMember

end Mathematics.Projection
```
