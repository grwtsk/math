# diagonal_energy_error_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ae602c7b0d3a5ea4f98274eb945ee879e21bd7a2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 445,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1c93db588f1bb5a13a4549e19cdd8376211eabc8576e918a40469b2f45adfd32.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9ad7dbbd-88bb-b7a4-0d5a-02d8d90c64ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:acce1af8-20a1-be3b-c4c2-c3c1271b0965",
  "kind": "theorem",
  "lexical_name": "diagonal_energy_error_le",
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
  "slug": "diagonal-energy-error-le--5659f1ad7e9d99b59661f3cc",
  "source": {
    "blob": "ae602c7b0d3a5ea4f98274eb945ee879e21bd7a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 635,
    "line": 445,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RootOperatorAudit/Variant1c93db588f1bb5a13a4549e19cdd8376211eabc8576e918a40469b2f45adfd32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5659f1ad7e9d99b59661f3cc6e22912672fe891deef66bfd383f28bc2c0c2c7f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RootOperatorAudit/Variant1c93db588f1bb5a13a4549e19cdd8376211eabc8576e918a40469b2f45adfd32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:acce1af8-20a1-be3b-c4c2-c3c1271b0965`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 445–635.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diagonal_energy_error_le (α : ℝ) (hα : 0 < α) :
    ‖sourceEnergy - truncatedEnergy (diagonalCutoff α)‖ ≤
      4 * kernelMass * derivativeBudget * α ^ 2 := by
  exact (energy_norm_sub_le _ (diagonalCutoff_ge_two α)).trans
    (mul_le_mul_of_nonneg_left (diagonal_exp_le α hα)
      (mul_nonneg (mul_nonneg (by norm_num) kernelMass_nonneg) derivativeBudget_nonneg))

end
end TimeKernelTruncationScratch

set_option pp.proofs false

#print FullLineConvolutionScratch.FullH
#print axioms FullLineConvolutionScratch.FullH

#print FullLineConvolutionScratch.fullShift
#print axioms FullLineConvolutionScratch.fullShift

#print FullLineConvolutionScratch.fullShift_ae
#print axioms FullLineConvolutionScratch.fullShift_ae

#print FullLineConvolutionScratch.fullShift_continuous
#print axioms FullLineConvolutionScratch.fullShift_continuous

#print FullLineConvolutionScratch.weighted_shift_integrable
#print axioms FullLineConvolutionScratch.weighted_shift_integrable

#print FullLineConvolutionScratch.vector
#print axioms FullLineConvolutionScratch.vector

#print FullLineConvolutionScratch.vector_norm_le
#print axioms FullLineConvolutionScratch.vector_norm_le

#print FullLineConvolutionScratch.vector_add
#print axioms FullLineConvolutionScratch.vector_add

#print FullLineConvolutionScratch.vector_smul
#print axioms FullLineConvolutionScratch.vector_smul

#print FullLineConvolutionScratch.linearMap
#print axioms FullLineConvolutionScratch.linearMap

#print FullLineConvolutionScratch.fullConvolution
#print axioms FullLineConvolutionScratch.fullConvolution

#print FullLineConvolutionScratch.fullConvolution_apply
#print axioms FullLineConvolutionScratch.fullConvolution_apply

#print FullLineConvolutionScratch.fullConvolution_norm_le
#print axioms FullLineConvolutionScratch.fullConvolution_norm_le

#print FullLineConvolutionScratch.fullConvolution_sub_kernel
#print axioms FullLineConvolutionScratch.fullConvolution_sub_kernel

#print FullLineConvolutionScratch.fullConvolution_norm_sub_le
#print axioms FullLineConvolutionScratch.fullConvolution_norm_sub_le

#print FullLineConvolutionScratch.actualFull
#print axioms FullLineConvolutionScratch.actualFull

#print FullLineConvolutionScratch.actualFull_apply
#print axioms FullLineConvolutionScratch.actualFull_apply

#print FullLineConvolutionScratch.actualFull_norm_le
#print axioms FullLineConvolutionScratch.actualFull_norm_le

#print HalfLineOperatorScratch.halfConvolution
#print axioms HalfLineOperatorScratch.halfConvolution

#print HalfLineOperatorScratch.halfConvolution_apply
#print axioms HalfLineOperatorScratch.halfConvolution_apply

#print HalfLineOperatorScratch.halfConvolution_apply_norm_le
#print axioms HalfLineOperatorScratch.halfConvolution_apply_norm_le

#print HalfLineOperatorScratch.halfConvolution_norm_le
#print axioms HalfLineOperatorScratch.halfConvolution_norm_le

#print HalfLineOperatorScratch.halfConvolution_sub_kernel
#print axioms HalfLineOperatorScratch.halfConvolution_sub_kernel

#print HalfLineOperatorScratch.halfConvolution_norm_sub_le
#print axioms HalfLineOperatorScratch.halfConvolution_norm_sub_le

#print HalfLineOperatorScratch.sourceOperator
#print axioms HalfLineOperatorScratch.sourceOperator

#print HalfLineOperatorScratch.sourceOperator_apply
#print axioms HalfLineOperatorScratch.sourceOperator_apply

#print HalfLineOperatorScratch.sourceOperator_apply_norm_le
#print axioms HalfLineOperatorScratch.sourceOperator_apply_norm_le

#print HalfLineOperatorScratch.sourceOperator_norm_le
#print axioms HalfLineOperatorScratch.sourceOperator_norm_le

#print HalfLineOperatorScratch.sourceEnergy
#print axioms HalfLineOperatorScratch.sourceEnergy

#print HalfLineOperatorScratch.sourceEnergy_apply
#print axioms HalfLineOperatorScratch.sourceEnergy_apply

#print HalfLineOperatorScratch.sourceEnergy_isPositive
#print axioms HalfLineOperatorScratch.sourceEnergy_isPositive

#print HalfLineOperatorScratch.sourceEnergy_isSelfAdjoint
#print axioms HalfLineOperatorScratch.sourceEnergy_isSelfAdjoint

#print HalfLineOperatorScratch.sourceEnergy_inner
#print axioms HalfLineOperatorScratch.sourceEnergy_inner

#print HalfLineOperatorScratch.sourceEnergy_re_inner
#print axioms HalfLineOperatorScratch.sourceEnergy_re_inner

#print HalfLineOperatorScratch.sourceEnergy_kernel
#print axioms HalfLineOperatorScratch.sourceEnergy_kernel

#print HalfLineOperatorScratch.sourceEnergy_norm
#print axioms HalfLineOperatorScratch.sourceEnergy_norm

#print TimeKernelTruncationScratch.truncatedKernel
#print axioms TimeKernelTruncationScratch.truncatedKernel

#print TimeKernelTruncationScratch.truncatedKernel_integrable
#print axioms TimeKernelTruncationScratch.truncatedKernel_integrable

#print TimeKernelTruncationScratch.truncatedKernel_memLp
#print axioms TimeKernelTruncationScratch.truncatedKernel_memLp

#print TimeKernelTruncationScratch.kernel_sub_truncated
#print axioms TimeKernelTruncationScratch.kernel_sub_truncated

#print TimeKernelTruncationScratch.norm_kernel_sub_truncated_integral
#print axioms TimeKernelTruncationScratch.norm_kernel_sub_truncated_integral

#print TimeKernelTruncationScratch.tail_majorant_integrable
#print axioms TimeKernelTruncationScratch.tail_majorant_integrable

#print TimeKernelTruncationScratch.tail_majorant_integral
#print axioms TimeKernelTruncationScratch.tail_majorant_integral

#print TimeKernelTruncationScratch.kernel_tail_integral_le
#print axioms TimeKernelTruncationScratch.kernel_tail_integral_le

#print TimeKernelTruncationScratch.norm_kernel_sub_truncated_integral_le
#print axioms TimeKernelTruncationScratch.norm_kernel_sub_truncated_integral_le

#print TimeKernelTruncationScratch.kernelMass
#print axioms TimeKernelTruncationScratch.kernelMass

#print TimeKernelTruncationScratch.kernelMass_nonneg
#print axioms TimeKernelTruncationScratch.kernelMass_nonneg

#print TimeKernelTruncationScratch.truncated_norm_integral_le
#print axioms TimeKernelTruncationScratch.truncated_norm_integral_le

#print TimeKernelTruncationScratch.truncatedOperator
#print axioms TimeKernelTruncationScratch.truncatedOperator

#print TimeKernelTruncationScratch.truncatedOperator_norm_le
#print axioms TimeKernelTruncationScratch.truncatedOperator_norm_le

#print TimeKernelTruncationScratch.operator_norm_sub_le
#print axioms TimeKernelTruncationScratch.operator_norm_sub_le

#print TimeKernelTruncationScratch.truncatedEnergy
#print axioms TimeKernelTruncationScratch.truncatedEnergy

#print TimeKernelTruncationScratch.truncatedEnergy_isPositive
#print axioms TimeKernelTruncationScratch.truncatedEnergy_isPositive

#print TimeKernelTruncationScratch.norm_energy_difference
#print axioms TimeKernelTruncationScratch.norm_energy_difference

#print TimeKernelTruncationScratch.energy_norm_sub_le
#print axioms TimeKernelTruncationScratch.energy_norm_sub_le

#print TimeKernelTruncationScratch.diagonalCutoff
#print axioms TimeKernelTruncationScratch.diagonalCutoff

#print TimeKernelTruncationScratch.diagonalCutoff_ge_two
#print axioms TimeKernelTruncationScratch.diagonalCutoff_ge_two

#print TimeKernelTruncationScratch.diagonal_exp_le
#print axioms TimeKernelTruncationScratch.diagonal_exp_le

#print TimeKernelTruncationScratch.diagonal_operator_error_le
#print axioms TimeKernelTruncationScratch.diagonal_operator_error_le

#print TimeKernelTruncationScratch.diagonal_energy_error_le
#print axioms TimeKernelTruncationScratch.diagonal_energy_error_le
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RootOperatorAudit/Variant1c93db588f1bb5a13a4549e19cdd8376211eabc8576e918a40469b2f45adfd32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RootOperatorAudit/Variant1c93db588f1bb5a13a4549e19cdd8376211eabc8576e918a40469b2f45adfd32.lean#L445).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae602c7b0d3a5ea4f98274eb945ee879e21bd7a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
