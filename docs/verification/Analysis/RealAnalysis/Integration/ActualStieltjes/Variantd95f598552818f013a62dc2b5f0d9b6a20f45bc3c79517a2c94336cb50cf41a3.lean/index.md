# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ActualStieltjes.Variantd95f598552818f013a62dc2b5f0d9b6a20f45bc3c79517a2c94336cb50cf41a3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec9c3dcacf537df62894b2dd4584d850320e8e69",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualStieltjes/Variantd95f598552818f013a62dc2b5f0d9b6a20f45bc3c79517a2c94336cb50cf41a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualStieltjes/Variantd95f598552818f013a62dc2b5f0d9b6a20f45bc3c79517a2c94336cb50cf41a3.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualStieltjes/Variantd95f598552818f013a62dc2b5f0d9b6a20f45bc3c79517a2c94336cb50cf41a3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec9c3dcacf537df62894b2dd4584d850320e8e69`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualStieltjes/Variantd95f598552818f013a62dc2b5f0d9b6a20f45bc3c79517a2c94336cb50cf41a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualStieltjes/Variantd95f598552818f013a62dc2b5f0d9b6a20f45bc3c79517a2c94336cb50cf41a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `scratch.common_mean_stieltjes_20261004.CountKernel` — import line 6; external provider; requires a separately pinned dependency.
- `scratch.common_mean_stieltjes_20261004.OrdinateKernel` — import line 7; external provider; requires a separately pinned dependency.
- `scratch.common_mean_stieltjes_20261004.OrdinateSummability` — import line 8; external provider; requires a separately pinned dependency.
- `scratch.common_mean_stieltjes_20261004.KernelSeries` — import line 9; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.Laplace.Continuation` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [positiveOccurrence_countable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualStieltjes/Variantd95f598552818f013a62dc2b5f0d9b6a20f45bc3c79517a2c94336cb50cf41a3.lean/declarations/positiveoccurrence-countable--657881e4be967caa8efd6371.md) | 31 | `declaration-track:657881e4be967caa8efd637150c00937cc7aaf9d5ab3ef4cf0ba65a47d3924af` |
| 2 | `def` | [actualClosedOrdinateKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualStieltjes/Variantd95f598552818f013a62dc2b5f0d9b6a20f45bc3c79517a2c94336cb50cf41a3.lean/declarations/actualclosedordinatekernel--23c3c2884059c8db2226df45.md) | 35 | `declaration-track:23c3c2884059c8db2226df45342c45ba7b726ef6abd0957486c5ae8c5d451241` |
| 3 | `theorem` | [actual_closed_ordinate_kernel_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualStieltjes/Variantd95f598552818f013a62dc2b5f0d9b6a20f45bc3c79517a2c94336cb50cf41a3.lean/declarations/actual-closed-ordinate-kernel-eq--7d8b1e97bf6a18d753b0a257.md) | 38 | `result-track:7d8b1e97bf6a18d753b0a25792326d10f379be6103504ed68f4867a485630a12` |
| 4 | `theorem` | [actual_closed_ordinate_kernel_nonnegative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualStieltjes/Variantd95f598552818f013a62dc2b5f0d9b6a20f45bc3c79517a2c94336cb50cf41a3.lean/declarations/actual-closed-ordinate-kernel-nonnegative--d4befaf4c611aecb3f62c0cf.md) | 43 | `result-track:d4befaf4c611aecb3f62c0cf8e5ab37a656b5eef57dc19624b5d13c32b157be3` |
| 5 | `theorem` | [actual_closed_ordinate_kernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualStieltjes/Variantd95f598552818f013a62dc2b5f0d9b6a20f45bc3c79517a2c94336cb50cf41a3.lean/declarations/actual-closed-ordinate-kernel-integrable--ae393e4921372c85e65d3cbb.md) | 53 | `result-track:ae393e4921372c85e65d3cbb2af6bce9856fdccbb2b928ba012e3cb3bba53d29` |
| 6 | `theorem` | [actual_closed_ordinate_kernel_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualStieltjes/Variantd95f598552818f013a62dc2b5f0d9b6a20f45bc3c79517a2c94336cb50cf41a3.lean/declarations/actual-closed-ordinate-kernel-integral--ab012f0970981eeda97daba5.md) | 57 | `result-track:ab012f0970981eeda97daba541a46b340c4b6ad5021b132c270d1ac11f9ebc02` |
| 7 | `theorem` | [actual_closed_ordinate_kernel_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualStieltjes/Variantd95f598552818f013a62dc2b5f0d9b6a20f45bc3c79517a2c94336cb50cf41a3.lean/declarations/actual-closed-ordinate-kernel-summable--5147ddea19b965c81f9d8eba.md) | 63 | `result-track:5147ddea19b965c81f9d8eba33f325f880af0197266b306aeb4cd914eb57b9d3` |
| 8 | `theorem` | [actual_closed_ordinate_kernel_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualStieltjes/Variantd95f598552818f013a62dc2b5f0d9b6a20f45bc3c79517a2c94336cb50cf41a3.lean/declarations/actual-closed-ordinate-kernel-tsum--46084976b1a7297b3eafd3f0.md) | 68 | `result-track:46084976b1a7297b3eafd3f06f8ef1d3ab68630015d2ed07c30e0c0c5209d892` |
| 9 | `theorem` | [actual_closed_ordinate_kernel_integrals_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualStieltjes/Variantd95f598552818f013a62dc2b5f0d9b6a20f45bc3c79517a2c94336cb50cf41a3.lean/declarations/actual-closed-ordinate-kernel-integrals-summable--a052e8e65b5748e7f87cc237.md) | 75 | `result-track:a052e8e65b5748e7f87cc2375d3f9223ea23d10c5be2d76bf07afa1ca8d20c4e` |
| 10 | `theorem` | [actual_closed_ordinate_kernel_series_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualStieltjes/Variantd95f598552818f013a62dc2b5f0d9b6a20f45bc3c79517a2c94336cb50cf41a3.lean/declarations/actual-closed-ordinate-kernel-series-integrable--377cf6239e8b49b9e4d22b37.md) | 82 | `result-track:377cf6239e8b49b9e4d22b37c37e61f86eb5d3ddbfde626e6e52cdf2c30318a5` |
| 11 | `theorem` | [actual_positive_count_seventh_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualStieltjes/Variantd95f598552818f013a62dc2b5f0d9b6a20f45bc3c79517a2c94336cb50cf41a3.lean/declarations/actual-positive-count-seventh-integrable--06b7b94375288f3085809d8f.md) | 91 | `result-track:06b7b94375288f3085809d8f0f912462565f1cb146cfbf722f65f6d7f26390d8` |
| 12 | `theorem` | [actual_positive_count_kernel_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualStieltjes/Variantd95f598552818f013a62dc2b5f0d9b6a20f45bc3c79517a2c94336cb50cf41a3.lean/declarations/actual-positive-count-kernel-integral--e65eae807a7322422afcbc32.md) | 102 | `result-track:e65eae807a7322422afcbc32386da26ed65cc8303b3aac2aca7a64fa516ab401` |
| 13 | `theorem` | [actual_positive_sixth_stieltjes](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualStieltjes/Variantd95f598552818f013a62dc2b5f0d9b6a20f45bc3c79517a2c94336cb50cf41a3.lean/declarations/actual-positive-sixth-stieltjes--33fd0b3713a1a15f7bb8fca0.md) | 120 | `result-track:33fd0b3713a1a15f7bb8fca06fde9299bea6cc392b9ec5d395b0a7f3f9081256` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
