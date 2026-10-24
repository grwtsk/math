# PointUniverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:802ffc8d8bf7d27c4640abda2c6adc77dc818f54b20c4e4ad5e85d1db4fe5249",
  "kind": "structure",
  "lexical_name": "PointUniverse",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "pointuniverse--8c68b7f87ccf2e4f7e0fe3c1",
  "source": {
    "blob": "d254ef2d8d114d5e1809736b5fa684316d1634d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 24,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PointUniverse/Variantfd95ebe5dab3477602a96bb5d80573ef1db3b746f160dc32b9f1a1466105153c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8c68b7f87ccf2e4f7e0fe3c18c298bfbc5eff627256c9466d23abd58e92197fb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PointUniverse/Variantfd95ebe5dab3477602a96bb5d80573ef1db3b746f160dc32b9f1a1466105153c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:802ffc8d8bf7d27c4640abda2c6adc77dc818f54b20c4e4ad5e85d1db4fe5249`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
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
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PointUniverse/Variantfd95ebe5dab3477602a96bb5d80573ef1db3b746f160dc32b9f1a1466105153c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PointUniverse/Variantfd95ebe5dab3477602a96bb5d80573ef1db3b746f160dc32b9f1a1466105153c.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d254ef2d8d114d5e1809736b5fa684316d1634d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
