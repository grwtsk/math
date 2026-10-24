# sum_range'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "258b26ad38358658689eee58d88978c735c717dd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 189,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/58/5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0eab234f-1668-aa27-70ae-2ccc611fe89b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2e1f31d8-0cc7-f90b-6720-12f84e77fe40",
  "kind": "theorem",
  "lexical_name": "sum_range'",
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
  "slug": "sum-range--e277874e1697a16f2cafab43",
  "source": {
    "blob": "258b26ad38358658689eee58d88978c735c717dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 189,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e277874e1697a16f2cafab4320691dc1ed6d58b554da9787e04c85f025538fab",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e1f31d8-0cc7-f90b-6720-12f84e77fe40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_range' : (range' start n step).sum = n * start + n * (n - 1) * step / 2 := by
  induction n generalizing start with
  | zero => simp
  | succ n ih =>
    simp_all only [List.range'_succ, List.sum_cons, Nat.mul_add, ← Nat.add_assoc,
      Nat.add_mul, Nat.one_mul, Nat.add_one_sub_one]
    have : n * step + n * (n - 1) * step / 2 = (n * n * step + n * step) / 2 := by
      apply Nat.eq_div_of_mul_eq_left (by omega)
      rw [Nat.add_mul, Nat.div_mul_cancel]
      · calc  n * step * 2 + n * (n - 1) * step
          _ = n * step * 2 + n * step * (n - 1) := by simp [Nat.mul_comm, Nat.mul_assoc]
          _ = n * step + n * step * n := by cases n <;> simp [Nat.mul_succ, Nat.add_assoc, Nat.add_comm]
          _ = n * n * step + n * step := by simp [Nat.mul_comm, Nat.add_comm, Nat.mul_left_comm]
      · have : 2 ∣ n ∨ 2 ∣ (n - 1) := by omega
        apply Nat.dvd_mul_right_of_dvd
        apply Nat.dvd_mul.mpr
        cases this with
        | inl h => exists 2, 1; omega
        | inr h => exists 1, 2; omega
    omega

@[simp, grind =]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `258b26ad38358658689eee58d88978c735c717dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
