# limsup_eq_tendsto_sum_indicator_nat_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b74ea00a047a9c4ce5e8ec4f3d6afd4fd6b5c4a8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 486,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:decf87a8-9889-513b-6c59-b75950f7e7d7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c652cf01-20ab-508c-5dc8-5bc93dc3a8d6",
  "kind": "theorem",
  "lexical_name": "limsup_eq_tendsto_sum_indicator_nat_atTop",
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
  "slug": "limsup-eq-tendsto-sum-indicator-nat-attop--6ba52a52680e107bb8bcaa2f",
  "source": {
    "blob": "b74ea00a047a9c4ce5e8ec4f3d6afd4fd6b5c4a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 543,
    "line": 486,
    "path": "GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ba52a52680e107bb8bcaa2fdaadeb6c2f8141bdd4a23b8f65be5c551e6b853b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c652cf01-20ab-508c-5dc8-5bc93dc3a8d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 486–543.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem limsup_eq_tendsto_sum_indicator_nat_atTop (s : ℕ → Set α) :
    limsup s atTop = { ω | Tendsto
      (fun n ↦ ∑ k in Finset.range n, (s (k + 1)).indicator (1 : α → ℕ) ω) atTop atTop } := by
  ext ω
  simp only [limsup_eq_iInf_iSup_of_nat, ge_iff_le, Set.iSup_eq_iUnion, Set.iInf_eq_iInter,
    Set.mem_iInter, Set.mem_iUnion, exists_prop]
  constructor
  · intro hω
    refine' tendsto_atTop_atTop_of_monotone' (fun n m hnm ↦ Finset.sum_mono_set_of_nonneg
      (fun i ↦ Set.indicator_nonneg (fun _ _ ↦ zero_le_one) _) (Finset.range_mono hnm)) _
    rintro ⟨i, h⟩
    simp only [mem_upperBounds, Set.mem_range, forall_exists_index, forall_apply_eq_imp_iff'] at h
    induction' i with k hk
    · obtain ⟨j, hj₁, hj₂⟩ := hω 1
      refine' not_lt.2 (h <| j + 1)
        (lt_of_le_of_lt (Finset.sum_const_zero.symm : 0 = ∑ k in Finset.range (j + 1), 0).le _)
      refine' Finset.sum_lt_sum (fun m _ ↦ Set.indicator_nonneg (fun _ _ ↦ zero_le_one) _)
        ⟨j - 1, Finset.mem_range.2 (lt_of_le_of_lt (Nat.sub_le _ _) j.lt_succ_self), _⟩
      rw [Nat.sub_add_cancel hj₁, Set.indicator_of_mem hj₂]
      exact zero_lt_one
    · rw [imp_false] at hk
      push_neg at hk
      obtain ⟨i, hi⟩ := hk
      obtain ⟨j, hj₁, hj₂⟩ := hω (i + 1)
      replace hi : (∑ k in Finset.range i, (s (k + 1)).indicator 1 ω) = k + 1 :=
        le_antisymm (h i) hi
      refine' not_lt.2 (h <| j + 1) _
      rw [← Finset.sum_range_add_sum_Ico _ (i.le_succ.trans (hj₁.trans j.le_succ)), hi]
      refine' lt_add_of_pos_right _ _
      rw [(Finset.sum_const_zero.symm : 0 = ∑ k in Finset.Ico i (j + 1), 0)]
      refine' Finset.sum_lt_sum (fun m _ ↦ Set.indicator_nonneg (fun _ _ ↦ zero_le_one) _)
        ⟨j - 1, Finset.mem_Ico.2 ⟨(Nat.le_sub_iff_add_le (le_trans ((le_add_iff_nonneg_left _).2
          zero_le') hj₁)).2 hj₁, lt_of_le_of_lt (Nat.sub_le _ _) j.lt_succ_self⟩, _⟩
      rw [Nat.sub_add_cancel (le_trans ((le_add_iff_nonneg_left _).2 zero_le') hj₁),
        Set.indicator_of_mem hj₂]
      exact zero_lt_one
  · rintro hω i
    rw [Set.mem_setOf_eq, tendsto_atTop_atTop] at hω
    by_contra hcon
    push_neg at hcon
    obtain ⟨j, h⟩ := hω (i + 1)
    have : (∑ k in Finset.range j, (s (k + 1)).indicator 1 ω) ≤ i := by
      have hle : ∀ j ≤ i, (∑ k in Finset.range j, (s (k + 1)).indicator 1 ω) ≤ i := by
        refine' fun j hij ↦
          (Finset.sum_le_card_nsmul _ _ _ _ : _ ≤ (Finset.range j).card • 1).trans _
        · exact fun m _ ↦ Set.indicator_apply_le' (fun _ ↦ le_rfl) fun _ ↦ zero_le_one
        · simpa only [Finset.card_range, smul_eq_mul, mul_one]
      by_cases hij : j < i
      · exact hle _ hij.le
      · rw [← Finset.sum_range_add_sum_Ico _ (not_lt.1 hij)]
        suffices (∑ k in Finset.Ico i j, (s (k + 1)).indicator 1 ω) = 0 by
          rw [this, add_zero]
          exact hle _ le_rfl
        refine' Finset.sum_eq_zero fun m hm ↦ _
        exact Set.indicator_of_not_mem (hcon _ <| (Finset.mem_Ico.1 hm).1.trans m.le_succ) _
    exact not_le.2 (lt_of_lt_of_le i.lt_succ_self <| h _ le_rfl) this
#align limsup_eq_tendsto_sum_indicator_nat_at_top limsup_eq_tendsto_sum_indicator_nat_atTop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean#L486).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b74ea00a047a9c4ce5e8ec4f3d6afd4fd6b5c4a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
