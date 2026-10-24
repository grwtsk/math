# digest_not_injective_of_card_gt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5312e43cde9ad7df8c70b359cc689d414c9593c3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 184,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dc5f0176ef3dd121de9a2668c927a24c235454f33578782727fde9cc3e62ed75.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9225132b-7373-5007-02df-27ecf80e3f5f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b575e50b-a830-37d1-87e9-7a3bf6cff9dc",
  "kind": "theorem",
  "lexical_name": "digest_not_injective_of_card_gt",
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
  "slug": "digest-not-injective-of-card-gt--adff4b158963418728392562",
  "source": {
    "blob": "5312e43cde9ad7df8c70b359cc689d414c9593c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 184,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variantdc5f0176ef3dd121de9a2668c927a24c235454f33578782727fde9cc3e62ed75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:adff4b158963418728392562ef7e8d865b2cb2cf25bd16d52a8b6ec6477c8fc4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variantdc5f0176ef3dd121de9a2668c927a24c235454f33578782727fde9cc3e62ed75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b575e50b-a830-37d1-87e9-7a3bf6cff9dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem digest_not_injective_of_card_gt
    {Snapshot : Type u}
    {r : Nat}
    [Fintype Snapshot]
    (digest : Snapshot → BitMatrix 1 r)
    (hcard : 2 ^ r < Fintype.card Snapshot) :
    ¬ Function.Injective digest := by
  intro hinjective
  have hle : Fintype.card Snapshot ≤ Fintype.card (BitMatrix 1 r) :=
    Fintype.card_le_of_injective digest hinjective
  rw [BitMatrix.Quantizer.card_bitMatrix] at hle
  have hle' : Fintype.card Snapshot ≤ 2 ^ r := by
    simpa using hle
  exact Nat.not_le_of_lt hcard hle'

/-- Cardinal compression yields two distinct snapshots with the same digest. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variantdc5f0176ef3dd121de9a2668c927a24c235454f33578782727fde9cc3e62ed75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variantdc5f0176ef3dd121de9a2668c927a24c235454f33578782727fde9cc3e62ed75.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5312e43cde9ad7df8c70b359cc689d414c9593c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
