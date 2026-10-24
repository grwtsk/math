# equilateralConstructionDependency

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:78f363820a45e2a1c5e286e1457223aa790d5b3d7d86dd33d931359e0c2cd9c8",
  "kind": "def",
  "lexical_name": "equilateralConstructionDependency",
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
  "slug": "equilateralconstructiondependency--52817092092afb7af3b73a40",
  "source": {
    "blob": "783b63cb96de0e1e4d77938d15462b7cf3452a06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 59,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/EquilateralTriangle/Variant688a94ec10e8ca20aaf3b7c34c9040aff55787dd060287de2c9072aad828e1bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:52817092092afb7af3b73a40e84f0ec657bb85c19bfcea90ebb0918b454818ed",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/EquilateralTriangle/Variant688a94ec10e8ca20aaf3b7c34c9040aff55787dd060287de2c9072aad828e1bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:78f363820a45e2a1c5e286e1457223aa790d5b3d7d86dd33d931359e0c2cd9c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equilateralConstructionDependency :
    DependencyEdge equilateralTriangleExactOpenElement.elementId.id where
  edgeId := {
    value := "dependency:geometry:construction:equilateral:certificate"
  }
  edgeId_valid := by
    simp [StableId.Valid]
  target := .assumption .construction constructionAssumptionId
  role := .constructionCertificate

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/EquilateralTriangle/Variant688a94ec10e8ca20aaf3b7c34c9040aff55787dd060287de2c9072aad828e1bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/EquilateralTriangle/Variant688a94ec10e8ca20aaf3b7c34c9040aff55787dd060287de2c9072aad828e1bb.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `783b63cb96de0e1e4d77938d15462b7cf3452a06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
