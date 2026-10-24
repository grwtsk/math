# Factorization.addFactor_submultiset_total_imbalance

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
      "line": 479,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e039b140-c16f-e9cc-3d36-46641231c1f0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2e9714cc-28aa-ecec-605b-4ec7091a63ed",
  "kind": "lemma",
  "lexical_name": "Factorization.addFactor_submultiset_total_imbalance",
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
  "slug": "factorization-addfactor-submultiset-total-imbalance--8a4f41690fb0079b37900b6f",
  "source": {
    "blob": "f920001904e0a69cdcc5a1042bc956cb81fd55a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 528,
    "line": 479,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a4f41690fb0079b37900b6f98509c62c30eee8df2d09a1aad6eb5b73f17384d",
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

Occurrence: `result:2e9714cc-28aa-ecec-605b-4ec7091a63ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 479–528.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Factorization.addFactor_submultiset_total_imbalance {n : ℕ} (f : Factorization n) (L : ℕ)
    (h_surplus : ∀ p, f.balance p ≤ 0) (M : Multiset ℕ) (hM : M ≤ deficitMultiset f L)
    (m : ℕ) (hm : m ≤ n) (hm_pos : 0 < m) (h_m_prod : m = M.prod) :
    (addFactor f m hm hm_pos).total_imbalance = f.total_imbalance - M.card := by
  have h_bal : ∀ p ∈ (n + 1).primesBelow,
      (addFactor f m hm hm_pos).balance p = f.balance p + M.count p := fun p _ ↦ by
    rw [addFactor_balance, h_m_prod, factorization_prod_eq_count]
    exact fun q hq ↦ (mem_deficitMultiset f L q (Multiset.mem_of_le hM hq)).1
  have h_ptwise : ∀ p ∈ (n + 1).primesBelow,
      (f.balance p + M.count p).natAbs = (f.balance p).natAbs - M.count p := fun p _ ↦ by
    have h_count_le : M.count p ≤ (f.balance p).natAbs := by
      have := Multiset.count_le_of_le p hM
      rw [count_deficitMultiset] at this
      aesop
    have h_neg : f.balance p ≤ 0 := h_surplus p
    have h1 : ((f.balance p).natAbs : ℤ) = -f.balance p := Int.ofNat_natAbs_of_nonpos h_neg
    have h2 : ((f.balance p + M.count p).natAbs : ℤ) = -(f.balance p + M.count p) :=
      Int.ofNat_natAbs_of_nonpos (by omega : f.balance p + M.count p ≤ 0)
    omega
  have h_sum : ∑ p ∈ (n + 1).primesBelow, (f.balance p + M.count p).natAbs =
      ∑ p ∈ (n + 1).primesBelow, (f.balance p).natAbs -
        ∑ p ∈ (n + 1).primesBelow, M.count p := by
    have h_le : ∀ p ∈ (n + 1).primesBelow, M.count p ≤ (f.balance p).natAbs := fun p _ ↦ by
      have := Multiset.count_le_of_le p hM
      rw [count_deficitMultiset] at this
      aesop
    rw [Finset.sum_congr rfl h_ptwise]
    have h_add : ∑ p ∈ (n + 1).primesBelow, ((f.balance p).natAbs - M.count p + M.count p) =
        ∑ p ∈ (n + 1).primesBelow, (f.balance p).natAbs :=
      Finset.sum_congr rfl fun x hx ↦ Nat.sub_add_cancel (h_le x hx)
    rw [Finset.sum_add_distrib] at h_add
    omega
  have h_card_eq : ∀ {M : Multiset ℕ}, (∀ p ∈ M, p ∈ (n + 1).primesBelow) →
      M.card = ∑ p ∈ (n + 1).primesBelow, M.count p := fun {M} hM ↦ by
    induction M using Multiset.induction with
    | empty => simp
    | cons a M ih =>
      simp only [Multiset.card_cons, Multiset.count_cons]
      rw [ih (fun p hp ↦ hM p (Multiset.mem_cons_of_mem hp)), Finset.sum_add_distrib,
          Finset.sum_ite_eq' _ a, if_pos (hM a (Multiset.mem_cons_self a M))]
  convert h_sum using 2
  · simp only [total_imbalance]
    exact Finset.sum_congr rfl fun p hp ↦ congrArg Int.natAbs (h_bal p hp)
  · exact h_card_eq fun p hp ↦ by
      obtain ⟨a, ha, ha'⟩ := Multiset.mem_bind.mp (Multiset.mem_of_le hM hp)
      rw [Multiset.mem_replicate] at ha'
      exact ha'.2 ▸ (Finset.mem_filter.mp ha).1

/-- The change in the score sum when one deficit prime `p` (with `p ≤ L`) has its balance
increased by 1 (still `≤ 0`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean#L479).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f920001904e0a69cdcc5a1042bc956cb81fd55a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
