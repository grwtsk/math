# MeasureTheory.Measure.sum_restrict_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "60dd86c0e32b77a79143d34862502b3514caa149",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1080,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f5/f5ac9e88c8ff8528710ccab6a5995bd4ec9fb300b2f4294e1444edcdf5b26abc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:967f9a81-74d0-c20c-59b0-90abe5711422",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:404279c2-0962-867d-8e7f-0e50220ea644",
  "kind": "lemma",
  "lexical_name": "MeasureTheory.Measure.sum_restrict_le",
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
  "slug": "measuretheory-measure-sum-restrict-le--cc37d034ba548e1522b85a9a",
  "source": {
    "blob": "60dd86c0e32b77a79143d34862502b3514caa149",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1148,
    "line": 1080,
    "path": "GRWTSK/Analysis/MeasureTheory/Restrict/Variantf5ac9e88c8ff8528710ccab6a5995bd4ec9fb300b2f4294e1444edcdf5b26abc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc37d034ba548e1522b85a9ad1276b71f1f5a3591f069a077896d3cebad298d1",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Restrict/Variantf5ac9e88c8ff8528710ccab6a5995bd4ec9fb300b2f4294e1444edcdf5b26abc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:404279c2-0962-867d-8e7f-0e50220ea644`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1080–1148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MeasureTheory.Measure.sum_restrict_le {_ : MeasurableSpace α}
    {μ : Measure α} {s : ι → Set α} {M : ℕ} (hs_meas : ∀ i, MeasurableSet (s i))
    (hs : ∀ y, {i | y ∈ s i}.encard ≤ M) :
    Measure.sum (fun i ↦ μ.restrict (s i)) ≤ M • μ.restrict (⋃ i, s i) := by
  classical
  refine le_iff.mpr (fun t ht ↦ le_of_eq_of_le (sum_apply _ ht) ?_)
  refine ENNReal.summable.tsum_le_of_sum_le (fun F ↦ ?_)
  -- `P` is a partition of `⋃ i ∈ F, s i` indexed by `C ∈ Cs` (nonempty subsets of `F`).
  -- `P` is a partition of `s i` when restricted to `C ∈ G i` (subsets of `F` containing `i`).
  let P (C : Finset ι) := (⋂ i ∈ C, s i) ∩ (⋂ i ∈ (F \ C), (s i)ᶜ)
  let Cs := F.powerset \ {∅}
  let G (i : ι) := { C | C ∈ F.powerset ∧ i ∈ C }
  have P_meas C : MeasurableSet (P C) :=
    measurableSet_biInter C (fun i _ ↦ hs_meas i) |>.inter <|
      measurableSet_biInter _ (fun i _ ↦ (hs_meas i).compl)
  have P_cover {i : ι} (hi : i ∈ F) : s i ⊆ ⋃ C ∈ G i, P C := by
    refine fun x hx ↦ Set.mem_biUnion (x := F.filter (x ∈ s ·)) ?_ ?_
    · exact ⟨Finset.mem_powerset.mpr (filter_subset _ F), mem_filter.mpr ⟨hi, hx⟩⟩
    · simp_rw [P, mem_inter_iff, mem_iInter, Finset.mem_sdiff, mem_filter]; tauto
  have iUnion_P : ⋃ C ∈ Cs, P C ⊆ ⋃ i, s i := by
    intro x hx
    simp_rw [Cs, Finset.mem_sdiff, mem_iUnion] at hx
    have ⟨C, ⟨_, C_nonempty⟩, hxC⟩ := hx
    have ⟨i, hi⟩ := Finset.nonempty_iff_ne_empty.mpr <| Finset.notMem_singleton.mp C_nonempty
    exact ⟨s i, ⟨i, rfl⟩, hxC.1 (s i) ⟨i, by simp [hi]⟩⟩
  have P_subset_s {i : ι} {C : Finset ι} (hiC : i ∈ C) : P C ⊆ s i := by
    intro x hx
    simp only [P, mem_inter_iff, mem_iInter] at hx
    exact hx.1 i hiC
  have mem_C {i} (hi : i ∈ F) {C : Finset ι} {x : α} (hx : x ∈ P C) (hxs : x ∈ s i) : i ∈ C := by
    rw [mem_inter_iff, mem_iInter₂, mem_iInter₂] at hx
    exact of_not_not fun h ↦ hx.2 i (mem_sdiff.mpr ⟨hi, h⟩) hxs
  have C_subset_C {C₁ C₂} (hC₁ : C₁ ∈ Cs) {x : α} (hx : x ∈ P C₁ ∩ P C₂) : C₁ ⊆ C₂ :=
    fun i hi ↦ mem_C (mem_powerset.mp (sdiff_subset hC₁) hi) hx.2 <| P_subset_s hi hx.1
  calc ∑ i ∈ F, (μ.restrict (s i)) t
    _ ≤ ∑ i ∈ F, Measure.sum (fun (C : G i) ↦ μ.restrict (P C)) t :=
      F.sum_le_sum fun i hi ↦ (restrict_mono_set μ (P_cover hi) t).trans <|
        restrict_biUnion_le ((finite_toSet F.powerset).subset (sep_subset _ _)).countable t
    _ = ∑ i ∈ F, ∑' (C : G i), μ.restrict (P C) t := by simp_rw [Measure.sum_apply _ ht]
    _ = ∑' C, ∑ i ∈ F, (G i).indicator (fun C ↦ μ.restrict (P C) t) C := by
      rw [Summable.tsum_finsetSum (fun _ _ ↦ ENNReal.summable)]
      congr with i
      rw [tsum_subtype (G i) (fun C ↦ (μ.restrict (P C)) t)]
    _ = ∑ C ∈ Cs, ∑ i ∈ F, (C : Set ι).indicator (fun _ ↦ (μ.restrict (P C)) t) i := by
      rw [sum_eq_tsum_indicator]
      congr with C
      by_cases hC : C ∈ F.powerset <;> by_cases hC' : C = ∅ <;>
        simp [hC, hC', Cs, G, indicator, -Finset.mem_powerset, -coe_powerset]
    _ = ∑ C ∈ Cs, {a ∈ F | a ∈ C}.card • μ.restrict (P C) t := by simp [indicator]; rfl
    _ ≤ ∑ C ∈ Cs, M • μ.restrict (P C) t := by
      refine sum_le_sum fun C hC ↦ ?_
      by_cases hPC : P C = ∅
      · simp [hPC]
      have hCM : (C : Set ι).encard ≤ M :=
        have ⟨x, hx⟩ := Set.nonempty_iff_ne_empty.mpr hPC
        (encard_mono (mem_iInter₂.mp hx.1)).trans (hs x)
      exact nsmul_le_nsmul_left zero_le <| calc {a ∈ F | a ∈ C}.card
        _ ≤ C.card := card_mono <| fun i hi ↦ (F.mem_filter.mp hi).2
        _ = (C : Set ι).ncard := (ncard_coe_finset C).symm
        _ ≤ M := ENat.toNat_le_of_le_natCast hCM
    _ = M • (μ.restrict (⋃ C ∈ Cs, (P C)) t) := by
      rw [← smul_sum, ← Cs.tsum_subtype, μ.restrict_biUnion_finset _ P_meas, Measure.sum_apply _ ht]
      refine fun C₁ hC₁ C₂ hC₂ hC ↦ Set.disjoint_iff.mpr fun x hx ↦ hC <| ?_
      exact subset_antisymm (C_subset_C hC₁ hx) (C_subset_C hC₂ (Set.inter_comm _ _ ▸ hx))
    _ ≤ (M • μ.restrict (⋃ i, s i)) t := by
      rw [Measure.smul_apply]
      exact nsmul_le_nsmul_right (μ.restrict_mono_set iUnion_P t) M

end Sum
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Restrict/Variantf5ac9e88c8ff8528710ccab6a5995bd4ec9fb300b2f4294e1444edcdf5b26abc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Restrict/Variantf5ac9e88c8ff8528710ccab6a5995bd4ec9fb300b2f4294e1444edcdf5b26abc.lean#L1080).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60dd86c0e32b77a79143d34862502b3514caa149` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
