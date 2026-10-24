# Quotient.deltaGeneratedSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b175e3a9a19a2c88cd06a428935330d8baf96447dfd26ed0f865dfd81e0e0111",
  "kind": "instance",
  "lexical_name": "Quotient.deltaGeneratedSpace",
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
  "slug": "quotient-deltageneratedspace--41a6be1653d343af7f0d6152",
  "source": {
    "blob": "003b90f637fa7e0f8a403a32cc844950620f3042",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 168,
    "path": "GRWTSK/Topology/GeneralTopology/DeltaGeneratedSpace/Variantdc8ee728d0493407fdee1d0b16422bc2f3bf4907f1b85929343c1853ca0047c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:41a6be1653d343af7f0d61526b240c14bdbdd82b94bee67f55af19151a13097a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DeltaGeneratedSpace/Variantdc8ee728d0493407fdee1d0b16422bc2f3bf4907f1b85929343c1853ca0047c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b175e3a9a19a2c88cd06a428935330d8baf96447dfd26ed0f865dfd81e0e0111`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Quotient.deltaGeneratedSpace [DeltaGeneratedSpace X] {s : Setoid X} :
    DeltaGeneratedSpace (Quotient s) :=
  isQuotientMap_quotient_mk'.deltaGeneratedSpace

/-- Disjoint unions of delta-generated spaces are delta-generated. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DeltaGeneratedSpace/Variantdc8ee728d0493407fdee1d0b16422bc2f3bf4907f1b85929343c1853ca0047c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DeltaGeneratedSpace/Variantdc8ee728d0493407fdee1d0b16422bc2f3bf4907f1b85929343c1853ca0047c8.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `003b90f637fa7e0f8a403a32cc844950620f3042` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
