# metrizableSpace_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3e7dd5a9ea0cb20847e795ce9249c6f031217ce410fbcd434d511edb79f0c42f",
  "kind": "instance",
  "lexical_name": "metrizableSpace_prod",
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
  "slug": "metrizablespace-prod--1e0506ac0ac9a3c97abff038",
  "source": {
    "blob": "50eaa47f96bf02a56789de54082f86cc4cab3e9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 147,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Varianteae54cb18a00629c1e16218297e56c8b2f185e658c8c3f052ecbc533a0b1f984.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1e0506ac0ac9a3c97abff0381f7d2c9603742638d3210d5ce589de70ed8193cb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Varianteae54cb18a00629c1e16218297e56c8b2f185e658c8c3f052ecbc533a0b1f984.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3e7dd5a9ea0cb20847e795ce9249c6f031217ce410fbcd434d511edb79f0c42f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance metrizableSpace_prod [MetrizableSpace X] [MetrizableSpace Y] :
    MetrizableSpace (X × Y) where

/-- Given an embedding of a topological space into a metrizable space, the source space is also
metrizable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Varianteae54cb18a00629c1e16218297e56c8b2f185e658c8c3f052ecbc533a0b1f984.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Varianteae54cb18a00629c1e16218297e56c8b2f185e658c8c3f052ecbc533a0b1f984.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50eaa47f96bf02a56789de54082f86cc4cab3e9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
