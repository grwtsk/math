# Verification target: GRWTSK.NumberTheory.Moebius.CoreGrowingShiftSignedStaircase

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46c3d81dbbb8633f664d2f8eac9d9da440666b28",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46c3d81dbbb8633f664d2f8eac9d9da440666b28`.

Source path: `GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CoreGrowingShiftPrefixSquareEnergy`](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftPrefixSquareEnergy.lean/index.md) — import line 11; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.CoreGrowingShiftQuarticExplicitMultiplicity`](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticExplicitMultiplicity.lean/index.md) — import line 12; pinned internal source present.
- `Mathlib.Algebra.BigOperators.Group.Finset.Sigma` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [CoreGrowingShiftSignedActiveCell](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean/declarations/coregrowingshiftsignedactivecell--c6a41a88036a8cd56c4b5ad6.md) | 23 | `declaration-track:c6a41a88036a8cd56c4b5ad6b30834a694e48f1a10a785d5ae873bca920b9975` |
| 2 | `abbrev` | [CoreGrowingShiftSignedStaircaseIndex](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean/declarations/coregrowingshiftsignedstaircaseindex--ec0797daa63d857660f7147d.md) | 27 | `declaration-track:ec0797daa63d857660f7147dcadbe4e0470347b337aaed894f4c3d4762b8f55d` |
| 3 | `def` | [coreGrowingShiftSignedActiveCells](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean/declarations/coregrowingshiftsignedactivecells--552ba38aba6613cc15886569.md) | 30 | `declaration-track:552ba38aba6613cc15886569aa51299d7b769f9090280d528124836a57746c1e` |
| 4 | `def` | [coreGrowingShiftSignedStaircasePrefixSet](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean/declarations/coregrowingshiftsignedstaircaseprefixset--9fc2d67c60915e5d7e729253.md) | 36 | `declaration-track:9fc2d67c60915e5d7e729253d0e47bc24d57f00d62b8eed4525646f7b1bbab67` |
| 5 | `def` | [coreGrowingShiftSignedStaircaseLower](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean/declarations/coregrowingshiftsignedstaircaselower--f4e391b18e0409eaed9d2e69.md) | 43 | `declaration-track:f4e391b18e0409eaed9d2e69885e00d6617d1342f512681577100313dfae7591` |
| 6 | `def` | [coreGrowingShiftSignedStaircaseUpper](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean/declarations/coregrowingshiftsignedstaircaseupper--6d98114231b39f6a92576f88.md) | 48 | `declaration-track:6d98114231b39f6a92576f8872c092843cd88f781b8aeac625069a47bc245cd8` |
| 7 | `def` | [coreGrowingShiftSignedStaircaseShiftSet](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean/declarations/coregrowingshiftsignedstaircaseshiftset--743d802dfb49b544f6c88167.md) | 53 | `declaration-track:743d802dfb49b544f6c881670f5c53789f7999196f3cd9bab87f30949975ca57` |
| 8 | `def` | [coreGrowingShiftSignedStaircaseIndices](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean/declarations/coregrowingshiftsignedstaircaseindices--63de5c31c0778c1c9e43c21f.md) | 60 | `declaration-track:63de5c31c0778c1c9e43c21fb18b2ca075c4432958e6e29b6f184de0c3d1f110` |
| 9 | `def` | [coreGrowingShiftSignedActiveCellToStaircase](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean/declarations/coregrowingshiftsignedactivecelltostaircase--4893d0b4255af856e733d4df.md) | 67 | `declaration-track:4893d0b4255af856e733d4dfdab5c2660ae7c3e12d1d230869776547ef2936b5` |
| 10 | `theorem` | [harmonicShiftLower_eq_signedStaircaseLower](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean/declarations/harmonicshiftlower-eq-signedstaircaselower--5fa25a4486a1003c1275ca24.md) | 74 | `result-track:5fa25a4486a1003c1275ca24f696bf12b1db4261f40a419fc69b2718002afd86` |
| 11 | `theorem` | [harmonicShiftUpper_eq_signedStaircaseUpper](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean/declarations/harmonicshiftupper-eq-signedstaircaseupper--1d65b2b1a7e03ea79ca40577.md) | 84 | `result-track:1d65b2b1a7e03ea79ca405777c6be8cea898be36255742063c4b4341ed00d19f` |
| 12 | `theorem` | [coreGrowingShiftSignedActiveCellToStaircase_mem](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean/declarations/coregrowingshiftsignedactivecelltostaircase-mem--1b60366cf213e33b4ca6a7ec.md) | 92 | `result-track:1b60366cf213e33b4ca6a7ec1981fbf849bef4b70e2fa9233f39442aa5869fbb` |
| 13 | `theorem` | [coreGrowingShiftSignedActiveCellToStaircase_injective](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean/declarations/coregrowingshiftsignedactivecelltostaircase-injective--df958bc5614e1f27e43952df.md) | 125 | `result-track:df958bc5614e1f27e43952dfe71ec12fa5ba0643f77b9e6ad2e73ad6e834dbd0` |
| 14 | `theorem` | [coreGrowingShiftSignedActiveCellToStaircase_surjective](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean/declarations/coregrowingshiftsignedactivecelltostaircase-surjective--eb931c5d222bcc1102eba796.md) | 142 | `result-track:eb931c5d222bcc1102eba796b49789b433791a819fb0b2d14930239ba7af84fe` |
| 15 | `def` | [coreGrowingShiftSignedActiveCellValue](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean/declarations/coregrowingshiftsignedactivecellvalue--182e086f83a4754ad3b7eeb8.md) | 198 | `declaration-track:182e086f83a4754ad3b7eeb88ed57d126281b0531f254f3afb30d805cb43c6fd` |
| 16 | `def` | [coreGrowingShiftSignedActiveCellEnergy](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean/declarations/coregrowingshiftsignedactivecellenergy--e0969c1912db168dcc0a149d.md) | 205 | `declaration-track:e0969c1912db168dcc0a149d82e9883dc15a6ee39d2e6a03acdad02c1b87c46e` |
| 17 | `def` | [coreGrowingShiftSignedStaircaseInheritedWeight](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean/declarations/coregrowingshiftsignedstaircaseinheritedweight--5844cf692a5ec218b8477b71.md) | 212 | `declaration-track:5844cf692a5ec218b8477b719ab3ab276fc55dcfa933125c2cfef7e2c0df6355` |
| 18 | `def` | [coreGrowingShiftSignedStaircaseInheritedCell](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean/declarations/coregrowingshiftsignedstaircaseinheritedcell--216b9a8750172a4f199fa05d.md) | 218 | `declaration-track:216b9a8750172a4f199fa05dc26607f09f68da3c87aa2b8c0eb5d97792a9607b` |
| 19 | `def` | [coreGrowingShiftSignedStaircaseInheritedPacket](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean/declarations/coregrowingshiftsignedstaircaseinheritedpacket--a117ce02dc73ef4a60b398d4.md) | 225 | `declaration-track:a117ce02dc73ef4a60b398d47adc87176c2c30482d7099725b5eca5e931b6c60` |
| 20 | `theorem` | [coreGrowingShiftSignedActiveCellValue_eq_inherited](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean/declarations/coregrowingshiftsignedactivecellvalue-eq-inherited--cf62eb7d8f0e1b48cef3645a.md) | 232 | `result-track:cf62eb7d8f0e1b48cef3645aa240bdc7cbd18312d2aec4724721b7f2c527b8fb` |
| 21 | `theorem` | [coreGrowingShiftWeightedPrefixPacket_eq_activeCells](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean/declarations/coregrowingshiftweightedprefixpacket-eq-activecells--ef0098007988efa025ed7f21.md) | 254 | `result-track:ef0098007988efa025ed7f215e28b1ab5de027a94d000eb0ff7f3746b9e83bd0` |
| 22 | `theorem` | [coreGrowingShiftSignedActiveCellEnergy_eq_inheritedStaircase](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean/declarations/coregrowingshiftsignedactivecellenergy-eq-inheritedstaircase--0bb97937f280514ac7e3eed6.md) | 267 | `result-track:0bb97937f280514ac7e3eed6c5d7a25c2e0c5aa91b4cd7dca8f131865b7b3bf8` |
| 23 | `def` | [coreGrowingShiftSignedStaircaseClampedShift](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean/declarations/coregrowingshiftsignedstaircaseclampedshift--3bcabc16fc15ea189c16b27a.md) | 289 | `declaration-track:3bcabc16fc15ea189c16b27aa94c9e7d6b32a74a1607ffe3cb4c672267d6f948` |
| 24 | `def` | [coreGrowingShiftSignedStaircaseWeight](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean/declarations/coregrowingshiftsignedstaircaseweight--950fa6e0a1095945f1c08b5c.md) | 296 | `declaration-track:950fa6e0a1095945f1c08b5c6fb6a1080b262e5bdf53775a4141e2a0c700c596` |
| 25 | `theorem` | [coreGrowingShiftSignedStaircaseInheritedWeight_eq_explicit](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean/declarations/coregrowingshiftsignedstaircaseinheritedweight-eq-explicit--f7edc00eea32885d465b6910.md) | 303 | `result-track:f7edc00eea32885d465b6910d7df75bcb60448f83e0ac4486df8f9dcd3a0ecec` |
| 26 | `def` | [coreGrowingShiftSignedStaircaseCell](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean/declarations/coregrowingshiftsignedstaircasecell--ff042ac363abc75bf942c380.md) | 389 | `declaration-track:ff042ac363abc75bf942c380fea6b68f4cb639670a253b6662bb760b679d038d` |
| 27 | `def` | [coreGrowingShiftSignedStaircasePacket](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean/declarations/coregrowingshiftsignedstaircasepacket--4d98afe9a52e0a9f8bc96be2.md) | 396 | `declaration-track:4d98afe9a52e0a9f8bc96be2e6fc74e579d6cd163e0be1d7eaba05cfb70a5c0d` |
| 28 | `theorem` | [coreGrowingShiftSignedStaircaseInheritedPacket_eq_explicit](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean/declarations/coregrowingshiftsignedstaircaseinheritedpacket-eq-explicit--e04eab9bdaa46889a3f20910.md) | 402 | `result-track:e04eab9bdaa46889a3f2091025f68db4e27633d7333761373c4913629672cf74` |
| 29 | `theorem` | [coreGrowingShiftFirstDifferencePacket_eq_two_mul_signedStaircase](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean/declarations/coregrowingshiftfirstdifferencepacket-eq-two-mul-signedstaircase--f83b01bea099dd64e3fb1d7e.md) | 419 | `result-track:f83b01bea099dd64e3fb1d7e0474c89058d1f6c1f04bacf5348d88e0039bfa6b` |
| 30 | `def` | [SubpolynomialCoreGrowingShiftSignedStaircasePacket](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean/declarations/subpolynomialcoregrowingshiftsignedstaircasepacket--327cb9c8185c7f7bfac4c76b.md) | 430 | `declaration-track:327cb9c8185c7f7bfac4c76b6aa2771c09858c8524853bfd5c92b3e205d0827b` |
| 31 | `theorem` | [subpolynomialCoreGrowingShiftSignedStaircasePacket_iff_firstDifference](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean/declarations/subpolynomialcoregrowingshiftsignedstaircasepacket-iff-firstdifference--efc759a04b861b79c8ce04da.md) | 437 | `result-track:efc759a04b861b79c8ce04dac7782a0981992faad324fd8afdc94d81e53796d4` |
| 32 | `theorem` | [riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedStaircasePacket](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean/declarations/riemannhypothesis-of-subpolynomialcoregrowingshiftsignedstaircasepacket--54f3de554914ed28e6d03fa1.md) | 455 | `result-track:54f3de554914ed28e6d03fa1054f6447b11afd750050fb9a6913d2c96f76042c` |
| 33 | `structure` | [SignedGrowingShiftStaircaseSource](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean/declarations/signedgrowingshiftstaircasesource--0938111c746ac140c8ac20b7.md) | 464 | `declaration-track:0938111c746ac140c8ac20b78ec87dfa4bfe7dbaa98ad7e1f8a4e75c4871bb49` |
| 34 | `structure` | [ToCoreGrowingShiftSignedStaircasePacket](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean/declarations/tocoregrowingshiftsignedstaircasepacket--2bf9ac4ebf8d2aa2b3c688b4.md) | 472 | `declaration-track:2bf9ac4ebf8d2aa2b3c688b42ca2437a813de0414604835cdde30102a99467bf` |
| 35 | `structure` | [SignedGrowingShiftStaircaseDispersionSource](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean/declarations/signedgrowingshiftstaircasedispersionsource--f9e15dca38982c0c480658c9.md) | 485 | `declaration-track:f9e15dca38982c0c480658c980eebfc4f4ce6f8eef206160c0d5f599f09184e5` |
| 36 | `structure` | [ToCoreGrowingShiftSignedStaircasePacketFromDispersion](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean/declarations/tocoregrowingshiftsignedstaircasepacketfromdispersion--adc79bee6446d0d7bd585d10.md) | 495 | `declaration-track:adc79bee6446d0d7bd585d10e31ae6e0439c07fc95c0ea3bfab9b7aa499eb555` |
| 37 | `theorem` | [signedGrowingShiftStaircaseCancellation_hostileWitness](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean/declarations/signedgrowingshiftstaircasecancellation-hostilewitness--a4f3fd6a1edfdb052b3eab37.md) | 510 | `result-track:a4f3fd6a1edfdb052b3eab37a0b36831d4ef3979fdfbae17b000f8fd2ce01cb5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
