# variation_vectorMeasure_Ioi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5c218867d84e1e39755a96ccd6d0642c52bc5181",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 453,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:18fffa86-fdb1-a292-6cee-7f4e33f433be",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fc52572d-f5ee-1481-ddc4-f734e5004c1d",
  "kind": "lemma",
  "lexical_name": "variation_vectorMeasure_Ioi",
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
  "slug": "variation-vectormeasure-ioi--ecf6e898538beff5b21abb5f",
  "source": {
    "blob": "5c218867d84e1e39755a96ccd6d0642c52bc5181",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 483,
    "line": 453,
    "path": "GRWTSK/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ecf6e898538beff5b21abb5f1d181738eb414b23d23e7680bd52709252347348",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc52572d-f5ee-1481-ddc4-f734e5004c1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 453–483.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma variation_vectorMeasure_Ioi (hf : BoundedVariationOn f univ) {a : α} :
    hf.vectorMeasure.variation (Ioi a) = eVariationOn f.rightLim (Ioi a) := by
  by_cases hb : ∃ (b : α), IsTop b
  · rcases hb with ⟨b, hb⟩
    rw [show Ioi a = Ioc a b by grind [IsTop], variation_vectorMeasure_Ioc]
  apply le_antisymm
  · have : Nonempty α := ⟨a⟩
    obtain ⟨u, u_mono, hu⟩ : ∃ u, Monotone u ∧ Tendsto u atTop atTop :=
      Filter.exists_seq_monotone_tendsto_atTop_atTop α
    have A : Tendsto (fun n ↦ hf.vectorMeasure.variation (Ioc a (u n))) atTop
        (𝓝 (hf.vectorMeasure.variation (Ioi a))) := by
      have : Ioi a = ⋃ n, Ioc a (u n) := by
        apply le_antisymm ?_ (by simp [Ioc_subset_Ioi_self])
        intro x (hx : a < x)
        simpa [hx] using (hu.eventually (Ici_mem_atTop x)).exists
      rw [this]
      exact tendsto_measure_iUnion_atTop (fun i j hij x hx ↦ by grind [Monotone])
    apply le_of_tendsto A
    filter_upwards with n
    grw [variation_vectorMeasure_Ioc, eVariationOn.mono]
    grind
  · simp only [eVariationOn, iSup_le_iff, Prod.forall, Subtype.forall, mem_Ioi, and_imp]
    intro n u u_mono hu
    obtain ⟨b, hb⟩ : ∃ b, u n < b := by
      simp only [IsTop, not_exists, not_forall, not_le] at hb
      exact hb (u n)
    apply (eVariationOn.sum_le_of_monotoneOn_Iic (s := Ioo a b) (u_mono.monotoneOn _)
      (by grind [Monotone])).trans
    rw [← variation_vectorMeasure_Ioo_right hf]
    exact measure_mono Ioo_subset_Ioi_self

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean#L453).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c218867d84e1e39755a96ccd6d0642c52bc5181` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
