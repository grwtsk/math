# Factorization.lower_score_3_case1

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
      "line": 432,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:16878735-3508-b88a-1482-315b881e3686",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aff96890-ae26-1a9c-c66b-07523ef47828",
  "kind": "lemma",
  "lexical_name": "Factorization.lower_score_3_case1",
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
  "slug": "factorization-lower-score-3-case1--75cf5f6f5bb68182efb36313",
  "source": {
    "blob": "f920001904e0a69cdcc5a1042bc956cb81fd55a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 478,
    "line": 432,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75cf5f6f5bb68182efb363138ecb2420af7b3df485e7a5a8f26109c6b79397e8",
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

Occurrence: `result:aff96890-ae26-1a9c-c66b-07523ef47828`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 432–478.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Factorization.lower_score_3_case1 {n : ℕ} (f : Factorization n) (L : ℕ)
    (h_surplus : ∀ p, f.balance p ≤ 0) (h_deficit_large : ∀ p, f.balance p < 0 → p ≤ L)
    (hf : ∃ p ∈ (n + 1).primesBelow, p ≤ L ∧ f.balance p < 0)
    (h_prod : (deficitMultiset f L).prod ≤ n) :
    ∃ f' : Factorization n,
      f'.total_imbalance < f.total_imbalance ∧
      f'.score L ≤ f.score L := by
  set f' := addFactor f (deficitMultiset f L).prod
    h_prod (deficitMultiset_prod_pos f L) with hf'
  have h_zero_bal : ∀ p, f'.balance p = 0 :=
    addFactor_deficit_balance_eq_zero f L h_surplus h_deficit_large _ h_prod
      (deficitMultiset_prod_pos f L) rfl
  have hf'_imb : f'.total_imbalance = 0 :=
    Finset.sum_eq_zero fun p _ ↦ by simp [h_zero_bal p]
  obtain ⟨p₀, hp₀_mem, _, hp₀_bal⟩ := hf
  have hn_pos : 0 < n := (prime_of_mem_primesBelow hp₀_mem).pos.trans_le
    (Nat.lt_succ_iff.mp (mem_primesBelow.mp hp₀_mem).1)
  have hf'_score : f'.score L ≤ f.score L := by
    rw [score_eq (Finset.sum_eq_zero fun p _ ↦ by simp [h_zero_bal p])]
    unfold score
    split_ifs with h
    · rw [addFactor_waste]
      have h_log_ineq : Real.log (n / (deficitMultiset f L).prod) ≤ Real.log n :=
        Real.log_le_log (div_pos (Nat.cast_pos.mpr hn_pos)
          (Nat.cast_pos.mpr (deficitMultiset_prod_pos f L)))
          (div_le_self (Nat.cast_nonneg _) (by exact_mod_cast deficitMultiset_prod_pos f L))
      have h_sum_nonneg : 0 ≤ ∑ p ∈ (n + 1).primesBelow,
          if f.balance p > 0 then (f.balance p : ℝ) * Real.log p
          else if p ≤ L then (-f.balance p : ℝ) * Real.log L
          else (-f.balance p : ℝ) * Real.log (n / p) :=
        Finset.sum_nonneg fun p hp ↦ by
          split_ifs with h1 h2
          · linarith [h_surplus p]
          · exact mul_nonneg (by simp; linarith [h_surplus p])
              (Real.log_nonneg (by norm_cast; linarith [(prime_of_mem_primesBelow hp).two_le]))
          · have h_bal_zero : f.balance p = 0 :=
              le_antisymm (h_surplus p) (not_lt.mp fun hlt ↦ h2 (h_deficit_large p hlt))
            simp [h_bal_zero]
      linarith
    · simp_all [total_imbalance]
  have h_imb_pos : 0 < f.total_imbalance :=
    Finset.single_le_sum (fun _ _ ↦ Nat.zero_le _) hp₀_mem |>.trans_lt'
      (Int.natAbs_pos.mpr hp₀_bal.ne)
  exact ⟨f', hf'_imb ▸ h_imb_pos, hf'_score⟩

/-- Adding a submultiset `M` of deficit primes to a factorization reduces the total imbalance
by `M.card`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean#L432).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f920001904e0a69cdcc5a1042bc956cb81fd55a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
