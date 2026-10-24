# ScalePartition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:252fd9a7b2bc320a19a9e98f542206ca38eaf6242082de90f6dfd049913c5e69",
  "kind": "structure",
  "lexical_name": "ScalePartition",
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
  "slug": "scalepartition--0525c92051284fd8be5e701f",
  "source": {
    "blob": "69d8088c026bedf337f8d7e3c4ac50aa613a0c96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 22,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Partitions/Variantc58d141475c836be5eed5c98e7e3275dd1b8fd4251ae5a4d4448113c75457dc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0525c92051284fd8be5e701f81b7ef97d95e882764ff9ec94ab18b5dea2a7acf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Partitions/Variantc58d141475c836be5eed5c98e7e3275dd1b8fd4251ae5a4d4448113c75457dc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:252fd9a7b2bc320a19a9e98f542206ca38eaf6242082de90f6dfd049913c5e69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ScalePartition where
  delta : ℝ
  intervals : Finset (Set ℝ)
  coversUnitInterval : Prop
  intervalLengthEq : Prop
  pairwiseDisjoint : Prop
  exactPaperPartitionMatched : Bool

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Partitions/Variantc58d141475c836be5eed5c98e7e3275dd1b8fd4251ae5a4d4448113c75457dc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Partitions/Variantc58d141475c836be5eed5c98e7e3275dd1b8fd4251ae5a4d4448113c75457dc3.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69d8088c026bedf337f8d7e3c4ac50aa613a0c96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
