# log_model_integral_eq_mainTerm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:23de4edc-7141-c72d-df15-a4dc5afd09dd",
  "kind": "theorem",
  "lexical_name": "log_model_integral_eq_mainTerm",
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
  "slug": "log-model-integral-eq-mainterm--7de6eaa8535901f62f355da2",
  "source": {
    "blob": "7fa55eeb27ed4320c496d99283e1cab902925fd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 95,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SelectedSamplingPointwise/Variant509480b3440de34077076e1f537596a87efbf8106d29f88cfa1f58cf5b9bf6d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7de6eaa8535901f62f355da21e1a30e8adb1a5c600caa5c01172bb6304002f5e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SelectedSamplingPointwise/Variant509480b3440de34077076e1f537596a87efbf8106d29f88cfa1f58cf5b9bf6d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23de4edc-7141-c72d-df15-a4dc5afd09dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_model_integral_eq_mainTerm (A k : ℝ) :
    (∫ u in Ioi (0 : ℝ), Int.fract u * logModelDerivative A k u) =
      sourceLogSamplingMainTerm A k := by
  have hsum := integral_add
    (((coefficientWeight_integrable 0).const_mul
      (sourceCorrelation explicitSecondDerivative A (Real.log k))).add
      ((coefficientWeight_integrable 1).const_mul
        (2 * deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k) -
          sourceCorrelation explicitSecondDerivative A (Real.log k) / 2)))
    ((coefficientWeight_integrable 2).const_mul
      (-deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k) / 2))
  simp only [Pi.add_apply] at hsum
  rw [log_model_integrand_eq, integral_const_mul, hsum,
    integral_add ((coefficientWeight_integrable 0).const_mul _)
      ((coefficientWeight_integrable 1).const_mul _),
    integral_const_mul, integral_const_mul, integral_const_mul]
  unfold sourceLogSamplingMainTerm samplingAlpha1 samplingAlpha2 signedCoefficientMoment
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SelectedSamplingPointwise/Variant509480b3440de34077076e1f537596a87efbf8106d29f88cfa1f58cf5b9bf6d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SelectedSamplingPointwise/Variant509480b3440de34077076e1f537596a87efbf8106d29f88cfa1f58cf5b9bf6d9.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fa55eeb27ed4320c496d99283e1cab902925fd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
