# fixedKernel_laplace_eq_repairedTransfer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0bb0fd1c27edc89935365d7119e55a1f8f9c4082",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 950,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f809608b0ce9357cbd5638568ce150458a92d0753ca5187932bee41d745158bd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f6b2dbf5-b767-170e-e964-f726251e8260",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7dd45533-c75d-a20e-32c6-9c04843f8e48",
  "kind": "theorem",
  "lexical_name": "fixedKernel_laplace_eq_repairedTransfer",
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
  "slug": "fixedkernel-laplace-eq-repairedtransfer--262e2dc0e569e5439bb12b55",
  "source": {
    "blob": "0bb0fd1c27edc89935365d7119e55a1f8f9c4082",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1001,
    "line": 950,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelLaplaceAudit/Variantf809608b0ce9357cbd5638568ce150458a92d0753ca5187932bee41d745158bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:262e2dc0e569e5439bb12b559a26dad0f5e53dc686a926499b046646a76f867f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FixedKernelLaplaceAudit/Variantf809608b0ce9357cbd5638568ce150458a92d0753ca5187932bee41d745158bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7dd45533-c75d-a20e-32c6-9c04843f8e48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 950–1001.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixedKernel_laplace_eq_repairedTransfer (z : ℂ) (hz : 1 / 2 < z.re) :
    (∫ t : ℝ in Ioi 0, (fixedKernel t : ℂ) * Complex.exp ((-z) * (t : ℂ))) =
      FrozenSourceTransferScratch.repairedTransfer z := by
  rw [FrozenSourceTransferScratch.repairedTransfer_eq_product z (by
    intro h
    have hr := congrArg Complex.re h
    simp only [Complex.div_ofNat_re, Complex.one_re] at hr
    linarith)]
  exact fixedKernel_laplace_eq_transferProduct z hz

end
end FixedKernelLaplaceScratch

set_option pp.proofs false
#print FixedKernelLaplaceScratch.weightedSource
#print axioms FixedKernelLaplaceScratch.weightedSource
#print FixedKernelLaplaceScratch.laplaceSample
#print axioms FixedKernelLaplaceScratch.laplaceSample
#print FixedKernelLaplaceScratch.sampleCoefficient
#print axioms FixedKernelLaplaceScratch.sampleCoefficient
#print FixedKernelLaplaceScratch.sourceNormIntegral
#print axioms FixedKernelLaplaceScratch.sourceNormIntegral
#print FixedKernelLaplaceScratch.V_even
#print axioms FixedKernelLaplaceScratch.V_even
#print FixedKernelLaplaceScratch.weightedSource_integrable
#print axioms FixedKernelLaplaceScratch.weightedSource_integrable
#print FixedKernelLaplaceScratch.laplaceSample_eq_translate
#print axioms FixedKernelLaplaceScratch.laplaceSample_eq_translate
#print FixedKernelLaplaceScratch.laplaceSample_integrable
#print axioms FixedKernelLaplaceScratch.laplaceSample_integrable
#print FixedKernelLaplaceScratch.laplaceSample_zero_of_nonpos
#print axioms FixedKernelLaplaceScratch.laplaceSample_zero_of_nonpos
#print FixedKernelLaplaceScratch.laplaceSample_integral_Ioi
#print axioms FixedKernelLaplaceScratch.laplaceSample_integral_Ioi
#print FixedKernelLaplaceScratch.sourceNormIntegral_nonneg
#print axioms FixedKernelLaplaceScratch.sourceNormIntegral_nonneg
#print FixedKernelLaplaceScratch.laplaceSample_norm_integral_Ioi
#print axioms FixedKernelLaplaceScratch.laplaceSample_norm_integral_Ioi
#print FixedKernelLaplaceScratch.sampleCoefficient_norm
#print axioms FixedKernelLaplaceScratch.sampleCoefficient_norm
#print FixedKernelLaplaceScratch.laplaceSample_norm_integrals_summable
#print axioms FixedKernelLaplaceScratch.laplaceSample_norm_integrals_summable
#print FixedKernelLaplaceScratch.sampleCoefficient_eq_cpow
#print axioms FixedKernelLaplaceScratch.sampleCoefficient_eq_cpow
#print FixedKernelLaplaceScratch.laplaceSample_tsum
#print axioms FixedKernelLaplaceScratch.laplaceSample_tsum
#print FixedKernelLaplaceScratch.fixedKernel_laplace_integrable
#print axioms FixedKernelLaplaceScratch.fixedKernel_laplace_integrable
#print FixedKernelLaplaceScratch.fixedKernel_laplace_eq_transferProduct
#print axioms FixedKernelLaplaceScratch.fixedKernel_laplace_eq_transferProduct
#print FixedKernelLaplaceScratch.fixedKernel_laplace_eq_repairedTransfer
#print axioms FixedKernelLaplaceScratch.fixedKernel_laplace_eq_repairedTransfer
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FixedKernelLaplaceAudit/Variantf809608b0ce9357cbd5638568ce150458a92d0753ca5187932bee41d745158bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelLaplaceAudit/Variantf809608b0ce9357cbd5638568ce150458a92d0753ca5187932bee41d745158bd.lean#L950).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bb0fd1c27edc89935365d7119e55a1f8f9c4082` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
