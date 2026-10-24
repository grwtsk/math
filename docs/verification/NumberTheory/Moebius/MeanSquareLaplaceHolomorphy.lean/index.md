# Verification target: GRWTSK.NumberTheory.Moebius.MeanSquareLaplaceHolomorphy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d3afc1e5e733abfba81c9b96afbaad5d860e83b",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d3afc1e5e733abfba81c9b96afbaad5d860e83b`.

Source path: `GRWTSK/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.MeanSquareGrowth`](../../../../mathematics/NumberTheory/Moebius/MeanSquareGrowth.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PolynomialLaplaceHolomorphy`](../../../../mathematics/NumberTheory/Moebius/PolynomialLaplaceHolomorphy.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [intervalEnergy](../../../../mathematics/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean/declarations/intervalenergy--58b8f247b68fa26348c9d618.md) | 30 | `declaration-track:58b8f247b68fa26348c9d618f9e801bbdf3fbc8a672fe4f5154d88ea4513bbb8` |
| 2 | `theorem` | [interval_energy_eq_energy](../../../../mathematics/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean/declarations/interval-energy-eq-energy--56f49989fd226773c53756ac.md) | 32 | `result-track:56f49989fd226773c53756ac8be22d67244e4a62816275b47c8b548831f588cc` |
| 3 | `theorem` | [pickup_square_continuous](../../../../mathematics/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean/declarations/pickup-square-continuous--aeee7d9f52544b29d211bb65.md) | 36 | `result-track:aeee7d9f52544b29d211bb65f29387d60bf632a6aa1f1718138a2ee7a7b5249f` |
| 4 | `theorem` | [interval_energy_hasDerivAt](../../../../mathematics/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean/declarations/interval-energy-hasderivat--3d790419230cb3f17733f552.md) | 39 | `result-track:3d790419230cb3f17733f55240e195f952a81b4281f1bf7a98efae1ac5a865cb` |
| 5 | `theorem` | [interval_energy_continuous](../../../../mathematics/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean/declarations/interval-energy-continuous--1165d7113a1f53bfdaf01912.md) | 43 | `result-track:1165d7113a1f53bfdaf01912bf71f277516a41bc381890e273be21019928916b` |
| 6 | `theorem` | [interval_energy_nonnegative](../../../../mathematics/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean/declarations/interval-energy-nonnegative--74adce9112242bc147df2121.md) | 47 | `result-track:74adce9112242bc147df21216cda792c884157c61cb27d6fe596e4af17e0fc74` |
| 7 | `def` | [dampedEnergy](../../../../mathematics/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean/declarations/dampedenergy--395b9329214c8738cf9c5754.md) | 51 | `declaration-track:395b9329214c8738cf9c5754c5da1fe7a3d3b8c3c177411e3e389190917b7e7b` |
| 8 | `theorem` | [damped_energy_continuous](../../../../mathematics/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean/declarations/damped-energy-continuous--372b2a21ffaf99f55517d7bc.md) | 53 | `result-track:372b2a21ffaf99f55517d7bc14b07cb06e7611653f297f468ddce290b52285a7` |
| 9 | `theorem` | [damped_energy_nonnegative](../../../../mathematics/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean/declarations/damped-energy-nonnegative--bfdd29e724aa68048d6800cc.md) | 56 | `result-track:bfdd29e724aa68048d6800cc7ccda34c87c14cc13ef93605591f846ba52fc775` |
| 10 | `theorem` | [damped_energy_bound](../../../../mathematics/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean/declarations/damped-energy-bound--ea30e73d253c9feaef37b703.md) | 60 | `result-track:ea30e73d253c9feaef37b703989c7ca368c0ee0c8459e65afd3b45675ea29765` |
| 11 | `theorem` | [damped_energy_integrable_of_bound](../../../../mathematics/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean/declarations/damped-energy-integrable-of-bound--cf345d58891a26f06104e9fd.md) | 71 | `result-track:cf345d58891a26f06104e9fd22b177c102cb3e3ab15dfaa51d37dc18e555de9c` |
| 12 | `theorem` | [polynomial_exponential_tendsto_zero](../../../../mathematics/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean/declarations/polynomial-exponential-tendsto-zero--d4818c22e72d53d3d8da32cd.md) | 80 | `result-track:d4818c22e72d53d3d8da32cd37b6cbf2ddc286cf9f34494274f3ba1aba0115db` |
| 13 | `theorem` | [damped_energy_tendsto_zero_of_bound](../../../../mathematics/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean/declarations/damped-energy-tendsto-zero-of-bound--9dc5fa44b62cd668fc8dfff0.md) | 97 | `result-track:9dc5fa44b62cd668fc8dfff0c15891de972b5632fd2f6f63a2a24da805c70d4f` |
| 14 | `def` | [weightedSquaredPickup](../../../../mathematics/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean/declarations/weightedsquaredpickup--e64cefb83a1a53fcaa76de4c.md) | 107 | `declaration-track:e64cefb83a1a53fcaa76de4c0177bd4d08d8af841539d583e449c5d8f587bf3a` |
| 15 | `theorem` | [weighted_squared_pickup_nonnegative](../../../../mathematics/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean/declarations/weighted-squared-pickup-nonnegative--0f1277a49d1dc6b12c19b11f.md) | 109 | `result-track:0f1277a49d1dc6b12c19b11f0c8c0173a783196e46f893e6d0abcdde567c195e` |
| 16 | `def` | [weightedEnergyPrimitive](../../../../mathematics/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean/declarations/weightedenergyprimitive--7ae5d585cd6b7acaedd67d46.md) | 112 | `declaration-track:7ae5d585cd6b7acaedd67d46aaf379c255180caaf9ea40a5879a017d613113c5` |
| 17 | `theorem` | [weighted_energy_primitive_hasDerivAt](../../../../mathematics/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean/declarations/weighted-energy-primitive-hasderivat--65801cc2927fb1bd492bdc20.md) | 117 | `result-track:65801cc2927fb1bd492bdc20285c224c9817ec6bb8c3f712710d99c79d3142bb` |
| 18 | `theorem` | [weighted_energy_primitive_tendsto_of_bound](../../../../mathematics/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean/declarations/weighted-energy-primitive-tendsto-of-bound--8cb688a9e6783ed9bc37c2de.md) | 127 | `result-track:8cb688a9e6783ed9bc37c2deae295588f8a30b16be1f8cd05e5a21a20d0c5e18` |
| 19 | `theorem` | [energy_poly_weighted_squared_pickup_integrable](../../../../mathematics/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean/declarations/energy-poly-weighted-squared-pickup-integrable--915f88179746f274ecf17261.md) | 140 | `result-track:915f88179746f274ecf172613428039ffb4d2bf0f3a170d9e7ecbcb66c4b232c` |
| 20 | `def` | [weightedAbsolutePickup](../../../../mathematics/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean/declarations/weightedabsolutepickup--4325cbc7ed13d4a48c5337c1.md) | 149 | `declaration-track:4325cbc7ed13d4a48c5337c13e40246e3fa9b5059f6dd26fa58f262bc5a5697b` |
| 21 | `theorem` | [weighted_absolute_pickup_continuous](../../../../mathematics/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean/declarations/weighted-absolute-pickup-continuous--17245b6b9712f06c60da157a.md) | 151 | `result-track:17245b6b9712f06c60da157a3448504d463413893b9ecd90312431f8d99b8044` |
| 22 | `theorem` | [weighted_absolute_pickup_nonnegative](../../../../mathematics/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean/declarations/weighted-absolute-pickup-nonnegative--ff3c732a72849eefa16a4a2c.md) | 155 | `result-track:ff3c732a72849eefa16a4a2cbb1ad80b30b5ebfde2935fd0667202d5df1e6cf9` |
| 23 | `theorem` | [weighted_absolute_pickup_bound](../../../../mathematics/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean/declarations/weighted-absolute-pickup-bound--1c505995a5a2bcb8c0fd8385.md) | 159 | `result-track:1c505995a5a2bcb8c0fd83858064d67d9e15c300e48170e4a073a7bd1b5a3e9d` |
| 24 | `theorem` | [energy_poly_weighted_absolute_pickup_integrable](../../../../mathematics/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean/declarations/energy-poly-weighted-absolute-pickup-integrable--bedc42daaa4431eaa8525624.md) | 169 | `result-track:bedc42daaa4431eaa852562441ad550729d48b07f24e364554a87c60480c4407` |
| 25 | `theorem` | [energy_poly_laplace_integrable](../../../../mathematics/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean/declarations/energy-poly-laplace-integrable--44f0a4506bd3b2bd6b815452.md) | 184 | `result-track:44f0a4506bd3b2bd6b8154525ee6dfb46bc019a93d52f69c311ed7e7970efef5` |
| 26 | `def` | [timeWeightedAbsolutePickup](../../../../mathematics/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean/declarations/timeweightedabsolutepickup--d16da8b83e22a9bf5581976a.md) | 193 | `declaration-track:d16da8b83e22a9bf5581976a08b4d760c4705a7831ef28a9be3fc94f272a3b89` |
| 27 | `theorem` | [time_weighted_absolute_pickup_continuous](../../../../mathematics/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean/declarations/time-weighted-absolute-pickup-continuous--dd15cafebf4125d1405cbda5.md) | 195 | `result-track:dd15cafebf4125d1405cbda5a59ddfea8d4b4bb0b5481f9862e23a5454e8b335` |
| 28 | `theorem` | [time_weighted_absolute_pickup_nonnegative](../../../../mathematics/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean/declarations/time-weighted-absolute-pickup-nonnegative--6daf8ae43adcff89ecf5076e.md) | 199 | `result-track:6daf8ae43adcff89ecf5076e79e2f6669e6cb1a31ad0e1ca54d798ad85f9476d` |
| 29 | `theorem` | [time_weighted_absolute_pickup_bound](../../../../mathematics/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean/declarations/time-weighted-absolute-pickup-bound--1f76434be6a3f8742f1cf599.md) | 204 | `result-track:1f76434be6a3f8742f1cf5990bcb5d28626f03b6b9d5d54e699a15d0ee2400b7` |
| 30 | `theorem` | [energy_poly_time_weighted_absolute_pickup_integrable](../../../../mathematics/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean/declarations/energy-poly-time-weighted-absolute-pickup-integrable--c1e0af37908da9f3d3a1854a.md) | 224 | `result-track:c1e0af37908da9f3d3a1854ac2bc1e0070bbe7d7b56defca039d85ed34181818` |
| 31 | `theorem` | [pickup_laplace_derivative_energy_bound](../../../../mathematics/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean/declarations/pickup-laplace-derivative-energy-bound--bd9682cf55179a9468d90f95.md) | 233 | `result-track:bd9682cf55179a9468d90f955fe5ebb278d2a9f3aca35410814f3458a1339b4f` |
| 32 | `theorem` | [energy_poly_laplace_hasDerivAt](../../../../mathematics/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean/declarations/energy-poly-laplace-hasderivat--7b2283bb683fa4ca374391a8.md) | 249 | `result-track:7b2283bb683fa4ca374391a83db00d5e56a466051580542f3cf44ad88dcbc323` |
| 33 | `theorem` | [energy_poly_laplace_holomorphic](../../../../mathematics/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean/declarations/energy-poly-laplace-holomorphic--fb3c843cadb02443e992d406.md) | 281 | `result-track:fb3c843cadb02443e992d4066a92e7eed0c83cb6ac6ef9ab50ed12242c1f26bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
