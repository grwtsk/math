# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PointUniverse.Variantfd95ebe5dab3477602a96bb5d80573ef1db3b746f160dc32b9f1a1466105153c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d254ef2d8d114d5e1809736b5fa684316d1634d8` · SHA-256 `d947c19d9bc3de12633990d858eb89baea39e7df1c253a5c3d5a66616a03c038`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PointUniverse.Variant5c4e4e396332b6d7fd792b509e74ab83cda7e030340141c117d0113893a276a5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5c4e4e396332b6d7fd792b509e74ab83cda7e030340141c117d0113893a276a5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.PointUniverse.Variant5c4e4e396332b6d7fd792b509e74ab83cda7e030340141c117d0113893a276a5","mathematical_subject":"Computation.DataStructures","original_sha256":"5c4e4e396332b6d7fd792b509e74ab83cda7e030340141c117d0113893a276a5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Concept/PointUniverse.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PointUniverse.Variant5c4e4e396332b6d7fd792b509e74ab83cda7e030340141c117d0113893a276a5

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
```
