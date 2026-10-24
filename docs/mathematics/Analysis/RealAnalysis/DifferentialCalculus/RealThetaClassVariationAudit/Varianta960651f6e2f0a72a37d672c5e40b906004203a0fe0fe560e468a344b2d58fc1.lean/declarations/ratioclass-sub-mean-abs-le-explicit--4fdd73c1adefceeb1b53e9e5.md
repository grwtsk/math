# ratioClass_sub_mean_abs_le_explicit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30753b2e-038e-bcdc-9401-bd6141b72cf0",
  "kind": "theorem",
  "lexical_name": "ratioClass_sub_mean_abs_le_explicit",
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
  "slug": "ratioclass-sub-mean-abs-le-explicit--4fdd73c1adefceeb1b53e9e5",
  "source": {
    "blob": "f05233e91f59fd2dd091663ed54a54d47a570387",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1195,
    "line": 1117,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RealThetaClassVariationAudit/Varianta960651f6e2f0a72a37d672c5e40b906004203a0fe0fe560e468a344b2d58fc1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4fdd73c1adefceeb1b53e9e599443da3a7218f719333c25ee4e84a41e2969585",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RealThetaClassVariationAudit/Varianta960651f6e2f0a72a37d672c5e40b906004203a0fe0fe560e468a344b2d58fc1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30753b2e-038e-bcdc-9401-bd6141b72cf0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1117–1195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ratioClass_sub_mean_abs_le_explicit (A : ℝ) (u v : ℕ)
    (hA : 1 ≤ A) (hu : 1 ≤ u) (hv : 1 ≤ v) :
    |PrimeSupportedBlock.ratioClassContribution A u v - RatioClassVariation.classMean A u v| ≤
      |(ArithmeticFunction.moebius (u * v) : ℝ)| * (((u * v).divisors.card : ℝ) + 2) *
        ((ThetaKernelEstimate.kernelBound A +
          4 * (28 + 30 * Real.sqrt (65 / 3) / A + 24 * (65 / (3 * A ^ 2)) +
            8 * Real.sqrt (325325 / 18) / A ^ 3)) / Real.sqrt ((u * v : ℕ) : ℝ)) := by
  exact (RatioClassVariation.ratioClass_sub_mean_abs_le A u v hu hv).trans
    (mul_le_mul_of_nonneg_left (classVariation_abs_le A u v hA hu hv) (by positivity))

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
#print axioms KernelVariationTransportScratch.abs_sub_le_reciprocal
#print axioms KernelVariationTransportScratch.sqrt_reciprocal_step_le
#print axioms KernelVariationTransportScratch.sqrt_reciprocal_variation_le
#print axioms KernelVariationTransportScratch.composed_abs_sub_le
#print axioms KernelVariationTransportScratch.composedVariation
#print axioms KernelVariationTransportScratch.composedVariation_zero
#print axioms KernelVariationTransportScratch.composedVariation_le
#print axioms KernelVariationTransportScratch.composedVariation_nat_le
#print axioms KernelVariationTransportScratch.rpow_three_halves
#print axioms KernelVariationTransportScratch.composedVariation_nat_le_rpow
#print axioms KernelVariationTransportScratch.composedVariation_endpoint_le
#print axioms RealThetaDerivativeScratch.source_composedVariation_abs_le
#print axioms RealThetaDerivativeScratch.classVariation_abs_le
#print axioms RealThetaDerivativeScratch.ratioClass_sub_mean_abs_le_explicit
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RealThetaClassVariationAudit/Varianta960651f6e2f0a72a37d672c5e40b906004203a0fe0fe560e468a344b2d58fc1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RealThetaClassVariationAudit/Varianta960651f6e2f0a72a37d672c5e40b906004203a0fe0fe560e468a344b2d58fc1.lean#L1117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f05233e91f59fd2dd091663ed54a54d47a570387` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
