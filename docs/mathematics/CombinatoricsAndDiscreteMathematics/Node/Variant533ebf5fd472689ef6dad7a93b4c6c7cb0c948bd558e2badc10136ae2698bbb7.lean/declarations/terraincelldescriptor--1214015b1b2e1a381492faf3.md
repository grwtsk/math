# TerrainCellDescriptor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8ee5f8633cf4d52bdf5785e8c4432412f5f500ba22bb382aaedfc6e1c5a8b28a",
  "kind": "structure",
  "lexical_name": "TerrainCellDescriptor",
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
  "slug": "terraincelldescriptor--1214015b1b2e1a381492faf3",
  "source": {
    "blob": "b158e1337bad8c77e3a4f22e031e2a16696023ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 73,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Node/Variant533ebf5fd472689ef6dad7a93b4c6c7cb0c948bd558e2badc10136ae2698bbb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1214015b1b2e1a381492faf3935e01cc89eb762bbaa19f72419f8337bab11dbb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Node/Variant533ebf5fd472689ef6dad7a93b4c6c7cb0c948bd558e2badc10136ae2698bbb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8ee5f8633cf4d52bdf5785e8c4432412f5f500ba22bb382aaedfc6e1c5a8b28a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TerrainCellDescriptor where
  id : TerrainCellId
  dimension : Nat
  boundaryEdges : Finset TerrainEdgeId
  identityDigest : Digest
  deriving DecidableEq

/-- Runtime binding without any theorem-authority promotion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Node/Variant533ebf5fd472689ef6dad7a93b4c6c7cb0c948bd558e2badc10136ae2698bbb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Node/Variant533ebf5fd472689ef6dad7a93b4c6c7cb0c948bd558e2badc10136ae2698bbb7.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b158e1337bad8c77e3a4f22e031e2a16696023ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
