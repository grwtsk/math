# withDensityᵥ_eq_withDensity_pos_part_sub_withDensity_neg_part

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9d65e62a3388b54e00d417ffb9ba5de5d55b7d82",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 182,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af65457799d4c43249915b2f517974cfcc3a3161d77b279f840813f4b36c2f94.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:65ed470e-416c-07ef-2a06-757baab599d3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:60c727be-792e-fe2d-ce2f-7abfadb8c92f",
  "kind": "theorem",
  "lexical_name": "withDensityᵥ_eq_withDensity_pos_part_sub_withDensity_neg_part",
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
  "slug": "withdensity-eq-withdensity-pos-part-sub-withdensity-neg-part--6e7ef85abfedc327503b996c",
  "source": {
    "blob": "9d65e62a3388b54e00d417ffb9ba5de5d55b7d82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 182,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/WithDensity/Variantaf65457799d4c43249915b2f517974cfcc3a3161d77b279f840813f4b36c2f94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e7ef85abfedc327503b996c0502f1084d11fde8243cc0be9eb6d2347ef79856",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/WithDensity/Variantaf65457799d4c43249915b2f517974cfcc3a3161d77b279f840813f4b36c2f94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60c727be-792e-fe2d-ce2f-7abfadb8c92f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem withDensityᵥ_eq_withDensity_pos_part_sub_withDensity_neg_part {f : α → ℝ}
    (hfi : Integrable f μ) :
    μ.withDensityᵥ f =
      @toSignedMeasure α _ (μ.withDensity fun x => ENNReal.ofReal <| f x)
          (isFiniteMeasure_withDensity_ofReal hfi.2) -
        @toSignedMeasure α _ (μ.withDensity fun x => ENNReal.ofReal <| -f x)
          (isFiniteMeasure_withDensity_ofReal hfi.neg.2) := by
  haveI := isFiniteMeasure_withDensity_ofReal hfi.2
  haveI := isFiniteMeasure_withDensity_ofReal hfi.neg.2
  ext i hi
  rw [withDensityᵥ_apply hfi hi,
    integral_eq_lintegral_pos_part_sub_lintegral_neg_part hfi.integrableOn,
    VectorMeasure.sub_apply, toSignedMeasure_apply_measurable hi,
    toSignedMeasure_apply_measurable hi, measureReal_def, measureReal_def,
    withDensity_apply _ hi, withDensity_apply _ hi]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/WithDensity/Variantaf65457799d4c43249915b2f517974cfcc3a3161d77b279f840813f4b36c2f94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/WithDensity/Variantaf65457799d4c43249915b2f517974cfcc3a3161d77b279f840813f4b36c2f94.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d65e62a3388b54e00d417ffb9ba5de5d55b7d82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
