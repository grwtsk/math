# Params.initial_full_balance_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f920001904e0a69cdcc5a1042bc956cb81fd55a8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1626,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ce74113c-a783-2683-6663-3f00c4c24668",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:33e5d2a2-c675-a664-f198-519d460e7e46",
  "kind": "lemma",
  "lexical_name": "Params.initial_full_balance_ge",
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
  "slug": "params-initial-full-balance-ge--9d36779b1f7df97272a531a4",
  "source": {
    "blob": "f920001904e0a69cdcc5a1042bc956cb81fd55a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1658,
    "line": 1626,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d36779b1f7df97272a531a4379f99c15e806c63aedbe6004f97c848c870b920",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33e5d2a2-c675-a664-f198-519d460e7e46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1626–1658.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Params.initial_full_balance_ge (P : Params) (p : ℕ) (hp : p.Prime) :
    (initial_full P).balance p ≥ -P.M * Real.log P.n / Real.log 2 := by
  have h_balance : (initial_full P).balance p = P.M * (∑ k ∈ Finset.Ico 1 (Nat.log p P.n + 1),
    ((filter (p ^ k ∣ ·) (Finset.Ico (P.n - P.n / P.M) P.n)).card : ℤ)) -
      (∑ k ∈ Finset.Ico 1 (Nat.log p P.n + 1), (P.n / p ^ k : ℤ)) := by
    convert initial_full_balance_eq P p using 1
    congr! 2
    · exact (initial_full_sum_valuation_eq P p hp).symm
    · rw [factorization_def]
      · have := Fact.mk hp; rw [padicValNat_factorial] <;> aesop
      · assumption
  have h_term : ∀ k ∈ Finset.Ico 1 (log p P.n + 1),
      (P.M : ℤ) * ((filter (p ^ k ∣ ·) (Finset.Ico (P.n - P.n / P.M) P.n)).card : ℤ) -
      (P.n / p ^ k : ℤ) ≥ -P.M := fun k _ ↦ initial_full_term_bound P p k hp.pos
  have h_sum : (P.M : ℤ) * (∑ k ∈ Finset.Ico 1 (log p P.n + 1),
      ((filter (p ^ k ∣ ·) (Finset.Ico (P.n - P.n / P.M) P.n)).card : ℤ)) -
      (∑ k ∈ Finset.Ico 1 (log p P.n + 1), (P.n / p ^ k : ℤ)) ≥ -P.M * log p P.n := by
    simpa [mul_comm, mul_sum, sum_mul] using sum_le_sum h_term
  have hn_pos : P.n > 0 := by nlinarith [P.hL, P.hL_pos]
  have h_log : (log p P.n : ℝ) ≤ Real.log P.n / Real.log 2 := by
    rw [le_div_iff₀ (log_pos one_lt_two), ← Real.log_pow]
    gcongr
    norm_cast
    exact (pow_le_pow_left' hp.two_le _).trans (Nat.pow_log_le_self _ hn_pos.ne')
  simp_all only [Finset.mem_Ico, Order.lt_add_one_iff, ge_iff_le, neg_le_sub_iff_le_add,
    and_imp, neg_mul, Int.cast_sub, Int.cast_mul, Int.cast_natCast, Int.cast_sum]
  rw [div_le_iff₀ (by positivity)] at *
  rw [le_div_iff₀ (log_pos (by norm_num))] at h_log
  norm_num [← @Int.cast_le ℝ] at *
  nlinarith [Real.log_pos one_lt_two]

/-- The balance of `initial` equals that of `initial_full` minus `M` times the sum of valuations
in `rough_set`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean#L1626).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f920001904e0a69cdcc5a1042bc956cb81fd55a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
