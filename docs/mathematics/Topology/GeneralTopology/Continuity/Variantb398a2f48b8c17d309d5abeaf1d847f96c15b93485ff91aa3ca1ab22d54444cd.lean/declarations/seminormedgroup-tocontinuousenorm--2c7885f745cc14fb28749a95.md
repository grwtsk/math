# SeminormedGroup.toContinuousENorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:18f95027cbbc2da7f34e9a4d10f99289cfe661b42f609c73d8d3e66c1f7e07e0",
  "kind": "instance",
  "lexical_name": "SeminormedGroup.toContinuousENorm",
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
  "slug": "seminormedgroup-tocontinuousenorm--2c7885f745cc14fb28749a95",
  "source": {
    "blob": "12b3d01f92ad1e110ce222fe1c8031eb3331ef8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 140,
    "path": "GRWTSK/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2c7885f745cc14fb28749a955cafca8da91ac77578e9fc3392ad115b1842dd70",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:18f95027cbbc2da7f34e9a4d10f99289cfe661b42f609c73d8d3e66c1f7e07e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance SeminormedGroup.toContinuousENorm [SeminormedGroup E] : ContinuousENorm E where
  continuous_enorm := ENNReal.isOpenEmbedding_coe.continuous.comp continuous_nnnorm'

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12b3d01f92ad1e110ce222fe1c8031eb3331ef8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
