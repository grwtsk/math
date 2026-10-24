# eq_singularPart'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "be8598a7f6d8ddce356a6e9b6960c247e1b4768d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 273,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bc917877ac595b9b5899eb09d40d7ed2fc4b34912679bf6681ab90e7742d02a8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:57d756cc-de54-7549-7e45-5c9aa46e71bd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fb6e0b69-a0dd-f55e-6fbe-84868c9d8300",
  "kind": "theorem",
  "lexical_name": "eq_singularPart'",
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
  "slug": "eq-singularpart--9bf5cff0f82995887aa41d98",
  "source": {
    "blob": "be8598a7f6d8ddce356a6e9b6960c247e1b4768d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 273,
    "path": "GRWTSK/Analysis/MeasureTheory/Lebesgue/Variantbc917877ac595b9b5899eb09d40d7ed2fc4b34912679bf6681ab90e7742d02a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9bf5cff0f82995887aa41d987e8677a8b4089582bb6a44acc61fdaa3d743d43a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Lebesgue/Variantbc917877ac595b9b5899eb09d40d7ed2fc4b34912679bf6681ab90e7742d02a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb6e0b69-a0dd-f55e-6fbe-84868c9d8300`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem eq_singularPart' (t : SignedMeasure α) {f : α → ℝ} (hf : Measurable f)
    (hfi : Integrable f μ) (htμ : t ⟂ᵥ μ.toENNRealVectorMeasure) (hadd : s = t + μ.withDensityᵥ f) :
    t = s.singularPart μ := by
  have htμ' := htμ
  rw [mutuallySingular_ennreal_iff, totalVariation_mutuallySingular_iff,
    VectorMeasure.ennrealToMeasure_toENNRealVectorMeasure] at htμ
  rw [singularPart, ← t.toSignedMeasure_toJordanDecomposition,
    JordanDecomposition.toSignedMeasure]
  congr
  · have hfpos : Measurable fun x => ENNReal.ofReal (f x) := by fun_prop
    refine eq_singularPart hfpos htμ.1 ?_
    rw [toJordanDecomposition_eq_of_eq_add_withDensity hf hfi htμ' hadd]
  · have hfneg : Measurable fun x => ENNReal.ofReal (-f x) := by fun_prop
    refine eq_singularPart hfneg htμ.2 ?_
    rw [toJordanDecomposition_eq_of_eq_add_withDensity hf hfi htμ' hadd]

/-- Given a measure `μ`, signed measures `s` and `t`, and a function `f` such that `t` is
mutually singular with respect to `μ` and `s = t + μ.withDensityᵥ f`, we have
`t = singularPart s μ`, i.e. `t` is the singular part of the Lebesgue decomposition between
`s` and `μ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Lebesgue/Variantbc917877ac595b9b5899eb09d40d7ed2fc4b34912679bf6681ab90e7742d02a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Lebesgue/Variantbc917877ac595b9b5899eb09d40d7ed2fc4b34912679bf6681ab90e7742d02a8.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be8598a7f6d8ddce356a6e9b6960c247e1b4768d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
