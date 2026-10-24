# actual_vonMangoldt_series_laurent_slope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0f47e7529649f9e8a9cedd39de2055bb9bc81ce7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 77,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b2c20447e95ab2c8ea0fff67937323499fcde403d5220e1aa16b5940599882e8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c915382a-a9e2-195c-d530-294a75aeed56",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7e818817-58c0-a25a-ccad-bf2d9a89cb2d",
  "kind": "theorem",
  "lexical_name": "actual_vonMangoldt_series_laurent_slope",
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
  "slug": "actual-vonmangoldt-series-laurent-slope--a5a760ca19bd78706faddb6d",
  "source": {
    "blob": "0f47e7529649f9e8a9cedd39de2055bb9bc81ce7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 77,
    "path": "GRWTSK/NumberTheory/ActualLaurentSlopeAttempt01/Variantb2c20447e95ab2c8ea0fff67937323499fcde403d5220e1aa16b5940599882e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5a760ca19bd78706faddb6dd4178ad17c953a82739f578400e5431f417e311e",
  "verification": {
    "reference": "docs/verification/NumberTheory/ActualLaurentSlopeAttempt01/Variantb2c20447e95ab2c8ea0fff67937323499fcde403d5220e1aa16b5940599882e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e818817-58c0-a25a-ccad-bf2d9a89cb2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_vonMangoldt_series_laurent_slope :
    Tendsto (fun u : ℂ =>
      (LSeries (fun n : ℕ => (ArithmeticFunction.vonMangoldt n : ℂ)) (1 + u) - u⁻¹ +
        (Real.eulerMascheroniConstant : ℂ)) / u)
      (𝓝[{u : ℂ | 0 < u.re}] 0)
      (𝓝 ((Real.eulerMascheroniConstant : ℂ)^2 - 2 * deriv riemannZeta₀ 1)) := by
  have hsub : {u : ℂ | 0 < u.re} ⊆ {0}ᶜ := by
    intro u hu
    simp only [Set.mem_compl_iff, Set.mem_singleton_iff]
    intro hzero
    simp [hzero] at hu
  apply (actual_negative_log_laurent_slope.mono_left (nhdsWithin_mono 0 hsub)).congr'
  filter_upwards [self_mem_nhdsWithin] with u hu
  have hre : 1 < (1 + u).re := by simp only [Complex.add_re, Complex.one_re]; linarith
  rw [ArithmeticFunction.LSeries_vonMangoldt_eq_deriv_riemannZeta_div hre]

end ContinuousResearch.ActualLaurentSlope

#check ContinuousResearch.ActualLaurentSlope.regularNegativeLogDerivative
#print axioms ContinuousResearch.ActualLaurentSlope.regularNegativeLogDerivative
#print ContinuousResearch.ActualLaurentSlope.regularNegativeLogDerivative

#check ContinuousResearch.ActualLaurentSlope.actual_regular_zeta_derivative
#print axioms ContinuousResearch.ActualLaurentSlope.actual_regular_zeta_derivative
#print ContinuousResearch.ActualLaurentSlope.actual_regular_zeta_derivative

#check ContinuousResearch.ActualLaurentSlope.actual_regular_zeta_second_derivative_at_one
#print axioms ContinuousResearch.ActualLaurentSlope.actual_regular_zeta_second_derivative_at_one
#print ContinuousResearch.ActualLaurentSlope.actual_regular_zeta_second_derivative_at_one

#check ContinuousResearch.ActualLaurentSlope.actual_regular_negative_value
#print axioms ContinuousResearch.ActualLaurentSlope.actual_regular_negative_value
#print ContinuousResearch.ActualLaurentSlope.actual_regular_negative_value

#check ContinuousResearch.ActualLaurentSlope.actual_regular_negative_derivative
#print axioms ContinuousResearch.ActualLaurentSlope.actual_regular_negative_derivative
#print ContinuousResearch.ActualLaurentSlope.actual_regular_negative_derivative

#check ContinuousResearch.ActualLaurentSlope.actual_regular_negative_slope
#print axioms ContinuousResearch.ActualLaurentSlope.actual_regular_negative_slope
#print ContinuousResearch.ActualLaurentSlope.actual_regular_negative_slope

#check ContinuousResearch.ActualLaurentSlope.actual_negative_log_regularization
#print axioms ContinuousResearch.ActualLaurentSlope.actual_negative_log_regularization
#print ContinuousResearch.ActualLaurentSlope.actual_negative_log_regularization

#check ContinuousResearch.ActualLaurentSlope.actual_negative_log_laurent_slope
#print axioms ContinuousResearch.ActualLaurentSlope.actual_negative_log_laurent_slope
#print ContinuousResearch.ActualLaurentSlope.actual_negative_log_laurent_slope

#check ContinuousResearch.ActualLaurentSlope.actual_vonMangoldt_series_laurent_slope
#print axioms ContinuousResearch.ActualLaurentSlope.actual_vonMangoldt_series_laurent_slope
#print ContinuousResearch.ActualLaurentSlope.actual_vonMangoldt_series_laurent_slope
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/ActualLaurentSlopeAttempt01/Variantb2c20447e95ab2c8ea0fff67937323499fcde403d5220e1aa16b5940599882e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ActualLaurentSlopeAttempt01/Variantb2c20447e95ab2c8ea0fff67937323499fcde403d5220e1aa16b5940599882e8.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f47e7529649f9e8a9cedd39de2055bb9bc81ce7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
