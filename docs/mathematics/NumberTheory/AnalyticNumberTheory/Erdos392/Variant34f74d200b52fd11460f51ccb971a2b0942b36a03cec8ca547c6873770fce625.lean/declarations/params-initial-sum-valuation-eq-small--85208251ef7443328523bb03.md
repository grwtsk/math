# Params.initial.sum_valuation_eq_small

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
      "line": 1456,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:33b56d5b-dba0-fbc7-7d60-cad0b6421273",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c62e9a61-b045-4c7f-3351-57fe24e4feb5",
  "kind": "lemma",
  "lexical_name": "Params.initial.sum_valuation_eq_small",
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
  "slug": "params-initial-sum-valuation-eq-small--85208251ef7443328523bb03",
  "source": {
    "blob": "f920001904e0a69cdcc5a1042bc956cb81fd55a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1514,
    "line": 1456,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85208251ef7443328523bb032b511d46cd54bfaad495aaf9e4e66a260c2ca9e4",
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

Occurrence: `result:c62e9a61-b045-4c7f-3351-57fe24e4feb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1456–1514.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Params.initial.sum_valuation_eq_small (P : Params) {p : ℕ} (hp : p.Prime)
    (hp_le : p ≤ Real.sqrt P.n) (hp_gt : p > P.L) :
    (P.initial.a.map (·.factorization p)).sum =
    P.M * ∑ k ∈ Finset.Ico 1 (Nat.log p P.n + 1),
      (Finset.filter (p^k ∣ ·) (Finset.Ico (P.n - P.n / P.M) P.n)).card := by
  have h_sum_factorizations : (P.initial.a.map (·.factorization p)).sum =
      P.M * (∑ m ∈ Finset.Ico (P.n - P.n / P.M) P.n, m.factorization p) := by
    have h_sum_smooth : (P.initial.a.map (·.factorization p)).sum =
        P.M * (∑ m ∈ filter (fun m ↦ m ∈ smoothNumbers (P.n / P.L))
          (Ico (P.n - P.n / P.M) P.n), m.factorization p) := by
      simp only [initial, join, sum_replicate, sum_filter, filter_nsmul]
      simp only [Finset.sum_ite, sum_const_zero, add_zero]
      induction P.M with
      | zero => simp_all
      | succ n ih =>
        simp_all only [gt_iff_lt, add_smul, one_smul, Multiset.map_add, sum_add, succ_mul]
        congr! 1
        rw [Multiset.map_nsmul]
        induction n with
        | zero => simp_all
        | succ n' ih' =>
          simp_all only [Multiset.sum_nsmul, smul_eq_mul, succ_mul]
          congr! 1
    rw [h_sum_smooth, sum_filter_of_ne]
    intro m hm hmp
    specialize hmp
    contrapose! hmp
    simp_all +decide only [Finset.mem_Ico, factorization_eq_zero_iff, false_or]
    refine Or.inl fun h ↦ hmp <| initial.smooth_of_dvd_small_prime P hp_le (by grind)
      (Finset.mem_Ico.mpr ⟨by grind, by grind⟩) h
  have h_sum_factorizations_eq : ∀ m ∈ Finset.Ico (P.n - P.n / P.M) P.n, m.factorization p =
      ∑ k ∈ Ico 1 (Nat.log p P.n + 1), (if p ^ k ∣ m then 1 else 0) := by
    intro m hm
    have h_factorization_eq_sum : m.factorization p =
        ∑ k ∈ Finset.Ico 1 (Nat.factorization m p + 1),
        (if p ^ k ∣ m then 1 else 0) := by
      simp_all only [sum_congr rfl fun x hx ↦ if_pos <| dvd_trans (pow_dvd_pow _ <|
        Finset.mem_Ico.mp hx |>.2 |> Nat.lt_succ_iff.mp) <| ordProj_dvd .., succ_eq_add_one,
          sum_const, card_Ico, add_tsub_cancel_right, smul_eq_mul, mul_one]
    refine h_factorization_eq_sum.trans <| sum_subset ?_ ?_
    · simp +contextual only [Finset.subset_iff, Finset.mem_Ico, true_and, and_imp]
      refine fun k hk₁ hk₂ ↦ lt_succ_of_le (le_log_of_pow_le hp.one_lt ?_)
      linarith [Finset.mem_Ico.mp hm, le_of_dvd (pos_of_ne_zero (by aesop_cat)) (ordProj_dvd m p),
        Nat.pow_le_pow_right hp.one_lt.le (show k ≤ factorization m p from by grind)]
    · simp +contextual only [Finset.mem_Ico, true_and, not_lt, ite_eq_right_iff, one_ne_zero,
      imp_false, and_imp]
      intro x hx₁ hx₂ hx₃
      contrapose! hx₃
      rw [← factorization_le_iff_dvd] at hx₃ <;> norm_num at *
      · simpa [hp] using hx₃ p
      · exact fun h ↦ absurd h hp.ne_zero
      · rintro rfl
        norm_num at *
        exact hm.1.not_gt (div_lt_self hm.2 (by linarith [P.hM]))
  rw [h_sum_factorizations, Finset.sum_congr rfl h_sum_factorizations_eq, Finset.sum_comm,
    Finset.sum_congr rfl]
  aesop

/-- The balance of a small prime `p` is at least `-M * floor(log_p n)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean#L1456).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f920001904e0a69cdcc5a1042bc956cb81fd55a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
