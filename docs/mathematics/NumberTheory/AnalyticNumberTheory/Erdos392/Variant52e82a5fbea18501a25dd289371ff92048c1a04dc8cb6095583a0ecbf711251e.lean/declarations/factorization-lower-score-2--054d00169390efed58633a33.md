# Factorization.lower_score_2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef1d8a22-d94d-3f69-4b6e-d926fb15e190",
  "kind": "theorem",
  "lexical_name": "Factorization.lower_score_2",
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
  "slug": "factorization-lower-score-2--054d00169390efed58633a33",
  "source": {
    "blob": "fe7d44fd48f40aca7992cad68460a674c8831432",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 760,
    "line": 682,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:054d00169390efed58633a3388ba68386e36c47d539b43d7a5d47830fc81c77d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef1d8a22-d94d-3f69-4b6e-d926fb15e190`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 682–760.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Factorization.lower_score_2 {n : ℕ} (f : Factorization n) (L : ℕ)
    (hf : ∃ p ∈ (n + 1).primesBelow, p > L ∧ f.balance p < 0) :
    ∃ f' : Factorization n,
      f'.total_imbalance < f.total_imbalance ∧ f'.score L ≤ f.score L := by
  obtain ⟨p, hp_mem, hp_gt_L, hp_balance⟩ := hf
  have hp := prime_of_mem_primesBelow hp_mem
  set f' : Factorization n := ⟨f.a + {p}, fun m hm => by
    simp only [Multiset.mem_add, Multiset.mem_singleton] at hm
    rcases hm with hm | rfl
    · exact f.ha m hm
    · exact le_of_lt_succ (lt_of_mem_primesBelow hp_mem),
    fun m hm ↦ by
    simp only [Multiset.mem_add, Multiset.mem_singleton] at hm
    rcases hm with hm | rfl
    · exact f.hpos m hm
    · exact hp.pos⟩
  have h_balance_p : f'.balance p = f.balance p + 1 := by
    unfold balance sum
    simp only [show f'.a = f.a + {p} from rfl, Multiset.map_add, Multiset.sum_add,
      Multiset.map_singleton, Multiset.sum_singleton, Prime.factorization_self hp]
    omega
  have h_balance_q : ∀ q, q ≠ p → f'.balance q = f.balance q := fun q hq ↦ by
    have hq_fac : p.factorization q = 0 := by
      rw [Prime.factorization hp]
      simp [hq.symm]
    unfold balance sum
    simp only [show f'.a = f.a + {p} from rfl, Multiset.map_add, Multiset.sum_add,
      Multiset.map_singleton, Multiset.sum_singleton, hq_fac, add_zero]
  have h_total_imbalance : f'.total_imbalance < f.total_imbalance := by
    refine Finset.sum_lt_sum (fun q _ ↦ ?_) ⟨p, hp_mem, by rw [h_balance_p]; omega⟩
    by_cases hq : q = p
    · subst hq; rw [h_balance_p]; omega
    · rw [h_balance_q q hq]
  have h_waste : f'.waste ≤ f.waste + Real.log (n / p) := by
    unfold waste sum
    simp only [show f'.a = f.a + {p} from rfl, Multiset.map_add, Multiset.sum_add,
      Multiset.map_singleton, Multiset.sum_singleton]
    linarith
  have h_sum_q : ∀ q ∈ (n + 1).primesBelow, q ≠ p →
      (if f'.balance q > 0 then (f'.balance q : ℝ) * Real.log q
       else if q ≤ L then (-f'.balance q) * Real.log L else (-f'.balance q) * Real.log (n / q)) =
      (if f.balance q > 0 then (f.balance q : ℝ) * Real.log q
       else if q ≤ L then (-f.balance q) * Real.log L
       else (-f.balance q) * Real.log (n / q)) := by
    intro q _ hqp
    rw [h_balance_q q hqp]
  have h_term_p : (if f'.balance p > 0 then (f'.balance p : ℝ) * Real.log p
      else if p ≤ L then (-f'.balance p) * Real.log L else (-f'.balance p) * Real.log (n / p)) ≤
      (if f.balance p > 0 then (f.balance p : ℝ) * Real.log p
      else if p ≤ L then (-f.balance p) * Real.log L else (-f.balance p) * Real.log (n / p)) -
      Real.log (n / p) := by
    rw [h_balance_p]
    split_ifs <;> try linarith
    push_cast
    ring_nf
    norm_num
  have h_sum_term : ∑ q ∈ (n + 1).primesBelow,
      (if f'.balance q > 0 then (f'.balance q : ℝ) * Real.log q
       else if q ≤ L then (-f'.balance q) * Real.log L
       else (-f'.balance q) * Real.log (n / q)) ≤
      ∑ q ∈ (n + 1).primesBelow,
      (if f.balance q > 0 then (f.balance q : ℝ) * Real.log q
       else if q ≤ L then (-f.balance q) * Real.log L else (-f.balance q) * Real.log (n / q)) -
      Real.log (n / p) := by
    rw [Finset.sum_eq_add_sum_diff_singleton_of_mem hp_mem, Finset.sum_eq_add_sum_diff_singleton_of_mem hp_mem]
    have h_rest := Finset.sum_congr rfl fun x hx ↦
      h_sum_q x (Finset.mem_sdiff.mp hx).1
        (fun h ↦ (Finset.mem_sdiff.mp hx).2 (Finset.mem_singleton.mpr h))
    linarith
  have h_penalty : (if f'.total_imbalance > 0 then Real.log n else 0) ≤
      (if f.total_imbalance > 0 then Real.log n else 0) := by
    split_ifs <;> first | linarith | positivity
  have h_score : f'.score L ≤ f.score L := by
    unfold score
    linarith
  exact ⟨f', h_total_imbalance, h_score⟩

/-- Case 2a of `lower_score_3`: If `L > n` and there is a deficit prime, we can add it to reduce
the score. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean#L682).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe7d44fd48f40aca7992cad68460a674c8831432` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
