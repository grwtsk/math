# toJordanDecomposition_eq_of_eq_add_withDensity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5d84692eaf2b3c34c6bd2543c8d33014b3adf722",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 231,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7d/7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:40db7a4b-eaf9-0858-7320-945a338492b9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:76a4140c-f242-528c-1080-d7c45dc9cda6",
  "kind": "theorem",
  "lexical_name": "toJordanDecomposition_eq_of_eq_add_withDensity",
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
  "slug": "tojordandecomposition-eq-of-eq-add-withdensity--ac8d823ea1ca74613ce430a7",
  "source": {
    "blob": "5d84692eaf2b3c34c6bd2543c8d33014b3adf722",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 231,
    "path": "GRWTSK/Analysis/MeasureTheory/Lebesgue/Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac8d823ea1ca74613ce430a753a9e3d184ef795c056409117ef8a219651341cc",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Lebesgue/Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76a4140c-f242-528c-1080-d7c45dc9cda6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toJordanDecomposition_eq_of_eq_add_withDensity {f : α → ℝ} (hf : Measurable f)
    (hfi : Integrable f μ) (htμ : t ⟂ᵥ μ.toENNRealVectorMeasure) (hadd : s = t + μ.withDensityᵥ f) :
    s.toJordanDecomposition =
      @JordanDecomposition.mk α _
        (t.toJordanDecomposition.posPart + μ.withDensity fun x => ENNReal.ofReal (f x))
        (t.toJordanDecomposition.negPart + μ.withDensity fun x => ENNReal.ofReal (-f x))
        (by haveI := isFiniteMeasure_withDensity_ofReal hfi.2; infer_instance)
        (by haveI := isFiniteMeasure_withDensity_ofReal hfi.neg.2; infer_instance)
        (jordanDecomposition_add_withDensity_mutuallySingular hf htμ) := by
  haveI := isFiniteMeasure_withDensity_ofReal hfi.2
  haveI := isFiniteMeasure_withDensity_ofReal hfi.neg.2
  refine toJordanDecomposition_eq ?_
  simp_rw [JordanDecomposition.toSignedMeasure, hadd]
  ext i hi
  rw [VectorMeasure.sub_apply, toSignedMeasure_apply_measurable hi,
      toSignedMeasure_apply_measurable hi, measureReal_add_apply, measureReal_add_apply,
      add_sub_add_comm, ← toSignedMeasure_apply_measurable hi,
      ← toSignedMeasure_apply_measurable hi, ← VectorMeasure.sub_apply,
      ← JordanDecomposition.toSignedMeasure, toSignedMeasure_toJordanDecomposition,
      VectorMeasure.add_apply, ← toSignedMeasure_apply_measurable hi,
      ← toSignedMeasure_apply_measurable hi,
      withDensityᵥ_eq_withDensity_pos_part_sub_withDensity_neg_part hfi,
      VectorMeasure.sub_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Lebesgue/Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Lebesgue/Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d84692eaf2b3c34c6bd2543c8d33014b3adf722` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
