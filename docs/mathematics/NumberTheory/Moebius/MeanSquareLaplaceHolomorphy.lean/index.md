# GRWTSK.NumberTheory.Moebius.MeanSquareLaplaceHolomorphy

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8d3afc1e5e733abfba81c9b96afbaad5d860e83b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [intervalEnergy](declarations/intervalenergy--58b8f247b68fa26348c9d618.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [interval_energy_eq_energy](declarations/interval-energy-eq-energy--56f49989fd226773c53756ac.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [pickup_square_continuous](declarations/pickup-square-continuous--aeee7d9f52544b29d211bb65.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [interval_energy_hasDerivAt](declarations/interval-energy-hasderivat--3d790419230cb3f17733f552.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [interval_energy_continuous](declarations/interval-energy-continuous--1165d7113a1f53bfdaf01912.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [interval_energy_nonnegative](declarations/interval-energy-nonnegative--74adce9112242bc147df2121.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [dampedEnergy](declarations/dampedenergy--395b9329214c8738cf9c5754.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [damped_energy_continuous](declarations/damped-energy-continuous--372b2a21ffaf99f55517d7bc.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [damped_energy_nonnegative](declarations/damped-energy-nonnegative--bfdd29e724aa68048d6800cc.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [damped_energy_bound](declarations/damped-energy-bound--ea30e73d253c9feaef37b703.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [damped_energy_integrable_of_bound](declarations/damped-energy-integrable-of-bound--cf345d58891a26f06104e9fd.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [polynomial_exponential_tendsto_zero](declarations/polynomial-exponential-tendsto-zero--d4818c22e72d53d3d8da32cd.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [damped_energy_tendsto_zero_of_bound](declarations/damped-energy-tendsto-zero-of-bound--9dc5fa44b62cd668fc8dfff0.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [weightedSquaredPickup](declarations/weightedsquaredpickup--e64cefb83a1a53fcaa76de4c.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [weighted_squared_pickup_nonnegative](declarations/weighted-squared-pickup-nonnegative--0f1277a49d1dc6b12c19b11f.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [weightedEnergyPrimitive](declarations/weightedenergyprimitive--7ae5d585cd6b7acaedd67d46.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [weighted_energy_primitive_hasDerivAt](declarations/weighted-energy-primitive-hasderivat--65801cc2927fb1bd492bdc20.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [weighted_energy_primitive_tendsto_of_bound](declarations/weighted-energy-primitive-tendsto-of-bound--8cb688a9e6783ed9bc37c2de.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [energy_poly_weighted_squared_pickup_integrable](declarations/energy-poly-weighted-squared-pickup-integrable--915f88179746f274ecf17261.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [weightedAbsolutePickup](declarations/weightedabsolutepickup--4325cbc7ed13d4a48c5337c1.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [weighted_absolute_pickup_continuous](declarations/weighted-absolute-pickup-continuous--17245b6b9712f06c60da157a.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [weighted_absolute_pickup_nonnegative](declarations/weighted-absolute-pickup-nonnegative--ff3c732a72849eefa16a4a2c.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [weighted_absolute_pickup_bound](declarations/weighted-absolute-pickup-bound--1c505995a5a2bcb8c0fd8385.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [energy_poly_weighted_absolute_pickup_integrable](declarations/energy-poly-weighted-absolute-pickup-integrable--bedc42daaa4431eaa8525624.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [energy_poly_laplace_integrable](declarations/energy-poly-laplace-integrable--44f0a4506bd3b2bd6b815452.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [timeWeightedAbsolutePickup](declarations/timeweightedabsolutepickup--d16da8b83e22a9bf5581976a.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [time_weighted_absolute_pickup_continuous](declarations/time-weighted-absolute-pickup-continuous--dd15cafebf4125d1405cbda5.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [time_weighted_absolute_pickup_nonnegative](declarations/time-weighted-absolute-pickup-nonnegative--6daf8ae43adcff89ecf5076e.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [time_weighted_absolute_pickup_bound](declarations/time-weighted-absolute-pickup-bound--1f76434be6a3f8742f1cf599.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [energy_poly_time_weighted_absolute_pickup_integrable](declarations/energy-poly-time-weighted-absolute-pickup-integrable--c1e0af37908da9f3d3a1854a.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [pickup_laplace_derivative_energy_bound](declarations/pickup-laplace-derivative-energy-bound--bd9682cf55179a9468d90f95.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [energy_poly_laplace_hasDerivAt](declarations/energy-poly-laplace-hasderivat--7b2283bb683fa4ca374391a8.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [energy_poly_laplace_holomorphic](declarations/energy-poly-laplace-holomorphic--fb3c843cadb02443e992d406.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
