# ProfiniteAddGrp.Hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:676d01a015c19bad21cb81d0cb8a95b5b6447f100f1e97b5e6ce0f5114aab00e",
  "kind": "structure",
  "lexical_name": "ProfiniteAddGrp.Hom",
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
  "slug": "profiniteaddgrp-hom--58d3b6932e3136e25e3be15f",
  "source": {
    "blob": "263a94b86ae16d63a773e3c342e8edf5520ce5f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 95,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:58d3b6932e3136e25e3be15f6410740e8d423b51d76d152d0a63e47d94888bd9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:676d01a015c19bad21cb81d0cb8a95b5b6447f100f1e97b5e6ce0f5114aab00e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ProfiniteAddGrp.Hom (A B : ProfiniteAddGrp.{u}) where
  _mkInternal ::
  /-- The underlying `ContinuousAddMonoidHom`. -/
  hom' : A →ₜ+ B

/-- The type of morphisms in `ProfiniteGrp`. -/
@[to_additive existing (attr := ext)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant0c595c7f41ff36922dbb38967816db4e4714fce6378ecc36c6c03713327a90da.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `263a94b86ae16d63a773e3c342e8edf5520ce5f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
