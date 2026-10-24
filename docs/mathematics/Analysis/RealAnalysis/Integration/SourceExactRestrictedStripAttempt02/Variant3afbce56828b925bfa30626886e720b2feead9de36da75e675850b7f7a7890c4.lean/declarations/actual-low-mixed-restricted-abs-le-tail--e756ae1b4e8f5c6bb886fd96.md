# actual_low_mixed_restricted_abs_le_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:80a4f632-0122-bbaa-a607-27c22c527b56",
  "kind": "theorem",
  "lexical_name": "actual_low_mixed_restricted_abs_le_tail",
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
  "slug": "actual-low-mixed-restricted-abs-le-tail--e756ae1b4e8f5c6bb886fd96",
  "source": {
    "blob": "56940c7938edaeb9d5db78b53031ab83812034aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 73,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceExactRestrictedStripAttempt02/Variant3afbce56828b925bfa30626886e720b2feead9de36da75e675850b7f7a7890c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e756ae1b4e8f5c6bb886fd969d360b12d25f57ecfc49cb47ec7a74506841cb00",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceExactRestrictedStripAttempt02/Variant3afbce56828b925bfa30626886e720b2feead9de36da75e675850b7f7a7890c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80a4f632-0122-bbaa-a607-27c22c527b56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_low_mixed_restricted_abs_le_tail {Q A : ℝ} (hQ : 91 ≤ Q)
    (hQA : Q ≤ A) (S : Set ℝ) :
    |∫ v in S, actualLowMixedWorkDensity A v| ≤
      (Real.log 4 + 4 + Real.log 2) * (1 / 2 + 2 * tailEnergyCoefficient Q / A ^ 2) := by
  have hA : 1 ≤ A := by linarith
  have hp : 0 < A := by linarith
  have h1 : IntegrableOn (fun v =>
      actualLowTimeProfile (deriv (normalizedTest explicitSecondDerivative A)) A v *
        actualReflectedProfile (deriv (normalizedTest explicitSecondDerivative A)) A v) S :=
    (low_sector_integrable _
      ((normalizedTest_contDiff A hp).continuous_deriv (by norm_num)) hA
      (deriv_source_tsupport_subset hp)).integrableOn
  have h0 : IntegrableOn (fun v =>
      actualLowTimeProfile (normalizedTest explicitSecondDerivative A) A v *
        actualReflectedProfile (normalizedTest explicitSecondDerivative A) A v) S := by
    have hsum := (actualLowMixedWorkDensity_integrable hA).integrableOn (s := S)
    have he : (fun v => actualLowMixedWorkDensity A v -
        actualLowTimeProfile (deriv (normalizedTest explicitSecondDerivative A)) A v *
          actualReflectedProfile (deriv (normalizedTest explicitSecondDerivative A)) A v) =
      (fun v => (1 / 4 : ℝ) *
        (actualLowTimeProfile (normalizedTest explicitSecondDerivative A) A v *
          actualReflectedProfile (normalizedTest explicitSecondDerivative A) A v)) := by
      funext v
      unfold actualLowMixedWorkDensity
      ring
    have hh := hsum.sub h1
    change IntegrableOn (fun v => actualLowMixedWorkDensity A v -
      actualLowTimeProfile (deriv (normalizedTest explicitSecondDerivative A)) A v *
        actualReflectedProfile (deriv (normalizedTest explicitSecondDerivative A)) A v) S at hh
    rw [he] at hh
    simpa using hh.const_mul (4 : ℝ)
  unfold actualLowMixedWorkDensity
  rw [integral_add h1 (h0.const_mul (1 / 4 : ℝ)), integral_const_mul]
  calc
    _ ≤ |∫ v in S, actualLowTimeProfile (deriv (normalizedTest explicitSecondDerivative A)) A v *
          actualReflectedProfile (deriv (normalizedTest explicitSecondDerivative A)) A v| +
        (1 / 4 : ℝ) * |∫ v in S, actualLowTimeProfile (normalizedTest explicitSecondDerivative A)
          A v * actualReflectedProfile (normalizedTest explicitSecondDerivative A) A v| := by
      simpa only [abs_mul, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 1 / 4)] using
        abs_add_le (∫ v in S, actualLowTimeProfile (deriv (normalizedTest explicitSecondDerivative A))
          A v * actualReflectedProfile (deriv (normalizedTest explicitSecondDerivative A)) A v)
          ((1 / 4 : ℝ) * ∫ v in S, actualLowTimeProfile (normalizedTest explicitSecondDerivative A)
            A v * actualReflectedProfile (normalizedTest explicitSecondDerivative A) A v)
    _ ≤ 2 * (Real.log 4 + 4 + Real.log 2) * (tailEnergyCoefficient Q / A ^ 2) +
        (1 / 4 : ℝ) * (2 * (Real.log 4 + 4 + Real.log 2)) :=
      add_le_add (actual_derivative_low_sector_abs_le_tail hQ hQA S)
        (mul_le_mul_of_nonneg_left (actual_source_low_sector_abs_le hA S) (by norm_num))
    _ = _ := by ring

/-- The retained spatial strip is bounded by its literal independently defined low row. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceExactRestrictedStripAttempt02/Variant3afbce56828b925bfa30626886e720b2feead9de36da75e675850b7f7a7890c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceExactRestrictedStripAttempt02/Variant3afbce56828b925bfa30626886e720b2feead9de36da75e675850b7f7a7890c4.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56940c7938edaeb9d5db78b53031ab83812034aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
