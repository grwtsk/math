# OrientedIncidence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ebf6eed97be05dc97a6ab4c76ed6d8448e1e4b491dd8b9779f46031cfca8211f",
  "kind": "structure",
  "lexical_name": "OrientedIncidence",
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
  "slug": "orientedincidence--cd5b08c000daf9c2853e5d47",
  "source": {
    "blob": "8443dddddc00f3c8e5c79c110381c7fa2d58ad6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 19,
    "line": 11,
    "path": "GRWTSK/Geometry/Hodge/FiniteGraphCellular.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cd5b08c000daf9c2853e5d4727b647b11280485eb4f3d6af462656aefaf230f7",
  "verification": {
    "reference": "docs/verification/Geometry/Hodge/FiniteGraphCellular.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ebf6eed97be05dc97a6ab4c76ed6d8448e1e4b491dd8b9779f46031cfca8211f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 11–19.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure OrientedIncidence (Vertex : Type u) (Edge : Type v) where
  source : Edge → Vertex
  target : Edge → Vertex

namespace OrientedIncidence

variable {Vertex : Type u} {Edge : Type v}

/-- Cellular degree-zero coboundary on an oriented finite graph. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/Hodge/FiniteGraphCellular.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/Hodge/FiniteGraphCellular.lean#L11).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8443dddddc00f3c8e5c79c110381c7fa2d58ad6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
