# evenPowerMoment_eq_main_sub_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:406eb103-0426-f8aa-aebe-8afb8f1a09fe",
  "kind": "theorem",
  "lexical_name": "evenPowerMoment_eq_main_sub_error",
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
  "slug": "evenpowermoment-eq-main-sub-error--07e2db792d4d6dc01b4551c0",
  "source": {
    "blob": "e9ada83120e0e176b5cfe481f0203ed18ab8c4e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 190,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6b6d540b92f47ae493006b4f60fec05e93e51badb9167793619f983ed036795a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07e2db792d4d6dc01b4551c03bdd2a310c0e8617123c7d360ab4b1fb9080ae72",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6b6d540b92f47ae493006b4f60fec05e93e51badb9167793619f983ed036795a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:406eb103-0426-f8aa-aebe-8afb8f1a09fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem evenPowerMoment_eq_main_sub_error (A : ℝ) (hA : 1 ≤ A) :
    evenPowerMoment A =
      (1 / 2 : ℝ) * (∫ t in (0 : ℝ)..(2 * A), sourceCorrelation explicitSecondDerivative A t) -
      ∫ t in (0 : ℝ)..(2 * A), mangoldtLogError (Real.exp (t / 2)) *
        deriv (sourceCorrelation explicitSecondDerivative A) t := by
  have hC := sourceCorrelation_contDiff A (by linarith : 0 < A)
  have hl : IntervalIntegrable (fun t ↦ (t / 2) *
      deriv (sourceCorrelation explicitSecondDerivative A) t) volume 0 (2 * A) :=
    ((continuous_id.div_const 2).mul hC.continuous_deriv_one).intervalIntegrable _ _
  have hparts := intervalIntegral.integral_mul_deriv_eq_deriv_mul_of_hasDerivAt
    (continuous_id.div_const 2).continuousOn hC.continuous.continuousOn
    (fun t _ ↦ (hasDerivAt_id t).div_const 2)
    (fun t _ ↦ ((contDiff_one_iff_deriv.mp hC).1 t).hasDerivAt)
    (continuous_const.intervalIntegrable (0 : ℝ) (2 * A))
    (hC.continuous_deriv_one.intervalIntegrable (0 : ℝ) (2 * A))
  simp only [id_eq, sourceCorrelation_upper_endpoint A (by linarith), mul_zero, zero_div,
    zero_mul, sub_zero, zero_sub, intervalIntegral.integral_const_mul] at hparts
  have he : (fun t ↦ mangoldtLogError (Real.exp (t / 2)) *
      deriv (sourceCorrelation explicitSecondDerivative A) t) =
      (fun t ↦ mangoldtLogSum (Real.exp (t / 2)) *
        deriv (sourceCorrelation explicitSecondDerivative A) t) -
      (fun t ↦ (t / 2) * deriv (sourceCorrelation explicitSecondDerivative A) t) := by
    funext t
    simp only [mangoldtLogError, Real.log_exp, Pi.sub_apply, sub_mul]
  rw [he]
  simp only [Pi.sub_def]
  rw [intervalIntegral.integral_sub (mangoldtLogSum_mul_deriv_intervalIntegrable A hA) hl,
    evenPowerMoment_eq_logSum_integral A hA]
  linarith

/-- The actual discrepancy integral is bounded by Mertens' constant times the
proved source variation bound ten, uniformly over every real scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6b6d540b92f47ae493006b4f60fec05e93e51badb9167793619f983ed036795a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6b6d540b92f47ae493006b4f60fec05e93e51badb9167793619f983ed036795a.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9ada83120e0e176b5cfe481f0203ed18ab8c4e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
