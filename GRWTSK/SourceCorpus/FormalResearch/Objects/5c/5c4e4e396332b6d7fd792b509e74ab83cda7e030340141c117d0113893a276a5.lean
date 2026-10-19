import Mathematics.Concept.DescriptorRegistry
import Mathematics.Concept.MathematicalPoint
import Mathematics.Concept.Unknown
import Mathematics.SourceAnalysis.AbstractSourceTree

/-!
# Canonical mathematical point universe

The universe is the single authoritative identity space consumed by every
projection and model.  Relations, labels, unknowns, and negative observations
all resolve against it.  Paths and names remain source evidence.
-/

namespace Mathematics.Concept

structure PointUniverse where
  universeId : StableId
  sourceTree : SourceAnalysis.AbstractSourceTree
  points : List MathematicalPoint
  point_ids_unique :
    (points.map MathematicalPoint.pointId).Nodup
  descriptors : DescriptorRegistry
  descriptor_point_universe_exact :
    descriptors.pointIds =
      points.map MathematicalPoint.pointId
  relations : List RelationRecord
  relation_ids_unique :
    (relations.map RelationRecord.id).Nodup
  relationEndpointsResolve :
    ∀ relation ∈ relations,
      relation.source ∈ points.map MathematicalPoint.pointId ∧
      relation.target ∈ points.map MathematicalPoint.pointId
  relationProvenanceNonempty :
    ∀ relation ∈ relations,
      relation.provenance.Nonempty
  pointSourcesResolve :
    ∀ point ∈ points,
      ∀ source ∈ point.sources,
        source.addressId ∈
          sourceTree.nodes.map (·.address.addressId)
  negativeElements : List NegativeElement
  negativeSubjectsResolve :
    ∀ element ∈ negativeElements,
      element.subjectId ∈ points.map MathematicalPoint.pointId
  unknownBranches : List UnknownBranch
  unknownSubjectsResolve :
    ∀ branch ∈ unknownBranches,
      branch.subjectId ∈ points.map MathematicalPoint.pointId
  universeDigest : Digest

namespace PointUniverse

/-- Point identity is unique inside the canonical universe. -/
theorem point_unique
    (pointUniverse : PointUniverse)
    {left right : MathematicalPoint}
    (leftMember : left ∈ pointUniverse.points)
    (rightMember : right ∈ pointUniverse.points)
    (sameId : left.pointId = right.pointId) :
    left = right :=
  List.inj_on_of_nodup_map pointUniverse.point_ids_unique
    leftMember rightMember sameId

/-- Every relation endpoint is an admitted point. -/
theorem relation_endpoints_resolve
    (pointUniverse : PointUniverse)
    {relation : RelationRecord}
    (member : relation ∈ pointUniverse.relations) :
    relation.source ∈ pointUniverse.points.map MathematicalPoint.pointId ∧
      relation.target ∈ pointUniverse.points.map MathematicalPoint.pointId :=
  pointUniverse.relationEndpointsResolve relation member

/-- Every admitted relation carries explicit evidence provenance. -/
theorem relation_has_provenance
    (pointUniverse : PointUniverse)
    {relation : RelationRecord}
    (member : relation ∈ pointUniverse.relations) :
    relation.provenance.Nonempty :=
  pointUniverse.relationProvenanceNonempty relation member

end PointUniverse

end Mathematics.Concept
