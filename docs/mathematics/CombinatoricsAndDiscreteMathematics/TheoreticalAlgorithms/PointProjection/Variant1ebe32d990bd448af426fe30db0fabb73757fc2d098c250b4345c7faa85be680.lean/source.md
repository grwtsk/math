# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PointProjection.Variant1ebe32d990bd448af426fe30db0fabb73757fc2d098c250b4345c7faa85be680

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a936f5aaea7b0ab4fe62da30fe4efe26d627a476` · SHA-256 `4946f0debab4beb282479d642c289ea2944a1941dc2cbc4e98160e07460b90a9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PointOmissionReason.Variantbed7d1a2d06e797b25c8dbaa581c96617642fe5d4f415762c9d5eab449298e21","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bed7d1a2d06e797b25c8dbaa581c96617642fe5d4f415762c9d5eab449298e21","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.PointOmissionReason.Variantbed7d1a2d06e797b25c8dbaa581c96617642fe5d4f415762c9d5eab449298e21","mathematical_subject":"Computation.DataStructures","original_sha256":"bed7d1a2d06e797b25c8dbaa581c96617642fe5d4f415762c9d5eab449298e21","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Projection/PointProjection.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Concept.PointUniverse
import Mathematics.Projection.Profile

/-!
# Explicit point-universe projections

A projection is a versioned view of one canonical universe.  Every point is
either selected or retained with an explicit omission reason.  The profile
does not become ontology and the projection cannot mint point identity.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PointOmissionReason.Variantbed7d1a2d06e797b25c8dbaa581c96617642fe5d4f415762c9d5eab449298e21

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
