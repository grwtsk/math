# realThetaRemainder_derivative_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:760c15db-6220-1a55-bce1-2c6fe0a3eda3",
  "kind": "theorem",
  "lexical_name": "realThetaRemainder_derivative_abs_le",
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
  "slug": "realthetaremainder-derivative-abs-le--e8b3897df303d5c02920a0e6",
  "source": {
    "blob": "7e1969d3c754b4c2f1c3205b90c2a61e25240308",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 792,
    "line": 724,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeNormAudit/Variant20c6a463e4ff9dc1589b23c0f876770b28528fd5e4ce00b6f92e41c00245fb01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8b3897df303d5c02920a0e67f9633005968c06011254f95cb89119a3dc93974",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RealThetaDerivativeNormAudit/Variant20c6a463e4ff9dc1589b23c0f876770b28528fd5e4ce00b6f92e41c00245fb01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:760c15db-6220-1a55-bce1-2c6fe0a3eda3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 724–792.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem realThetaRemainder_derivative_abs_le (A q : ℝ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    |deriv (realThetaRemainder A) q| ≤
      (28 + 30 * Real.sqrt (65 / 3) / A + 24 * (65 / (3 * A ^ 2)) +
        8 * Real.sqrt (325325 / 18) / A ^ 3) / (q * Real.sqrt q) := by
  have hq0 : 0 < q := by linarith
  rw [(realThetaRemainder_hasDerivAt A q hA hq0).deriv, abs_mul,
    abs_of_pos (one_div_pos.mpr hq0)]
  calc
    _ ≤ 1 / q * ((28 + 30 * Real.sqrt (65 / 3) / A + 24 * (65 / (3 * A ^ 2)) +
        8 * Real.sqrt (325325 / 18) / A ^ 3) / Real.sqrt q) :=
      mul_le_mul_of_nonneg_left (realThetaDifferenceKernel_add_rankOne_abs_le A q hA hq)
        (one_div_nonneg.mpr hq0.le)
    _ = _ := by ring

end
end RealThetaDerivativeScratch

#print axioms RealThetaDerivativeScratch.realThetaKernel
#print axioms RealThetaDerivativeScratch.differenceSamplingKernel
#print axioms RealThetaDerivativeScratch.realThetaDifferenceKernel
#print axioms RealThetaDerivativeScratch.realThetaRemainder
#print axioms RealThetaDerivativeScratch.samplingIndices_eq_fixed_filter
#print axioms RealThetaDerivativeScratch.realThetaKernel_eq_strict_sum
#print axioms RealThetaDerivativeScratch.realThetaKernel_eq_nat
#print axioms RealThetaDerivativeScratch.realThetaRemainder_eq_nat
#print axioms RealThetaDerivativeScratch.differenceSamplingKernel_eq_mul_deriv
#print axioms RealThetaDerivativeScratch.realThetaKernel_hasDerivAt
#print axioms RealThetaDerivativeScratch.realThetaKernel_deriv
#print axioms RealThetaDerivativeScratch.realThetaRemainder_hasDerivAt
#print axioms RealThetaDerivativeScratch.realThetaRemainder_differentiableOn
#print axioms RealThetaDerivativeScratch.difference_primitive_eq
#print axioms RealThetaDerivativeScratch.differencePrimitiveSamplingKernel
#print axioms RealThetaDerivativeScratch.differencePrimitiveSamplingKernel_eq
#print axioms RealThetaDerivativeScratch.differencePrimitiveSamplingKernel_add_rankOne_abs_le
#print axioms RealThetaDerivativeScratch.differencePrimitiveSamplingKernel_eq_fixed_sum
#print axioms RealThetaDerivativeScratch.difference_tail_eq_primitive
#print axioms RealThetaDerivativeScratch.rootWeight_difference_integral
#print axioms RealThetaDerivativeScratch.differenceInnerTerm
#print axioms RealThetaDerivativeScratch.differenceInnerTerm_eq
#print axioms RealThetaDerivativeScratch.differenceInnerTerm_integrable
#print axioms RealThetaDerivativeScratch.differenceInnerTerm_integral
#print axioms RealThetaDerivativeScratch.differenceKernel_eq_inner_sum
#print axioms RealThetaDerivativeScratch.differenceKernel_rescaled_integrable
#print axioms RealThetaDerivativeScratch.differenceKernel_integral_eq_primitive
#print axioms RealThetaDerivativeScratch.differenceKernel_integral_add_rankOne_abs_le
#print axioms RealThetaDerivativeScratch.iteratedDifference
#print axioms RealThetaDerivativeScratch.iteratedDifference_eq
#print axioms RealThetaDerivativeScratch.iteratedDifference_contDiff
#print axioms RealThetaDerivativeScratch.iteratedDifference_hasCompactSupport
#print axioms RealThetaDerivativeScratch.iteratedDifference_abs_le
#print axioms RealThetaDerivativeScratch.iteratedDifference_derivative_abs_le
#print axioms RealThetaDerivativeScratch.compact_derivative_two_moments_zero
#print axioms RealThetaDerivativeScratch.iteratedDifference_two_moments_zero
#print axioms RealThetaDerivativeScratch.iteratedDifference_zero_right
#print axioms RealThetaDerivativeScratch.differenceSamplingKernel_hasDerivAt
#print axioms RealThetaDerivativeScratch.iteratedDifference_sampling_zero
#print axioms RealThetaDerivativeScratch.iteratedDifference_sampling_sum_abs_le
#print axioms RealThetaDerivativeScratch.differenceSamplingKernel_derivative_abs_le
#print axioms RealThetaDerivativeScratch.inverse_root_majorant_eq
#print axioms RealThetaDerivativeScratch.inverse_root_majorant_integrable
#print axioms RealThetaDerivativeScratch.inverse_root_majorant_integral
#print axioms RealThetaDerivativeScratch.scaledDifference_hasDerivAt
#print axioms RealThetaDerivativeScratch.scaledDifference_derivative_integrable
#print axioms RealThetaDerivativeScratch.scaledDifference_variation_le
#print axioms RealThetaDerivativeScratch.differenceSamplingKernel_zero_of_exp_le
#print axioms RealThetaDerivativeScratch.realThetaDifferenceKernel_eq_padded_sum
#print axioms RealThetaDerivativeScratch.realThetaDifferenceKernel_sub_integral_abs_le
#print axioms RealThetaDerivativeScratch.realThetaDifferenceKernel_add_rankOne_abs_le
#print axioms RealThetaDerivativeScratch.realThetaRemainder_derivative_abs_le
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RealThetaDerivativeNormAudit/Variant20c6a463e4ff9dc1589b23c0f876770b28528fd5e4ce00b6f92e41c00245fb01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeNormAudit/Variant20c6a463e4ff9dc1589b23c0f876770b28528fd5e4ce00b6f92e41c00245fb01.lean#L724).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e1969d3c754b4c2f1c3205b90c2a61e25240308` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
