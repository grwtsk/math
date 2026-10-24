# actualErrorConvolution_difference_return

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb4fa119-84f1-0a6a-08d0-719471b48dbd",
  "kind": "theorem",
  "lexical_name": "actualErrorConvolution_difference_return",
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
  "slug": "actualerrorconvolution-difference-return--60909ed102b5f83f3ca8d4a8",
  "source": {
    "blob": "2472fbaf73e7c639a2aedea748c08521cadcacca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 321,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant997780bc60347cf417c8e9ef8b625cdf670069906394c4dd0fa5aa68417b598c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60909ed102b5f83f3ca8d4a808af597af46e3223a15c9c01accdf1b0fae25205",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant997780bc60347cf417c8e9ef8b625cdf670069906394c4dd0fa5aa68417b598c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb4fa119-84f1-0a6a-08d0-719471b48dbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualErrorConvolution_difference_return {A : ℝ} (hA : 91 ≤ A) :
    (∫ t in Real.log 7..2 * A,
      (actualMangoldtErrorConvolution (1 / 2) t - actualMangoldtErrorConvolution 1 t) *
        actualDampedXiReturnDensity A t) =
      (∫ t in Real.log 7..2 * A, actualCenteredMangoldtLogError t * Real.exp (t / 2) *
        (sourceCorrelation explicitSecondDerivative A t / 4 +
          deriv (sourceCorrelation explicitSecondDerivative A) t / 2)) +
            actualErrorConvolutionLowerHead A := by
  have hb : 0 ≤ 2 * A := by linarith
  have ha : 0 ≤ Real.log 7 := Real.log_nonneg (by norm_num)
  have hab : Real.log 7 ≤ 2 * A := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)]
  have hsub : uIcc (Real.log 7) (2 * A) ⊆ uIcc 0 (2 * A) := by
    rw [uIcc_of_le hab, uIcc_of_le hb]
    exact Icc_subset_Icc ha le_rfl
  have hiF := (centered_error_intervalIntegrable hb).mono_set hsub
  have hiHalf := hiF.mul_continuousOn (halfTest_contDiff (by linarith)).continuous.continuousOn
  have hiOne := hiF.mul_continuousOn (oneTest_contDiff (by linarith)).continuous.continuousOn
  have hdiff :
      (∫ t in Real.log 7..2 * A, actualCenteredMangoldtLogError t *
        actualOneConvolutionReturnTest A t) -
      (∫ t in Real.log 7..2 * A, actualCenteredMangoldtLogError t *
        actualHalfConvolutionReturnTest A t) =
      ∫ t in Real.log 7..2 * A, actualCenteredMangoldtLogError t * Real.exp (t / 2) *
        (sourceCorrelation explicitSecondDerivative A t / 4 +
          deriv (sourceCorrelation explicitSecondDerivative A) t / 2) := by
    rw [← intervalIntegral.integral_sub hiOne hiHalf]
    apply intervalIntegral.integral_congr
    intro t _
    unfold actualOneConvolutionReturnTest actualHalfConvolutionReturnTest
    dsimp only
    ring
  have hreturn :
      (∫ t in Real.log 7..2 * A,
        (actualMangoldtErrorConvolution (1 / 2) t - actualMangoldtErrorConvolution 1 t) *
          actualDampedXiReturnDensity A t) =
      (∫ t in Real.log 7..2 * A,
        actualMangoldtErrorConvolution (1 / 2) t * actualDampedXiReturnDensity A t) -
      (∫ t in Real.log 7..2 * A,
        actualMangoldtErrorConvolution 1 t * actualDampedXiReturnDensity A t) := by
    rw [← intervalIntegral.integral_sub
      (actualErrorConvolutionReturn_intervalIntegrable (1 / 2) hA)
      (actualErrorConvolutionReturn_intervalIntegrable 1 hA)]
    apply intervalIntegral.integral_congr
    intro t _
    dsimp only
    ring
  rw [hreturn, actualHalfConvolution_return hA, actualOneConvolution_return hA,
    actualErrorConvolutionLowerHead_eq_closed_traces]
  linarith

end
end FormalResearch.RiemannHypothesis.SourceActualXiErrorCriticalCovariance
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant997780bc60347cf417c8e9ef8b625cdf670069906394c4dd0fa5aa68417b598c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant997780bc60347cf417c8e9ef8b625cdf670069906394c4dd0fa5aa68417b598c.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2472fbaf73e7c639a2aedea748c08521cadcacca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
