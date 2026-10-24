# IsUnramifiedAtInfinitePlaces.id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e9abb2c67651eb330d316319f03b812a7c3b42ff95927ce5f88d09104a55a271",
  "kind": "instance",
  "lexical_name": "IsUnramifiedAtInfinitePlaces.id",
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
  "slug": "isunramifiedatinfiniteplaces-id--e6b0a87c66be1cd7f1607a69",
  "source": {
    "blob": "a204e202cf23c86a4408199ed27f9f04c83168af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 456,
    "line": 454,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Ramification/Varianta888f31609f6c795b28c0f7390d00f7d0c9540d4e3a6052fae47a9e69c35a287.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e6b0a87c66be1cd7f1607a693aeafb0babe58bd202eb7ed08f4c2a7948f42a05",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Ramification/Varianta888f31609f6c795b28c0f7390d00f7d0c9540d4e3a6052fae47a9e69c35a287.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e9abb2c67651eb330d316319f03b812a7c3b42ff95927ce5f88d09104a55a271`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 454–456.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance IsUnramifiedAtInfinitePlaces.id : IsUnramifiedAtInfinitePlaces K K where
  isUnramified w := w.isUnramified_self

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Ramification/Varianta888f31609f6c795b28c0f7390d00f7d0c9540d4e3a6052fae47a9e69c35a287.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Ramification/Varianta888f31609f6c795b28c0f7390d00f7d0c9540d4e3a6052fae47a9e69c35a287.lean#L454).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a204e202cf23c86a4408199ed27f9f04c83168af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
