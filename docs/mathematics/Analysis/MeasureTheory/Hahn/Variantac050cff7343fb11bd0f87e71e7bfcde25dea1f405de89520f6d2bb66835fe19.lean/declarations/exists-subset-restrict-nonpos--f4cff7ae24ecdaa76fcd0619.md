# exists_subset_restrict_nonpos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "927d111e53492a40ba554a23b656cc771ec2228b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 271,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/ac050cff7343fb11bd0f87e71e7bfcde25dea1f405de89520f6d2bb66835fe19.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:89e37c57-8832-22ff-53d5-aeb4a95d6c15",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:da1c4435-f566-b701-8724-f94854389d0e",
  "kind": "theorem",
  "lexical_name": "exists_subset_restrict_nonpos",
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
  "slug": "exists-subset-restrict-nonpos--f4cff7ae24ecdaa76fcd0619",
  "source": {
    "blob": "927d111e53492a40ba554a23b656cc771ec2228b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 271,
    "path": "GRWTSK/Analysis/MeasureTheory/Hahn/Variantac050cff7343fb11bd0f87e71e7bfcde25dea1f405de89520f6d2bb66835fe19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4cff7ae24ecdaa76fcd06199894ab14c260218024fe19d616f0f09b08d722b3",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Hahn/Variantac050cff7343fb11bd0f87e71e7bfcde25dea1f405de89520f6d2bb66835fe19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da1c4435-f566-b701-8724-f94854389d0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_subset_restrict_nonpos (hi : s i < 0) :
    ∃ j : Set α, MeasurableSet j ∧ j ⊆ i ∧ s ≤[j] 0 ∧ s j < 0 := by
  have hi₁ : MeasurableSet i := by_contradiction fun h => ne_of_lt hi <| s.not_measurable h
  by_cases h : s ≤[i] 0; · exact ⟨i, hi₁, Set.Subset.refl _, h, hi⟩
  by_cases hn : ∀ n : ℕ, ¬s ≤[i \ ⋃ l < n, restrictNonposSeq s i l] 0
  swap; · exact exists_subset_restrict_nonpos' hi₁ hi hn
  set A := i \ ⋃ l, restrictNonposSeq s i l with hA
  set bdd : ℕ → ℕ := fun n => findExistsOneDivLT s (i \ ⋃ k ≤ n, restrictNonposSeq s i k)
  have hn' : ∀ n : ℕ, ¬s ≤[i \ ⋃ l ≤ n, restrictNonposSeq s i l] 0 := by
    intro n
    convert! hn (n + 1) using 5 <;>
      · ext l
        simp only [exists_prop, Set.mem_iUnion, and_congr_left_iff]
        exact fun _ => Nat.lt_succ_iff.symm
  have h₁ : s i = s A + ∑' l, s (restrictNonposSeq s i l) := by
    rw [hA, ← s.of_disjoint_iUnion, add_comm, of_add_of_sdiff]
    · exact MeasurableSet.iUnion fun _ => restrictNonposSeq_measurableSet _
    exacts [hi₁, Set.iUnion_subset fun _ => restrictNonposSeq_subset _, fun _ =>
      restrictNonposSeq_measurableSet _, restrictNonposSeq_disjoint]
  have h₂ : s A ≤ s i := by
    rw [h₁]
    apply le_add_of_nonneg_right
    exact tsum_nonneg fun n => le_of_lt (measure_of_restrictNonposSeq h _ (hn n))
  have h₃' : Summable fun n => (1 / (bdd n + 1) : ℝ) := by
    have : Summable fun l => s (restrictNonposSeq s i l) :=
      HasSum.summable
        (s.m_iUnion (fun _ => restrictNonposSeq_measurableSet _) restrictNonposSeq_disjoint)
    refine .of_nonneg_of_le (fun n => ?_) (fun n => ?_)
        (this.comp_injective Nat.succ_injective)
    · exact le_of_lt Nat.one_div_pos_of_nat
    · exact le_of_lt (restrictNonposSeq_lt n (hn' n))
  have h₃ : Tendsto (fun n => (bdd n : ℝ) + 1) atTop atTop := by
    simp only [one_div] at h₃'
    exact Summable.tendsto_atTop_of_pos h₃' fun n => Nat.cast_add_one_pos (bdd n)
  have h₄ : Tendsto (fun n => (bdd n : ℝ)) atTop atTop := by
    convert! atTop.tendsto_atTop_add_const_right (-1) h₃; simp
  have A_meas : MeasurableSet A :=
    hi₁.diff (MeasurableSet.iUnion fun _ => restrictNonposSeq_measurableSet _)
  refine ⟨A, A_meas, Set.sdiff_subset, ?_, h₂.trans_lt hi⟩
  by_contra hnn
  rw [restrict_le_restrict_iff _ _ A_meas] at hnn; push Not at hnn
  obtain ⟨E, hE₁, hE₂, hE₃⟩ := hnn
  have : ∃ k, 1 ≤ bdd k ∧ 1 / (bdd k : ℝ) < s E := by
    rw [tendsto_atTop_atTop] at h₄
    obtain ⟨k, hk⟩ := h₄ (max (1 / s E + 1) 1)
    refine ⟨k, ?_, ?_⟩
    · have hle := le_of_max_le_right (hk k le_rfl)
      norm_cast at hle
    · have : 1 / s E < bdd k := by
        linarith only [le_of_max_le_left (hk k le_rfl)]
      rw [one_div] at this ⊢
      exact inv_lt_of_inv_lt₀ hE₃ this
  obtain ⟨k, hk₁, hk₂⟩ := this
  have hA' : A ⊆ i \ ⋃ l ≤ k, restrictNonposSeq s i l :=
    Set.sdiff_subset_sdiff_right (Set.iUnion₂_subset_iUnion _ _)
  refine
    findExistsOneDivLT_min (hn' k) (Nat.sub_lt hk₁ Nat.zero_lt_one)
      ⟨E, Set.Subset.trans hE₂ hA', hE₁, ?_⟩
  convert! hk₂; norm_cast
  exact tsub_add_cancel_of_le hk₁

end ExistsSubsetRestrictNonpos

/-- The set of measures of the set of measurable negative sets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Hahn/Variantac050cff7343fb11bd0f87e71e7bfcde25dea1f405de89520f6d2bb66835fe19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Hahn/Variantac050cff7343fb11bd0f87e71e7bfcde25dea1f405de89520f6d2bb66835fe19.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `927d111e53492a40ba554a23b656cc771ec2228b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
