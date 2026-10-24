# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1487c73221bb96a0ac1dc2edce6bd31a7123be56",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1487c73221bb96a0ac1dc2edce6bd31a7123be56`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerMobiusLogCongruenceReduction`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Data.Nat.ModEq` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centeredMobiusLogDivisorIndexSet](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/declarations/centeredmobiuslogdivisorindexset--9f03e05e1a6e448e3e879e25.md) | 59 | `declaration-track:9f03e05e1a6e448e3e879e2587ee27c1c3306693b377b9f04239bafd0cbdc4d4` |
| 2 | `def` | [centeredMobiusLogDivisorTerm](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/declarations/centeredmobiuslogdivisorterm--ea76215010db38ea8f1373c1.md) | 64 | `declaration-track:ea76215010db38ea8f1373c1eb96dfd57a98b110cca057b2e378ad238f7a656c` |
| 3 | `theorem` | [none_mem_centeredMobiusLogDivisorIndexSet](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/declarations/none-mem-centeredmobiuslogdivisorindexset--d4c3e64e7897871e2a6f6e3b.md) | 70 | `result-track:d4c3e64e7897871e2a6f6e3b3bc3e9e5b5cf0c6584d57fb2b9f42d4ff242b9c0` |
| 4 | `theorem` | [some_mem_centeredMobiusLogDivisorIndexSet_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/declarations/some-mem-centeredmobiuslogdivisorindexset-iff--3f09ba5518aebfb632510c0a.md) | 76 | `result-track:3f09ba5518aebfb632510c0ab4cba921cdb2043f287c1924384f20a9218f9a29` |
| 5 | `theorem` | [centeredMobiusLogDivisorTerm_none](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/declarations/centeredmobiuslogdivisorterm-none--a5467b7e763350b3b5d4c38f.md) | 83 | `result-track:a5467b7e763350b3b5d4c38fa9ea63c1f574e3c7264d46e418b093c22d201c44` |
| 6 | `theorem` | [centeredMobiusLogDivisorTerm_some](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/declarations/centeredmobiuslogdivisorterm-some--96535a2b34eefecdf4163d80.md) | 89 | `result-track:96535a2b34eefecdf4163d8063d4511c54ffe858f3445b7b103ceb77d73de4c8` |
| 7 | `def` | [centeredMobiusLogDivisorIndexSum](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/declarations/centeredmobiuslogdivisorindexsum--c5370fd317c25457779b94e5.md) | 96 | `declaration-track:c5370fd317c25457779b94e5d88f07a33360b05a08130c526f4e5eec11bed5c5` |
| 8 | `theorem` | [centeredMobiusLogDivisorIndexSum_eq_raw](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/declarations/centeredmobiuslogdivisorindexsum-eq-raw--311d77429cfbd93fb501077c.md) | 102 | `result-track:311d77429cfbd93fb501077c1c1eb76c72055eb082190ee70215d5650536855f` |
| 9 | `theorem` | [mobiusLogDivisorSum_eq_vonMangoldt](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/declarations/mobiuslogdivisorsum-eq-vonmangoldt--ee079597768fb2df77b1052d.md) | 129 | `result-track:ee079597768fb2df77b1052d58d87e8db65a5c98e38195b0f0c23156fba62d2c` |
| 10 | `theorem` | [centeredMobiusLogDivisorIndexSum_eq_centeredVonMangoldt](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/declarations/centeredmobiuslogdivisorindexsum-eq-centeredvonmangoldt--dbf5a9e07da03443a5d516cf.md) | 149 | `result-track:dbf5a9e07da03443a5d516cfa167c5bae9c1978434f8847262a2f565c0688c8a` |
| 11 | `def` | [centeredMobiusLogDivisorPairBlock](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/declarations/centeredmobiuslogdivisorpairblock--95f2ec3a77e1de7eca9556d2.md) | 159 | `declaration-track:95f2ec3a77e1de7eca9556d2890acf43082e962454aba4b23f576e5d3a3ace4d` |
| 12 | `theorem` | [centeredMobiusLogDivisorPairBlock_eq_indexSum_mul](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/declarations/centeredmobiuslogdivisorpairblock-eq-indexsum-mul--48bc218f2eb3a42c5c6575b6.md) | 167 | `result-track:48bc218f2eb3a42c5c6575b6cf6fee10470e89f6c94847cc590790d1274a14e6` |
| 13 | `theorem` | [centeredMobiusLogDivisorPairBlock_eq_centeredVonMangoldt_mul](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/declarations/centeredmobiuslogdivisorpairblock-eq-centeredvonmangoldt-mul--b35101d0dae85d4a40a293da.md) | 181 | `result-track:b35101d0dae85d4a40a293dad1849de92c09f18451f74edf44f69723105357d1` |
| 14 | `theorem` | [centeredMobiusLogDivisorPairBlock_eq_compatiblePairBlock](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/declarations/centeredmobiuslogdivisorpairblock-eq-compatiblepairblock--ccafab11e09ee83a5f8b8737.md) | 192 | `result-track:ccafab11e09ee83a5f8b87373de9501331d7632268b239f4b5e6fd7062253f3e` |
| 15 | `def` | [centeredMobiusLogDivisorModulus](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/declarations/centeredmobiuslogdivisormodulus--e15d3fb962e10439df2efdb0.md) | 207 | `declaration-track:e15d3fb962e10439df2efdb03276ccc89cc45c710f94dab0975b72a6d9035931` |
| 16 | `theorem` | [centeredMobiusLogDivisorModulus_none](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/declarations/centeredmobiuslogdivisormodulus-none--306670c1cad6a6e213ae024b.md) | 212 | `result-track:306670c1cad6a6e213ae024bfa1184b82afec84ac747dc642352e25475ff12db` |
| 17 | `theorem` | [centeredMobiusLogDivisorModulus_some](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/declarations/centeredmobiuslogdivisormodulus-some--a9d0d321bf6646c3637bc5c5.md) | 217 | `result-track:a9d0d321bf6646c3637bc5c5400077f183afcea8692ee48e290b2ed61e0f3f5d` |
| 18 | `theorem` | [centeredMobiusLogDivisorModulus_dvd_of_mem](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/declarations/centeredmobiuslogdivisormodulus-dvd-of-mem--4b7919fe99af5b39cf87b905.md) | 223 | `result-track:4b7919fe99af5b39cf87b9057dec85f55b41039f8bfbca52485a6e994f7489dc` |
| 19 | `def` | [CenteredMobiusLogDivisorPairCompatible](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/declarations/centeredmobiuslogdivisorpaircompatible--fad222dd4cff88d5cf5a6865.md) | 237 | `declaration-track:fad222dd4cff88d5cf5a6865a305e6e83d403fefe03a76fdd222aca3846df114` |
| 20 | `theorem` | [centeredMobiusLogDivisorPairCompatible_none_left](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/declarations/centeredmobiuslogdivisorpaircompatible-none-left--d8d289773686c3f139fbdc93.md) | 244 | `result-track:d8d289773686c3f139fbdc933eb38518352d02dcd751fc72560b8dd0083eab0c` |
| 21 | `theorem` | [centeredMobiusLogDivisorPairCompatible_none_right](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/declarations/centeredmobiuslogdivisorpaircompatible-none-right--9fec7f5de45556d294080113.md) | 251 | `result-track:9fec7f5de45556d294080113ce3bbfdd51fdaaf546c5a1ff8f51cdbd1f698201` |
| 22 | `theorem` | [centeredMobiusLogDivisorPairCompatible_some_some](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/declarations/centeredmobiuslogdivisorpaircompatible-some-some--8561c2d4f89955dc6cd074cd.md) | 258 | `result-track:8561c2d4f89955dc6cd074cd53885198ccaa76a674290cd9307af07cf8b94f0d` |
| 23 | `theorem` | [centeredMobiusLogDivisorIndexPair_compatible](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/declarations/centeredmobiuslogdivisorindexpair-compatible--e97db6736ce54e761a48480a.md) | 266 | `result-track:e97db6736ce54e761a48480aa5d54c5651e53f2b3dc1362da8f8c3f38b7e8eef` |
| 24 | `def` | [CenteredMobiusLogShiftSolution](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/declarations/centeredmobiuslogshiftsolution--4f4b3326cbf7ff01d218e439.md) | 277 | `declaration-track:4f4b3326cbf7ff01d218e4390d9559130470bd5eca78c6d85b12b0b6eb1fdec8` |
| 25 | `theorem` | [centeredMobiusLogShiftSolution_pair_modEq_lcm](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/declarations/centeredmobiuslogshiftsolution-pair-modeq-lcm--190a86ce102fc0999d38ce62.md) | 283 | `result-track:190a86ce102fc0999d38ce626514e57112a531b99b748f49d3e542062a5564b9` |
| 26 | `def` | [centeredMobiusLogLCMProgressionFiber](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/declarations/centeredmobiusloglcmprogressionfiber--b9c0c5b713e24d4bdb63e226.md) | 301 | `declaration-track:b9c0c5b713e24d4bdb63e2269360e5f28fc360815dc2afc3e8b561fa72748027` |
| 27 | `theorem` | [mem_centeredMobiusLogLCMProgressionFiber_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/declarations/mem-centeredmobiusloglcmprogressionfiber-iff--c210eb515fd8be7dc5fa6c7c.md) | 311 | `result-track:c210eb515fd8be7dc5fa6c7cab955f39eed5aab9a31bebe480dd8d20377da970` |
| 28 | `theorem` | [centeredMobiusLogDivisorPair_mem_lcmProgressionFiber](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/declarations/centeredmobiuslogdivisorpair-mem-lcmprogressionfiber--58ad5428301ae54669bb52f0.md) | 322 | `result-track:58ad5428301ae54669bb52f056ecbc6c8ab52a8f43ea53c516ad118bad12d82f` |
| 29 | `theorem` | [centeredMobiusLogLCMProgressionFiber_pair_modEq](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/declarations/centeredmobiusloglcmprogressionfiber-pair-modeq--1139d996c2bdcee4567c654c.md) | 334 | `result-track:1139d996c2bdcee4567c654cb54d7e21ea06759024e17516e2c4fd452669064c` |
| 30 | `theorem` | [centeredMobiusLogLCMProgressionFiber_div_lcm_injOn](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/declarations/centeredmobiusloglcmprogressionfiber-div-lcm-injon--50d0992e496b0992f677b5f2.md) | 349 | `result-track:50d0992e496b0992f677b5f2dd710f8f424c1622b297e61a1707b6665287743e` |
| 31 | `theorem` | [centeredMobiusLogLCMProgressionFiber_card_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/declarations/centeredmobiusloglcmprogressionfiber-card-le--2a95959af04accc93476c571.md) | 372 | `result-track:2a95959af04accc93476c5711d64f8e9abd81b1897e5a1e6464d7317d892034c` |
| 32 | `theorem` | [centeredMobiusLogLCMProgressionFiber_none_none](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/declarations/centeredmobiusloglcmprogressionfiber-none-none--4ee481b14e5fd86dcf69f8ec.md) | 413 | `result-track:4ee481b14e5fd86dcf69f8ec5d42c6184a12d5565e9a751e6a0c86e8c444c162` |
| 33 | `def` | [nonAliasingFejerMobiusLogLCMProgressionShiftCorrelation](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/declarations/nonaliasingfejermobiusloglcmprogressionshiftcorrelation--cc7a2aa53174fdc91cfacd31.md) | 423 | `declaration-track:cc7a2aa53174fdc91cfacd31749b58f30e263ddc44da2604cc9be383f0e73106` |
| 34 | `theorem` | [nonAliasingFejerMobiusLogLCMProgressionShiftCorrelation_eq_congruence](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/declarations/nonaliasingfejermobiusloglcmprogressionshiftcorrelation-eq-congruence--bbef109e9f366360a2d31345.md) | 431 | `result-track:bbef109e9f366360a2d31345057d094fa5bebd013dfd76315534bc0990a37d56` |
| 35 | `def` | [nonAliasingFejerMobiusLogLCMProgressionAggregate](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/declarations/nonaliasingfejermobiusloglcmprogressionaggregate--f9187a6f1039cc32bddb9e99.md) | 444 | `declaration-track:f9187a6f1039cc32bddb9e999a9af636ce8ce146d2eecd66cc23065354e419b1` |
| 36 | `theorem` | [nonAliasingFejerMobiusLogLCMProgressionAggregate_eq_congruence](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/declarations/nonaliasingfejermobiusloglcmprogressionaggregate-eq-congruence--be2af08dc26d13031256a627.md) | 451 | `result-track:be2af08dc26d13031256a627fbd308aacfacf42b105e06902a7c80bed0bdf47b` |
| 37 | `def` | [SevenEighthsBoundaryMinimalMobiusLogLCMProgressionBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/declarations/seveneighthsboundaryminimalmobiusloglcmprogressionbound--3e22c7533c2f0d45749503be.md) | 464 | `declaration-track:3e22c7533c2f0d45749503be8903e8ccd560b939a3cbec69a84fbe2fdc26772f` |
| 38 | `theorem` | [mobiusLogLCMProgressionBound_to_congruenceBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/declarations/mobiusloglcmprogressionbound-to-congruencebound--bdfeb3340b39945df80a53e4.md) | 483 | `result-track:bdfeb3340b39945df80a53e41ea3cd2b1bfc8e43ac8a996eddde2f1f00c48984` |
| 39 | `theorem` | [congruenceBound_to_mobiusLogLCMProgressionBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/declarations/congruencebound-to-mobiusloglcmprogressionbound--b27c215b31c53332d09ba98e.md) | 496 | `result-track:b27c215b31c53332d09ba98e325b05f46a999584d24e0c715ce62c925388647c` |
| 40 | `theorem` | [mobiusLogLCMProgressionBound_iff_congruenceBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/declarations/mobiusloglcmprogressionbound-iff-congruencebound--ca00765a747c1b9ad5759666.md) | 508 | `result-track:ca00765a747c1b9ad575966619dd0c3656000b2915bfad49756a44490899583e` |
| 41 | `theorem` | [mobiusLogLCMProgressionBound_to_partialDiscrepancy](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/declarations/mobiusloglcmprogressionbound-to-partialdiscrepancy--0f1f3e242c78761efa0f4371.md) | 517 | `result-track:0f1f3e242c78761efa0f4371910018c323d492d3a5153ec05458d8f434c13a61` |
| 42 | `def` | [naiveMobiusLogLCMProgressionExponent](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/declarations/naivemobiusloglcmprogressionexponent--2e9fd6f4b23a10b98efb015b.md) | 530 | `declaration-track:2e9fd6f4b23a10b98efb015bf7e33112d34a848037c9cf211c998ae3208ef5dd` |
| 43 | `def` | [mobiusLogLCMProgressionTargetExponent](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/declarations/mobiusloglcmprogressiontargetexponent--3368d014a347fdffda777ce9.md) | 533 | `declaration-track:3368d014a347fdffda777ce9f07af9f1254c2de8c791646a20d891e14da7d314` |
| 44 | `theorem` | [mobiusLogLCMProgressionTargetExponent_lt_naive](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/declarations/mobiusloglcmprogressiontargetexponent-lt-naive--c89c3eb6af378be346ac1c48.md) | 537 | `result-track:c89c3eb6af378be346ac1c489fc469ffa8dbd0290d72cf154f63f22e1554930c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
