# GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FiniteLogAffineSecondDerivative.Variantfde9e32d8b5cba4f4440af785eeb099abe6e9bc73f28451405c826e2733ef8a3

[Complete source index](../../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**25 observed declarations and anonymous commands**, 19 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantfde9e32d8b5cba4f4440af785eeb099abe6e9bc73f28451405c826e2733ef8a3.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1e648ccaf800078b13254842bc562d628f8c30ee`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variantfde9e32d8b5cba4f4440af785eeb099abe6e9bc73f28451405c826e2733ef8a3.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [logProbability](declarations/logprobability--21f2ed6922d9e086b275e2c6.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [probability_eq_exp_logProbability](declarations/probability-eq-exp-logprobability--4e74d66703b94471e139789a.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [hasFDerivAt_logProbability](declarations/hasfderivat-logprobability--1262bd9c73d3bb6952451f7b.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [probabilityDerivative](declarations/probabilityderivative--e878298f2af1362ce5e7463c.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [probabilityDerivative_apply](declarations/probabilityderivative-apply--f4abd90e842460fcfdcbfc0d.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [hasFDerivAt_probability](declarations/hasfderivat-probability--d258594109c031eec718c2bd.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [centered_weighted_sum_eq_zero](declarations/centered-weighted-sum-eq-zero--320a62642772c6d93489ad37.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [rawCentroidDerivative](declarations/rawcentroidderivative--651cba72769ae08472b7c090.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [rawCentroidDerivative_apply](declarations/rawcentroidderivative-apply--567beb46b096706551ba40f7.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [covarianceOperator](declarations/covarianceoperator--eafbf1fbb25e9f10aad11117.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [covarianceOperator_apply](declarations/covarianceoperator-apply--43bc3f78340ee8500d92bde5.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [covarianceOperator_eq_covarianceForm](declarations/covarianceoperator-eq-covarianceform--132ec7ebde1a62170231467a.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [rawCentroidDerivative_eq_covarianceOperator](declarations/rawcentroidderivative-eq-covarianceoperator--0ec25c7c9dae31363c6a3035.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [hasFDerivAt_centroid_raw](declarations/hasfderivat-centroid-raw--76c5d1a29e040cbea6de2b8c.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [hasFDerivAt_centroid](declarations/hasfderivat-centroid--237ccf311602913ddf36cec2.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [fderiv_centroid_eq_covarianceOperator](declarations/fderiv-centroid-eq-covarianceoperator--df6c1f58b0631a3d9a69b347.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [analyticDispersionReconstruction](declarations/analyticdispersionreconstruction--3f76fb2f521f0dda074aa9a8.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [analyticDispersionReconstruction_potential](declarations/analyticdispersionreconstruction-potential--e1c3b0b61410ce497ddc8d30.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [analyticDispersionReconstruction_gradient](declarations/analyticdispersionreconstruction-gradient--8c0e84626b0cbecc782b1e00.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [analyticDispersionReconstruction_hessian](declarations/analyticdispersionreconstruction-hessian--cf5d31eeb1a0b6048a17ec2d.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [analyticDispersionReconstruction_dispersion](declarations/analyticdispersionreconstruction-dispersion--3b489f1c8eb06a2114b69efa.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [canonicalCovarianceRealization](declarations/canonicalcovariancerealization--ffb8d139f703dfc21f9999a8.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [hessian_eq_covariance](declarations/hessian-eq-covariance--0a009274b3583a3780c82341.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [second_derivative_logPartition_eq_covariance](declarations/second-derivative-logpartition-eq-covariance--45a65b621f78882539b9377c.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [iterated_fderiv_logPartition_eq_covariance](declarations/iterated-fderiv-logpartition-eq-covariance--ae922456eaa898fb52d16ec5.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
