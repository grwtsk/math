# reduce_of_not_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "22c478df747f7f4078666798761ef6dc0704f5ca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6edacf83d2032e48432957cc49bc297dc4794dd5647a1ef81ba95ce3774a1745.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e1b62c3a-e6b7-b709-4218-eddc2b651908",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b159e9c7-8e4f-489d-dcf7-a29b3bacf55d",
  "kind": "lemma",
  "lexical_name": "reduce_of_not_pos",
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
  "slug": "reduce-of-not-pos--795845cd7ed1bdb6eaf3e33c",
  "source": {
    "blob": "22c478df747f7f4078666798761ef6dc0704f5ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 118,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant6edacf83d2032e48432957cc49bc297dc4794dd5647a1ef81ba95ce3774a1745.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:795845cd7ed1bdb6eaf3e33c31866fc22ace3117fffcc33a51e04b73897b35c2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant6edacf83d2032e48432957cc49bc297dc4794dd5647a1ef81ba95ce3774a1745.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b159e9c7-8e4f-489d-dcf7-a29b3bacf55d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma reduce_of_not_pos {A : Δ m} (hc : (A.1 1 0) = 0) (ha : ¬ 0 < A.1 0 0) :
    reduce A = (T ^ (-(-A.1 0 1 / -A.1 1 1))) • (S • (S • A)) := by
  rw [reduce]
  simp only [zpow_neg, Int.ediv_neg, neg_neg] at *
  simp_rw [ite_eq_left hc, ite_eq_right ha]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant6edacf83d2032e48432957cc49bc297dc4794dd5647a1ef81ba95ce3774a1745.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant6edacf83d2032e48432957cc49bc297dc4794dd5647a1ef81ba95ce3774a1745.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22c478df747f7f4078666798761ef6dc0704f5ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
