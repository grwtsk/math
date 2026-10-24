# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FiniteLogAffineSecondDerivative.Variantfde9e32d8b5cba4f4440af785eeb099abe6e9bc73f28451405c826e2733ef8a3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e648ccaf800078b13254842bc562d628f8c30ee",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantfde9e32d8b5cba4f4440af785eeb099abe6e9bc73f28451405c826e2733ef8a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantfde9e32d8b5cba4f4440af785eeb099abe6e9bc73f28451405c826e2733ef8a3.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantfde9e32d8b5cba4f4440af785eeb099abe6e9bc73f28451405c826e2733ef8a3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e648ccaf800078b13254842bc562d628f8c30ee`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantfde9e32d8b5cba4f4440af785eeb099abe6e9bc73f28451405c826e2733ef8a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantfde9e32d8b5cba4f4440af785eeb099abe6e9bc73f28451405c826e2733ef8a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.FiniteLogAffineFirstDerivative` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Operator.Bilinear` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logProbability](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantfde9e32d8b5cba4f4440af785eeb099abe6e9bc73f28451405c826e2733ef8a3.lean/declarations/logprobability--21f2ed6922d9e086b275e2c6.md) | 42 | `declaration-track:21f2ed6922d9e086b275e2c67241f74cc21f01c03e8ef945b3d0622ebf9a0a86` |
| 2 | `theorem` | [probability_eq_exp_logProbability](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantfde9e32d8b5cba4f4440af785eeb099abe6e9bc73f28451405c826e2733ef8a3.lean/declarations/probability-eq-exp-logprobability--4e74d66703b94471e139789a.md) | 47 | `result-track:4e74d66703b94471e139789a9c28d666ca7718835339cd11a5529b8b23c53ca7` |
| 3 | `theorem` | [hasFDerivAt_logProbability](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantfde9e32d8b5cba4f4440af785eeb099abe6e9bc73f28451405c826e2733ef8a3.lean/declarations/hasfderivat-logprobability--1262bd9c73d3bb6952451f7b.md) | 56 | `result-track:1262bd9c73d3bb6952451f7be1835a3f94e12c82455754d2ae299ee297ea111d` |
| 4 | `def` | [probabilityDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantfde9e32d8b5cba4f4440af785eeb099abe6e9bc73f28451405c826e2733ef8a3.lean/declarations/probabilityderivative--e878298f2af1362ce5e7463c.md) | 74 | `declaration-track:e878298f2af1362ce5e7463c8510e863d301530af217a2a1cdf43f26d2729dd9` |
| 5 | `theorem` | [probabilityDerivative_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantfde9e32d8b5cba4f4440af785eeb099abe6e9bc73f28451405c826e2733ef8a3.lean/declarations/probabilityderivative-apply--f4abd90e842460fcfdcbfc0d.md) | 78 | `result-track:f4abd90e842460fcfdcbfc0d3acf6f26e9e97fca58c14275afff287949320aa0` |
| 6 | `theorem` | [hasFDerivAt_probability](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantfde9e32d8b5cba4f4440af785eeb099abe6e9bc73f28451405c826e2733ef8a3.lean/declarations/hasfderivat-probability--d258594109c031eec718c2bd.md) | 85 | `result-track:d258594109c031eec718c2bd37933971431e5cc541231f90068639c5ec89c3c6` |
| 7 | `theorem` | [centered_weighted_sum_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantfde9e32d8b5cba4f4440af785eeb099abe6e9bc73f28451405c826e2733ef8a3.lean/declarations/centered-weighted-sum-eq-zero--320a62642772c6d93489ad37.md) | 96 | `result-track:320a62642772c6d93489ad37b1cd9987923093006ccdb9ff2940313243dc90de` |
| 8 | `def` | [rawCentroidDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantfde9e32d8b5cba4f4440af785eeb099abe6e9bc73f28451405c826e2733ef8a3.lean/declarations/rawcentroidderivative--651cba72769ae08472b7c090.md) | 107 | `declaration-track:651cba72769ae08472b7c090dacd587aa8fbff8206c716851534086b1bd93027` |
| 9 | `theorem` | [rawCentroidDerivative_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantfde9e32d8b5cba4f4440af785eeb099abe6e9bc73f28451405c826e2733ef8a3.lean/declarations/rawcentroidderivative-apply--567beb46b096706551ba40f7.md) | 113 | `result-track:567beb46b096706551ba40f77607be6594cae0f9eab2acaa78fe4d3927ec2ccc` |
| 10 | `def` | [covarianceOperator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantfde9e32d8b5cba4f4440af785eeb099abe6e9bc73f28451405c826e2733ef8a3.lean/declarations/covarianceoperator--eafbf1fbb25e9f10aad11117.md) | 125 | `declaration-track:eafbf1fbb25e9f10aad111172fe0e6bfeb6831a605239a76a290a2323acab7bc` |
| 11 | `theorem` | [covarianceOperator_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantfde9e32d8b5cba4f4440af785eeb099abe6e9bc73f28451405c826e2733ef8a3.lean/declarations/covarianceoperator-apply--43bc3f78340ee8500d92bde5.md) | 133 | `result-track:43bc3f78340ee8500d92bde5d81c8cf295290dfaca6cb2b92d6dbda721f3d7cf` |
| 12 | `theorem` | [covarianceOperator_eq_covarianceForm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantfde9e32d8b5cba4f4440af785eeb099abe6e9bc73f28451405c826e2733ef8a3.lean/declarations/covarianceoperator-eq-covarianceform--132ec7ebde1a62170231467a.md) | 144 | `result-track:132ec7ebde1a62170231467ae24cf85bce74e2b861cfba1ece35674c233bbe9f` |
| 13 | `theorem` | [rawCentroidDerivative_eq_covarianceOperator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantfde9e32d8b5cba4f4440af785eeb099abe6e9bc73f28451405c826e2733ef8a3.lean/declarations/rawcentroidderivative-eq-covarianceoperator--0ec25c7c9dae31363c6a3035.md) | 152 | `result-track:0ec25c7c9dae31363c6a303594d97bb94214e2c08c79ff6596c0e4f0d6a7e1ed` |
| 14 | `theorem` | [hasFDerivAt_centroid_raw](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantfde9e32d8b5cba4f4440af785eeb099abe6e9bc73f28451405c826e2733ef8a3.lean/declarations/hasfderivat-centroid-raw--76c5d1a29e040cbea6de2b8c.md) | 196 | `result-track:76c5d1a29e040cbea6de2b8cf1620fb1b571a9163928ae11bcdac374dce7dc48` |
| 15 | `theorem` | [hasFDerivAt_centroid](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantfde9e32d8b5cba4f4440af785eeb099abe6e9bc73f28451405c826e2733ef8a3.lean/declarations/hasfderivat-centroid--237ccf311602913ddf36cec2.md) | 213 | `result-track:237ccf311602913ddf36cec284d0994ae9c95a560117a40bf95af44f546ed4ba` |
| 16 | `theorem` | [fderiv_centroid_eq_covarianceOperator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantfde9e32d8b5cba4f4440af785eeb099abe6e9bc73f28451405c826e2733ef8a3.lean/declarations/fderiv-centroid-eq-covarianceoperator--df6c1f58b0631a3d9a69b347.md) | 220 | `result-track:df6c1f58b0631a3d9a69b347018a75448981b80d2d4170fc4348e5115cca26ec` |
| 17 | `def` | [analyticDispersionReconstruction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantfde9e32d8b5cba4f4440af785eeb099abe6e9bc73f28451405c826e2733ef8a3.lean/declarations/analyticdispersionreconstruction--3f76fb2f521f0dda074aa9a8.md) | 226 | `declaration-track:3f76fb2f521f0dda074aa9a837f8ad94a12e9b4d242d9c215d04ec1901417307` |
| 18 | `theorem` | [analyticDispersionReconstruction_potential](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantfde9e32d8b5cba4f4440af785eeb099abe6e9bc73f28451405c826e2733ef8a3.lean/declarations/analyticdispersionreconstruction-potential--e1c3b0b61410ce497ddc8d30.md) | 241 | `result-track:e1c3b0b61410ce497ddc8d30a991e88d50034110443a1196cea0f27d2f03d7e8` |
| 19 | `theorem` | [analyticDispersionReconstruction_gradient](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantfde9e32d8b5cba4f4440af785eeb099abe6e9bc73f28451405c826e2733ef8a3.lean/declarations/analyticdispersionreconstruction-gradient--8c0e84626b0cbecc782b1e00.md) | 248 | `result-track:8c0e84626b0cbecc782b1e008d2535bb02e605a236b85ccdf104ca22b8d87c7b` |
| 20 | `theorem` | [analyticDispersionReconstruction_hessian](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantfde9e32d8b5cba4f4440af785eeb099abe6e9bc73f28451405c826e2733ef8a3.lean/declarations/analyticdispersionreconstruction-hessian--cf5d31eeb1a0b6048a17ec2d.md) | 255 | `result-track:cf5d31eeb1a0b6048a17ec2dc0b8ff89291efe07ca4be0ae65d0295494a03726` |
| 21 | `theorem` | [analyticDispersionReconstruction_dispersion](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantfde9e32d8b5cba4f4440af785eeb099abe6e9bc73f28451405c826e2733ef8a3.lean/declarations/analyticdispersionreconstruction-dispersion--3b489f1c8eb06a2114b69efa.md) | 262 | `result-track:3b489f1c8eb06a2114b69efa6ffb651e0df2f89aba1768228434d81d51b1e5a9` |
| 22 | `def` | [canonicalCovarianceRealization](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantfde9e32d8b5cba4f4440af785eeb099abe6e9bc73f28451405c826e2733ef8a3.lean/declarations/canonicalcovariancerealization--ffb8d139f703dfc21f9999a8.md) | 269 | `declaration-track:ffb8d139f703dfc21f9999a85b529c232a0f8661540a1fad76b616fd7f852834` |
| 23 | `theorem` | [hessian_eq_covariance](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantfde9e32d8b5cba4f4440af785eeb099abe6e9bc73f28451405c826e2733ef8a3.lean/declarations/hessian-eq-covariance--0a009274b3583a3780c82341.md) | 277 | `result-track:0a009274b3583a3780c823415aaba9dfc4aa7ac7e8793ae6b81d6e27f5b8e9f6` |
| 24 | `theorem` | [second_derivative_logPartition_eq_covariance](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantfde9e32d8b5cba4f4440af785eeb099abe6e9bc73f28451405c826e2733ef8a3.lean/declarations/second-derivative-logpartition-eq-covariance--45a65b621f78882539b9377c.md) | 285 | `result-track:45a65b621f78882539b9377c421823bbbb54e17a9d097f12cc1dcdd5e65da02c` |
| 25 | `theorem` | [iterated_fderiv_logPartition_eq_covariance](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantfde9e32d8b5cba4f4440af785eeb099abe6e9bc73f28451405c826e2733ef8a3.lean/declarations/iterated-fderiv-logpartition-eq-covariance--ae922456eaa898fb52d16ec5.md) | 293 | `result-track:ae922456eaa898fb52d16ec531eb397e75d9176a1567e7abf1ac2d1d683c38ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
