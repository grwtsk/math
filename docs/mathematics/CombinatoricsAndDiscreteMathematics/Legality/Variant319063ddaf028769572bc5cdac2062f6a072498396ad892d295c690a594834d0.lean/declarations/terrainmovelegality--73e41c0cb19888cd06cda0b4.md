# TerrainMoveLegality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6e240bc40211aeaabd005680ecdaa2d2b44e219cca81c82dd7e704204cf9f5f2",
  "kind": "structure",
  "lexical_name": "TerrainMoveLegality",
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
  "slug": "terrainmovelegality--73e41c0cb19888cd06cda0b4",
  "source": {
    "blob": "ce9f4e8cdc80e8a818ddcfaea7873fc2dcd698f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 26,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Legality/Variant319063ddaf028769572bc5cdac2062f6a072498396ad892d295c690a594834d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:73e41c0cb19888cd06cda0b4f8cf10933f13a6a7c810b38415b9c46de13f2820",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Legality/Variant319063ddaf028769572bc5cdac2062f6a072498396ad892d295c690a594834d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6e240bc40211aeaabd005680ecdaa2d2b44e219cca81c82dd7e704204cf9f5f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TerrainMoveLegality
    {State : Type u} {G : KnownMaximalState State}
    {V : Type v} [Fintype V] [DecidableEq V]
    (move : TerrainMove G V) where
  exactGlobalLocus : Prop
  exactGlobalLocus_proof : exactGlobalLocus
  adjacencyCompliant : Prop
  adjacencyCompliant_proof : adjacencyCompliant
  boundaryCompliant : Prop
  boundaryCompliant_proof : boundaryCompliant
  obstacleCompliant : Prop
  obstacleCompliant_proof : obstacleCompliant
  capacityCompliant : Prop
  capacityCompliant_proof : capacityCompliant
  conservative : Prop
  conservative_proof : conservative
  globalRulesetCompatible : Prop
  globalRulesetCompatible_proof : globalRulesetCompatible

namespace TerrainMoveLegality

variable {State : Type u} {G : KnownMaximalState State}
  {V : Type v} [Fintype V] [DecidableEq V]
  {move : TerrainMove G V}

/-- All terrain-local obligations are available separately. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Legality/Variant319063ddaf028769572bc5cdac2062f6a072498396ad892d295c690a594834d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Legality/Variant319063ddaf028769572bc5cdac2062f6a072498396ad892d295c690a594834d0.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce9f4e8cdc80e8a818ddcfaea7873fc2dcd698f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
