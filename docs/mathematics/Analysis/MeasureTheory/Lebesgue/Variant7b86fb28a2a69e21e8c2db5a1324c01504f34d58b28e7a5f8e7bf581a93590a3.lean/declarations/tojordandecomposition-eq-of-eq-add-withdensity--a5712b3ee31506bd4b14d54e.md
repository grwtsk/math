# toJordanDecomposition_eq_of_eq_add_withDensity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed743049-5671-01c4-9f0e-7277573bc577",
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
  "slug": "tojordandecomposition-eq-of-eq-add-withdensity--a5712b3ee31506bd4b14d54e",
  "source": {
    "blob": "a5fed7e3be6c28f5f8e823e63dfcf38e422bacd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 231,
    "path": "GRWTSK/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5712b3ee31506bd4b14d54e609e3c55ca74d36e88da025a789407c15f4e47ef",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed743049-5671-01c4-9f0e-7277573bc577`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toJordanDecomposition_eq_of_eq_add_withDensity {f : α → ℝ} (hf : Measurable f)
    (hfi : Integrable f μ) (htμ : t ⟂ᵥ μ.toENNRealVectorMeasure) (hadd : s = t + μ.withDensityᵥ f) :
    s.toJordanDecomposition =
      @JordanDecomposition.mk α _
        (t.toJordanDecomposition.posPart + μ.withDensity fun x => ENNReal.ofReal (f x))
        (t.toJordanDecomposition.negPart + μ.withDensity fun x => ENNReal.ofReal (-f x))
        (by have := isFiniteMeasure_withDensity_ofReal hfi.2; infer_instance)
        (by have := isFiniteMeasure_withDensity_ofReal hfi.neg.2; infer_instance)
        (jordanDecomposition_add_withDensity_mutuallySingular hf htμ) := by
  have := isFiniteMeasure_withDensity_ofReal hfi.2
  have := isFiniteMeasure_withDensity_ofReal hfi.neg.2
  refine toJordanDecomposition_eq ?_
  simp_rw [JordanDecomposition.toSignedMeasure, hadd]
  ext i hi
  rw [_root_.sub_apply, toSignedMeasure_apply_measurable hi,
      toSignedMeasure_apply_measurable hi, measureReal_add_apply, measureReal_add_apply,
      add_sub_add_comm, ← toSignedMeasure_apply_measurable hi,
      ← toSignedMeasure_apply_measurable hi, ← _root_.sub_apply,
      ← JordanDecomposition.toSignedMeasure, toSignedMeasure_toJordanDecomposition,
      _root_.add_apply, ← toSignedMeasure_apply_measurable hi,
      ← toSignedMeasure_apply_measurable hi,
      withDensityᵥ_eq_withDensity_pos_part_sub_withDensity_neg_part hfi,
      _root_.sub_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5fed7e3be6c28f5f8e823e63dfcf38e422bacd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
