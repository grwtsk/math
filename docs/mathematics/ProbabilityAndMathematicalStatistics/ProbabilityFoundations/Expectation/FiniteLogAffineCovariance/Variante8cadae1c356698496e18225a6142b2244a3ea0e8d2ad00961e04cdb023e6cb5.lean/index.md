# GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.FiniteLogAffineCovariance.Variante8cadae1c356698496e18225a6142b2244a3ea0e8d2ad00961e04cdb023e6cb5

[Complete source index](../../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 19 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variante8cadae1c356698496e18225a6142b2244a3ea0e8d2ad00961e04cdb023e6cb5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `22d15677767a47acf85877275f21f3daaed0f576`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variante8cadae1c356698496e18225a6142b2244a3ea0e8d2ad00961e04cdb023e6cb5.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteLogAffineFamily](declarations/finitelogaffinefamily--a25986108593b6833aa3b23c.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [unnormalizedWeight](declarations/unnormalizedweight--b99694923542942ed93e3f5d.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [unnormalizedWeight_pos](declarations/unnormalizedweight-pos--fc54f06b17a47ef6f6f19a7f.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [partition](declarations/partition--73304fc1897eaf24f6ea7b7d.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [partition_pos](declarations/partition-pos--592acec2cf20568f62f02aab.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [logPartition](declarations/logpartition--7ee6e33f1456f1cb0e5e7edc.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [exp_logPartition](declarations/exp-logpartition--d2697367f5fdcb315ff86e93.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [probability](declarations/probability--17d18744409e4f9add75e3e5.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [probability_pos](declarations/probability-pos--729fdc554acc54f765b53471.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [probability_nonnegative](declarations/probability-nonnegative--084316cfb9d4b4db2a16aa0c.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [probability_sum](declarations/probability-sum--5a312dd5db9f5d70be79396d.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [centroid](declarations/centroid--71688598b3756c3c76ddfe92.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [centroid_apply](declarations/centroid-apply--cab8859d1fd19cab7e48e261.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [centeredStatistic](declarations/centeredstatistic--9441c381b647d5bafd116e92.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [centeredStatistic_apply](declarations/centeredstatistic-apply--884d7f314da596c31710f6f8.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [covarianceForm](declarations/covarianceform--ad35d8b29a30bf1a41ad07c1.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [covarianceForm_apply](declarations/covarianceform-apply--016134cf7f4869d139f3a111.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [covarianceForm_diagonal](declarations/covarianceform-diagonal--e70e49e57c2a24011ed4b2f0.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [covariance_nonnegative](declarations/covariance-nonnegative--50a85be6dd4aecda4cd794f2.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [FiniteLogAffineCovarianceRealization](declarations/finitelogaffinecovariancerealization--556115bb2a58e85fac774ee8.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [potential_realized_as_logPartition](declarations/potential-realized-as-logpartition--353a8d9bf2650d661c0e61a6.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [gradient_realized_as_centroid](declarations/gradient-realized-as-centroid--58c36d78c01133d23eb59bcb.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [geometryAt_eq_covariance](declarations/geometryat-eq-covariance--578b5d7141d7b45734394278.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [hessian_eq_covariance](declarations/hessian-eq-covariance--a6cacefd50e02708dcd3a775.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [hessian_diagonal_eq_variance](declarations/hessian-diagonal-eq-variance--48943312d3449bbc7b4a1982.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [hessian_covariance_nonnegative](declarations/hessian-covariance-nonnegative--b978d364f95846ca77fe3a2d.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [visible_iff_positive_variance](declarations/visible-iff-positive-variance--6f4c724903489dfa2c7add7e.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [isNull_iff_zero_variance](declarations/isnull-iff-zero-variance--9d35931dd9b6af97af2b01b9.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
