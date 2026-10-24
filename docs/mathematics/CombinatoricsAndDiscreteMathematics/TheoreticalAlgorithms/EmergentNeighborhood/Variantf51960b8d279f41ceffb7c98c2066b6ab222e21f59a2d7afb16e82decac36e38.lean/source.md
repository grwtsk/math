# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EmergentNeighborhood.Variantf51960b8d279f41ceffb7c98c2066b6ab222e21f59a2d7afb16e82decac36e38

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b3022d3c4929b7ff2deb740503009961f6a25f71` · SHA-256 `f51960b8d279f41ceffb7c98c2066b6ab222e21f59a2d7afb16e82decac36e38`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Concept.PointUniverse

/-!
# Intrinsically emergent neighborhoods

Neighborhood membership is certified from points, typed relations, and
invariants.  Names and paths are absent from the neighborhood itself.  A source
layout candidate can be constructed only from such a stability witness.
-/

namespace Mathematics.Terrain

structure NeighborhoodStabilityEvidence
    (pointUniverse : Concept.PointUniverse)
    (members : List ElementId) where
  relationIds : List RelationId
  invariantIds : List StableId
  relationClosure :
    ∀ relation ∈ pointUniverse.relations,
      relation.id ∈ relationIds →
      relation.source ∈ members ∧
      relation.target ∈ members
  sourceIndependent :
    ∀ pointId ∈ members,
      ∃ point ∈ pointUniverse.points,
        point.pointId = pointId
  certificateId : CertificateId
  evidenceDigest : Digest

structure StableNeighborhood
    (pointUniverse : Concept.PointUniverse) where
  neighborhoodId : StableId
  members : List ElementId
  members_nonempty : members ≠ []
  members_unique : members.Nodup
  membersResolve :
    ∀ pointId ∈ members,
      pointId ∈
        pointUniverse.points.map Concept.MathematicalPoint.pointId
  stability : NeighborhoodStabilityEvidence pointUniverse members

/-- Filesystem placement is a downstream candidate, never neighborhood input. -/
structure SourceLayoutCandidate
    (pointUniverse : Concept.PointUniverse) where
  neighborhood : StableNeighborhood pointUniverse
  proposedPath : String
  namingEvidenceId : EvidenceId
  projectionProfileId : ProjectionProfileId
  candidateDigest : Digest

/-- Every layout candidate carries the intrinsic stability witness it projects. -/
theorem SourceLayoutCandidate.has_stable_neighborhood
    {pointUniverse : Concept.PointUniverse}
    (candidate : SourceLayoutCandidate pointUniverse) :
    Nonempty (StableNeighborhood pointUniverse) :=
  ⟨candidate.neighborhood⟩

end Mathematics.Terrain
```
