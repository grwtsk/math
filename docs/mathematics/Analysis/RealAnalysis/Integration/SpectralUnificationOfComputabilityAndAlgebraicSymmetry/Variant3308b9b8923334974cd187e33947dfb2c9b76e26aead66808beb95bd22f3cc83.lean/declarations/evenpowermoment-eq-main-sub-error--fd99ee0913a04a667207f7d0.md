# evenPowerMoment_eq_main_sub_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "45c160c33c1f7be7de4255fea1045560def77484",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 182,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/33/3308b9b8923334974cd187e33947dfb2c9b76e26aead66808beb95bd22f3cc83.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dd586289-f3d6-cc38-ea95-0641a2738310",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7c3392b7-3a30-5aa5-ec51-79f31b1fa4bf",
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
  "slug": "evenpowermoment-eq-main-sub-error--fd99ee0913a04a667207f7d0",
  "source": {
    "blob": "45c160c33c1f7be7de4255fea1045560def77484",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 182,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant3308b9b8923334974cd187e33947dfb2c9b76e26aead66808beb95bd22f3cc83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd99ee0913a04a667207f7d0fb6b542d45b0686e071587f98ba250240939d24f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant3308b9b8923334974cd187e33947dfb2c9b76e26aead66808beb95bd22f3cc83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c3392b7-3a30-5aa5-ec51-79f31b1fa4bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–213.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant3308b9b8923334974cd187e33947dfb2c9b76e26aead66808beb95bd22f3cc83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant3308b9b8923334974cd187e33947dfb2c9b76e26aead66808beb95bd22f3cc83.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45c160c33c1f7be7de4255fea1045560def77484` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
