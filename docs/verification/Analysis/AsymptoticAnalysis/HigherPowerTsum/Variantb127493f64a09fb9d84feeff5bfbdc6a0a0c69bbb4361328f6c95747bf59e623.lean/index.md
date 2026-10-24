# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.HigherPowerTsum.Variantb127493f64a09fb9d84feeff5bfbdc6a0a0c69bbb4361328f6c95747bf59e623

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ce4e1e53c5e276f67e25fd398f9a10c4b5c15c5",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantb127493f64a09fb9d84feeff5bfbdc6a0a0c69bbb4361328f6c95747bf59e623.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantb127493f64a09fb9d84feeff5bfbdc6a0a0c69bbb4361328f6c95747bf59e623.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantb127493f64a09fb9d84feeff5bfbdc6a0a0c69bbb4361328f6c95747bf59e623.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ce4e1e53c5e276f67e25fd398f9a10c4b5c15c5`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantb127493f64a09fb9d84feeff5bfbdc6a0a0c69bbb4361328f6c95747bf59e623.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantb127493f64a09fb9d84feeff5bfbdc6a0a0c69bbb4361328f6c95747bf59e623.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.ProperPrimePowers` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareSource` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSector` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Int` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsHigherPrimePower](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantb127493f64a09fb9d84feeff5bfbdc6a0a0c69bbb4361328f6c95747bf59e623.lean/declarations/ishigherprimepower--e3d5da18a4319be09d7cc306.md) | 25 | `declaration-track:e3d5da18a4319be09d7cc306457cf6dc91caa59a618c04f58d29e85e4b4ab34a` |
| 2 | `def` | [higherPrimePowerIndices](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantb127493f64a09fb9d84feeff5bfbdc6a0a0c69bbb4361328f6c95747bf59e623.lean/declarations/higherprimepowerindices--74a42943f1f1145d0d8802cb.md) | 28 | `declaration-track:74a42943f1f1145d0d8802cb72864855f5d98e55817563515d457537aea44e14` |
| 3 | `def` | [higherPrimePowerContribution](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantb127493f64a09fb9d84feeff5bfbdc6a0a0c69bbb4361328f6c95747bf59e623.lean/declarations/higherprimepowercontribution--45810d1e42facf7d9e9b4d36.md) | 33 | `declaration-track:45810d1e42facf7d9e9b4d36b4d4a6c4ac60e373943856f39a353edb7451251e` |
| 4 | `theorem` | [prime_power_representation_unique](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantb127493f64a09fb9d84feeff5bfbdc6a0a0c69bbb4361328f6c95747bf59e623.lean/declarations/prime-power-representation-unique--7282d2147081ab985800f1ed.md) | 39 | `result-track:7282d2147081ab985800f1eddc7bd337a192b3d99d6629cb90ebc81f9a6f0937` |
| 5 | `theorem` | [primeSquare_not_higher](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantb127493f64a09fb9d84feeff5bfbdc6a0a0c69bbb4361328f6c95747bf59e623.lean/declarations/primesquare-not-higher--455d745620f4f2daad698afb.md) | 45 | `result-track:455d745620f4f2daad698afbd923f808fd0e52c0a66d323dc71721844a9a74f9` |
| 6 | `theorem` | [primeSquare_not_prime](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantb127493f64a09fb9d84feeff5bfbdc6a0a0c69bbb4361328f6c95747bf59e623.lean/declarations/primesquare-not-prime--fa39eed127c1edab2e274446.md) | 53 | `result-track:fa39eed127c1edab2e274446dadf21378051a25fce749ea1e453c038a075230b` |
| 7 | `theorem` | [higher_not_prime](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantb127493f64a09fb9d84feeff5bfbdc6a0a0c69bbb4361328f6c95747bf59e623.lean/declarations/higher-not-prime--f8d7b1312ce4b6e98167aaae.md) | 58 | `result-track:f8d7b1312ce4b6e98167aaaebdaa33540ae5275629cf5e9484353ebdd7f15dfe` |
| 8 | `theorem` | [nonprime_primePower_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantb127493f64a09fb9d84feeff5bfbdc6a0a0c69bbb4361328f6c95747bf59e623.lean/declarations/nonprime-primepower-iff--3de63cfb0f785985b03c3f87.md) | 63 | `result-track:3de63cfb0f785985b03c3f871031c8cda6e2d9848bad9af32a6c70f773ba972a` |
| 9 | `theorem` | [nonprime_weight_zero_of_outside](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantb127493f64a09fb9d84feeff5bfbdc6a0a0c69bbb4361328f6c95747bf59e623.lean/declarations/nonprime-weight-zero-of-outside--3ce12c95b5be057ae4625f09.md) | 83 | `result-track:3ce12c95b5be057ae4625f09299daefd8a75eb739f051ab86fb9bbea30894e60` |
| 10 | `theorem` | [primeSquare_higher_indices_disjoint](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantb127493f64a09fb9d84feeff5bfbdc6a0a0c69bbb4361328f6c95747bf59e623.lean/declarations/primesquare-higher-indices-disjoint--0f57045309168d0d2f80f49f.md) | 91 | `result-track:0f57045309168d0d2f80f49fe053116d749f00d4438d19ad8593ae9c746bd55b` |
| 11 | `theorem` | [properPrimePowerContribution_eq_square_add_higher](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantb127493f64a09fb9d84feeff5bfbdc6a0a0c69bbb4361328f6c95747bf59e623.lean/declarations/properprimepowercontribution-eq-square-add-higher--1bb406c98a6a3a698e7d3f20.md) | 99 | `result-track:1bb406c98a6a3a698e7d3f20f3e5ebae0136862d1e1643314773a4d41666c4b9` |
| 12 | `theorem` | [primePowerContribution_eq_prime_square_higher](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantb127493f64a09fb9d84feeff5bfbdc6a0a0c69bbb4361328f6c95747bf59e623.lean/declarations/primepowercontribution-eq-prime-square-higher--d3685e0434875162cf925af2.md) | 120 | `result-track:d3685e0434875162cf925af2675fad05bf92657cfec6e6a936313dd9e7bcc787` |
| 13 | `theorem` | [eight_higher_not_square](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantb127493f64a09fb9d84feeff5bfbdc6a0a0c69bbb4361328f6c95747bf59e623.lean/declarations/eight-higher-not-square--86e1a9533e1c69e3c44f4a6f.md) | 128 | `result-track:86e1a9533e1c69e3c44f4a6fcbf52ac770fdb3839939b1fa4aab6a9604fa9f84` |
| 14 | `theorem` | [eight_mem_higherPrimePowerIndices_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantb127493f64a09fb9d84feeff5bfbdc6a0a0c69bbb4361328f6c95747bf59e623.lean/declarations/eight-mem-higherprimepowerindices-iff--4733825c8cf7e18dfd1d4bbe.md) | 133 | `result-track:4733825c8cf7e18dfd1d4bbe0cce595131045f0472f25e4d68dda41ed161eca8` |
| 15 | `theorem` | [sqrt_nat_power](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantb127493f64a09fb9d84feeff5bfbdc6a0a0c69bbb4361328f6c95747bf59e623.lean/declarations/sqrt-nat-power--5a17feeb5b6f752737e8c40e.md) | 152 | `result-track:5a17feeb5b6f752737e8c40e7469604ac33cf5b9fced2358b6604e5883b74ac9` |
| 16 | `theorem` | [higher_prime_power_weight](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantb127493f64a09fb9d84feeff5bfbdc6a0a0c69bbb4361328f6c95747bf59e623.lean/declarations/higher-prime-power-weight--0666316f5a9d94b8e0879cb5.md) | 159 | `result-track:0666316f5a9d94b8e0879cb50f7eab3cfe4c48ecca1c1e511f89b74c3a5df399` |
| 17 | `theorem` | [higher_prime_power_summand](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantb127493f64a09fb9d84feeff5bfbdc6a0a0c69bbb4361328f6c95747bf59e623.lean/declarations/higher-prime-power-summand--7f348887a8a642f7904a3ed2.md) | 166 | `result-track:7f348887a8a642f7904a3ed24f668e1afaa7ea4101e6dce2c4aa99bed84be55f` |
| 18 | `abbrev` | [HigherPowerIndex](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantb127493f64a09fb9d84feeff5bfbdc6a0a0c69bbb4361328f6c95747bf59e623.lean/declarations/higherpowerindex--bd507e7a1b5c35a0176b1a13.md) | 186 | `declaration-track:bd507e7a1b5c35a0176b1a13feaf9e53ffdbb3d507e7034766b9ce648e0960ec` |
| 19 | `def` | [powerIndex](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantb127493f64a09fb9d84feeff5bfbdc6a0a0c69bbb4361328f6c95747bf59e623.lean/declarations/powerindex--3e1797335589353e1f0a9b58.md) | 189 | `declaration-track:3e1797335589353e1f0a9b58fd4b80fe03d75526ae4cc241f7637c1fb64e94c7` |
| 20 | `theorem` | [powerIndex_injective](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantb127493f64a09fb9d84feeff5bfbdc6a0a0c69bbb4361328f6c95747bf59e623.lean/declarations/powerindex-injective--2bf2c727a8f036e34ba52b17.md) | 192 | `result-track:2bf2c727a8f036e34ba52b173fea4922656cab2167a54f634bfdc86942be07ed` |
| 21 | `def` | [higherPairIndices](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantb127493f64a09fb9d84feeff5bfbdc6a0a0c69bbb4361328f6c95747bf59e623.lean/declarations/higherpairindices--4c6e1742b780bc91ecf6a50a.md) | 202 | `declaration-track:4c6e1742b780bc91ecf6a50abc0427b7f7747faa601a5c1bf4db4ff2b408e060` |
| 22 | `def` | [higherSourceTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantb127493f64a09fb9d84feeff5bfbdc6a0a0c69bbb4361328f6c95747bf59e623.lean/declarations/highersourceterm--581109d768860d279bd41c90.md) | 206 | `declaration-track:581109d768860d279bd41c90ef8febebc71748525b8b093a3c4e030b269376bc` |
| 23 | `theorem` | [powerIndex_isHigher](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantb127493f64a09fb9d84feeff5bfbdc6a0a0c69bbb4361328f6c95747bf59e623.lean/declarations/powerindex-ishigher--b2db030ce6ea8bcfe6fb1bda.md) | 211 | `result-track:b2db030ce6ea8bcfe6fb1bda59e0481f776c5acc1f7c2d6c486d5b6b63048ffc` |
| 24 | `theorem` | [powerIndex_two_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantb127493f64a09fb9d84feeff5bfbdc6a0a0c69bbb4361328f6c95747bf59e623.lean/declarations/powerindex-two-le--0d78b4f4b840ced60f08fd41.md) | 215 | `result-track:0d78b4f4b840ced60f08fd411aa112d555888dc613505a1a453557e3c7be5662` |
| 25 | `theorem` | [mem_higherPairIndices_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantb127493f64a09fb9d84feeff5bfbdc6a0a0c69bbb4361328f6c95747bf59e623.lean/declarations/mem-higherpairindices-iff--6c1c885d0f1bbb912739a6fe.md) | 219 | `result-track:6c1c885d0f1bbb912739a6fe1bff4e9c682e52dd7bedf2c37894fa2208f6b58e` |
| 26 | `theorem` | [higherPairIndices_image](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantb127493f64a09fb9d84feeff5bfbdc6a0a0c69bbb4361328f6c95747bf59e623.lean/declarations/higherpairindices-image--4278d46ecf84d935097cc4a0.md) | 226 | `result-track:4278d46ecf84d935097cc4a0cd104ac6740b282115c80d5eaffc57562b11035c` |
| 27 | `theorem` | [higherPrimePowerContribution_eq_finite_sum](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantb127493f64a09fb9d84feeff5bfbdc6a0a0c69bbb4361328f6c95747bf59e623.lean/declarations/higherprimepowercontribution-eq-finite-sum--c85d03cc29bff833be9f501f.md) | 241 | `result-track:c85d03cc29bff833be9f501faed73199cf1703beb6a0fbf5480bd9b07f636ae6` |
| 28 | `theorem` | [higherSourceTerm_zero_outside](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantb127493f64a09fb9d84feeff5bfbdc6a0a0c69bbb4361328f6c95747bf59e623.lean/declarations/highersourceterm-zero-outside--7f0c93ef76dcd4b8a46c9084.md) | 251 | `result-track:7f0c93ef76dcd4b8a46c9084009649e4bd70afaa3086e54878a6a50702ec4d8d` |
| 29 | `theorem` | [higherSourceTerm_finite_support](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantb127493f64a09fb9d84feeff5bfbdc6a0a0c69bbb4361328f6c95747bf59e623.lean/declarations/highersourceterm-finite-support--ce8100c96856e479018dfd62.md) | 266 | `result-track:ce8100c96856e479018dfd62ac9612afe581fc56515b574909a5a42462e6698e` |
| 30 | `theorem` | [higherSourceTerm_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantb127493f64a09fb9d84feeff5bfbdc6a0a0c69bbb4361328f6c95747bf59e623.lean/declarations/highersourceterm-summable--0e5dcb502cdff25b07c4f211.md) | 272 | `result-track:0e5dcb502cdff25b07c4f2118a426618e83d4ae86a73b2aa750f362149e3d6c7` |
| 31 | `theorem` | [higherSourceTerm_norm_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantb127493f64a09fb9d84feeff5bfbdc6a0a0c69bbb4361328f6c95747bf59e623.lean/declarations/highersourceterm-norm-summable--236a966252cad432879d1cf2.md) | 277 | `result-track:236a966252cad432879d1cf2f369dbcdf4cfd7b8de184f7975e7634df500175a` |
| 32 | `theorem` | [higherPrimePowerContribution_eq_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantb127493f64a09fb9d84feeff5bfbdc6a0a0c69bbb4361328f6c95747bf59e623.lean/declarations/higherprimepowercontribution-eq-tsum--98a882910490608979930dd5.md) | 284 | `result-track:98a882910490608979930dd55d72b6190617cacb1ab6ca112076c9277f677642` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
