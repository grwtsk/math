# map_sum_finset_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d1a71550b49276f7d20eab13a148752a1ce0fad2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 504,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a7/a782f8143bfc3bd8ba69ca58e5cfbcba3f080944a8e5e116af0ec5962a7bf49f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:983a1346-5e65-92ac-42f2-44003a6ee351",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b0570f3a-b9e5-dbd5-66ec-84d675913902",
  "kind": "theorem",
  "lexical_name": "map_sum_finset_aux",
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
  "slug": "map-sum-finset-aux--13bdfd076021949f22cf8b58",
  "source": {
    "blob": "d1a71550b49276f7d20eab13a148752a1ce0fad2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 645,
    "line": 504,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Varianta782f8143bfc3bd8ba69ca58e5cfbcba3f080944a8e5e116af0ec5962a7bf49f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13bdfd076021949f22cf8b58ed9455432f2426b86e39d6064d5033b18c65d63c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Varianta782f8143bfc3bd8ba69ca58e5cfbcba3f080944a8e5e116af0ec5962a7bf49f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0570f3a-b9e5-dbd5-66ec-84d675913902`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 504–645.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_sum_finset_aux [DecidableEq ι] [Fintype ι] {n : ℕ} (h : (∑ i, (A i).card) = n) :
    (f fun i => ∑ j in A i, g i j) = ∑ r in piFinset A, f fun i => g i (r i) := by
  letI := fun i => Classical.decEq (α i)
  induction' n using Nat.strong_induction_on with n IH generalizing A
  -- If one of the sets is empty, then all the sums are zero
  by_cases Ai_empty : ∃ i, A i = ∅
  · rcases Ai_empty with ⟨i, hi⟩
    have : ∑ j in A i, g i j = 0 := by rw [hi, Finset.sum_empty]
    rw [f.map_coord_zero i this]
    have : piFinset A = ∅ := by
      refine Finset.eq_empty_of_forall_not_mem fun r hr => ?_
      have : r i ∈ A i := mem_piFinset.mp hr i
      simp [hi] at this
    rw [this, Finset.sum_empty]
  push_neg at Ai_empty
  -- Otherwise, if all sets are at most singletons, then they are exactly singletons and the result
  -- is again straightforward
  by_cases Ai_singleton : ∀ i, (A i).card ≤ 1
  · have Ai_card : ∀ i, (A i).card = 1 := by
      intro i
      have pos : Finset.card (A i) ≠ 0 := by simp [Finset.card_eq_zero, Ai_empty i]
      have : Finset.card (A i) ≤ 1 := Ai_singleton i
      exact le_antisymm this (Nat.succ_le_of_lt (_root_.pos_iff_ne_zero.mpr pos))
    have :
      ∀ r : ∀ i, α i, r ∈ piFinset A → (f fun i => g i (r i)) = f fun i => ∑ j in A i, g i j := by
      intro r hr
      congr with i
      have : ∀ j ∈ A i, g i j = g i (r i) := by
        intro j hj
        congr
        apply Finset.card_le_one_iff.1 (Ai_singleton i) hj
        exact mem_piFinset.mp hr i
      simp only [Finset.sum_congr rfl this, Finset.mem_univ, Finset.sum_const, Ai_card i, one_nsmul]
    simp only [Finset.sum_congr rfl this, Ai_card, card_piFinset, prod_const_one, one_nsmul,
      Finset.sum_const]
  -- Remains the interesting case where one of the `A i`, say `A i₀`, has cardinality at least 2.
  -- We will split into two parts `B i₀` and `C i₀` of smaller cardinality, let `B i = C i = A i`
  -- for `i ≠ i₀`, apply the inductive assumption to `B` and `C`, and add up the corresponding
  -- parts to get the sum for `A`.
  push_neg at Ai_singleton
  obtain ⟨i₀, hi₀⟩ : ∃ i, 1 < (A i).card := Ai_singleton
  obtain ⟨j₁, j₂, _, hj₂, _⟩ : ∃ j₁ j₂, j₁ ∈ A i₀ ∧ j₂ ∈ A i₀ ∧ j₁ ≠ j₂ :=
    Finset.one_lt_card_iff.1 hi₀
  let B := Function.update A i₀ (A i₀ \ {j₂})
  let C := Function.update A i₀ {j₂}
  have B_subset_A : ∀ i, B i ⊆ A i := by
    intro i
    by_cases hi : i = i₀
    · rw [hi]
      simp only [sdiff_subset, update_same]
    · simp only [hi, update_noteq, Ne.def, not_false_iff, Finset.Subset.refl]
  have C_subset_A : ∀ i, C i ⊆ A i := by
    intro i
    by_cases hi : i = i₀
    · rw [hi]
      simp only [hj₂, Finset.singleton_subset_iff, update_same]
    · simp only [hi, update_noteq, Ne.def, not_false_iff, Finset.Subset.refl]
  -- split the sum at `i₀` as the sum over `B i₀` plus the sum over `C i₀`, to use additivity.
  have A_eq_BC :
    (fun i => ∑ j in A i, g i j) =
      Function.update (fun i => ∑ j in A i, g i j) i₀
        ((∑ j in B i₀, g i₀ j) + ∑ j in C i₀, g i₀ j) := by
    ext i
    by_cases hi : i = i₀
    · rw [hi, update_same]
      have : A i₀ = B i₀ ∪ C i₀ := by
        simp only [Function.update_same, Finset.sdiff_union_self_eq_union]
        symm
        simp only [hj₂, Finset.singleton_subset_iff, Finset.union_eq_left_iff_subset]
      rw [this]
      refine Finset.sum_union <| Finset.disjoint_right.2 fun j hj => ?_
      have : j = j₂ := by
        simpa using hj
      rw [this]
      simp only [mem_sdiff, eq_self_iff_true, not_true, not_false_iff, Finset.mem_singleton,
        update_same, and_false_iff]
    · simp [hi]
  have Beq :
    Function.update (fun i => ∑ j in A i, g i j) i₀ (∑ j in B i₀, g i₀ j) = fun i =>
      ∑ j in B i, g i j := by
    ext i
    by_cases hi : i = i₀
    · rw [hi]
      simp only [update_same]
    · simp only [hi, update_noteq, Ne.def, not_false_iff]
  have Ceq :
    Function.update (fun i => ∑ j in A i, g i j) i₀ (∑ j in C i₀, g i₀ j) = fun i =>
      ∑ j in C i, g i j := by
    ext i
    by_cases hi : i = i₀
    · rw [hi]
      simp only [update_same]
    · simp only [hi, update_noteq, Ne.def, not_false_iff]
  -- Express the inductive assumption for `B`
  have Brec : (f fun i => ∑ j in B i, g i j) = ∑ r in piFinset B, f fun i => g i (r i) := by
    have : (∑ i, Finset.card (B i)) < ∑ i, Finset.card (A i) := by
      refine'
        Finset.sum_lt_sum (fun i _ => Finset.card_le_of_subset (B_subset_A i))
          ⟨i₀, Finset.mem_univ _, _⟩
      have : {j₂} ⊆ A i₀ := by simp [hj₂]
      simp only [Finset.card_sdiff this, Function.update_same, Finset.card_singleton]
      exact Nat.pred_lt (ne_of_gt (lt_trans Nat.zero_lt_one hi₀))
    rw [h] at this
    exact IH _ this B rfl
  -- Express the inductive assumption for `C`
  have Crec : (f fun i => ∑ j in C i, g i j) = ∑ r in piFinset C, f fun i => g i (r i) := by
    have : (∑ i, Finset.card (C i)) < ∑ i, Finset.card (A i) :=
      Finset.sum_lt_sum (fun i _ => Finset.card_le_of_subset (C_subset_A i))
        ⟨i₀, Finset.mem_univ _, by simp [hi₀]⟩
    rw [h] at this
    exact IH _ this C rfl
  have D : Disjoint (piFinset B) (piFinset C) :=
    haveI : Disjoint (B i₀) (C i₀) := by simp
    piFinset_disjoint_of_disjoint B C this
  have pi_BC : piFinset A = piFinset B ∪ piFinset C := by
    apply Finset.Subset.antisymm
    · intro r hr
      by_cases hri₀ : r i₀ = j₂
      · apply Finset.mem_union_right
        refine mem_piFinset.2 fun i => ?_
        by_cases hi : i = i₀
        · have : r i₀ ∈ C i₀ := by simp [hri₀]
          rwa [hi]
        · simp [hi, mem_piFinset.1 hr i]
      · apply Finset.mem_union_left
        refine mem_piFinset.2 fun i => ?_
        by_cases hi : i = i₀
        · have : r i₀ ∈ B i₀ := by simp [hri₀, mem_piFinset.1 hr i₀]
          rwa [hi]
        · simp [hi, mem_piFinset.1 hr i]
    · exact
        Finset.union_subset (piFinset_subset _ _ fun i => B_subset_A i)
          (piFinset_subset _ _ fun i => C_subset_A i)
  rw [A_eq_BC]
  simp only [MultilinearMap.map_add, Beq, Ceq, Brec, Crec, pi_BC]
  rw [← Finset.sum_union D]
#align multilinear_map.map_sum_finset_aux MultilinearMap.map_sum_finset_aux

/-- If `f` is multilinear, then `f (Σ_{j₁ ∈ A₁} g₁ j₁, ..., Σ_{jₙ ∈ Aₙ} gₙ jₙ)` is the sum of
`f (g₁ (r 1), ..., gₙ (r n))` where `r` ranges over all functions with `r 1 ∈ A₁`, ...,
`r n ∈ Aₙ`. This follows from multilinearity by expanding successively with respect to each
coordinate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Varianta782f8143bfc3bd8ba69ca58e5cfbcba3f080944a8e5e116af0ec5962a7bf49f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Varianta782f8143bfc3bd8ba69ca58e5cfbcba3f080944a8e5e116af0ec5962a7bf49f.lean#L504).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1a71550b49276f7d20eab13a148752a1ce0fad2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
