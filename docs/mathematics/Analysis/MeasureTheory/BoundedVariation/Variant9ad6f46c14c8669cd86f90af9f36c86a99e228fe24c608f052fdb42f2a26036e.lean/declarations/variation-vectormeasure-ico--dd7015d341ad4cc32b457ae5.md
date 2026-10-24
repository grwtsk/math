# variation_vectorMeasure_Ico

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6a446009-1e1b-5abb-056c-9d51e5ea8d26",
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
  "slug": "variation-vectormeasure-ico--dd7015d341ad4cc32b457ae5",
  "source": {
    "blob": "ca3053ee83217a2ddf45a8ce3807e402b754acdf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 460,
    "line": 439,
    "path": "GRWTSK/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd7015d341ad4cc32b457ae557f77b6a81dff75477586cd7e47ff610f8880885",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a446009-1e1b-5abb-056c-9d51e5ea8d26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 439–460.

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

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean#L439).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca3053ee83217a2ddf45a8ce3807e402b754acdf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
