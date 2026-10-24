# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerMobiusLogCongruenceReduction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "581428da0f5a73c37fad0f70fe5c3138e7c241b1",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `581428da0f5a73c37fad0f70fe5c3138e7c241b1`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerVonMangoldtShiftReduction`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mobiusReal](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean/declarations/mobiusreal--57a44dd4cfd48c739f6a2ee1.md) | 61 | `declaration-track:57a44dd4cfd48c739f6a2ee116f234f3e7bef042f5a9697789d41730d04754b4` |
| 2 | `def` | [mobiusLogDivisorTerm](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean/declarations/mobiuslogdivisorterm--c266b128ca96de2e42f62fd1.md) | 65 | `declaration-track:c266b128ca96de2e42f62fd1d5b52535b32fe9d0781be06b1ec69790ca2dafb2` |
| 3 | `def` | [centeredMobiusLogIndexSet](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean/declarations/centeredmobiuslogindexset--15531fd157df2fb35e1241d9.md) | 70 | `declaration-track:15531fd157df2fb35e1241d96b30ed2290cc04cdb81760e459f90478604c4f9c` |
| 4 | `def` | [centeredMobiusLogTerm](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean/declarations/centeredmobiuslogterm--5dc41f4e8b4433b3d67ba9c8.md) | 77 | `declaration-track:5dc41f4e8b4433b3d67ba9c882227f8b62b233c3271e7206ad07d8a37c9e7d88` |
| 5 | `theorem` | [none_mem_centeredMobiusLogIndexSet](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean/declarations/none-mem-centeredmobiuslogindexset--4db3ec02e0a7901874f47922.md) | 83 | `result-track:4db3ec02e0a7901874f479224db218b783e13958b749ef7e53ebf3673bcd174c` |
| 6 | `theorem` | [some_mem_centeredMobiusLogIndexSet_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean/declarations/some-mem-centeredmobiuslogindexset-iff--d42bbc3dad37eb5ac9566e03.md) | 90 | `result-track:d42bbc3dad37eb5ac9566e035abf77be0921948ce883f65d57dd2e4c291b74e0` |
| 7 | `theorem` | [centeredMobiusLogTerm_none](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean/declarations/centeredmobiuslogterm-none--c92a1976cf82feb36ea9f5b8.md) | 97 | `result-track:c92a1976cf82feb36ea9f5b8479474eeee8b27a92061251f859f0c4aeedd5da2` |
| 8 | `theorem` | [centeredMobiusLogTerm_some](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean/declarations/centeredmobiuslogterm-some--9e9518f6f5788f4d3f6236ab.md) | 102 | `result-track:9e9518f6f5788f4d3f6236abab94585c86756426675e0c50f9ab417c70f40663` |
| 9 | `def` | [centeredMobiusLogIndexSum](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean/declarations/centeredmobiuslogindexsum--70ae141f5a801eb6525d5013.md) | 109 | `declaration-track:70ae141f5a801eb6525d501377f879972a22276d31786dfce58884b46264db6f` |
| 10 | `theorem` | [centeredMobiusLogIndexSum_eq_raw](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean/declarations/centeredmobiuslogindexsum-eq-raw--0ca9e7fef3c07fd0d1b2c8db.md) | 115 | `result-track:0ca9e7fef3c07fd0d1b2c8db28baff5386b9895184129dbdb65ff02db8c5e08c` |
| 11 | `theorem` | [vonMangoldt_eq_mobiusLogDivisorSum](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean/declarations/vonmangoldt-eq-mobiuslogdivisorsum--d48fc900efffede28da8477c.md) | 142 | `result-track:d48fc900efffede28da8477cea696f79c7d1c9b617252e1723d5dd585c5ea8f7` |
| 12 | `theorem` | [centeredVonMangoldtAtom_eq_centeredMobiusLogIndexSum](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean/declarations/centeredvonmangoldtatom-eq-centeredmobiuslogindexsum--513ebdd9aa2fcf511a009867.md) | 157 | `result-track:513ebdd9aa2fcf511a00986700379163430279ab3efc85f74266933685f07be5` |
| 13 | `def` | [nonAliasingFejerWeightedCenteredMobiusLogAtom](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean/declarations/nonaliasingfejerweightedcenteredmobiuslogatom--be7b44109282a59c0b13cc39.md) | 166 | `declaration-track:be7b44109282a59c0b13cc39a3b873eff389ebfdf3f754026dbd2c746c403aba` |
| 14 | `theorem` | [nonAliasingFejerWeightedCenteredMobiusLogAtom_eq_vonMangoldt](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean/declarations/nonaliasingfejerweightedcenteredmobiuslogatom-eq-vonmangoldt--3af31146497a7bea78468254.md) | 173 | `result-track:3af31146497a7bea784682545b9cf7a0ddd6d48c7cd14b18e5f463ab17e4b937` |
| 15 | `def` | [ShiftDivisorCongruence](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean/declarations/shiftdivisorcongruence--88c5ef54304ffab704da2fb2.md) | 182 | `declaration-track:88c5ef54304ffab704da2fb2b3385683f1cfca9410096499cf6cfe5cf187380e` |
| 16 | `theorem` | [gcd_dvd_shift_of_shiftDivisorCongruence](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean/declarations/gcd-dvd-shift-of-shiftdivisorcongruence--59d1fdfdceba85f7df32499f.md) | 188 | `result-track:59d1fdfdceba85f7df32499f871f952cdfefcc3c7a79380f6197be0fae08c07c` |
| 17 | `theorem` | [fst_dvd_of_mem_divisorsAntidiagonal](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean/declarations/fst-dvd-of-mem-divisorsantidiagonal--05984b2d25ccbed26df8c03a.md) | 203 | `result-track:05984b2d25ccbed26df8c03a0b10333a14ee7d8c826129b05c77ca724f7ca4cb` |
| 18 | `def` | [CenteredMobiusLogPairCompatible](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean/declarations/centeredmobiuslogpaircompatible--453272757a302726e09d9f5e.md) | 214 | `declaration-track:453272757a302726e09d9f5eeac0a9e72d8484f665cc63d16d7404ab5927183d` |
| 19 | `theorem` | [centeredMobiusLogPairCompatible_none_left](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean/declarations/centeredmobiuslogpaircompatible-none-left--eea13371d62bfbfa4d6dea9d.md) | 222 | `result-track:eea13371d62bfbfa4d6dea9d366d5c180e5e7dae778fa6c735f8eedf9e9fefc5` |
| 20 | `theorem` | [centeredMobiusLogPairCompatible_none_right](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean/declarations/centeredmobiuslogpaircompatible-none-right--d8a472bd27b4ddf47f065d2e.md) | 228 | `result-track:d8a472bd27b4ddf47f065d2e2b326b163390fe11c2066522b6b13ff57b555471` |
| 21 | `theorem` | [centeredMobiusLogPairCompatible_some_some](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean/declarations/centeredmobiuslogpaircompatible-some-some--346da448c301577653a7743f.md) | 234 | `result-track:346da448c301577653a7743fd30363cf2860cdc6c85136c22076542aa7ebf3cf` |
| 22 | `theorem` | [centeredMobiusLogIndexPair_compatible](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean/declarations/centeredmobiuslogindexpair-compatible--f0707bb1d9be3c66fee10885.md) | 242 | `result-track:f0707bb1d9be3c66fee108858c19d8d6f7f91c4cc2f3ff3f9ac365a4c6bde47e` |
| 23 | `def` | [centeredMobiusLogCompatiblePairIndexSet](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean/declarations/centeredmobiuslogcompatiblepairindexset--1b5b38ad4da1307d3594d948.md) | 268 | `declaration-track:1b5b38ad4da1307d3594d94850f1bd890c5979d296538fee9286e76acd3134ab` |
| 24 | `theorem` | [mem_centeredMobiusLogCompatiblePairIndexSet_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean/declarations/mem-centeredmobiuslogcompatiblepairindexset-iff--0bac81f8328c754d09aaa0a9.md) | 277 | `result-track:0bac81f8328c754d09aaa0a980fb3825ccda4c176229ea8f51208f42dac24527` |
| 25 | `theorem` | [centeredMobiusLogCompatiblePairIndexSet_eq_product](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean/declarations/centeredmobiuslogcompatiblepairindexset-eq-product--40ea956f1d49f0f8647c0017.md) | 294 | `result-track:40ea956f1d49f0f8647c001744aa13862b7e1a2f95d159e2202af4178a0242e7` |
| 26 | `def` | [centeredMobiusLogCompatiblePairBlock](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean/declarations/centeredmobiuslogcompatiblepairblock--5a6a7a441b520398df4fe3c0.md) | 304 | `declaration-track:5a6a7a441b520398df4fe3c04150db2e4c810cdcd5b72613832a83116c4a159c` |
| 27 | `theorem` | [centeredMobiusLogCompatiblePairBlock_eq_indexSum_mul](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean/declarations/centeredmobiuslogcompatiblepairblock-eq-indexsum-mul--9d0accf4dcae4619bba40e85.md) | 312 | `result-track:9d0accf4dcae4619bba40e855e5bd8bbaab843713df6273285bc1e10b7c10c41` |
| 28 | `theorem` | [centeredMobiusLogCompatiblePairBlock_eq_centeredVonMangoldt_mul](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean/declarations/centeredmobiuslogcompatiblepairblock-eq-centeredvonmangoldt-mul--a96cf60317bed68baf308434.md) | 326 | `result-track:a96cf60317bed68baf308434c3a87d1534b75ce53fe4a1ff78dcb7c7c976cd19` |
| 29 | `def` | [nonAliasingFejerMobiusLogCongruenceShiftCorrelation](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean/declarations/nonaliasingfejermobiuslogcongruenceshiftcorrelation--752b18a5dc17d3d0037d68eb.md) | 337 | `declaration-track:752b18a5dc17d3d0037d68eb1806ae72a39ca006bfeeed5f3ef97e8e096614ed` |
| 30 | `theorem` | [nonAliasingFejerMobiusLogCongruenceShiftCorrelation_eq_vonMangoldt](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean/declarations/nonaliasingfejermobiuslogcongruenceshiftcorrelation-eq-vonmangoldt--eae4a7bc6e176116c8189971.md) | 346 | `result-track:eae4a7bc6e176116c81899713c38c2dc0535f0496043a0f9594c516cbe4a3da9` |
| 31 | `def` | [nonAliasingFejerMobiusLogCongruenceAggregate](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean/declarations/nonaliasingfejermobiuslogcongruenceaggregate--3c2c45c8a6689ddf48cd6245.md) | 359 | `declaration-track:3c2c45c8a6689ddf48cd6245fb7eb29dc6b1fa164916712f4d1f0e76738cfd96` |
| 32 | `theorem` | [nonAliasingFejerMobiusLogCongruenceAggregate_eq_vonMangoldt](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean/declarations/nonaliasingfejermobiuslogcongruenceaggregate-eq-vonmangoldt--2c1e810bbbba88e8c6e8ed98.md) | 366 | `result-track:2c1e810bbbba88e8c6e8ed985e88e043947a02be3508312065c92204d45a2592` |
| 33 | `def` | [SevenEighthsBoundaryMinimalMobiusLogCongruenceBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean/declarations/seveneighthsboundaryminimalmobiuslogcongruencebound--813916ca1f03e1f449364ae4.md) | 381 | `declaration-track:813916ca1f03e1f449364ae420798eab46734dab6231f56cef42b43c6e6f3b6a` |
| 34 | `theorem` | [mobiusLogCongruenceBound_to_vonMangoldtShiftCorrelationBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean/declarations/mobiuslogcongruencebound-to-vonmangoldtshiftcorrelationbound--add1a7002fb6ef883624b7f5.md) | 401 | `result-track:add1a7002fb6ef883624b7f5bfd3938fd51829e77057e1bb428fa03d6bfd1ced` |
| 35 | `theorem` | [vonMangoldtShiftCorrelationBound_to_mobiusLogCongruenceBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean/declarations/vonmangoldtshiftcorrelationbound-to-mobiuslogcongruencebound--5fd5c6f9ad1642b313b9bfb6.md) | 414 | `result-track:5fd5c6f9ad1642b313b9bfb62753691c61b959928ffd4af5b1dba15672275649` |
| 36 | `theorem` | [mobiusLogCongruenceBound_iff_vonMangoldtShiftCorrelationBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean/declarations/mobiuslogcongruencebound-iff-vonmangoldtshiftcorrelationbound--8961e835358a0ec770a3bcd0.md) | 427 | `result-track:8961e835358a0ec770a3bcd02076e1d82fd6fe60b558b93c789b73c7bc13d87a` |
| 37 | `theorem` | [mobiusLogCongruenceBound_to_partialDiscrepancy](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean/declarations/mobiuslogcongruencebound-to-partialdiscrepancy--2f14a08dd70714dfd66afc0f.md) | 436 | `result-track:2f14a08dd70714dfd66afc0fa147c217c8e247a0ee50d54f0a75eb8afba941dc` |
| 38 | `def` | [naiveCenteredMobiusLogChannelExponent](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean/declarations/naivecenteredmobiuslogchannelexponent--1ecc00c59a935a96307cbc10.md) | 449 | `declaration-track:1ecc00c59a935a96307cbc1053e01b941c4baa63e95b36f50554c3b7af6e01ce` |
| 39 | `def` | [centeredMobiusLogTargetExponent](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean/declarations/centeredmobiuslogtargetexponent--9630821f74cbf7e537392fa5.md) | 452 | `declaration-track:9630821f74cbf7e537392fa520d194e0b463fb347b54cfa06e2aeb56d225114d` |
| 40 | `theorem` | [centeredMobiusLogTargetExponent_lt_naiveChannelExponent](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean/declarations/centeredmobiuslogtargetexponent-lt-naivechannelexponent--12fc2705d65643806428de3e.md) | 457 | `result-track:12fc2705d65643806428de3e70586fe7859874edc4ceba29b716da298b411333` |
| 41 | `theorem` | [centeredProduct_fourChannel_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean/declarations/centeredproduct-fourchannel-identity--d3472ec4a0b99809e80b0d2c.md) | 465 | `result-track:d3472ec4a0b99809e80b0d2c89f8d29a5475673147fa87981b4c15be9d8bf406` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
