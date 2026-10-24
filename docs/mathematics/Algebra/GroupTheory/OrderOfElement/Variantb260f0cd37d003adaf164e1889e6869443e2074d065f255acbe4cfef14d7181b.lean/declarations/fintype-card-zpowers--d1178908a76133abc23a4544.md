# Fintype.card_zpowers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f7353fb14a00b020c854e4d8310a49bb9e95b162",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 889,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b260f0cd37d003adaf164e1889e6869443e2074d065f255acbe4cfef14d7181b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c4ea3f97-a8e1-6cff-a517-9662a28fc03d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:449af743-19c0-b553-0e95-4777f38c5bbc",
  "kind": "theorem",
  "lexical_name": "Fintype.card_zpowers",
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
  "slug": "fintype-card-zpowers--d1178908a76133abc23a4544",
  "source": {
    "blob": "f7353fb14a00b020c854e4d8310a49bb9e95b162",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 893,
    "line": 889,
    "path": "GRWTSK/Algebra/GroupTheory/OrderOfElement/Variantb260f0cd37d003adaf164e1889e6869443e2074d065f255acbe4cfef14d7181b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1178908a76133abc23a454499551e495d7809dd13c0d49da14c89b73f6a0a44",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/OrderOfElement/Variantb260f0cd37d003adaf164e1889e6869443e2074d065f255acbe4cfef14d7181b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:449af743-19c0-b553-0e95-4777f38c5bbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 889–893.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Fintype.card_zpowers : Fintype.card (zpowers x) = orderOf x :=
  (Fintype.card_eq.2 ⟨finEquivZPowers <| isOfFinOrder_of_finite _⟩).symm.trans <|
    Fintype.card_fin (orderOf x)

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/OrderOfElement/Variantb260f0cd37d003adaf164e1889e6869443e2074d065f255acbe4cfef14d7181b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/OrderOfElement/Variantb260f0cd37d003adaf164e1889e6869443e2074d065f255acbe4cfef14d7181b.lean#L889).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7353fb14a00b020c854e4d8310a49bb9e95b162` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
