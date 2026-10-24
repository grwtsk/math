# variation_vectorMeasure_Ico

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
      "line": 431,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6b4ec4b6-8ba7-b6e4-609f-39b46ad83dba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:79251120-f3af-bc6b-76d1-fd7c667d61e3",
  "kind": "lemma",
  "lexical_name": "variation_vectorMeasure_Ico",
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
  "slug": "variation-vectormeasure-ico--6b13eecd91d172123dbe8e25",
  "source": {
    "blob": "5c218867d84e1e39755a96ccd6d0642c52bc5181",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 452,
    "line": 431,
    "path": "GRWTSK/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b13eecd91d172123dbe8e25dd4da80fec3871eb9d1419cefb1ce252d602843b",
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

Occurrence: `result:79251120-f3af-bc6b-76d1-fd7c667d61e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 431–452.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma variation_vectorMeasure_Ico (hf : BoundedVariationOn f univ) {a b : α} :
    hf.vectorMeasure.variation (Ico a b) = eVariationOn f.leftLim (Ico a b) := by
  rcases le_or_gt b a with hab | hab
  · simp [hab]
  have : (𝓝[>] a).NeBot := nhdsGT_neBot_of_exists_gt ⟨b, hab⟩
  have A : eVariationOn f.leftLim (Ico a b) = eVariationOn f.leftLim (Ioo a b) +
      edist (f.rightLim a) (f.leftLim a) := by
    rw [show Ico a b = Ico a b ∩ Ici a by grind,
      eVariationOn.eVariationOn_on_inter_Ici_eq_Ioi_add_edist (l := f.rightLim a),
      show Ico a b ∩ Ioi a = Ioo a b by grind, edist_comm]
    · have : 𝓝[Ico a b ∩ Ioi a] a = 𝓝[>] a := nhdsWithin_inter_of_mem (Ico_mem_nhdsGT hab)
      rwa [this]
    · grind
    · rw [← rightLim_leftLim (hf.tendsto_rightLim _)]
      apply (hf.leftLim.tendsto_rightLim a).mono_left
      exact nhdsWithin_mono _ inter_subset_right
  have B : hf.vectorMeasure.variation (Ico a b) =
      hf.vectorMeasure.variation (Ioo a b) + ‖f.rightLim a - f.leftLim a‖ₑ := by
    rw [show Ico a b = Ioo a b ∪ {a} by grind, measure_union (by grind)
      (measurableSet_singleton _), variation_vectorMeasure_singleton]
  rw [A, B, edist_eq_enorm_sub, variation_vectorMeasure_Ioo_left]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean#L431).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c218867d84e1e39755a96ccd6d0642c52bc5181` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
