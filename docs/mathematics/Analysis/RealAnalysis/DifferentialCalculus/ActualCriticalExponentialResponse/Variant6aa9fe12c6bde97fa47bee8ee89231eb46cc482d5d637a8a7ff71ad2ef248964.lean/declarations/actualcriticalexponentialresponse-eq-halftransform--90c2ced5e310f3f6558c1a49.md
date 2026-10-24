# actualCriticalExponentialResponse_eq_halfTransform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9e59f8b-8067-9d12-94cf-c1362e210be1",
  "kind": "theorem",
  "lexical_name": "actualCriticalExponentialResponse_eq_halfTransform",
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
  "slug": "actualcriticalexponentialresponse-eq-halftransform--90c2ced5e310f3f6558c1a49",
  "source": {
    "blob": "3c8f1afaa4ca4a3ef11b4469ff4e63ea821c6d1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 73,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCriticalExponentialResponse/Variant6aa9fe12c6bde97fa47bee8ee89231eb46cc482d5d637a8a7ff71ad2ef248964.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90c2ced5e310f3f6558c1a49a2ed7adea9ad7e1a8db1abcd91206eaf8d13c58c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualCriticalExponentialResponse/Variant6aa9fe12c6bde97fa47bee8ee89231eb46cc482d5d637a8a7ff71ad2ef248964.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9e59f8b-8067-9d12-94cf-c1362e210be1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCriticalExponentialResponse_eq_halfTransform {A : ℝ} (hA : 0 < A)
    (z : ℂ) :
    actualCriticalExponentialResponse A z =
      (1 / 4 - z / 2) * actualHalfCorrelationTransform A z - 1 / 2 := by
  have he : Continuous (fun t : ℝ => Complex.exp (z * (t : ℂ))) := by fun_prop
  have h0 := correlation_continuous hA
  have h1 := first_continuous hA
  have hi0 : IntervalIntegrable (fun t : ℝ => Complex.exp (z * (t : ℂ)) *
      (sourceCorrelation explicitSecondDerivative A t : ℂ)) volume 0 (2 * A) :=
    (he.mul h0).intervalIntegrable _ _
  have hi1 : IntervalIntegrable (fun t : ℝ => Complex.exp (z * (t : ℂ)) *
      ((deriv (sourceCorrelation explicitSecondDerivative A) t : ℝ) : ℂ))
      volume 0 (2 * A) := (he.mul h1).intervalIntegrable _ _
  have hibp := intervalIntegral.integral_mul_deriv_eq_deriv_mul_of_hasDerivAt
    (a := 0) (b := 2 * A)
    (u := fun t : ℝ => Complex.exp (z * (t : ℂ)))
    (v := fun t => (sourceCorrelation explicitSecondDerivative A t : ℂ))
    (u' := fun t => z * Complex.exp (z * (t : ℂ)))
    (v' := fun t => ((deriv (sourceCorrelation explicitSecondDerivative A) t : ℝ) : ℂ))
    he.continuousOn h0.continuousOn
    (fun t _ => complex_exponential_hasDerivAt z t)
    (fun t _ => correlation_hasDerivAt hA t)
    ((he.const_mul z).intervalIntegrable _ _) (h1.intervalIntegrable _ _)
  have hz := sourceCorrelation_eq_zero_of_two_mul_le_abs A (2 * A) hA
    (by rw [abs_of_pos (by positivity)])
  rw [hz, sourceCorrelation_zero hA] at hibp
  simp only [Complex.ofReal_zero, Complex.ofReal_one, Complex.exp_zero,
    mul_zero, mul_one, sub_zero, zero_sub] at hibp
  have hi : actualCriticalExponentialResponse A z =
      (∫ t in 0..2 * A, Complex.exp (z * (t : ℂ)) *
        (sourceCorrelation explicitSecondDerivative A t : ℂ)) / 4 +
      (∫ t in 0..2 * A, Complex.exp (z * (t : ℂ)) *
        ((deriv (sourceCorrelation explicitSecondDerivative A) t : ℝ) : ℂ)) / 2 := by
    unfold actualCriticalExponentialResponse
    simp_rw [mul_add, mul_div_assoc]
    rw [intervalIntegral.integral_add (hi0.div_const 4) (hi1.div_const 2),
      intervalIntegral.integral_div, intervalIntegral.integral_div]
  have hp : (∫ t in 0..2 * A,
      (z * Complex.exp (z * (t : ℂ))) *
        (sourceCorrelation explicitSecondDerivative A t : ℂ)) =
      z * actualHalfCorrelationTransform A z := by
    simp only [mul_assoc]
    rw [intervalIntegral.integral_const_mul]
    rfl
  rw [hp] at hibp
  rw [hi, hibp]
  unfold actualHalfCorrelationTransform
  ring

/-- At the genuine half pole only the preserved lower trace remains. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualCriticalExponentialResponse/Variant6aa9fe12c6bde97fa47bee8ee89231eb46cc482d5d637a8a7ff71ad2ef248964.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCriticalExponentialResponse/Variant6aa9fe12c6bde97fa47bee8ee89231eb46cc482d5d637a8a7ff71ad2ef248964.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c8f1afaa4ca4a3ef11b4469ff4e63ea821c6d1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
