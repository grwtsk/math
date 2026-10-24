# setIntegral_Icc_rightLim_sub_leftLim_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "762735ed2b332c5bec324032d308dad123239dcb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 120,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/ddd93ebd71d83db073c5062bdae07492b928cf3e214bd2b4a98ee9aae4823b70.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ec9f7713-8635-452d-d1f7-a7e88acfb1bb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ef349f4e-c56a-703b-aa2f-5e3ed5ba1c91",
  "kind": "lemma",
  "lexical_name": "setIntegral_Icc_rightLim_sub_leftLim_eq",
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
  "slug": "setintegral-icc-rightlim-sub-leftlim-eq--906bdc8c795444adc6195fb2",
  "source": {
    "blob": "762735ed2b332c5bec324032d308dad123239dcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 120,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegrationByParts/Variantddd93ebd71d83db073c5062bdae07492b928cf3e214bd2b4a98ee9aae4823b70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:906bdc8c795444adc6195fb21eff5a7dbfd12165773f49271a650ad6efb35420",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegrationByParts/Variantddd93ebd71d83db073c5062bdae07492b928cf3e214bd2b4a98ee9aae4823b70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef349f4e-c56a-703b-aa2f-5e3ed5ba1c91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma setIntegral_Icc_rightLim_sub_leftLim_eq
    (hf : BoundedVariationOn f univ) (hg : BoundedVariationOn g univ) :
    ∫ᵛ x in Icc a b, g.rightLim x - g.leftLim a ∂[B.flip; hf.vectorMeasure]
      = ∫ᵛ y in Icc a b, f.rightLim b - f.leftLim y ∂[B; hg.vectorMeasure] := calc
  /- This is a consequence of Fubini, by writing `g.rightLim x - g.leftLim a` as the measure
  of `Icc a x` and `f.rightLim b - f.leftLim y` as the measure of `Icc y b`. -/
  ∫ᵛ x in Icc a b, g.rightLim x - g.leftLim a ∂[B.flip; hf.vectorMeasure]
  _ = ∫ᵛ x in Icc a b, (∫ᵛ y in Icc a b, (Icc a x).indicator 1 y ∂•hg.vectorMeasure)
      ∂[B.flip; hf.vectorMeasure] := by
    apply VectorMeasure.setIntegral_congr_ae
    filter_upwards with x hx
    rw [setIntegral_indicator measurableSet_Icc measurableSet_Icc,
      show Icc a b ∩ Icc a x = Icc a x by grind]
    simp [hx.1]
  _ = ∫ᵛ y in Icc a b, (∫ᵛ x in Icc a b, (Icc a x).indicator 1 y ∂•hf.vectorMeasure)
      ∂[B; hg.vectorMeasure] := by
    apply (integral_integral_smul_swap _).symm
    apply Integrable.of_bound _ 1
    · filter_upwards with ⟨x, y⟩
      simp [indicator]
      grind
    · apply Measurable.aestronglyMeasurable
      simp only [indicator, mem_Icc, Pi.one_apply]
      apply Measurable.piecewise ?_ (by fun_prop) (by fun_prop)
      apply MeasurableSet.inter <;> exact measurableSet_le (by fun_prop) (by fun_prop)
  _ = ∫ᵛ y in Icc a b, (∫ᵛ x in Icc a b, (Icc y b).indicator 1 x ∂•hf.vectorMeasure)
      ∂[B; hg.vectorMeasure]:= by
    apply VectorMeasure.setIntegral_congr_ae
    filter_upwards with y hy
    apply VectorMeasure.setIntegral_congr_ae
    filter_upwards with x hx
    simp [indicator]
    grind
  _ = ∫ᵛ y in Icc a b, f.rightLim b - f.leftLim y ∂[B; hg.vectorMeasure] := by
    apply VectorMeasure.setIntegral_congr_ae
    filter_upwards with y hy
    rw [setIntegral_indicator measurableSet_Icc measurableSet_Icc,
      show Icc a b ∩ Icc y b = Icc y b by grind]
    simp [hy.2]

variable [CompleteSpace G]

/-- Given bounded variation functions, the measure associated to their product is given by
`d (f * g) = f⁻ dg + g⁺ df`. Version for a general pairing instead of multiplication.
This is the most general version of the integration by parts formula for vector measures. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegrationByParts/Variantddd93ebd71d83db073c5062bdae07492b928cf3e214bd2b4a98ee9aae4823b70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegrationByParts/Variantddd93ebd71d83db073c5062bdae07492b928cf3e214bd2b4a98ee9aae4823b70.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `762735ed2b332c5bec324032d308dad123239dcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
