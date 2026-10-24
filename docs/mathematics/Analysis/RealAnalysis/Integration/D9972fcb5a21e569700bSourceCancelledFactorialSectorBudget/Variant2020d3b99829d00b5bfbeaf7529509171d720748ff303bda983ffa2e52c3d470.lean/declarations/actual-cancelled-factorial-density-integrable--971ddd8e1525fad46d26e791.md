# actual_cancelled_factorial_density_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00749719-5b04-e9c4-a563-2d633774e3e6",
  "kind": "theorem",
  "lexical_name": "actual_cancelled_factorial_density_integrable",
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
  "slug": "actual-cancelled-factorial-density-integrable--971ddd8e1525fad46d26e791",
  "source": {
    "blob": "133060430e17a8fb6afabb97e0bd14d82edc3161",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 273,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/D9972fcb5a21e569700bSourceCancelledFactorialSectorBudget/Variant2020d3b99829d00b5bfbeaf7529509171d720748ff303bda983ffa2e52c3d470.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:971ddd8e1525fad46d26e7911df83a1b66c4a486487a549e672f87973a5506a7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/D9972fcb5a21e569700bSourceCancelledFactorialSectorBudget/Variant2020d3b99829d00b5bfbeaf7529509171d720748ff303bda983ffa2e52c3d470.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00749719-5b04-e9c4-a563-2d633774e3e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_cancelled_factorial_density_integrable (A : ℝ) (hA : 91 ≤ A) :
    IntegrableOn (fun x => shortFactorialDefect (vaughanCutoff A) x *
      ((1 / 2 : ℝ) * x ^ (-(3 : ℝ) / 2) + deriv (plainProfile A 1) x))
        (Ioi (0 : ℝ)) := by
  have hc := (SourceCorrelationCurvature.sourceCorrelation_contDiff_two
    (by linarith : 0 < A)).continuous.measurable
  have hd := (SourceCorrelationCurvature.sourceCorrelation_deriv_contDiff
    (by linarith : 0 < A)).continuous.measurable
  have hm : AEStronglyMeasurable (fun x =>
      (shortFactorialDefect (vaughanCutoff A) x * x ^ (-(3 : ℝ) / 2)) *
        ((1 - sourceCorrelation explicitSecondDerivative A (Real.log x)) / 2 +
          deriv (sourceCorrelation explicitSecondDerivative A) (Real.log x)))
        (volume.restrict (Ioi (0 : ℝ))) := by
    apply ((shortFactorialMellin_integrable (vaughanCutoff A)).aestronglyMeasurable.mul
      (((((measurable_const (a := (1 : ℝ))).sub (hc.comp Real.measurable_log)).div_const 2).add
        (hd.comp Real.measurable_log)).aestronglyMeasurable.restrict)).congr
    filter_upwards with x
    simp only [Pi.mul_apply, Pi.add_apply, Pi.sub_apply, Function.comp_apply]
  have hmeas : AEStronglyMeasurable (fun x => shortFactorialDefect (vaughanCutoff A) x *
      ((1 / 2 : ℝ) * x ^ (-(3 : ℝ) / 2) + deriv (plainProfile A 1) x))
        (volume.restrict (Ioi (0 : ℝ))) := by
    apply hm.congr
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with x hx
    rw [actual_factorial_cancelled_kernel A x (by linarith) hx]
    ring
  apply ((factorialCancellationSumMajorant_integrable A).div_const (A ^ 2)).mono' hmeas
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with x hx
  simpa only [Real.norm_eq_abs] using actual_cancelled_factorial_density_abs_le A x hA hx

/-- Only the cancelled actual factorial sector is estimated; every other signed sector remains. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/D9972fcb5a21e569700bSourceCancelledFactorialSectorBudget/Variant2020d3b99829d00b5bfbeaf7529509171d720748ff303bda983ffa2e52c3d470.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/D9972fcb5a21e569700bSourceCancelledFactorialSectorBudget/Variant2020d3b99829d00b5bfbeaf7529509171d720748ff303bda983ffa2e52c3d470.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `133060430e17a8fb6afabb97e0bd14d82edc3161` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
