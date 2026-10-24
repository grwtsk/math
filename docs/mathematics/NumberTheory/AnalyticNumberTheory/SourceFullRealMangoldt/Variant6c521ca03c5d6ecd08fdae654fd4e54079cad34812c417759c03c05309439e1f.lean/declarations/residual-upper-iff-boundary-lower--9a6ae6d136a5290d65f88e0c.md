# residual_upper_iff_boundary_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c17da76c-14d0-bba1-b0f3-add8df6d6166",
  "kind": "theorem",
  "lexical_name": "residual_upper_iff_boundary_lower",
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
  "slug": "residual-upper-iff-boundary-lower--9a6ae6d136a5290d65f88e0c",
  "source": {
    "blob": "a7605dc64f622bb6bd84ee202e95cdf22484981a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 226,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceFullRealMangoldt/Variant6c521ca03c5d6ecd08fdae654fd4e54079cad34812c417759c03c05309439e1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a6ae6d136a5290d65f88e0c5e11a9b6bab5f2df914be97cb42c3289cfdd4acc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceFullRealMangoldt/Variant6c521ca03c5d6ecd08fdae654fd4e54079cad34812c417759c03c05309439e1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c17da76c-14d0-bba1-b0f3-add8df6d6166`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_upper_iff_boundary_lower {A : ℝ} (hA : 1 ≤ A) (D a b c : ℝ) :
    mertensResidual A ≤ D ↔
      -(D*(A^9*Real.exp (-A))) ≤ boundarySignedMangoldtWork A a b c := by
  have hs : 0 < A^9*Real.exp (-A) :=
    mul_pos (pow_pos (by linarith : 0 < A) _) (Real.exp_pos _)
  have he := normalized_mertensResidual_eq_neg_boundary hA a b c
  constructor
  · intro h
    have hm := mul_le_mul_of_nonneg_left h hs.le
    linarith
  · intro h
    have hm : (A^9*Real.exp (-A))*mertensResidual A ≤ (A^9*Real.exp (-A))*D := by
      linarith
    exact (mul_le_mul_iff_right₀ hs).mp (by simpa only [mul_comm] using hm)

#check criticalTest_support
#check criticalTest_deriv_zero_outside
#check fullMangoldtWork_integrable
#check fullMangoldtWork_eq_interval
#check criticalTest_full_integral_eq_interval
#check negative_axis_work_eq_neg_continuous
#check fullMangoldtWork_eq_positive_sub_continuous
#check closedPrimeMoment_eq_neg_fullMangoldtWork
#check mertensResidual_eq_neg_fullMangoldtWork
#check boundary_mangoldt_intervalIntegrable
#check boundary_polynomial_intervalIntegrable
#check boundarySignedMangoldtWork_intervalIntegrable
#check boundarySignedMangoldtWork_eq_scaled_full
#check normalized_closedPrimeMoment_eq_neg_boundary
#check normalized_mertensResidual_eq_neg_boundary
#check residual_upper_iff_boundary_lower
#print axioms criticalTest_support
#print axioms criticalTest_deriv_zero_outside
#print axioms fullMangoldtWork_integrable
#print axioms fullMangoldtWork_eq_interval
#print axioms criticalTest_full_integral_eq_interval
#print axioms negative_axis_work_eq_neg_continuous
#print axioms fullMangoldtWork_eq_positive_sub_continuous
#print axioms closedPrimeMoment_eq_neg_fullMangoldtWork
#print axioms mertensResidual_eq_neg_fullMangoldtWork
#print axioms boundary_mangoldt_intervalIntegrable
#print axioms boundary_polynomial_intervalIntegrable
#print axioms boundarySignedMangoldtWork_intervalIntegrable
#print axioms boundarySignedMangoldtWork_eq_scaled_full
#print axioms normalized_closedPrimeMoment_eq_neg_boundary
#print axioms normalized_mertensResidual_eq_neg_boundary
#print axioms residual_upper_iff_boundary_lower
#print criticalTest_support
#print criticalTest_deriv_zero_outside
#print fullMangoldtWork_integrable
#print fullMangoldtWork_eq_interval
#print criticalTest_full_integral_eq_interval
#print negative_axis_work_eq_neg_continuous
#print fullMangoldtWork_eq_positive_sub_continuous
#print closedPrimeMoment_eq_neg_fullMangoldtWork
#print mertensResidual_eq_neg_fullMangoldtWork
#print boundary_mangoldt_intervalIntegrable
#print boundary_polynomial_intervalIntegrable
#print boundarySignedMangoldtWork_intervalIntegrable
#print boundarySignedMangoldtWork_eq_scaled_full
#print normalized_closedPrimeMoment_eq_neg_boundary
#print normalized_mertensResidual_eq_neg_boundary
#print residual_upper_iff_boundary_lower

end ContinuousResearch.SourceFullRealMangoldt
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceFullRealMangoldt/Variant6c521ca03c5d6ecd08fdae654fd4e54079cad34812c417759c03c05309439e1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceFullRealMangoldt/Variant6c521ca03c5d6ecd08fdae654fd4e54079cad34812c417759c03c05309439e1f.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7605dc64f622bb6bd84ee202e95cdf22484981a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
