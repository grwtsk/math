# variation_vectorMeasure_Ioo_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf710935-d5dc-689a-d778-434e86e81af6",
  "kind": "lemma",
  "lexical_name": "variation_vectorMeasure_Ioo_right",
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
  "slug": "variation-vectormeasure-ioo-right--200129dfdbfc3b4217dfa62a",
  "source": {
    "blob": "ca3053ee83217a2ddf45a8ce3807e402b754acdf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 418,
    "line": 394,
    "path": "GRWTSK/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:200129dfdbfc3b4217dfa62a8f8533f2b4704958b847e383c44172ba61bb4b24",
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

Occurrence: `result:cf710935-d5dc-689a-d778-434e86e81af6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 394–418.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma variation_vectorMeasure_Ioo_right
    (hf : BoundedVariationOn f univ) {a b : α} :
    hf.vectorMeasure.variation (Ioo a b) = eVariationOn f.rightLim (Ioo a b) := by
  rcases le_or_gt b a with hab | hab
  · simp [hab]
  have : (𝓝[<] b).NeBot := nhdsLT_neBot_of_exists_lt ⟨a, hab⟩
  have A : hf.vectorMeasure.variation (Ioc a b) = eVariationOn f.rightLim (Ioc a b) :=
    variation_vectorMeasure_Ioc _
  have B : eVariationOn f.rightLim (Ioc a b) = eVariationOn f.rightLim (Ioo a b) +
      edist (f.rightLim b) (f.leftLim b) := by
    rw [show Ioc a b = Ioc a b ∩ Iic b by grind,
      eVariationOn.eVariationOn_on_inter_Iic_eq_Iio_add_edist (l := f.leftLim b),
      show Ioc a b ∩ Iio b = Ioo a b by grind]
    · have : 𝓝[Ioc a b ∩ Iio b] b = 𝓝[<] b := nhdsWithin_inter_of_mem (Ioc_mem_nhdsLT hab)
      rwa [this]
    · grind
    · rw [← leftLim_rightLim (hf.tendsto_leftLim _)]
      apply (hf.rightLim.tendsto_leftLim b).mono_left
      exact nhdsWithin_mono _ inter_subset_right
  have C : hf.vectorMeasure.variation (Ioc a b) =
      hf.vectorMeasure.variation (Ioo a b) + ‖f.rightLim b - f.leftLim b‖ₑ := by
    rw [show Ioc a b = Ioo a b ∪ {b} by grind, measure_union (by grind)
      (measurableSet_singleton _), variation_vectorMeasure_singleton]
  rwa [B, C, edist_eq_enorm_sub, ENNReal.add_left_inj (by simp)] at A

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean#L394).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca3053ee83217a2ddf45a8ce3807e402b754acdf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
