# PartialDiffeomorph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:833ed2e3b53ee992eb74ed421db302ddd18bb2eed1fde5e14583e88f7947f3b6",
  "kind": "structure",
  "lexical_name": "PartialDiffeomorph",
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
  "slug": "partialdiffeomorph--76dc75d11e13a8e3790ddf42",
  "source": {
    "blob": "6538e9e5b58fcde99c1a27f672228f0f3912f1cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 81,
    "path": "GRWTSK/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:76dc75d11e13a8e3790ddf42034f08da5883a9029daa3227f85530320bb1293b",
  "verification": {
    "reference": "docs/verification/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:833ed2e3b53ee992eb74ed421db302ddd18bb2eed1fde5e14583e88f7947f3b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PartialDiffeomorph extends PartialEquiv M N where
  open_source : IsOpen source
  open_target : IsOpen target
  contMDiffOn_toFun : ContMDiffOn I J n toFun source
  contMDiffOn_invFun : ContMDiffOn J I n invFun target

/-- Coercion of a `PartialDiffeomorph` to function.
Note that a `PartialDiffeomorph` is not `DFunLike` (like `PartialHomeomorph`),
as `toFun` doesn't determine `invFun` outside of `target`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6538e9e5b58fcde99c1a27f672228f0f3912f1cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
