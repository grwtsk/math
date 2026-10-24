# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LocatedResponse.Variant0e6efd0425a0a27b6379d69a0cdd205fefa34e080fe4722aff209d7183e3b0d2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4c8c3bd029be0e76f0777b01087af61927fa45de` · SHA-256 `0e6efd0425a0a27b6379d69a0cdd205fefa34e080fe4722aff209d7183e3b0d2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Concept.PointUniverse
import Mathematics.Oracle.Jurisdiction
import Mathematics.Oracle.Navigation

/-!
# Located model responses

A response is usable only as a point-universe-relative packet that identifies
meanings, relations, dependencies, representations, authority, residue,
prohibitions, and audience.  Text alone is not a mathematical answer.
-/

namespace Mathematics.Oracle

structure ResponseLocation where
  sourceAddressIds : List StableId
  pointIds : List ElementId
  meaningDigests : List Digest
  relationIds : List RelationId
  relationPathIds : List StableId
  dependencyIds : List StableId
  representationIds : List RepresentationId
  terrainRegionIds : List RegionId
  proofTerrainIds : List StableId
  authority : Concept.Profile
  residueIds : List StableId
  prohibitionIds : List StableId
  audienceIds : List StableId
  deriving DecidableEq

structure LocatedResponse where
  responseId : StableId
  oracleId : OracleId
  jurisdictionId : StableId
  pointUniverseId : StableId
  projectId : ProjectId
  versionId : StableId
  snapshotId : StableId
  queryDigest : Digest
  expression : String
  location : ResponseLocation
  unknownBranchIds : List StableId
  authority : NavigationAuthority
  responseDigest : Digest
  deriving DecidableEq

def LocatedResponse.ResolvesIn
    (response : LocatedResponse)
    (pointUniverse : Concept.PointUniverse) : Prop :=
  response.pointUniverseId = pointUniverse.universeId ∧
  (∀ pointId ∈ response.location.pointIds,
    pointId ∈
      pointUniverse.points.map Concept.MathematicalPoint.pointId) ∧
  (∀ relationId ∈ response.location.relationIds,
    relationId ∈
      pointUniverse.relations.map Concept.RelationRecord.id) ∧
  (∀ addressId ∈ response.location.sourceAddressIds,
    addressId ∈
      pointUniverse.sourceTree.nodes.map
        (·.address.addressId)) ∧
  (∀ branchId ∈ response.unknownBranchIds,
    branchId ∈
      pointUniverse.unknownBranches.map
        Concept.UnknownBranch.branchId)

/-- A located response cannot be an ungrounded string. -/
def LocatedResponse.Accountable
    (response : LocatedResponse) : Prop :=
  response.location.pointIds ≠ [] ∨
    response.unknownBranchIds ≠ []

/-- Located navigation remains non-theorem authority by construction. -/
theorem LocatedResponse.authority_is_navigation_or_candidate
    (response : LocatedResponse) :
    response.authority = .navigationOnly ∨
      response.authority = .candidate := by
  cases response.authority <;> simp

end Mathematics.Oracle
```
