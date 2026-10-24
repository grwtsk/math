# even_card_aut_of_not_isUnramified

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a204e202cf23c86a4408199ed27f9f04c83168af",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 344,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a8/a888f31609f6c795b28c0f7390d00f7d0c9540d4e3a6052fae47a9e69c35a287.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:280557a8-9cec-b6d2-b92b-04d672d821d7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8b4292f4-b699-a26f-8235-1ccf39e6bbbd",
  "kind": "lemma",
  "lexical_name": "even_card_aut_of_not_isUnramified",
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
  "slug": "even-card-aut-of-not-isunramified--326071bbf24add2f1540036a",
  "source": {
    "blob": "a204e202cf23c86a4408199ed27f9f04c83168af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 344,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Ramification/Varianta888f31609f6c795b28c0f7390d00f7d0c9540d4e3a6052fae47a9e69c35a287.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:326071bbf24add2f1540036a7eb35fb3688d5e51b2ff25fb24a973f92e215469",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Ramification/Varianta888f31609f6c795b28c0f7390d00f7d0c9540d4e3a6052fae47a9e69c35a287.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b4292f4-b699-a26f-8235-1ccf39e6bbbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma even_card_aut_of_not_isUnramified [IsGalois k K] [FiniteDimensional k K]
    (hw : ¬ IsUnramified k w) :
    Even (Fintype.card <| K ≃ₐ[k] K) :=
  Nat.card_eq_fintype_card (α := K ≃ₐ[k] K) ▸ even_nat_card_aut_of_not_isUnramified hw

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Ramification/Varianta888f31609f6c795b28c0f7390d00f7d0c9540d4e3a6052fae47a9e69c35a287.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Ramification/Varianta888f31609f6c795b28c0f7390d00f7d0c9540d4e3a6052fae47a9e69c35a287.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a204e202cf23c86a4408199ed27f9f04c83168af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
