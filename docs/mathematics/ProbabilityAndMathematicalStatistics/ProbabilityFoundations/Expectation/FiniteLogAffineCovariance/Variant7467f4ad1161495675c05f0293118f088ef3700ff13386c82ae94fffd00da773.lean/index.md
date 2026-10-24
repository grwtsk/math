# GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.FiniteLogAffineCovariance.Variant7467f4ad1161495675c05f0293118f088ef3700ff13386c82ae94fffd00da773

[Complete source index](../../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 19 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variant7467f4ad1161495675c05f0293118f088ef3700ff13386c82ae94fffd00da773.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `52c648599eb2f7d2b49dd78fe5c27169a13c91a9`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variant7467f4ad1161495675c05f0293118f088ef3700ff13386c82ae94fffd00da773.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteLogAffineFamily](declarations/finitelogaffinefamily--f588b350436eca0b14fb52ab.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [unnormalizedWeight](declarations/unnormalizedweight--6a176788ea541b794d5bd70a.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [unnormalizedWeight_pos](declarations/unnormalizedweight-pos--ff5576ba5ed8662ed88dcd63.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [partition](declarations/partition--10fd8f5abeb02dac39a457fc.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [partition_pos](declarations/partition-pos--fc23e00f16302557fb53880e.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [logPartition](declarations/logpartition--67347c5ddbac3fec0abc5825.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [exp_logPartition](declarations/exp-logpartition--39515b7bc38f4b3e25a528dc.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [probability](declarations/probability--0e453bd223843f5ab6c30029.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [probability_pos](declarations/probability-pos--0d94bbfdef03f973795eaaf9.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [probability_nonnegative](declarations/probability-nonnegative--ccfba4443ad03403243421c0.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [probability_sum](declarations/probability-sum--172f180d990ded7a15a7e4db.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [centroid](declarations/centroid--459cf0ff8cc76fece6e1e76f.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [centroid_apply](declarations/centroid-apply--7f1a7d96be5f9b784ad0c331.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [centeredStatistic](declarations/centeredstatistic--2bf66b137cf07aaab14f59be.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [centeredStatistic_apply](declarations/centeredstatistic-apply--9587dfca47668afc039038fb.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [covarianceForm](declarations/covarianceform--7b465e6f7327884c3794c85a.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [covarianceForm_apply](declarations/covarianceform-apply--6b0ae4acf110f130da3f613e.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [covarianceForm_diagonal](declarations/covarianceform-diagonal--029662be0c056221bc17897f.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [covariance_nonnegative](declarations/covariance-nonnegative--2018411d8df52f5a673045b4.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [FiniteLogAffineCovarianceRealization](declarations/finitelogaffinecovariancerealization--ae3b662963240363df87939f.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [potential_realized_as_logPartition](declarations/potential-realized-as-logpartition--bdbe90537657179516f75c63.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [gradient_realized_as_centroid](declarations/gradient-realized-as-centroid--f6e67e3391ab5ce05c1ffb6d.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [geometryAt_eq_covariance](declarations/geometryat-eq-covariance--a0fbc19316e5d4754514bbae.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [hessian_eq_covariance](declarations/hessian-eq-covariance--82db736d8bf159c805d17c09.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [hessian_diagonal_eq_variance](declarations/hessian-diagonal-eq-variance--e69cfb45c0244a50d9bf8f63.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [hessian_covariance_nonnegative](declarations/hessian-covariance-nonnegative--4f1e3aea169054e27c32b961.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [visible_iff_positive_variance](declarations/visible-iff-positive-variance--204690f7f0723144d134ffc8.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [isNull_iff_zero_variance](declarations/isnull-iff-zero-variance--33758abc7cb4d3cf14ff1ff6.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
