# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FiniteLogAffineSecondDerivative.Variantbb1e48a784e5167ef22c82aaca529f99829cb7957170d9bb891760fd63f66689

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8aaa878a175a57e1311bd6001c7c360795bcd02c",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantbb1e48a784e5167ef22c82aaca529f99829cb7957170d9bb891760fd63f66689.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantbb1e48a784e5167ef22c82aaca529f99829cb7957170d9bb891760fd63f66689.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantbb1e48a784e5167ef22c82aaca529f99829cb7957170d9bb891760fd63f66689.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8aaa878a175a57e1311bd6001c7c360795bcd02c`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantbb1e48a784e5167ef22c82aaca529f99829cb7957170d9bb891760fd63f66689.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantbb1e48a784e5167ef22c82aaca529f99829cb7957170d9bb891760fd63f66689.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.FiniteLogAffineFirstDerivative` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Operator.Bilinear` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logProbability](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantbb1e48a784e5167ef22c82aaca529f99829cb7957170d9bb891760fd63f66689.lean/declarations/logprobability--449d2631de85164ee0cdfe10.md) | 34 | `declaration-track:449d2631de85164ee0cdfe1010f3ab32adae63b531af18e851313fc117f59dd6` |
| 2 | `theorem` | [probability_eq_exp_logProbability](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantbb1e48a784e5167ef22c82aaca529f99829cb7957170d9bb891760fd63f66689.lean/declarations/probability-eq-exp-logprobability--b169d233d0db0e3648e59e30.md) | 39 | `result-track:b169d233d0db0e3648e59e30e7602123127caf4514123dac0040b97f0eb16814` |
| 3 | `theorem` | [hasFDerivAt_logProbability](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantbb1e48a784e5167ef22c82aaca529f99829cb7957170d9bb891760fd63f66689.lean/declarations/hasfderivat-logprobability--cf71e37bae5fb1e764661d45.md) | 48 | `result-track:cf71e37bae5fb1e764661d458130276420fcf813e95d6bad5f5fd30cbfb07abd` |
| 4 | `def` | [probabilityDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantbb1e48a784e5167ef22c82aaca529f99829cb7957170d9bb891760fd63f66689.lean/declarations/probabilityderivative--113186e1a23bf671e4b39dae.md) | 67 | `declaration-track:113186e1a23bf671e4b39dae2925f09f4a82eb0911a9ef6c590b315449abd4ed` |
| 5 | `theorem` | [probabilityDerivative_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantbb1e48a784e5167ef22c82aaca529f99829cb7957170d9bb891760fd63f66689.lean/declarations/probabilityderivative-apply--d80ba6384e4b7c16e1d95419.md) | 71 | `result-track:d80ba6384e4b7c16e1d9541917228893e4f6e4b85734aa3754a1e5dc166db799` |
| 6 | `theorem` | [hasFDerivAt_probability](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantbb1e48a784e5167ef22c82aaca529f99829cb7957170d9bb891760fd63f66689.lean/declarations/hasfderivat-probability--004413de68f0f914b4c4e13b.md) | 78 | `result-track:004413de68f0f914b4c4e13bb7ecb29f02e78ac34989de323e239f4e095c689b` |
| 7 | `theorem` | [centered_weighted_sum_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantbb1e48a784e5167ef22c82aaca529f99829cb7957170d9bb891760fd63f66689.lean/declarations/centered-weighted-sum-eq-zero--aeb1064881b5450f847e9fc5.md) | 89 | `result-track:aeb1064881b5450f847e9fc53e6a566a92df0c7ce1cf0256e809d9292633ac19` |
| 8 | `def` | [rawCentroidDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantbb1e48a784e5167ef22c82aaca529f99829cb7957170d9bb891760fd63f66689.lean/declarations/rawcentroidderivative--5c70bd4246beb133af4efb20.md) | 100 | `declaration-track:5c70bd4246beb133af4efb207908fe9771a32e1b3fe2157d03f526b82c822c95` |
| 9 | `theorem` | [rawCentroidDerivative_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantbb1e48a784e5167ef22c82aaca529f99829cb7957170d9bb891760fd63f66689.lean/declarations/rawcentroidderivative-apply--b6158049e8dae9baf0a76975.md) | 106 | `result-track:b6158049e8dae9baf0a7697579ab683525aefdb0984fe50fc950045d62dbec36` |
| 10 | `def` | [covarianceOperator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantbb1e48a784e5167ef22c82aaca529f99829cb7957170d9bb891760fd63f66689.lean/declarations/covarianceoperator--a80f20f11815d1adbe7c73d9.md) | 118 | `declaration-track:a80f20f11815d1adbe7c73d95adfe925674f811dbdba62676ab2fccd5651a25c` |
| 11 | `theorem` | [covarianceOperator_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantbb1e48a784e5167ef22c82aaca529f99829cb7957170d9bb891760fd63f66689.lean/declarations/covarianceoperator-apply--50a55b78267dcfa79607d70a.md) | 126 | `result-track:50a55b78267dcfa79607d70a1fc762fc3ac0de205e18166f5aa61ed0752884fa` |
| 12 | `theorem` | [covarianceOperator_eq_covarianceForm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantbb1e48a784e5167ef22c82aaca529f99829cb7957170d9bb891760fd63f66689.lean/declarations/covarianceoperator-eq-covarianceform--468c374a6af65e0c7744f30c.md) | 137 | `result-track:468c374a6af65e0c7744f30c04dc129b5c6192cd088aed7278720e706690190b` |
| 13 | `theorem` | [rawCentroidDerivative_eq_covarianceOperator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantbb1e48a784e5167ef22c82aaca529f99829cb7957170d9bb891760fd63f66689.lean/declarations/rawcentroidderivative-eq-covarianceoperator--15abf5202e478096da4d306a.md) | 145 | `result-track:15abf5202e478096da4d306a9d25fac408295f7839c652bc6103e77c0a433194` |
| 14 | `theorem` | [hasFDerivAt_centroid_raw](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantbb1e48a784e5167ef22c82aaca529f99829cb7957170d9bb891760fd63f66689.lean/declarations/hasfderivat-centroid-raw--7d07089cf917aafdec62d33f.md) | 189 | `result-track:7d07089cf917aafdec62d33ff81c06b744f4f69414f29ada1a6e30b8a68dc363` |
| 15 | `theorem` | [hasFDerivAt_centroid](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantbb1e48a784e5167ef22c82aaca529f99829cb7957170d9bb891760fd63f66689.lean/declarations/hasfderivat-centroid--d2ce180e47d6faa9494e5364.md) | 206 | `result-track:d2ce180e47d6faa9494e53640958321d5a1a0d3a386ad4631c501938435fc68d` |
| 16 | `theorem` | [fderiv_centroid_eq_covarianceOperator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantbb1e48a784e5167ef22c82aaca529f99829cb7957170d9bb891760fd63f66689.lean/declarations/fderiv-centroid-eq-covarianceoperator--332c1aab834f37b79706b32f.md) | 213 | `result-track:332c1aab834f37b79706b32fedce6c99680ae184a897bbd7a2d7c9430294df46` |
| 17 | `def` | [analyticDispersionReconstruction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantbb1e48a784e5167ef22c82aaca529f99829cb7957170d9bb891760fd63f66689.lean/declarations/analyticdispersionreconstruction--de2e48e17ee7c5b1bd974264.md) | 219 | `declaration-track:de2e48e17ee7c5b1bd974264f226b5e35e0976be6a4d0cf8d5ab26387f0f858d` |
| 18 | `theorem` | [analyticDispersionReconstruction_potential](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantbb1e48a784e5167ef22c82aaca529f99829cb7957170d9bb891760fd63f66689.lean/declarations/analyticdispersionreconstruction-potential--ebda53545adf21572d278b40.md) | 234 | `result-track:ebda53545adf21572d278b40823cb8fa34f2bdba4387554a8f0358ec2f63f321` |
| 19 | `theorem` | [analyticDispersionReconstruction_gradient](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantbb1e48a784e5167ef22c82aaca529f99829cb7957170d9bb891760fd63f66689.lean/declarations/analyticdispersionreconstruction-gradient--b43db610c4585b744c9aa68f.md) | 241 | `result-track:b43db610c4585b744c9aa68ff09e877a13c1a99d7cc45df87021b82bfc50997b` |
| 20 | `theorem` | [analyticDispersionReconstruction_hessian](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantbb1e48a784e5167ef22c82aaca529f99829cb7957170d9bb891760fd63f66689.lean/declarations/analyticdispersionreconstruction-hessian--15522ec1d3efe399f1c6a136.md) | 248 | `result-track:15522ec1d3efe399f1c6a136380f3771db91cd9f744311b5981ac05f58d21367` |
| 21 | `theorem` | [analyticDispersionReconstruction_dispersion](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantbb1e48a784e5167ef22c82aaca529f99829cb7957170d9bb891760fd63f66689.lean/declarations/analyticdispersionreconstruction-dispersion--14435a38de06c480a72fa8b1.md) | 255 | `result-track:14435a38de06c480a72fa8b1925499c751476c887a600544ece55088c1733b56` |
| 22 | `theorem` | [canonicalCovarianceRealization](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantbb1e48a784e5167ef22c82aaca529f99829cb7957170d9bb891760fd63f66689.lean/declarations/canonicalcovariancerealization--7775ce79e86a3521909c206b.md) | 262 | `result-track:7775ce79e86a3521909c206b1f6fcd96507cac284c92947c0d9c41e9cb189699` |
| 23 | `theorem` | [hessian_eq_covariance](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantbb1e48a784e5167ef22c82aaca529f99829cb7957170d9bb891760fd63f66689.lean/declarations/hessian-eq-covariance--19bda1e4ee8d6cecc62e9fc9.md) | 270 | `result-track:19bda1e4ee8d6cecc62e9fc9b9b5b82fe79c76aa2749694239a872d43d6b21dd` |
| 24 | `theorem` | [second_derivative_logPartition_eq_covariance](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantbb1e48a784e5167ef22c82aaca529f99829cb7957170d9bb891760fd63f66689.lean/declarations/second-derivative-logpartition-eq-covariance--5144571fb868276695f95c26.md) | 278 | `result-track:5144571fb868276695f95c260813d4b8a301245dad0abe83c608b783de21f5c9` |
| 25 | `theorem` | [iterated_fderiv_logPartition_eq_covariance](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantbb1e48a784e5167ef22c82aaca529f99829cb7957170d9bb891760fd63f66689.lean/declarations/iterated-fderiv-logpartition-eq-covariance--19b5eb3b3481fad850d92877.md) | 286 | `result-track:19b5eb3b3481fad850d92877e6c8c730ff9e9949750ac201dbb89c81be0defff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
