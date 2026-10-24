# Factorization.score_le_of_add_submultiset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ecfc85a0-c9c8-d065-4551-f1a35fba7811",
  "kind": "lemma",
  "lexical_name": "Factorization.score_le_of_add_submultiset",
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
  "slug": "factorization-score-le-of-add-submultiset--a0cd0f0a86e8a86b85eaa5db",
  "source": {
    "blob": "fe7d44fd48f40aca7992cad68460a674c8831432",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 663,
    "line": 606,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0cd0f0a86e8a86b85eaa5db4dcdb419e16ab84a0d89676bd946c71876775a4f",
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

Occurrence: `result:ecfc85a0-c9c8-d065-4551-f1a35fba7811`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 606–663.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Factorization.score_le_of_add_submultiset {n : ℕ} (f : Factorization n) (L : ℕ)
    (M : Multiset ℕ) (hM_le : M ≤ deficitMultiset f L)
    (m : ℕ) (hm : m ≤ n) (hm_pos : 0 < m) (h_m_prod : m = M.prod)
    (h_prod_gt : n < m * L) (hM_card_pos : 0 < M.card) (hL_ge_2 : 2 ≤ L) :
    (addFactor f m hm hm_pos).score L ≤ f.score L := by
  unfold score
  let f' := addFactor f m hm hm_pos
  have h_sum_eq : (∑ p ∈ (n + 1).primesBelow,
      if f'.balance p > 0 then (f'.balance p : ℝ) * Real.log p
      else if p ≤ L then -(f'.balance p : ℝ) * Real.log L
      else -(f'.balance p : ℝ) * Real.log (n / p)) -
    (∑ p ∈ (n + 1).primesBelow,
      if f.balance p > 0 then (f.balance p : ℝ) * Real.log p
      else if p ≤ L then -(f.balance p : ℝ) * Real.log L
      else -(f.balance p : ℝ) * Real.log (n / p)) = -M.card * Real.log L := by
    convert score_sum_change_multiset f f' L M hM_le (fun p _ ↦ ?_) using 1
    · norm_num [Finset.sum_ite]
    · simp only [f', addFactor_balance]
      rw [h_m_prod, factorization_prod_eq_count (fun q hq ↦
        (mem_deficitMultiset f L q (Multiset.mem_of_le hM_le hq)).1)]
  have h_waste_eq : f'.waste = f.waste + Real.log (n / m) := addFactor_waste f m hm hm_pos
  have h_score_diff : f'.waste + (∑ p ∈ (n + 1).primesBelow,
      if f'.balance p > 0 then (f'.balance p : ℝ) * Real.log p
      else if p ≤ L then -(f'.balance p : ℝ) * Real.log L
      else -(f'.balance p : ℝ) * Real.log (n / p)) ≤
    (f.waste + (∑ p ∈ (n + 1).primesBelow,
      if f.balance p > 0 then (f.balance p : ℝ) * Real.log p
      else if p ≤ L then -(f.balance p : ℝ) * Real.log L
      else -(f.balance p : ℝ) * Real.log (n / p))) + (Real.log n - Real.log m - Real.log L) := by
    rw [Real.log_div (by norm_cast; omega) (by positivity)] at h_waste_eq
    nlinarith [show (M.card : ℝ) ≥ 1 by norm_cast,
      log_nonneg (show (L : ℝ) ≥ 1 by norm_cast; omega),
        log_le_log (by positivity) (by norm_cast : (m : ℝ) ≤ n)]
  split_ifs with h_imb_pos h_imb_zero <;> norm_num at *
  · have h_log_sum : Real.log m + Real.log L ≥ Real.log n := by
      rw [← log_mul (by positivity) (by positivity)]
      exact log_le_log (by norm_cast; omega) (by norm_cast; omega)
    linarith
  · have h_bal_zero : ∀ p ∈ (n + 1).primesBelow, f.balance p = 0 := by
      unfold total_imbalance at h_imb_zero
      aesop
    have h_deficit_empty : deficitMultiset f L = 0 := by
      unfold deficitMultiset
      aesop
    simp [Multiset.le_zero.mp (h_deficit_empty ▸ hM_le)] at hM_card_pos
  · linarith [log_nonneg (show (m : ℝ) ≥ 1 by norm_cast),
      log_nonneg (show (L : ℝ) ≥ 1 by norm_cast; omega)]
  · refine h_score_diff.trans ?_
    norm_num [add_assoc]
    rw [← log_mul (by positivity) (by positivity), log_le_log_iff] <;> norm_cast <;> nlinarith

@[blueprint
  "score-lower-1"
  (statement := /-- If there is a prime $p$ in surplus, one can remove it without increasing the
  score. -/)
  (proof := /-- Locate a factor $a_i$ that contains the surplus prime $p$, then
  replace $a_i$ with $a_i/p$.-/)
  (latexEnv := "sublemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean#L606).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe7d44fd48f40aca7992cad68460a674c8831432` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
