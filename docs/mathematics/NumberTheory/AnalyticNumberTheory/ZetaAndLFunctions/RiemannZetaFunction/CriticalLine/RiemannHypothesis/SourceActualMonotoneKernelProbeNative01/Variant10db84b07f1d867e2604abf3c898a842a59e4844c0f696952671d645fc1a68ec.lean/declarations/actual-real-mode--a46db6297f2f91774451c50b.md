# actual_real_mode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b921e5d8-4396-0ecc-6ccb-a108d1a56f6f",
  "kind": "theorem",
  "lexical_name": "actual_real_mode",
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
  "slug": "actual-real-mode--a46db6297f2f91774451c50b",
  "source": {
    "blob": "18e9a4db92ee18f5748a9d530d215b4d5987c584",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 59,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMonotoneKernelProbeNative01/Variant10db84b07f1d867e2604abf3c898a842a59e4844c0f696952671d645fc1a68ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a46db6297f2f91774451c50b7f0b07f276cae0266d91ff6371ce7c4df8a1037a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMonotoneKernelProbeNative01/Variant10db84b07f1d867e2604abf3c898a842a59e4844c0f696952671d645fc1a68ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b921e5d8-4396-0ecc-6ccb-a108d1a56f6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem actual_real_mode {A : ℝ} (hA : 1 ≤ A) (z : ℝ) :
    (∫ t in 0..2 * A, Real.exp (z * t) * criticalWeight A t) =
      (1 / 2 + z) * (actualHalfCorrelationTransform A (z : ℂ)).re + 1 := by
  have hc := sourceCorrelation_contDiff A (by linarith : 0 < A)
  have he : Continuous (fun t : ℝ => Real.exp (z * t)) := by fun_prop
  have hi0 := (he.mul hc.continuous).intervalIntegrable 0 (2 * A)
  have hi1 := (he.mul (hc.continuous_deriv_one)).intervalIntegrable 0 (2 * A)
  have hibp := intervalIntegral.integral_mul_deriv_eq_deriv_mul_of_hasDerivAt
    (a := 0) (b := 2 * A)
    (u := fun t : ℝ => Real.exp (z * t))
    (v := sourceCorrelation explicitSecondDerivative A)
    (u' := fun t => z * Real.exp (z * t))
    (v' := deriv (sourceCorrelation explicitSecondDerivative A))
    he.continuousOn hc.continuous.continuousOn
    (fun t _ => by
      convert (((hasDerivAt_id t).const_mul z).exp) using 1 <;> ring)
    (fun t _ => (hc.differentiable (by norm_num) t).hasDerivAt)
    ((he.const_mul z).intervalIntegrable _ _)
    (hc.continuous_deriv_one.intervalIntegrable _ _)
  have hz := sourceCorrelation_eq_zero_of_two_mul_le_abs A (2 * A)
    (by linarith : 0 < A) (by rw [abs_of_pos (by positivity)])
  rw [hz, sourceCorrelation_zero (by linarith : 0 < A)] at hibp
  simp only [mul_zero, Real.exp_zero, mul_one, zero_sub] at hibp
  rw [halfTransform_real]
  unfold criticalWeight
  simp_rw [mul_sub, mul_div_assoc]
  rw [intervalIntegral.integral_sub (hi0.div_const 2) hi1,
    intervalIntegral.integral_div]
  have hp : (∫ t in 0..2 * A,
      (z * Real.exp (z * t)) * sourceCorrelation explicitSecondDerivative A t) =
      z * (∫ t in 0..2 * A,
        Real.exp (z * t) * sourceCorrelation explicitSecondDerivative A t) := by
    simp_rw [mul_assoc]
    rw [intervalIntegral.integral_const_mul]
  rw [hp] at hibp
  linarith

/-- Both true source endpoints give the exact signed probe readout and unit payment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMonotoneKernelProbeNative01/Variant10db84b07f1d867e2604abf3c898a842a59e4844c0f696952671d645fc1a68ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMonotoneKernelProbeNative01/Variant10db84b07f1d867e2604abf3c898a842a59e4844c0f696952671d645fc1a68ec.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18e9a4db92ee18f5748a9d530d215b4d5987c584` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
