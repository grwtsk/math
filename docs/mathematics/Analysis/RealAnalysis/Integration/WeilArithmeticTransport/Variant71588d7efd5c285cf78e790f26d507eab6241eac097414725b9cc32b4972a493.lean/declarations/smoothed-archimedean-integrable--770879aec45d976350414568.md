# smoothed_archimedean_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dbab4d18376de9f146d4c015367b2b1518be8d8d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 179,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/71588d7efd5c285cf78e790f26d507eab6241eac097414725b9cc32b4972a493.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:179329ba-e0c7-1e1f-27c3-7ded4edd86a4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1e9c4ff7-9b2c-b00d-5d64-df897a81bafb",
  "kind": "theorem",
  "lexical_name": "smoothed_archimedean_integrable",
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
  "slug": "smoothed-archimedean-integrable--770879aec45d976350414568",
  "source": {
    "blob": "dbab4d18376de9f146d4c015367b2b1518be8d8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 179,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant71588d7efd5c285cf78e790f26d507eab6241eac097414725b9cc32b4972a493.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:770879aec45d9763504145686039265907172d1ae0f9a81b94072d1f81da7dc6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant71588d7efd5c285cf78e790f26d507eab6241eac097414725b9cc32b4972a493.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e9c4ff7-9b2c-b00d-5d64-df897a81bafb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem smoothed_archimedean_integrable
    (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    Integrable (fun ξ ↦ archimedeanMultiplier ξ *
      Complex.normSq (sourceFourier (smoothedTest A ε hε) ξ)) volume := by
  let f := smoothedTest A ε hε
  have hfint : Integrable f volume := smoothedTest_integrable A ε hA hε
  have hfdiff : Differentiable ℝ f :=
    (smoothedTest_contDiff A ε hA hε).differentiable (by norm_num)
  have hfderiv : Integrable (deriv f) volume :=
    smoothedTest_deriv_integrable A ε hA hε
  have hzero := BridgeFourier.fourier_normSq_integrable f hfint hfdiff hfderiv
  have hlog := BridgeFourier.logarithmic_fourier_integrable f hfint hfdiff hfderiv
  have hc := BridgeFourier.sourceFourier_continuous hfint
  have hm : AEStronglyMeasurable (fun ξ ↦ archimedeanMultiplier ξ *
      Complex.normSq (sourceFourier f ξ)) volume :=
    (BridgeMultiplier.archimedeanMultiplier_measurable.mul
      (Complex.continuous_normSq.comp hc).measurable).aestronglyMeasurable
  have hmajor := (hzero.const_mul (|BridgeAdmissibility.archimedeanConstant| + 4)).add
    (hlog.div_const 2)
  apply hmajor.mono' hm
  filter_upwards [] with ξ
  rw [Real.norm_eq_abs, abs_mul,
    abs_of_nonneg (Complex.normSq_nonneg _)]
  have hb := BridgeMultiplier.multiplier_abs_le_of_estimate
    AdmissionSource.multiplier_estimate ξ
  calc
    |archimedeanMultiplier ξ| * Complex.normSq (sourceFourier f ξ) ≤
        (|BridgeAdmissibility.archimedeanConstant| + 4 +
          Real.log (1 + 4 * ξ ^ 2) / 2) *
          Complex.normSq (sourceFourier f ξ) :=
      mul_le_mul_of_nonneg_right hb (Complex.normSq_nonneg _)
    _ = _ := by simp only [Pi.add_apply]; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant71588d7efd5c285cf78e790f26d507eab6241eac097414725b9cc32b4972a493.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant71588d7efd5c285cf78e790f26d507eab6241eac097414725b9cc32b4972a493.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbab4d18376de9f146d4c015367b2b1518be8d8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
