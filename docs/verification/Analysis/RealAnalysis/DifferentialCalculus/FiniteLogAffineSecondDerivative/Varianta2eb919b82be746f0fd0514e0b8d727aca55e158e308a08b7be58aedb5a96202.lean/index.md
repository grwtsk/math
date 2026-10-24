# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FiniteLogAffineSecondDerivative.Varianta2eb919b82be746f0fd0514e0b8d727aca55e158e308a08b7be58aedb5a96202

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "944138c19f841cb267ce473f274c983bba51ea25",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Varianta2eb919b82be746f0fd0514e0b8d727aca55e158e308a08b7be58aedb5a96202.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Varianta2eb919b82be746f0fd0514e0b8d727aca55e158e308a08b7be58aedb5a96202.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Varianta2eb919b82be746f0fd0514e0b8d727aca55e158e308a08b7be58aedb5a96202.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `944138c19f841cb267ce473f274c983bba51ea25`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Varianta2eb919b82be746f0fd0514e0b8d727aca55e158e308a08b7be58aedb5a96202.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Varianta2eb919b82be746f0fd0514e0b8d727aca55e158e308a08b7be58aedb5a96202.lean.json)

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
| 1 | `def` | [logProbability](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Varianta2eb919b82be746f0fd0514e0b8d727aca55e158e308a08b7be58aedb5a96202.lean/declarations/logprobability--60673672c8debdf4195529dc.md) | 42 | `declaration-track:60673672c8debdf4195529dcf55354375bf46c1d6cb959c2a07665f6e55c301b` |
| 2 | `theorem` | [probability_eq_exp_logProbability](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Varianta2eb919b82be746f0fd0514e0b8d727aca55e158e308a08b7be58aedb5a96202.lean/declarations/probability-eq-exp-logprobability--e36ae81fb004110e40bd69d6.md) | 47 | `result-track:e36ae81fb004110e40bd69d6897217284c7f00014c85dfac469f239da8331cb0` |
| 3 | `theorem` | [hasFDerivAt_logProbability](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Varianta2eb919b82be746f0fd0514e0b8d727aca55e158e308a08b7be58aedb5a96202.lean/declarations/hasfderivat-logprobability--eaa423d1c498c72d56d56b84.md) | 56 | `result-track:eaa423d1c498c72d56d56b8441d0f38ac71994444fcefb94ff5b57894a7ad51c` |
| 4 | `def` | [probabilityDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Varianta2eb919b82be746f0fd0514e0b8d727aca55e158e308a08b7be58aedb5a96202.lean/declarations/probabilityderivative--0341fd1a5a5165390edf31bf.md) | 75 | `declaration-track:0341fd1a5a5165390edf31bf201ae27f4fd5d939e133f6501ea14ba82cb9bdca` |
| 5 | `theorem` | [probabilityDerivative_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Varianta2eb919b82be746f0fd0514e0b8d727aca55e158e308a08b7be58aedb5a96202.lean/declarations/probabilityderivative-apply--23a470ffd52c83424b104bed.md) | 79 | `result-track:23a470ffd52c83424b104bedf4daefb6c05a8bb7c8173f59c57ffda35b105860` |
| 6 | `theorem` | [hasFDerivAt_probability](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Varianta2eb919b82be746f0fd0514e0b8d727aca55e158e308a08b7be58aedb5a96202.lean/declarations/hasfderivat-probability--756249b9330d2b0df5a858fe.md) | 86 | `result-track:756249b9330d2b0df5a858fe02e9ded633a402283be4c9917055495ab9d2d28c` |
| 7 | `theorem` | [centered_weighted_sum_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Varianta2eb919b82be746f0fd0514e0b8d727aca55e158e308a08b7be58aedb5a96202.lean/declarations/centered-weighted-sum-eq-zero--1d57d5a08c9cf57e30d0c6c2.md) | 97 | `result-track:1d57d5a08c9cf57e30d0c6c24a07da41761fd954753b0b34fe6e1c040acb18bd` |
| 8 | `def` | [rawCentroidDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Varianta2eb919b82be746f0fd0514e0b8d727aca55e158e308a08b7be58aedb5a96202.lean/declarations/rawcentroidderivative--7be66443bb3d868454011ef5.md) | 108 | `declaration-track:7be66443bb3d868454011ef5d7f7cb7b47554d00be4e8205e626f465be270fe6` |
| 9 | `theorem` | [rawCentroidDerivative_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Varianta2eb919b82be746f0fd0514e0b8d727aca55e158e308a08b7be58aedb5a96202.lean/declarations/rawcentroidderivative-apply--1c96e590113eb62e2a4188e3.md) | 114 | `result-track:1c96e590113eb62e2a4188e39061e5e9585c9581415bc29fcbc9e3ea79986ada` |
| 10 | `def` | [covarianceOperator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Varianta2eb919b82be746f0fd0514e0b8d727aca55e158e308a08b7be58aedb5a96202.lean/declarations/covarianceoperator--9eea28c47320c2bd4eae8e0d.md) | 126 | `declaration-track:9eea28c47320c2bd4eae8e0ddf65400ab4c2a4228e89f231f1b81bbb57f222c0` |
| 11 | `theorem` | [covarianceOperator_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Varianta2eb919b82be746f0fd0514e0b8d727aca55e158e308a08b7be58aedb5a96202.lean/declarations/covarianceoperator-apply--c8abdef12a07236132c15d1b.md) | 134 | `result-track:c8abdef12a07236132c15d1b55c5c6c1b79cc7212e6350ab7d1836914310bf23` |
| 12 | `theorem` | [covarianceOperator_eq_covarianceForm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Varianta2eb919b82be746f0fd0514e0b8d727aca55e158e308a08b7be58aedb5a96202.lean/declarations/covarianceoperator-eq-covarianceform--afbee1ebb5761f8b6ff6801e.md) | 145 | `result-track:afbee1ebb5761f8b6ff6801eb5f06c1344d21fb470aef06ee87d19544ab89275` |
| 13 | `theorem` | [rawCentroidDerivative_eq_covarianceOperator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Varianta2eb919b82be746f0fd0514e0b8d727aca55e158e308a08b7be58aedb5a96202.lean/declarations/rawcentroidderivative-eq-covarianceoperator--46e28d810cb9279688c261fc.md) | 153 | `result-track:46e28d810cb9279688c261fc8d794056f13deda01fcc96ebe1a5c6bc5f76bfa1` |
| 14 | `theorem` | [hasFDerivAt_centroid_raw](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Varianta2eb919b82be746f0fd0514e0b8d727aca55e158e308a08b7be58aedb5a96202.lean/declarations/hasfderivat-centroid-raw--8a963bea9ed72deece9ef6b0.md) | 197 | `result-track:8a963bea9ed72deece9ef6b069715fc2de4bf3a49eeaf28207bfcc899d5c7619` |
| 15 | `theorem` | [hasFDerivAt_centroid](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Varianta2eb919b82be746f0fd0514e0b8d727aca55e158e308a08b7be58aedb5a96202.lean/declarations/hasfderivat-centroid--4b442b4a475d1c8719e9f55f.md) | 214 | `result-track:4b442b4a475d1c8719e9f55fcba21ae6434116bc8441ad1f6793946481dbf871` |
| 16 | `theorem` | [fderiv_centroid_eq_covarianceOperator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Varianta2eb919b82be746f0fd0514e0b8d727aca55e158e308a08b7be58aedb5a96202.lean/declarations/fderiv-centroid-eq-covarianceoperator--ccae145bf3e36db0251d0420.md) | 221 | `result-track:ccae145bf3e36db0251d04206b184f0d73b1cd05d42a3a76b1e5e13948175049` |
| 17 | `def` | [analyticDispersionReconstruction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Varianta2eb919b82be746f0fd0514e0b8d727aca55e158e308a08b7be58aedb5a96202.lean/declarations/analyticdispersionreconstruction--869d99ffeba1b35048aa745b.md) | 227 | `declaration-track:869d99ffeba1b35048aa745b9e22eca2372fbfc24faffd76f7054770afaf7499` |
| 18 | `theorem` | [analyticDispersionReconstruction_potential](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Varianta2eb919b82be746f0fd0514e0b8d727aca55e158e308a08b7be58aedb5a96202.lean/declarations/analyticdispersionreconstruction-potential--2ef46447bac063b9857bedfe.md) | 242 | `result-track:2ef46447bac063b9857bedfe55dd2d5ecd7982c7ca0c8340e9d38e1bd634b54d` |
| 19 | `theorem` | [analyticDispersionReconstruction_gradient](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Varianta2eb919b82be746f0fd0514e0b8d727aca55e158e308a08b7be58aedb5a96202.lean/declarations/analyticdispersionreconstruction-gradient--657ffb96e1e971f7a01270bc.md) | 249 | `result-track:657ffb96e1e971f7a01270bc3ffdbec8032196712211132577b52a0e026ea821` |
| 20 | `theorem` | [analyticDispersionReconstruction_hessian](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Varianta2eb919b82be746f0fd0514e0b8d727aca55e158e308a08b7be58aedb5a96202.lean/declarations/analyticdispersionreconstruction-hessian--dc52feb0ff041961c8087899.md) | 256 | `result-track:dc52feb0ff041961c8087899f1666850f2698a2b5f06629684ae26e70d595951` |
| 21 | `theorem` | [analyticDispersionReconstruction_dispersion](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Varianta2eb919b82be746f0fd0514e0b8d727aca55e158e308a08b7be58aedb5a96202.lean/declarations/analyticdispersionreconstruction-dispersion--7d58841eefc2b3750e72ebbb.md) | 263 | `result-track:7d58841eefc2b3750e72ebbb4e56e4e2c09f5841240b6baf5fdac79a9ad65340` |
| 22 | `theorem` | [canonicalCovarianceRealization](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Varianta2eb919b82be746f0fd0514e0b8d727aca55e158e308a08b7be58aedb5a96202.lean/declarations/canonicalcovariancerealization--a66e8a96cc76324390569624.md) | 270 | `result-track:a66e8a96cc763243905696245bd14e86521b98feca4bed753f51e3421384a8ea` |
| 23 | `theorem` | [hessian_eq_covariance](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Varianta2eb919b82be746f0fd0514e0b8d727aca55e158e308a08b7be58aedb5a96202.lean/declarations/hessian-eq-covariance--9414861b0a42c9827cb429e9.md) | 278 | `result-track:9414861b0a42c9827cb429e933da2ee752a795047d716d114e232a2c9f0e53a1` |
| 24 | `theorem` | [second_derivative_logPartition_eq_covariance](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Varianta2eb919b82be746f0fd0514e0b8d727aca55e158e308a08b7be58aedb5a96202.lean/declarations/second-derivative-logpartition-eq-covariance--78c6e4f35b93cdfcfed971aa.md) | 286 | `result-track:78c6e4f35b93cdfcfed971aa4c02a1735a1bb980db5d67b7fd51ea34dd8b0a54` |
| 25 | `theorem` | [iterated_fderiv_logPartition_eq_covariance](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Varianta2eb919b82be746f0fd0514e0b8d727aca55e158e308a08b7be58aedb5a96202.lean/declarations/iterated-fderiv-logpartition-eq-covariance--14946775f1553d1a3cc67208.md) | 294 | `result-track:14946775f1553d1a3cc67208ee38261a16e0419b2b0eb2fd7844cfd0ad34fb6c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
