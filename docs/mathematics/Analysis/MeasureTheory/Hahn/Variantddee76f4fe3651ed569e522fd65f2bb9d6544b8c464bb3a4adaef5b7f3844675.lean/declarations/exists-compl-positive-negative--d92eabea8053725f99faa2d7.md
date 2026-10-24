# exists_compl_positive_negative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:747a98b0-ddd6-955e-3424-a5e60c8997af",
  "kind": "theorem",
  "lexical_name": "exists_compl_positive_negative",
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
  "slug": "exists-compl-positive-negative--d92eabea8053725f99faa2d7",
  "source": {
    "blob": "8f794493bfe2b48bd77fb120d08030288b9a4766",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 416,
    "line": 375,
    "path": "GRWTSK/Analysis/MeasureTheory/Hahn/Variantddee76f4fe3651ed569e522fd65f2bb9d6544b8c464bb3a4adaef5b7f3844675.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d92eabea8053725f99faa2d785e63bcb45c68faa04e99d4ec087099973053fac",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Hahn/Variantddee76f4fe3651ed569e522fd65f2bb9d6544b8c464bb3a4adaef5b7f3844675.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:747a98b0-ddd6-955e-3424-a5e60c8997af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 375–416.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_compl_positive_negative (s : SignedMeasure α) :
    ∃ i : Set α, MeasurableSet i ∧ 0 ≤[i] s ∧ s ≤[iᶜ] 0 := by
  obtain ⟨f, _, hf₂, hf₁⟩ :=
    exists_seq_tendsto_sInf ⟨0, @zero_mem_measureOfNegatives _ _ s⟩ bddBelow_measureOfNegatives
  choose B hB using hf₁
  have hB₁ : ∀ n, MeasurableSet (B n) := fun n => (hB n).1.1
  have hB₂ : ∀ n, s ≤[B n] 0 := fun n => (hB n).1.2
  set A := ⋃ n, B n with hA
  have hA₁ : MeasurableSet A := MeasurableSet.iUnion hB₁
  have hA₂ : s ≤[A] 0 := restrict_le_restrict_iUnion _ _ hB₁ hB₂
  have hA₃ : s A = sInf s.measureOfNegatives := by
    apply le_antisymm
    · refine le_of_tendsto_of_tendsto tendsto_const_nhds hf₂ (Eventually.of_forall fun n => ?_)
      rw [← (hB n).2, hA, ← Set.diff_union_of_subset (Set.subset_iUnion _ n),
        of_union Set.disjoint_sdiff_left _ (hB₁ n)]
      · refine add_le_of_nonpos_left ?_
        have : s ≤[A] 0 :=
          restrict_le_restrict_iUnion _ _ hB₁ fun m =>
            let ⟨_, h⟩ := (hB m).1
            h
        refine
          nonpos_of_restrict_le_zero _ (restrict_le_zero_subset _ ?_ Set.diff_subset this)
        exact MeasurableSet.iUnion hB₁
      · exact (MeasurableSet.iUnion hB₁).diff (hB₁ n)
    · exact csInf_le bddBelow_measureOfNegatives ⟨A, ⟨hA₁, hA₂⟩, rfl⟩
  refine ⟨Aᶜ, hA₁.compl, ?_, (compl_compl A).symm ▸ hA₂⟩
  rw [restrict_le_restrict_iff _ _ hA₁.compl]
  intro C _ hC₁
  by_contra! hC₂
  rcases exists_subset_restrict_nonpos hC₂ with ⟨D, hD₁, hD, hD₂, hD₃⟩
  have : s (A ∪ D) < sInf s.measureOfNegatives := by
    rw [← hA₃,
      of_union (Set.disjoint_of_subset_right (Set.Subset.trans hD hC₁) disjoint_compl_right) hA₁
        hD₁]
    linarith
  refine not_le.2 this ?_
  refine csInf_le bddBelow_measureOfNegatives ⟨A ∪ D, ⟨?_, ?_⟩, rfl⟩
  · exact hA₁.union hD₁
  · exact restrict_le_restrict_union _ _ hA₁ hA₂ hD₁ hD₂

/-- **The Hahn decomposition theorem**: Given a signed measure `s`, there exist
complement measurable sets `i` and `j` such that `i` is positive, `j` is negative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Hahn/Variantddee76f4fe3651ed569e522fd65f2bb9d6544b8c464bb3a4adaef5b7f3844675.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Hahn/Variantddee76f4fe3651ed569e522fd65f2bb9d6544b8c464bb3a4adaef5b7f3844675.lean#L375).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f794493bfe2b48bd77fb120d08030288b9a4766` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
