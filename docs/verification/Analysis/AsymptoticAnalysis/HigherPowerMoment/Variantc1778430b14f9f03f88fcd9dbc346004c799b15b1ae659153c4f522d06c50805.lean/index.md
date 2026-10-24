# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.HigherPowerMoment.Variantc1778430b14f9f03f88fcd9dbc346004c799b15b1ae659153c4f522d06c50805

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0cff6b1c353e0c01211caebf7c37a3dff1e70d9f",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variantc1778430b14f9f03f88fcd9dbc346004c799b15b1ae659153c4f522d06c50805.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variantc1778430b14f9f03f88fcd9dbc346004c799b15b1ae659153c4f522d06c50805.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variantc1778430b14f9f03f88fcd9dbc346004c799b15b1ae659153c4f522d06c50805.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0cff6b1c353e0c01211caebf7c37a3dff1e70d9f`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variantc1778430b14f9f03f88fcd9dbc346004c799b15b1ae659153c4f522d06c50805.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variantc1778430b14f9f03f88fcd9dbc346004c799b15b1ae659153c4f522d06c50805.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.PSeries` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [integerMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variantc1778430b14f9f03f88fcd9dbc346004c799b15b1ae659153c4f522d06c50805.lean/declarations/integermoment--6106ae16c1a2b725f6d0662f.md) | 11 | `declaration-track:6106ae16c1a2b725f6d0662fe6c1cefa752335e81b91cc2dc9348079a6805bfb` |
| 2 | `def` | [higherMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variantc1778430b14f9f03f88fcd9dbc346004c799b15b1ae659153c4f522d06c50805.lean/declarations/highermoment--c61faf98c369ba573cdd025c.md) | 14 | `declaration-track:c61faf98c369ba573cdd025caf81ada30255af6f3887dfc2e2a02b21ed054ffc` |
| 3 | `def` | [geometricRatio](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variantc1778430b14f9f03f88fcd9dbc346004c799b15b1ae659153c4f522d06c50805.lean/declarations/geometricratio--096eaf027d15de36ccf18d01.md) | 18 | `declaration-track:096eaf027d15de36ccf18d01677b6ca9eada4d27d462d9b1023480caaaa06683` |
| 4 | `def` | [exponentMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variantc1778430b14f9f03f88fcd9dbc346004c799b15b1ae659153c4f522d06c50805.lean/declarations/exponentmoment--60dced6679d4e34a37b32ce7.md) | 21 | `declaration-track:60dced6679d4e34a37b32ce731d094822476def2a39a9f92edf8e4a306d484bf` |
| 5 | `theorem` | [integerMoment_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variantc1778430b14f9f03f88fcd9dbc346004c799b15b1ae659153c4f522d06c50805.lean/declarations/integermoment-nonneg--cb22192371f3798a4571ca34.md) | 23 | `result-track:cb22192371f3798a4571ca347a3f8b5c187b1aa305b10248b30e21db14b7f34b` |
| 6 | `theorem` | [higherMoment_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variantc1778430b14f9f03f88fcd9dbc346004c799b15b1ae659153c4f522d06c50805.lean/declarations/highermoment-nonneg--1e198ca0b1c5984fbcbad673.md) | 27 | `result-track:1e198ca0b1c5984fbcbad673a99b65840b9ad4e3bdc20d24c98df33daccc1cea` |
| 7 | `theorem` | [geometricRatio_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variantc1778430b14f9f03f88fcd9dbc346004c799b15b1ae659153c4f522d06c50805.lean/declarations/geometricratio-pos--3bb363cf681b6e1510ca4d47.md) | 31 | `result-track:3bb363cf681b6e1510ca4d474b325b351f0c21898c709cc05b65fd85133b0e3b` |
| 8 | `theorem` | [geometricRatio_lt_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variantc1778430b14f9f03f88fcd9dbc346004c799b15b1ae659153c4f522d06c50805.lean/declarations/geometricratio-lt-one--9572cb7a9436ef3550d5fca6.md) | 33 | `result-track:9572cb7a9436ef3550d5fca6151140dc913126f7bd7d4432b467d3931d3f0849` |
| 9 | `theorem` | [exponentMoment_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variantc1778430b14f9f03f88fcd9dbc346004c799b15b1ae659153c4f522d06c50805.lean/declarations/exponentmoment-nonneg--772b788d760f1d446e21bf8c.md) | 36 | `result-track:772b788d760f1d446e21bf8c28b81d40e3842b6c64ab3da150cdf6fd439b2007` |
| 10 | `theorem` | [integerMoment_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variantc1778430b14f9f03f88fcd9dbc346004c799b15b1ae659153c4f522d06c50805.lean/declarations/integermoment-le--a058d84be642e0fa7dea5ff8.md) | 39 | `result-track:a058d84be642e0fa7dea5ff874287e928f14ed9f630377f7bf7341507aeb35b9` |
| 11 | `theorem` | [integerMoment_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variantc1778430b14f9f03f88fcd9dbc346004c799b15b1ae659153c4f522d06c50805.lean/declarations/integermoment-summable--40c19eeb2524aca9892707d3.md) | 58 | `result-track:40c19eeb2524aca9892707d35ba452105bee56356d31bb99089aad2f91624c77` |
| 12 | `theorem` | [exponentMoment_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variantc1778430b14f9f03f88fcd9dbc346004c799b15b1ae659153c4f522d06c50805.lean/declarations/exponentmoment-summable--58e34a63a6589a8cf675c63f.md) | 62 | `result-track:58e34a63a6589a8cf675c63f8a95a0cdc7c4ffd0fdfa7a8eb89251328eeb3d62` |
| 13 | `theorem` | [halfPower_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variantc1778430b14f9f03f88fcd9dbc346004c799b15b1ae659153c4f522d06c50805.lean/declarations/halfpower-pow--1aa8331ee9c1d3e5b831c2c9.md) | 75 | `result-track:1aa8331ee9c1d3e5b831c2c9933e2d378e9356978f569b8659dbaba615b52ef0` |
| 14 | `theorem` | [higherMoment_factorization](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variantc1778430b14f9f03f88fcd9dbc346004c799b15b1ae659153c4f522d06c50805.lean/declarations/highermoment-factorization--cab7778226e1ee0628e0244c.md) | 82 | `result-track:cab7778226e1ee0628e0244c6ee2f0426bc862c4e493b2aa6a7f7a61bf8868e7` |
| 15 | `theorem` | [higherMoment_le_product](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variantc1778430b14f9f03f88fcd9dbc346004c799b15b1ae659153c4f522d06c50805.lean/declarations/highermoment-le-product--7d6bb6fa20d9a01e85400a42.md) | 97 | `result-track:7d6bb6fa20d9a01e85400a425cdfa81faa097f1e75e2ada63d724e0f74fb26f9` |
| 16 | `theorem` | [higherMoment_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variantc1778430b14f9f03f88fcd9dbc346004c799b15b1ae659153c4f522d06c50805.lean/declarations/highermoment-summable--1df39646e5455a0f2ad53354.md) | 108 | `result-track:1df39646e5455a0f2ad533540ca494a4cf46958530f828a330008755ae736585` |
| 17 | `theorem` | [primeHigherMoment_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variantc1778430b14f9f03f88fcd9dbc346004c799b15b1ae659153c4f522d06c50805.lean/declarations/primehighermoment-summable--cfafa30142277a0ad8164d6c.md) | 119 | `result-track:cfafa30142277a0ad8164d6cd2105c511d0c3aac479c8932e4e640c7780308ef` |
| 18 | `theorem` | [logLocation_sq_ge_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variantc1778430b14f9f03f88fcd9dbc346004c799b15b1ae659153c4f522d06c50805.lean/declarations/loglocation-sq-ge-one--de922b919d406a1b44be6b4c.md) | 132 | `result-track:de922b919d406a1b44be6b4c949d3c3be2ad2e2cfc1fbc4ac58f0a0b42cc36ac` |
| 19 | `theorem` | [higherWeight_le_moment](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variantc1778430b14f9f03f88fcd9dbc346004c799b15b1ae659153c4f522d06c50805.lean/declarations/higherweight-le-moment--1129ff5a67fe9adcdfd9cd6e.md) | 143 | `result-track:1129ff5a67fe9adcdfd9cd6e813d5c01ea7ccbb6f5ea78edb7dd089498c7dc8e` |
| 20 | `theorem` | [primeHigherWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variantc1778430b14f9f03f88fcd9dbc346004c799b15b1ae659153c4f522d06c50805.lean/declarations/primehigherweight-summable--68605e7ca76af173968b00ac.md) | 148 | `result-track:68605e7ca76af173968b00acd4bcce65563e6e8e96960ebee4029fd57facce52` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
