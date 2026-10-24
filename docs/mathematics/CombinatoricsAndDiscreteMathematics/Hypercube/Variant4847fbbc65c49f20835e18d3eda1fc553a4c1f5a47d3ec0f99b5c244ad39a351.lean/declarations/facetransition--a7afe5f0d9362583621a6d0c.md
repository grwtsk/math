# FaceTransition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cc353acee87f54aab5d4020c316592c109682f359e3aad9e1804bc940a0db591",
  "kind": "structure",
  "lexical_name": "FaceTransition",
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
  "slug": "facetransition--a7afe5f0d9362583621a6d0c",
  "source": {
    "blob": "bfa0e1568b527a15de614b031f7283b808e389d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 57,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Hypercube/Variant4847fbbc65c49f20835e18d3eda1fc553a4c1f5a47d3ec0f99b5c244ad39a351.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a7afe5f0d9362583621a6d0c4d57288d3bf2a12865fc092ccf492c2da2686785",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Hypercube/Variant4847fbbc65c49f20835e18d3eda1fc553a4c1f5a47d3ec0f99b5c244ad39a351.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cc353acee87f54aab5d4020c316592c109682f359e3aad9e1804bc940a0db591`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FaceTransition {node : TerrainNode}
    (source target : HypercubicCell node) : Prop where
  identity_preserved : source.identityDigest = target.identityDigest
  statement_preserved : source.statementDigest = target.statementDigest
  dependencies_preserved : source.dependencyDigest = target.dependencyDigest

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Hypercube/Variant4847fbbc65c49f20835e18d3eda1fc553a4c1f5a47d3ec0f99b5c244ad39a351.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Hypercube/Variant4847fbbc65c49f20835e18d3eda1fc553a4c1f5a47d3ec0f99b5c244ad39a351.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfa0e1568b527a15de614b031f7283b808e389d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
