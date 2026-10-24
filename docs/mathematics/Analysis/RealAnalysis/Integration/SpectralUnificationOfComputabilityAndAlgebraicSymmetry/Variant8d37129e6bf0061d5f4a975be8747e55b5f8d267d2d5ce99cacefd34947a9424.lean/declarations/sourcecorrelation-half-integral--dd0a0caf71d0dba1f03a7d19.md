# sourceCorrelation_half_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:538ca5da-fd64-0c56-367e-d72fd56f2d8d",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_half_integral",
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
  "slug": "sourcecorrelation-half-integral--dd0a0caf71d0dba1f03a7d19",
  "source": {
    "blob": "7e0ed6d6035d27ab291348df122dc33942bebc94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 67,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant8d37129e6bf0061d5f4a975be8747e55b5f8d267d2d5ce99cacefd34947a9424.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd0a0caf71d0dba1f03a7d1902d3c360d2107ee1be9358aee9541968c2587981",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant8d37129e6bf0061d5f4a975be8747e55b5f8d267d2d5ce99cacefd34947a9424.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:538ca5da-fd64-0c56-367e-d72fd56f2d8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_half_integral (A : ℝ) (hA : 1 ≤ A) :
    (1 / 2 : ℝ) * (∫ t in (0 : ℝ)..2 * A,
      sourceCorrelation explicitSecondDerivative A t) =
      1024 * A / (99225 * sourceNormalization A) := by
  have hp : 0 < A := by linarith
  have hn := ne_of_gt hp
  have hs := intervalIntegral.integral_comp_mul_left
    (a := (0 : ℝ)) (b := 2) (sourceCorrelation explicitSecondDerivative A) hn
  simp only [mul_zero, smul_eq_mul, mul_comm A 2] at hs
  have he : (∫ v in (0 : ℝ)..2, sourceCorrelation explicitSecondDerivative A (A * v)) =
      (∫ v in (0 : ℝ)..2, (bumpCorrelation v / 16 -
        (1 / A ^ 2) * bumpCorrelationSecond v / 2 +
        (1 / A ^ 2) ^ 2 * bumpCorrelationFourth v) / sourceNormalization A) := by
    apply intervalIntegral.integral_congr
    intro v hv
    rw [uIcc_of_le (by norm_num : (0 : ℝ) ≤ 2)] at hv
    exact sourceCorrelation_eq_polynomial A v hA hv.1 hv.2
  rw [he] at hs
  have hi0 : IntervalIntegrable bumpCorrelation volume 0 2 :=
    (by unfold bumpCorrelation; fun_prop : Continuous bumpCorrelation).intervalIntegrable _ _
  have hi2 : IntervalIntegrable bumpCorrelationSecond volume 0 2 :=
    (by unfold bumpCorrelationSecond; fun_prop :
      Continuous bumpCorrelationSecond).intervalIntegrable _ _
  have hi4 : IntervalIntegrable bumpCorrelationFourth volume 0 2 :=
    (by unfold bumpCorrelationFourth; fun_prop :
      Continuous bumpCorrelationFourth).intervalIntegrable _ _
  rw [intervalIntegral.integral_div,
    intervalIntegral.integral_add
      ((hi0.div_const 16).sub ((hi2.const_mul _).div_const 2)) (hi4.const_mul _),
    intervalIntegral.integral_sub (hi0.div_const 16) ((hi2.const_mul _).div_const 2),
    intervalIntegral.integral_div, intervalIntegral.integral_div,
    intervalIntegral.integral_const_mul, intervalIntegral.integral_const_mul,
    bumpCorrelation_integral, bumpCorrelationSecond_integral, bumpCorrelationFourth_integral] at hs
  have hZ := ne_of_gt (source_normalization_pos A hA)
  norm_num at hs
  field_simp at hs ⊢
  nlinarith

/-- The actual normalization approaches its nonzero constant coefficient through real scales. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant8d37129e6bf0061d5f4a975be8747e55b5f8d267d2d5ce99cacefd34947a9424.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant8d37129e6bf0061d5f4a975be8747e55b5f8d267d2d5ce99cacefd34947a9424.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e0ed6d6035d27ab291348df122dc33942bebc94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
