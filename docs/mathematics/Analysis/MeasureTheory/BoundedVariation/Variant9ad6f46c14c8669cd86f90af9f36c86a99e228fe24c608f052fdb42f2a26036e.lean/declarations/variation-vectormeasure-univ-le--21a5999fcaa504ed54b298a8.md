# variation_vectorMeasure_univ_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3bc2190a-5c18-6ad4-d780-e74a0109603f",
  "kind": "lemma",
  "lexical_name": "variation_vectorMeasure_univ_le",
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
  "slug": "variation-vectormeasure-univ-le--21a5999fcaa504ed54b298a8",
  "source": {
    "blob": "ca3053ee83217a2ddf45a8ce3807e402b754acdf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 599,
    "line": 574,
    "path": "GRWTSK/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21a5999fcaa504ed54b298a8cc83b1124bb5804a85bf6a118c8e6acd742059f8",
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

Occurrence: `result:3bc2190a-5c18-6ad4-d780-e74a0109603f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 574–599.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma variation_vectorMeasure_univ_le (hf : BoundedVariationOn f univ) :
    hf.vectorMeasure.variation univ ≤ eVariationOn f univ := by
  rcases isEmpty_or_nonempty α with hα | ⟨⟨a⟩⟩
  · simp [univ_eq_empty_iff.2]
  calc hf.vectorMeasure.variation univ
  _ = hf.vectorMeasure.variation (Iio a ∪ {a} ∪ Ioi a) := by simp
  _ = hf.vectorMeasure.variation (Iio a) + hf.vectorMeasure.variation {a} +
      hf.vectorMeasure.variation (Ioi a) := by rw [measure_union (by grind) measurableSet_Ioi,
    measure_union (by grind) (measurableSet_singleton _)]
  _ ≤ eVariationOn f (Iio a) + (‖f a - f.rightLim a‖ₑ + ‖f a - f.leftLim a‖ₑ) +
      eVariationOn f (Ioi a) := by
    gcongr
    · exact variation_vectorMeasure_Iio_le _
    · rw [variation_vectorMeasure_singleton]
      simp only [← edist_eq_enorm_sub]
      apply edist_triangle_left
    · exact variation_vectorMeasure_Ioi_le _
  _ = (eVariationOn f (Iio a) + ‖f a - f.leftLim a‖ₑ) +
    (eVariationOn f (Ioi a) + ‖f a - f.rightLim a‖ₑ) := by abel
  _ = eVariationOn f (Iic a) + eVariationOn f (Ici a) := by
    rw [← edist_eq_enorm_sub, ← edist_eq_enorm_sub, hf.eVariationOn_Ici_eq_Ioi_add_edist,
      hf.eVariationOn_Iic_eq_Iio_add_edist]
  _ = eVariationOn f univ := by
    rw [← eVariationOn.union (x := a) _ isGreatest_Iic isLeast_Ici, Iic_union_Ici]

end BoundedVariationOn
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean#L574).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca3053ee83217a2ddf45a8ce3807e402b754acdf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
