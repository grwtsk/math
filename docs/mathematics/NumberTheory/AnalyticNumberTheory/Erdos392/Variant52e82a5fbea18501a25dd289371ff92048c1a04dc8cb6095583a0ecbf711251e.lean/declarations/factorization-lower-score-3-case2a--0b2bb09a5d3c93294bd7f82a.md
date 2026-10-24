# Factorization.lower_score_3_case2a

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d1d359e2-6596-3d25-09f8-4c15f25c3dbd",
  "kind": "lemma",
  "lexical_name": "Factorization.lower_score_3_case2a",
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
  "slug": "factorization-lower-score-3-case2a--0b2bb09a5d3c93294bd7f82a",
  "source": {
    "blob": "fe7d44fd48f40aca7992cad68460a674c8831432",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 806,
    "line": 761,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b2bb09a5d3c93294bd7f82a731d6fcff5cce724fbc1ecf2ecfc829e9a9248f9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1d359e2-6596-3d25-09f8-4c15f25c3dbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 761–806.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Factorization.lower_score_3_case2a {n : ℕ} (f : Factorization n) (L : ℕ)
    (h_surplus : ∀ p, f.balance p ≤ 0)
    (hf : ∃ p ∈ (n + 1).primesBelow, p ≤ L ∧ f.balance p < 0) (hL_gt_n : L > n) :
    ∃ f' : Factorization n,
      f'.total_imbalance < f.total_imbalance ∧ f'.score L ≤ f.score L := by
  obtain ⟨p, hp_mem, hp_le_L, hp_def⟩ := hf
  have hp_le_n : p ≤ n := Nat.lt_succ_iff.mp (mem_primesBelow.mp hp_mem).1
  have hp_pos : 0 < p := (prime_of_mem_primesBelow hp_mem).pos
  have hn_pos : 0 < n := hp_pos.trans_le hp_le_n
  have hp_prime : p.Prime := prime_of_mem_primesBelow hp_mem
  have h_imb : (addFactor f p hp_le_n hp_pos).total_imbalance = f.total_imbalance - 1 := by
    have hM : {p} ≤ deficitMultiset f L := Multiset.singleton_le.mpr <|
      Multiset.mem_bind.mpr ⟨p, Finset.mem_filter.mpr ⟨hp_mem, hp_le_L, hp_def⟩,
        Multiset.mem_replicate.mpr ⟨(Int.natAbs_pos.mpr hp_def.ne).ne', rfl⟩⟩
    simpa using addFactor_submultiset_total_imbalance f L h_surplus {p} hM p
      hp_le_n hp_pos (Multiset.prod_singleton (a := p)).symm
  have h_bal : (addFactor f p hp_le_n hp_pos).balance p = f.balance p + 1 := by
    rw [addFactor_balance, hp_prime.factorization, Finsupp.single_eq_same]; ring
  have h_bal_eq : ∀ q ∈ (n + 1).primesBelow, q ≠ p →
      (addFactor f p hp_le_n hp_pos).balance q = f.balance q := fun q hq hq_ne_p ↦ by
    rw [addFactor_balance, factorization_eq_zero_of_not_dvd, Int.ofNat_zero, add_zero]
    exact fun hdvd ↦
      hq_ne_p ((prime_dvd_prime_iff_eq (prime_of_mem_primesBelow hq) hp_prime).mp hdvd)
  have h_score_sum := score_sum_change f (addFactor f p hp_le_n hp_pos) L p hp_mem hp_le_L hp_def
    h_bal h_bal_eq
  have h_waste := addFactor_waste f p hp_le_n hp_pos
  have h_total_imb_pos : f.total_imbalance > 0 :=
    (Int.natAbs_pos.mpr hp_def.ne).trans_le
      (Finset.single_le_sum (fun q _ ↦ (Int.natAbs (f.balance q)).zero_le) hp_mem)
  have h_imbalance_penalty :
      (addFactor f p hp_le_n hp_pos).score L ≤ f.score L + Real.log (n / p) - Real.log L := by
    unfold score at *
    have h_log_n : log (n : ℝ) ≥ 0 := log_nonneg (by exact_mod_cast hn_pos)
    split_ifs at * <;> linarith [h_score_sum, h_waste, h_total_imb_pos]
  refine ⟨addFactor f p hp_le_n hp_pos, ?_, h_imbalance_penalty.trans ?_⟩
  · exact h_imb ▸ sub_lt h_total_imb_pos one_pos
  · rw [add_sub_assoc]
    refine add_le_of_nonpos_right (sub_nonpos_of_le (log_le_log (by positivity) ?_))
    rw [div_le_iff₀ (by positivity : (0 : ℝ) < p)]
    have h1 : (n : ℝ) * 1 ≤ n * p := by
      exact_mod_cast mul_le_mul_left n <| one_le_iff_ne_zero.mpr hp_pos.ne'
    have h2 : (n : ℝ) * p < L * p := by exact_mod_cast mul_lt_mul_of_pos_right hL_gt_n hp_pos
    linarith

/-- Case 2b of `lower_score_3`: If `L ≤ n` and the product of deficit primes is `> n`,
we can find a submultiset to add that reduces the score. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean#L761).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe7d44fd48f40aca7992cad68460a674c8831432` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
