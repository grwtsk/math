# Verification target: GRWTSK.NumberTheory.Moebius.HalfIndexAffineChowlaTwoUnitSplit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "791e4238fb1bb06bed50920b4787f79f26e49705",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/HalfIndexAffineChowlaTwoUnitSplit.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoUnitSplit.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoUnitSplit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `791e4238fb1bb06bed50920b4787f79f26e49705`.

Source path: `GRWTSK/NumberTheory/Moebius/HalfIndexAffineChowlaTwoUnitSplit.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/HalfIndexAffineChowlaTwoUnitSplit.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.GrowingShiftAffineChowlaHalfIndex`](../../../../mathematics/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.Data.ZMod.Units` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [TwoUnitSquareModulusParameter](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoUnitSplit.lean/declarations/twounitsquaremodulusparameter--83a776e9d38970928b8df0cb.md) | 44 | `declaration-track:83a776e9d38970928b8df0cb8d9a958b1c6e7e1c02eab90b932bc35a5f8b452a` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoUnitSplit.lean/declarations/instance--aad8861501dd3dc5ad9f024a.md) | 47 | `declaration-track:aad8861501dd3dc5ad9f024ac75c1d012c2e85a3da16045d030bb7d27bc2f9ca` |
| 3 | `def` | [halfSquareModulusFrequency](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoUnitSplit.lean/declarations/halfsquaremodulusfrequency--4bb9660d691ca11743e8797e.md) | 51 | `declaration-track:4bb9660d691ca11743e8797ebec5d9431615610ec3a6056576acf90ddf2d3b1f` |
| 4 | `theorem` | [two_isUnit_squareModulus](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoUnitSplit.lean/declarations/two-isunit-squaremodulus--67545b904425e1f6a05e7b1d.md) | 57 | `result-track:67545b904425e1f6a05e7b1d246c07f5800d14ba194a5641c9a6c17983b9c41a` |
| 5 | `theorem` | [doubled_halfSquareModulusFrequency](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoUnitSplit.lean/declarations/doubled-halfsquaremodulusfrequency--f887d947c3fd9506765e89e7.md) | 65 | `result-track:f887d947c3fd9506765e89e79b145644cedf41be5434c913a8c7cb1cb72603fc` |
| 6 | `theorem` | [half_doubledSquareModulusFrequency](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoUnitSplit.lean/declarations/half-doubledsquaremodulusfrequency--86bc646d189995d7f1ac4e0d.md) | 87 | `result-track:86bc646d189995d7f1ac4e0d836feeaaffc7fd973d2dd1b21339c43f50a76680` |
| 7 | `def` | [doubledSquareModulusFrequencyEquiv](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoUnitSplit.lean/declarations/doubledsquaremodulusfrequencyequiv--c61356724f2212c55b934432.md) | 105 | `declaration-track:c61356724f2212c55b9344324f63ec127eb9fdabedfad8864e2aa90e3beb9a33` |
| 8 | `theorem` | [doubledSquareModulusFrequency_ne_zero_iff](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoUnitSplit.lean/declarations/doubledsquaremodulusfrequency-ne-zero-iff--1c8d8d6bd2ff31ee1093de2a.md) | 116 | `result-track:1c8d8d6bd2ff31ee1093de2ad29250365c20ecf61e8122f49c9a1867b76b04e8` |
| 9 | `theorem` | [halfSquareModulusFrequency_ne_zero_iff](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoUnitSplit.lean/declarations/halfsquaremodulusfrequency-ne-zero-iff--bc1a52596051749bafbea1d6.md) | 132 | `result-track:bc1a52596051749bafbea1d6976eb1e6625f4eb2bc944f39d7c2db1d0a16b7f2` |
| 10 | `def` | [twoUnitHalfIndexAffineChowlaShiftAggregate](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoUnitSplit.lean/declarations/twounithalfindexaffinechowlashiftaggregate--869dc101b2d72182eb4ce139.md) | 152 | `declaration-track:869dc101b2d72182eb4ce13931ace9b3ea8dece1dd5f7af4488d7316e79491fd` |
| 11 | `theorem` | [halfIndexAffineChowlaShiftAggregate_half_eq_twoUnit](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoUnitSplit.lean/declarations/halfindexaffinechowlashiftaggregate-half-eq-twounit--ba562cb8f5dac2f116a6662b.md) | 163 | `result-track:ba562cb8f5dac2f116a6662b7364a9bf617c382bdc212311530663a6f8e6ded3` |
| 12 | `def` | [twoUnitHalfIndexAffineChowlaFrequencyMajorant](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoUnitSplit.lean/declarations/twounithalfindexaffinechowlafrequencymajorant--d764c5bb635e9cfb372aa981.md) | 177 | `declaration-track:d764c5bb635e9cfb372aa9817630c341cc15dd5360796c082626ebb51b8a59ac` |
| 13 | `theorem` | [twoUnitHalfIndexAffineChowlaFrequencyMajorant_eq_half](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoUnitSplit.lean/declarations/twounithalfindexaffinechowlafrequencymajorant-eq-half--18deaec26b28760e4a99c15c.md) | 187 | `result-track:18deaec26b28760e4a99c15c41e0ea8138e2f4d389c6977898a7a73cab2eae00` |
| 14 | `def` | [twoUnitHalfIndexAffineChowlaNonzeroModulusMajorant](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoUnitSplit.lean/declarations/twounithalfindexaffinechowlanonzeromodulusmajorant--e32952086d3320fc239ea791.md) | 203 | `declaration-track:e32952086d3320fc239ea791cfca5d9b677fc7a32481d0465de4bcb15c5b586a` |
| 15 | `theorem` | [twoUnitHalfIndexAffineChowlaNonzeroModulusMajorant_eq_halfIndex](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoUnitSplit.lean/declarations/twounithalfindexaffinechowlanonzeromodulusmajorant-eq-halfindex--5f113905fde23e72ddf92480.md) | 211 | `result-track:5f113905fde23e72ddf92480c2d3b167928c734b281167deae2e3669fc373748` |
| 16 | `def` | [twoUnitHalfIndexAffineChowlaEndpointMajorant](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoUnitSplit.lean/declarations/twounithalfindexaffinechowlaendpointmajorant--d9ea1fd515d817f424f58663.md) | 245 | `declaration-track:d9ea1fd515d817f424f5866397ed8c92440d705f9a4cc8b07e05b3e9867b769b` |
| 17 | `def` | [twoNonunitHalfIndexAffineChowlaEndpointMajorant](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoUnitSplit.lean/declarations/twononunithalfindexaffinechowlaendpointmajorant--230aab9caff8e5d21ccde4be.md) | 257 | `declaration-track:230aab9caff8e5d21ccde4be69c3b33b36b3c7dc611ef1cb88216f3709358998` |
| 18 | `theorem` | [halfIndexAffineChowlaEndpointMajorant_eq_twoUnit_add_twoNonunit](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoUnitSplit.lean/declarations/halfindexaffinechowlaendpointmajorant-eq-twounit-add-twononunit--4985ae5663ae5d676ec8992a.md) | 269 | `result-track:4985ae5663ae5d676ec8992a7224cf036a6cb35ed948a7560d81ee654875b9a3` |
| 19 | `def` | [DyadicNaturalScaleTwoUnitHalfIndexBudget](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoUnitSplit.lean/declarations/dyadicnaturalscaletwounithalfindexbudget--ad416595a9f5a2fb43dda58e.md) | 292 | `declaration-track:ad416595a9f5a2fb43dda58eb9e3cb4f6a5edf4205c6e9eea15d16e4813a6bb1` |
| 20 | `def` | [DyadicNaturalScaleTwoNonunitHalfIndexBudget](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoUnitSplit.lean/declarations/dyadicnaturalscaletwononunithalfindexbudget--7c57419a2ea8b3e232bb3cb8.md) | 301 | `declaration-track:7c57419a2ea8b3e232bb3cb8d80c0143a95137d72fac208585330a4f12ba0701` |
| 21 | `theorem` | [dyadicNaturalScaleHalfIndexBudget_of_twoUnit_and_twoNonunit](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoUnitSplit.lean/declarations/dyadicnaturalscalehalfindexbudget-of-twounit-and-twononunit--2c28d80806d84f6f9d8520cc.md) | 310 | `result-track:2c28d80806d84f6f9d8520ccf73c3725fc9c71335b4610f7fbb8aa41b353de6a` |
| 22 | `theorem` | [naturalScaleCongruenceL1_of_pointwiseMertens_and_twoModulusBranches](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoUnitSplit.lean/declarations/naturalscalecongruencel1-of-pointwisemertens-and-twomodulusbranches--cff3f3eea95d66cb7f76ee8b.md) | 326 | `result-track:cff3f3eea95d66cb7f76ee8bc81186f12c136fa25a3c6738eaee6744e5753dae` |
| 23 | `structure` | [ToTwoUnitHalfIndexBudgetAdapter](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoUnitSplit.lean/declarations/totwounithalfindexbudgetadapter--955fe5e5c84f670f55ae4d34.md) | 337 | `declaration-track:955fe5e5c84f670f55ae4d34466c20b1ec4a062432872c078f11cfa21275f1b7` |
| 24 | `structure` | [ToTwoNonunitHalfIndexBudgetAdapter](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoUnitSplit.lean/declarations/totwononunithalfindexbudgetadapter--e47c1b2bf94355a5b0421c3f.md) | 342 | `declaration-track:e47c1b2bf94355a5b0421c3f7b11c5ea598396f3b38297a54ebb62429f1ec0eb` |
| 25 | `structure` | [FixedFormTwoUnitHalfIndexData](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoUnitSplit.lean/declarations/fixedformtwounithalfindexdata--c6fd951ffb2e86743aaecba3.md) | 348 | `declaration-track:c6fd951ffb2e86743aaecba375d1011e1aa6924f067daf76dc5603048804dc77` |
| 26 | `def` | [FixedFormTwoUnitHalfIndexSource](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoUnitSplit.lean/declarations/fixedformtwounithalfindexsource--b0de28454115c51229860ea8.md) | 361 | `declaration-track:b0de28454115c51229860ea8ac1c16d56cdeed4c6d29e776cc1c2cc30c100860` |
| 27 | `abbrev` | [FixedFormTwoUnitHalfIndexAdapter](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoUnitSplit.lean/declarations/fixedformtwounithalfindexadapter--c6cd40f411229fefd2b4d1d7.md) | 373 | `declaration-track:c6cd40f411229fefd2b4d1d74f9573e17b181c844cac35aefbfe3f02bc59be6e` |
| 28 | `structure` | [TwoNonunitFrequencyResidualBoundary](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoUnitSplit.lean/declarations/twononunitfrequencyresidualboundary--0c4829a7b8df890ac67939c8.md) | 380 | `declaration-track:0c4829a7b8df890ac67939c8a9700e3a537b2ba816d0893e221be71c04061556` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
