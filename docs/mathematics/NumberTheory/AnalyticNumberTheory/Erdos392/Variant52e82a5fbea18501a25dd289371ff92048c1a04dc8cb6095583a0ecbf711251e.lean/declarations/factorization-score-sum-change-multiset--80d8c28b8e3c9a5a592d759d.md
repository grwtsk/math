# Factorization.score_sum_change_multiset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:31c1d987-cca8-ed08-7bd3-c0813261a677",
  "kind": "lemma",
  "lexical_name": "Factorization.score_sum_change_multiset",
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
  "slug": "factorization-score-sum-change-multiset--80d8c28b8e3c9a5a592d759d",
  "source": {
    "blob": "fe7d44fd48f40aca7992cad68460a674c8831432",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 605,
    "line": 558,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80d8c28b8e3c9a5a592d759d6030405a2a7aee504210d926cb3305c3f4287304",
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

Occurrence: `result:31c1d987-cca8-ed08-7bd3-c0813261a677`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 558–605.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Factorization.score_sum_change_multiset {n : ℕ} (f f' : Factorization n) (L : ℕ)
    (M : Multiset ℕ) (hM_le : M ≤ deficitMultiset f L)
    (h_bal_eq : ∀ p ∈ (n + 1).primesBelow, f'.balance p = f.balance p + M.count p) :
    (∑ q ∈ (n + 1).primesBelow,
      if f'.balance q > 0 then (f'.balance q) * Real.log q
      else if q ≤ L then (-f'.balance q) * Real.log L
      else ↑(-f'.balance q) * Real.log (↑n / ↑q)) -
    (∑ q ∈ (n + 1).primesBelow,
      if f.balance q > 0 then ↑(f.balance q) * Real.log ↑q
      else if q ≤ L then (-f.balance q) * Real.log ↑L
      else ↑(-f.balance q) * Real.log (↑n / ↑q)) = -↑(M.card) * Real.log L := by
  have h_term : ∀ p ∈ (n + 1).primesBelow,
      (if f'.balance p > 0 then (f'.balance p : ℝ) * Real.log p
       else if p ≤ L then (-f'.balance p : ℝ) * Real.log L
       else (-f'.balance p : ℝ) * Real.log (n / p)) -
      (if f.balance p > 0 then (f.balance p : ℝ) * Real.log p
       else if p ≤ L then (-f.balance p : ℝ) * Real.log L
       else (-f.balance p : ℝ) * Real.log (n / p)) = -M.count p * Real.log L := by
    intro p hp
    by_cases hdef : f.balance p < 0
    · by_cases hL : p ≤ L <;> simp_all
      · split_ifs <;> try linarith
        have hcnt := Multiset.count_le_of_le p hM_le
        rw [count_deficitMultiset] at hcnt
        have : M.count p ≤ (f.balance p).natAbs := by grind
        linarith [abs_of_neg hdef]
      · have : M.count p = 0 := Nat.eq_zero_of_le_zero <|
          (count_deficitMultiset f L p ▸ if_neg (by omega)).symm ▸
            Multiset.count_le_of_le _ hM_le
        aesop
    · have : M.count p = 0 := Nat.eq_zero_of_le_zero <|
        (count_deficitMultiset f L p ▸ if_neg (by tauto)).symm ▸
          Multiset.count_le_of_le _ hM_le
      aesop
  have h_card : ∑ p ∈ (n + 1).primesBelow, M.count p = M.card := by
    have aux : ∀ {S : Multiset ℕ}, (∀ p ∈ S, p ∈ (n + 1).primesBelow) →
        ∑ p ∈ (n + 1).primesBelow, S.count p = S.card := by
      intro S hS; induction S using Multiset.induction <;> aesop
    refine aux fun p hp ↦ ?_
    have hmem := Multiset.mem_of_le hM_le hp
    simp only [deficitMultiset, filter_val, mem_bind, Multiset.mem_filter] at hmem ⊢
    rcases hmem with ⟨a, ⟨ha, _⟩, hp⟩
    exact (Multiset.mem_replicate.mp hp).2 ▸ ha
  simp_all only [gt_iff_lt, Int.cast_add, Int.cast_natCast, neg_add_rev, neg_mul, Int.cast_neg,
    ← sum_sub_distrib, sum_neg_distrib]
  rw [← h_card, Nat.cast_sum, Finset.sum_mul]

/-- Adding a submultiset `M` of deficit primes reduces the score if `n < M.prod * L`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean#L558).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe7d44fd48f40aca7992cad68460a674c8831432` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
