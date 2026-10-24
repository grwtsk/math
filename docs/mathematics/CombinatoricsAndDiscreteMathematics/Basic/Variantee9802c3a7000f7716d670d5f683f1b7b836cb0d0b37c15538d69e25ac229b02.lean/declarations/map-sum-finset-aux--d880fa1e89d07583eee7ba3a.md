# map_sum_finset_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0868dcc8-df9b-72bd-bf84-c2b28d29645c",
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
  "slug": "map-sum-finset-aux--d880fa1e89d07583eee7ba3a",
  "source": {
    "blob": "59ca40d74cc428dda0374c2a4e15d58072dcc5e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 606,
    "line": 473,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantee9802c3a7000f7716d670d5f683f1b7b836cb0d0b37c15538d69e25ac229b02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d880fa1e89d07583eee7ba3ac187fa2f9e586ef27348ebf327433f3152572aff",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variantee9802c3a7000f7716d670d5f683f1b7b836cb0d0b37c15538d69e25ac229b02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0868dcc8-df9b-72bd-bf84-c2b28d29645c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 473–606.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_sum_finset_aux [DecidableEq ι] [Fintype ι] {n : ℕ} (h : (∑ i, #(A i)) = n) :
    (f fun i => ∑ j ∈ A i, g i j) = ∑ r ∈ piFinset A, f fun i => g i (r i) := by
  letI := fun i => Classical.decEq (α i)
  induction n using Nat.strong_induction_on generalizing A with | h n IH =>
  -- If one of the sets is empty, then all the sums are zero
  by_cases Ai_empty : ∃ i, A i = ∅
  · obtain ⟨i, hi⟩ : ∃ i, ∑ j ∈ A i, g i j = 0 := Ai_empty.imp fun i hi ↦ by simp [hi]
    have hpi : piFinset A = ∅ := by simpa
    rw [f.map_coord_zero i hi, hpi, Finset.sum_empty]
  push_neg at Ai_empty
  -- Otherwise, if all sets are at most singletons, then they are exactly singletons and the result
  -- is again straightforward
  by_cases Ai_singleton : ∀ i, #(A i) ≤ 1
  · have Ai_card : ∀ i, #(A i) = 1 := by
      intro i
      have pos : #(A i) ≠ 0 := by simp [Finset.card_eq_zero, Ai_empty i]
      have : #(A i) ≤ 1 := Ai_singleton i
      exact le_antisymm this (Nat.succ_le_of_lt (_root_.pos_iff_ne_zero.mpr pos))
    have :
      ∀ r : ∀ i, α i, r ∈ piFinset A → (f fun i => g i (r i)) = f fun i => ∑ j ∈ A i, g i j := by
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
  obtain ⟨i₀, hi₀⟩ : ∃ i, 1 < #(A i) := Ai_singleton
  obtain ⟨j₁, j₂, _, hj₂, _⟩ : ∃ j₁ j₂, j₁ ∈ A i₀ ∧ j₂ ∈ A i₀ ∧ j₁ ≠ j₂ :=
    Finset.one_lt_card_iff.1 hi₀
  let B := Function.update A i₀ (A i₀ \ {j₂})
  let C := Function.update A i₀ {j₂}
  have B_subset_A : ∀ i, B i ⊆ A i := by
    intro i
    by_cases hi : i = i₀
    · rw [hi]
      simp only [B, sdiff_subset, update_self]
    · simp only [B, hi, update_of_ne, Ne, not_false_iff, Finset.Subset.refl]
  have C_subset_A : ∀ i, C i ⊆ A i := by
    intro i
    by_cases hi : i = i₀
    · rw [hi]
      simp only [C, hj₂, Finset.singleton_subset_iff, update_self]
    · simp only [C, hi, update_of_ne, Ne, not_false_iff, Finset.Subset.refl]
  -- split the sum at `i₀` as the sum over `B i₀` plus the sum over `C i₀`, to use additivity.
  have A_eq_BC :
    (fun i => ∑ j ∈ A i, g i j) =
      Function.update (fun i => ∑ j ∈ A i, g i j) i₀
        ((∑ j ∈ B i₀, g i₀ j) + ∑ j ∈ C i₀, g i₀ j) := by
    ext i
    by_cases hi : i = i₀
    · rw [hi, update_self]
      have : A i₀ = B i₀ ∪ C i₀ := by
        simp only [B, C, Function.update_self, Finset.sdiff_union_self_eq_union]
        symm
        simp only [hj₂, Finset.singleton_subset_iff, Finset.union_eq_left]
      rw [this]
      refine Finset.sum_union <| Finset.disjoint_right.2 fun j hj => ?_
      have : j = j₂ := by
        simpa [C] using hj
      rw [this]
      simp only [B, mem_sdiff, eq_self_iff_true, not_true, not_false_iff, Finset.mem_singleton,
        update_self, and_false]
    · simp [hi]
  have Beq :
    Function.update (fun i => ∑ j ∈ A i, g i j) i₀ (∑ j ∈ B i₀, g i₀ j) = fun i =>
      ∑ j ∈ B i, g i j := by
    ext i
    by_cases hi : i = i₀
    · rw [hi]
      simp only [update_self]
    · simp only [B, hi, update_of_ne, Ne, not_false_iff]
  have Ceq :
    Function.update (fun i => ∑ j ∈ A i, g i j) i₀ (∑ j ∈ C i₀, g i₀ j) = fun i =>
      ∑ j ∈ C i, g i j := by
    ext i
    by_cases hi : i = i₀
    · rw [hi]
      simp only [update_self]
    · simp only [C, hi, update_of_ne, Ne, not_false_iff]
  -- Express the inductive assumption for `B`
  have Brec : (f fun i => ∑ j ∈ B i, g i j) = ∑ r ∈ piFinset B, f fun i => g i (r i) := by
    have : ∑ i, #(B i) < ∑ i, #(A i) := by
      refine sum_lt_sum (fun i _ => card_le_card (B_subset_A i)) ⟨i₀, mem_univ _, ?_⟩
      have : {j₂} ⊆ A i₀ := by simp [hj₂]
      simp only [B, Finset.card_sdiff this, Function.update_self, Finset.card_singleton]
      exact Nat.pred_lt (ne_of_gt (lt_trans Nat.zero_lt_one hi₀))
    rw [h] at this
    exact IH _ this B rfl
  -- Express the inductive assumption for `C`
  have Crec : (f fun i => ∑ j ∈ C i, g i j) = ∑ r ∈ piFinset C, f fun i => g i (r i) := by
    have : (∑ i, #(C i)) < ∑ i, #(A i) :=
      Finset.sum_lt_sum (fun i _ => Finset.card_le_card (C_subset_A i))
        ⟨i₀, Finset.mem_univ _, by simp [C, hi₀]⟩
    rw [h] at this
    exact IH _ this C rfl
  have D : Disjoint (piFinset B) (piFinset C) :=
    haveI : Disjoint (B i₀) (C i₀) := by simp [B, C]
    piFinset_disjoint_of_disjoint B C this
  have pi_BC : piFinset A = piFinset B ∪ piFinset C := by
    apply Finset.Subset.antisymm
    · intro r hr
      by_cases hri₀ : r i₀ = j₂
      · apply Finset.mem_union_right
        refine mem_piFinset.2 fun i => ?_
        by_cases hi : i = i₀
        · have : r i₀ ∈ C i₀ := by simp [C, hri₀]
          rwa [hi]
        · simp [C, hi, mem_piFinset.1 hr i]
      · apply Finset.mem_union_left
        refine mem_piFinset.2 fun i => ?_
        by_cases hi : i = i₀
        · have : r i₀ ∈ B i₀ := by simp [B, hri₀, mem_piFinset.1 hr i₀]
          rwa [hi]
        · simp [B, hi, mem_piFinset.1 hr i]
    · exact
        Finset.union_subset (piFinset_subset _ _ fun i => B_subset_A i)
          (piFinset_subset _ _ fun i => C_subset_A i)
  rw [A_eq_BC]
  simp only [MultilinearMap.map_update_add, Beq, Ceq, Brec, Crec, pi_BC]
  rw [← Finset.sum_union D]

/-- If `f` is multilinear, then `f (Σ_{j₁ ∈ A₁} g₁ j₁, ..., Σ_{jₙ ∈ Aₙ} gₙ jₙ)` is the sum of
`f (g₁ (r 1), ..., gₙ (r n))` where `r` ranges over all functions with `r 1 ∈ A₁`, ...,
`r n ∈ Aₙ`. This follows from multilinearity by expanding successively with respect to each
coordinate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variantee9802c3a7000f7716d670d5f683f1b7b836cb0d0b37c15538d69e25ac229b02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantee9802c3a7000f7716d670d5f683f1b7b836cb0d0b37c15538d69e25ac229b02.lean#L473).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59ca40d74cc428dda0374c2a4e15d58072dcc5e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
