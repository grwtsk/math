# quo_mul_prod_add_sum_rem_mul_prod_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "18cd6899ce3f65f061963587fccb57076e1151ff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 198,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6fbe44e5877c7c03c0a824932f141359952ac877ef4229243f710da4842c6098.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0e4d56b0-331e-ee0c-e77c-c6efe764d225",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:92d1379a-0672-d804-9a71-79fec2e05ec9",
  "kind": "theorem",
  "lexical_name": "quo_mul_prod_add_sum_rem_mul_prod_unique",
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
  "slug": "quo-mul-prod-add-sum-rem-mul-prod-unique--cf4717195a0adc8576f7a5a3",
  "source": {
    "blob": "18cd6899ce3f65f061963587fccb57076e1151ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 198,
    "path": "GRWTSK/Algebra/PartialFractions/Variant6fbe44e5877c7c03c0a824932f141359952ac877ef4229243f710da4842c6098.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf4717195a0adc8576f7a5a3b8237a8114543cfaf01f5d5022d4d118c196dc44",
  "verification": {
    "reference": "docs/verification/Algebra/PartialFractions/Variant6fbe44e5877c7c03c0a824932f141359952ac877ef4229243f710da4842c6098.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92d1379a-0672-d804-9a71-79fec2e05ec9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quo_mul_prod_add_sum_rem_mul_prod_unique {ι : Type*} [DecidableEq ι]
    {s : Finset ι} {g : ι → R[X]} (hg : ∀ i ∈ s, (g i).Monic)
    (hgg : Set.Pairwise s fun i j => IsCoprime (g i) (g j))
    {q₁ q₂ : R[X]} {r₁ r₂ : ι → R[X]}
    (hr₁ : ∀ i ∈ s, (r₁ i).degree < (g i).degree) (hr₂ : ∀ i ∈ s, (r₂ i).degree < (g i).degree)
    (hf : q₁ * (∏ i ∈ s, g i) + ∑ i ∈ s, r₁ i * (∏ k ∈ s.erase i, g k) =
      q₂ * (∏ i ∈ s, g i) + ∑ i ∈ s, r₂ i * (∏ k ∈ s.erase i, g k)) :
    q₁ = q₂ ∧ ∀ i ∈ s, r₁ i = r₂ i := by
  induction s using Finset.cons_induction with
  | empty => simpa using hf
  | cons i s hi ih =>
    rw [Finset.forall_mem_cons] at hg hr₁ hr₂
    have cop : IsCoprime (g i) (∏ i ∈ s, g i) := by
      clear *-hgg
      induction s using Finset.cons_induction with
      | empty => simp [isCoprime_one_right]
      | cons j s hj ih =>
        rw [Finset.prod_cons, IsCoprime.mul_right_iff]
        refine ⟨hgg (by simp) (by simp) fun hij => hi (by simp [hij]), ih ?_ ?_⟩
        · exact mt Finset.mem_cons_of_mem hi
        · exact hgg.mono (SetLike.coe_mono (Finset.cons_subset_cons.2 (Finset.subset_cons hj)))
    rw [Finset.prod_cons, Finset.sum_cons, Finset.sum_cons, Finset.erase_cons] at hf
    have hjs {j : ι} (hj : j ∈ s) : i ≠ j := fun hij => hi (hij ▸ hj)
    simp +contextual only [Finset.erase_cons_of_ne hi (hjs _),
      Finset.prod_cons, ← mul_left_comm (g i), ← Finset.mul_sum] at hf
    rw [add_left_comm, ← mul_add, add_left_comm, ← mul_add] at hf
    rw [← sub_eq_zero, add_sub_add_comm, ← sub_mul, ← mul_sub,
      ← neg_sub, neg_mul, neg_add_eq_sub, sub_eq_zero] at hf
    have hgid : g i ∣ r₂ i - r₁ i := cop.dvd_of_dvd_mul_right (hf ▸ dvd_mul_right _ _)
    rw [add_sub_add_comm, ← sub_mul, mul_add, ← mul_assoc,
      ← eq_sub_iff_add_eq', ← sub_mul, ← Finset.sum_sub_distrib] at hf
    simp only [← sub_mul] at hf
    have hpgd : ∏ i ∈ s, g i ∣ _ := cop.symm.dvd_of_dvd_mul_left (hf.symm ▸ dvd_mul_left _ _)
    have hdr : (r₂ i - r₁ i).degree < (g i).degree :=
      (degree_sub_le (r₂ i) (r₁ i)).trans_lt (max_lt hr₂.1 hr₁.1)
    have hr0 : r₂ i - r₁ i = 0 := (hg.1.not_dvd_of_degree_lt · hdr).mtr hgid
    have hpm : (∏ i ∈ s, g i).Monic := monic_prod_of_monic s g hg.2
    have hdp : (∑ i ∈ s, (r₁ i - r₂ i) * ∏ k ∈ s.erase i, g k).degree < (∏ i ∈ s, g i).degree := by
      refine (degree_sum_le _ _).trans_lt ((Finset.sup_lt_iff ?_).2 ?_)
      · rw [bot_lt_iff_ne_bot, degree_ne_bot]
        exact hpm.ne_zero_of_polynomial_ne fun h : r₂ i - r₁ i = g i => lt_irrefl _ (h ▸ hdr)
      · intro j hj
        rw [← Finset.mul_prod_erase s g hj, mul_comm (g j), (hg.2 j hj).degree_mul]
        refine (degree_mul_le (r₁ j - r₂ j) (∏ k ∈ s.erase j, g k)).trans_lt ?_
        have dnb : (∏ k ∈ s.erase j, g k).degree ≠ ⊥ := by
          rw [degree_ne_bot]
          exact (monic_prod_of_monic _ g
            fun j hj => hg.2 j (Finset.mem_of_mem_erase hj)).ne_zero_of_polynomial_ne
            fun h : r₂ i - r₁ i = g i => lt_irrefl _ (h ▸ hdr)
        rw [add_comm, WithBot.add_lt_add_iff_left dnb]
        exact (degree_sub_le (r₁ j) (r₂ j)).trans_lt (max_lt (hr₁.2 j hj) (hr₂.2 j hj))
    have hp0 : ∑ i ∈ s, (r₁ i - r₂ i) * ∏ k ∈ s.erase i, g k = 0 :=
      (hpm.not_dvd_of_degree_lt · hdp).mtr hpgd
    rw [hr0, hp0, mul_zero, zero_sub, neg_mul, eq_comm, neg_eq_zero,
      ← mul_rotate, (hpm.mul hg.1).mul_right_eq_zero_iff] at hf
    simp only [sub_mul, Finset.sum_sub_distrib] at hp0
    rw [sub_eq_zero] at hf hr0 hp0
    obtain ⟨-, hrr⟩ := ih hg.2 (hgg.mono (SetLike.coe_mono (Finset.subset_cons hi)))
      hr₁.2 hr₂.2 congr($hf * ∏ i ∈ s, g i + $hp0)
    exact ⟨hf, (Finset.forall_mem_cons hi (fun j => r₁ j = r₂ j)).2 ⟨hr0.symm, hrr⟩⟩

/-- Let `R` be a commutative ring and `f : R[X]`. Let `s` be a finite index set.
Let `g i` be a collection of monic and pairwise coprime polynomials indexed by `s`,
and for each `g i` let `n i` be a natural number. Then `f` can be written in the form
`(∏ i ∈ s, g i ^ n i) * (q + ∑ i ∈ s, ∑ j : Fin (n i), r i j / g i ^ (j + 1))`, where
`degree (r i j) < degree (g i)` and the denominator cancels formally.
See `quo_mul_prod_pow_add_sum_rem_mul_prod_pow_unique` for the uniqueness of this representation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PartialFractions/Variant6fbe44e5877c7c03c0a824932f141359952ac877ef4229243f710da4842c6098.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PartialFractions/Variant6fbe44e5877c7c03c0a824932f141359952ac877ef4229243f710da4842c6098.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18cd6899ce3f65f061963587fccb57076e1151ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
