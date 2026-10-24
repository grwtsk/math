# reduce_aux

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
      "line": 76,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6edacf83d2032e48432957cc49bc297dc4794dd5647a1ef81ba95ce3774a1745.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bdbab09d-ab13-e9f2-7920-dfbb7bcaf5df",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:27d853e7-edc6-8bff-fef8-ec30ef206abb",
  "kind": "lemma",
  "lexical_name": "reduce_aux",
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
  "slug": "reduce-aux--e94934528de095a7a2d39bca",
  "source": {
    "blob": "22c478df747f7f4078666798761ef6dc0704f5ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 76,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant6edacf83d2032e48432957cc49bc297dc4794dd5647a1ef81ba95ce3774a1745.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e94934528de095a7a2d39bca967e70340a742005608f39b4c7b7a4b39286656f",
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

Occurrence: `result:27d853e7-edc6-8bff-fef8-ec30ef206abb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma reduce_aux {A : Δ m} (h : (A.1 1 0) ≠ 0) :
    |((reduceStep A).1 1 0)| < |(A.1 1 0)| := by
  suffices ((reduceStep A).1 1 0) = A.1 0 0 % A.1 1 0 by
    rw [this, abs_eq_self.mpr (Int.emod_nonneg (A.1 0 0) h)]
    exact Int.emod_lt_abs (A.1 0 0) h
  simp_rw [Int.emod_def, sub_eq_add_neg, reduceStep, smul_coe, coe_T_zpow, S]
  norm_num [vecMul, vecHead, vecTail, mul_comm]

/-- Reduction lemma for integral FixedDetMatrices. -/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant6edacf83d2032e48432957cc49bc297dc4794dd5647a1ef81ba95ce3774a1745.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant6edacf83d2032e48432957cc49bc297dc4794dd5647a1ef81ba95ce3774a1745.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22c478df747f7f4078666798761ef6dc0704f5ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
