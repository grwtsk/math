# fixedKernel_laplace_eq_repairedTransfer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f80f10a0-0cbd-635a-5d74-e5c7dc5dec20",
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
  "slug": "fixedkernel-laplace-eq-repairedtransfer--f294ed6a10179500d1f83c66",
  "source": {
    "blob": "db37b78f749808402160d96b5b8bcf4072dc9ffc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1009,
    "line": 958,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelLaplaceAudit/Variant784d87078fb54ed8f24ed284a5171f498a99ea824fc80d829a839e4dcbf750a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f294ed6a10179500d1f83c66cae4660862c2734db06c1aac6b2d580a20ca625e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FixedKernelLaplaceAudit/Variant784d87078fb54ed8f24ed284a5171f498a99ea824fc80d829a839e4dcbf750a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f80f10a0-0cbd-635a-5d74-e5c7dc5dec20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 958–1009.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FixedKernelLaplaceAudit/Variant784d87078fb54ed8f24ed284a5171f498a99ea824fc80d829a839e4dcbf750a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelLaplaceAudit/Variant784d87078fb54ed8f24ed284a5171f498a99ea824fc80d829a839e4dcbf750a9.lean#L958).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db37b78f749808402160d96b5b8bcf4072dc9ffc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
