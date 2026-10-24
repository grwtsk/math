# GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.FiniteLogAffineCovariance.Variante0d9b09e9cf6b9e3ad33e39be037b65f669c321138b178a9afa960a51a1a8208

[Complete source index](../../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 19 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variante0d9b09e9cf6b9e3ad33e39be037b65f669c321138b178a9afa960a51a1a8208.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2da68fe987bc4bb37ce8fc1359c1bddf6cf715c2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variante0d9b09e9cf6b9e3ad33e39be037b65f669c321138b178a9afa960a51a1a8208.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteLogAffineFamily](declarations/finitelogaffinefamily--2c345f818fc15f78490bfd2f.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [unnormalizedWeight](declarations/unnormalizedweight--38c2f4cc1404a28d9f8295dd.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [unnormalizedWeight_pos](declarations/unnormalizedweight-pos--495cdf4e4f1d28afdb5dcd64.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [partition](declarations/partition--5a6a14091bfb8932ccde1706.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [partition_pos](declarations/partition-pos--ff9a9db1ba1e081ef49de674.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [logPartition](declarations/logpartition--2945835722681dcc4f6f75fe.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [exp_logPartition](declarations/exp-logpartition--6f29be9d7fe770f62d00d986.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [probability](declarations/probability--9f066d238add35acdf3f4719.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [probability_pos](declarations/probability-pos--ee8c0b4e476ecc0a364ea63b.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [probability_nonnegative](declarations/probability-nonnegative--25e912927669c3780472fe2d.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [probability_sum](declarations/probability-sum--247592340b5599d62fe3f573.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [centroid](declarations/centroid--b2804ba0f171f0a4c3262bf1.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [centroid_apply](declarations/centroid-apply--8d0cdab20417ad988b3e31bd.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [centeredStatistic](declarations/centeredstatistic--0c58f26f6628129611ca8749.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [centeredStatistic_apply](declarations/centeredstatistic-apply--8295d32a5b7fed01178aeec0.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [covarianceForm](declarations/covarianceform--732248e55a551d13626834ee.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [covarianceForm_apply](declarations/covarianceform-apply--6e87627f42303982af3305b0.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [covarianceForm_diagonal](declarations/covarianceform-diagonal--eb8706faa5709c9ba494d632.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [covariance_nonnegative](declarations/covariance-nonnegative--0dfb3edf4657e85dc49513d6.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [FiniteLogAffineCovarianceRealization](declarations/finitelogaffinecovariancerealization--b9e093c4fe454d770f7d189a.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [potential_realized_as_logPartition](declarations/potential-realized-as-logpartition--471f40eae12a769252e65a9c.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [gradient_realized_as_centroid](declarations/gradient-realized-as-centroid--acebe1cb492ea397cc3bcf50.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [geometryAt_eq_covariance](declarations/geometryat-eq-covariance--7094890bf7e7a772788fbd85.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [hessian_eq_covariance](declarations/hessian-eq-covariance--03b9b40488c496c57c81e250.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [hessian_diagonal_eq_variance](declarations/hessian-diagonal-eq-variance--709cbb2484049ea230fe2c86.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [hessian_covariance_nonnegative](declarations/hessian-covariance-nonnegative--11b0b89c1d6865241fd96471.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [visible_iff_positive_variance](declarations/visible-iff-positive-variance--4adf12e3b979cfe12883d54a.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [isNull_iff_zero_variance](declarations/isnull-iff-zero-variance--7b41ded00a2df7abcc0dd8bb.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
