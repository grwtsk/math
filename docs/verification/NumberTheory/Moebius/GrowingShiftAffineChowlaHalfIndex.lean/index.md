# Verification target: GRWTSK.NumberTheory.Moebius.GrowingShiftAffineChowlaHalfIndex

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9242ab7f752131ddfcc560324898aab75bf0f927",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9242ab7f752131ddfcc560324898aab75bf0f927`.

Source path: `GRWTSK/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.SignedResidueConvolutionShiftAffine`](../../../../mathematics/NumberTheory/Moebius/SignedResidueConvolutionShiftAffine.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [parityHalfIndexAffineBaseSet](../../../../mathematics/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean/declarations/parityhalfindexaffinebaseset--431c7ac7874935ef7286a8c9.md) | 49 | `declaration-track:431c7ac7874935ef7286a8c964f240f0c0391f0131d9037e10a769b060a60f74` |
| 2 | `theorem` | [halfIndex_mem_of_parityAffineBase](../../../../mathematics/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean/declarations/halfindex-mem-of-parityaffinebase--40327fe8e101adfb5bb8c718.md) | 55 | `result-track:40327fe8e101adfb5bb8c718e0a9708e621c73bde52be055f554b0638420c84b` |
| 3 | `theorem` | [parityAffineBase_mem_of_halfIndex](../../../../mathematics/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean/declarations/parityaffinebase-mem-of-halfindex--f157a2154370033ca02815ba.md) | 72 | `result-track:f157a2154370033ca02815bae907556cd1cb7eaa669def4be44432b43d052fdf` |
| 4 | `theorem` | [two_mul_half_add_parity_eq](../../../../mathematics/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean/declarations/two-mul-half-add-parity-eq--effc88fdff06004020fbdc31.md) | 90 | `result-track:effc88fdff06004020fbdc31cdcc335f7410fa4b23661b4d63ccf205d9f998f2` |
| 5 | `theorem` | [reconstructedParity_half_eq](../../../../mathematics/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean/declarations/reconstructedparity-half-eq--43ab2c4dd4a871e9b97dd363.md) | 98 | `result-track:43ab2c4dd4a871e9b97dd363cb0a8749ea289bf7dd8448f6cd01052ec0cf7e7d` |
| 6 | `theorem` | [sum_parityAffineShiftBaseSet_eq_halfIndex](../../../../mathematics/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean/declarations/sum-parityaffineshiftbaseset-eq-halfindex--594ae7a76a32d86b8c409bb4.md) | 106 | `result-track:594ae7a76a32d86b8c409bb45dff1ef2b4fa1951513eb83f9ca0b1bb7a5e5dcb` |
| 7 | `def` | [halfIndexLowerAffineForm](../../../../mathematics/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean/declarations/halfindexloweraffineform--cca18742f189a3769fe2df3e.md) | 136 | `declaration-track:cca18742f189a3769fe2df3ebc5a8fecf018aec3ceceebcaa5bc29f741d54f17` |
| 8 | `def` | [halfIndexUpperAffineForm](../../../../mathematics/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean/declarations/halfindexupperaffineform--5cd39275686dc25e7f902df6.md) | 141 | `declaration-track:5cd39275686dc25e7f902df605ef4048c25a3ad065c504316ffce0061d1153c6` |
| 9 | `theorem` | [halfIndexUpperAffineForm_eq_lower_add_shift](../../../../mathematics/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean/declarations/halfindexupperaffineform-eq-lower-add-shift--955828e0011a5fd6b6480a13.md) | 147 | `result-track:955828e0011a5fd6b6480a1397e8b359612a653ed12dfb47993e3634ca36f7ec` |
| 10 | `def` | [doubledSquareModulusFrequency](../../../../mathematics/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean/declarations/doubledsquaremodulusfrequency--5920891fb0fc967207eb1903.md) | 155 | `declaration-track:5920891fb0fc967207eb1903653fae0637909ad72becb5239358dd46dcae9f76` |
| 11 | `def` | [affineChowlaShiftPhase](../../../../mathematics/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean/declarations/affinechowlashiftphase--1e430650880c31c37409a56b.md) | 161 | `declaration-track:1e430650880c31c37409a56b454222b787eeda123eba27c007b1d36376fe21c1` |
| 12 | `def` | [halfIndexAffineChowlaCore](../../../../mathematics/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean/declarations/halfindexaffinechowlacore--8702a1d263bd50ca8fdce20a.md) | 167 | `declaration-track:8702a1d263bd50ca8fdce20a65c3295bcf6831c61cb1dc9492550f6fc569fe83` |
| 13 | `theorem` | [parityAffineShiftResidueCoordinate_reconstructed](../../../../mathematics/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean/declarations/parityaffineshiftresiduecoordinate-reconstructed--1127359aaf917cecf389d91b.md) | 177 | `result-track:1127359aaf917cecf389d91bd073237c147350fa2335db8b34a6ec8c123ab78e` |
| 14 | `theorem` | [stdAddChar_affineShift_eq_shift_mul_doubled](../../../../mathematics/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean/declarations/stdaddchar-affineshift-eq-shift-mul-doubled--faf52cdfda9d98c25cbceb01.md) | 189 | `result-track:faf52cdfda9d98c25cbceb012c613a433dee4c45c839fdd6b81e8b75f9856a26` |
| 15 | `theorem` | [parityGrowingShiftAffineChowlaTwist_eq_halfIndex](../../../../mathematics/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean/declarations/paritygrowingshiftaffinechowlatwist-eq-halfindex--0da5e42c5c9f8e9a54a8ca69.md) | 212 | `result-track:0da5e42c5c9f8e9a54a8ca69c3ad9bfc62c0cc32a721813207c02242253bcc27` |
| 16 | `def` | [halfIndexAffineChowlaShiftAggregate](../../../../mathematics/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean/declarations/halfindexaffinechowlashiftaggregate--6c8906f8402e404733d5cb20.md) | 258 | `declaration-track:6c8906f8402e404733d5cb2025428fda983438997634987d21cf8dfd5a0e9a04` |
| 17 | `theorem` | [sum_growingShiftAffineChowlaTwist_eq_halfIndexAggregate](../../../../mathematics/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean/declarations/sum-growingshiftaffinechowlatwist-eq-halfindexaggregate--3abf14b6c48fcf4204565236.md) | 268 | `result-track:3abf14b6c48fcf42045652366c8ab7d9e17e5a853d7b43dfb673ad0701dfc719` |
| 18 | `def` | [halfIndexAffineChowlaFrequencyMajorant](../../../../mathematics/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean/declarations/halfindexaffinechowlafrequencymajorant--deab71aeb305653111000cbe.md) | 283 | `declaration-track:deab71aeb305653111000cbeab320db4084d6b9ddd79b465aa25fb5331751536` |
| 19 | `theorem` | [halfIndexAffineChowlaFrequencyMajorant_eq_growingShift](../../../../mathematics/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean/declarations/halfindexaffinechowlafrequencymajorant-eq-growingshift--89330af99e972f93b8b1e086.md) | 291 | `result-track:89330af99e972f93b8b1e08659974f6851e6b9f25b97704960e1b882d7d35d0b` |
| 20 | `def` | [halfIndexAffineChowlaNonzeroModulusMajorant](../../../../mathematics/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean/declarations/halfindexaffinechowlanonzeromodulusmajorant--ceab0cbfe959f87e55821477.md) | 304 | `declaration-track:ceab0cbfe959f87e55821477facf1469b1b5722eab87d9b1069bb8e2218a938a` |
| 21 | `theorem` | [halfIndexAffineChowlaNonzeroModulusMajorant_eq_growingShift](../../../../mathematics/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean/declarations/halfindexaffinechowlanonzeromodulusmajorant-eq-growingshift--bb2d14daf5713d15ee90be79.md) | 311 | `result-track:bb2d14daf5713d15ee90be799a75e2c1748d830138605fea5d7069bf10885238` |
| 22 | `def` | [halfIndexAffineChowlaEndpointMajorant](../../../../mathematics/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean/declarations/halfindexaffinechowlaendpointmajorant--2847fc3d03ad9c3955d00d34.md) | 324 | `declaration-track:2847fc3d03ad9c3955d00d34e92dfe9a9772409d90908dcd340f673f4f3888f5` |
| 23 | `theorem` | [halfIndexAffineChowlaEndpointMajorant_eq_growingShift](../../../../mathematics/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean/declarations/halfindexaffinechowlaendpointmajorant-eq-growingshift--c003a41a51941a6336768dbf.md) | 333 | `result-track:c003a41a51941a6336768dbf8212625747bf7f8d4292a111fa959a9f11c9033d` |
| 24 | `def` | [DyadicNaturalScaleHalfIndexAffineChowlaBudget](../../../../mathematics/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean/declarations/dyadicnaturalscalehalfindexaffinechowlabudget--79d7a2fd0205db87e95e53d0.md) | 349 | `declaration-track:79d7a2fd0205db87e95e53d0569357c9e0f89552acd61eb4e392d15f4a2eb847` |
| 25 | `theorem` | [dyadicNaturalScaleHalfIndexAffineChowlaBudget_iff_growingShift](../../../../mathematics/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean/declarations/dyadicnaturalscalehalfindexaffinechowlabudget-iff-growingshift--40f75d4ed71866043635d2ab.md) | 359 | `result-track:40f75d4ed71866043635d2abeea8003036fdf1b17a6af480f42e9d05b7881da5` |
| 26 | `theorem` | [naturalScaleCongruenceL1_of_pointwiseMertens_and_halfIndexAffineChowla](../../../../mathematics/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean/declarations/naturalscalecongruencel1-of-pointwisemertens-and-halfindexaffinechowla--96e91bece4e17ef24234070f.md) | 378 | `result-track:96e91bece4e17ef24234070ffbdde8631de772b85567a68a5ef01fc1de8d0886` |
| 27 | `structure` | [ToHalfIndexAffineChowlaBudgetAdapter](../../../../mathematics/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean/declarations/tohalfindexaffinechowlabudgetadapter--7c1317606b081359f3d433a9.md) | 388 | `declaration-track:7c1317606b081359f3d433a911d281e8076809d510914bacbf61bd051b5aad67` |
| 28 | `structure` | [FixedFormHalfIndexAffineChowlaData](../../../../mathematics/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean/declarations/fixedformhalfindexaffinechowladata--50a057fa5edb6fb49db24818.md) | 397 | `declaration-track:50a057fa5edb6fb49db24818425e95c250cff78deac55fa0a848a983243d4d5b` |
| 29 | `def` | [FixedFormHalfIndexAffineChowlaSource](../../../../mathematics/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean/declarations/fixedformhalfindexaffinechowlasource--84d9f202b319508c0c32377f.md) | 410 | `declaration-track:84d9f202b319508c0c32377fa918737323dd34e0fe8d243fb02b7bc57e97482b` |
| 30 | `abbrev` | [FixedFormHalfIndexAffineChowlaAdapter](../../../../mathematics/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean/declarations/fixedformhalfindexaffinechowlaadapter--e6b35858877c16fb2654e577.md) | 423 | `declaration-track:e6b35858877c16fb2654e5770181af9ed4e783496269703b94643f61c852c11f` |
| 31 | `structure` | [DoubledFrequencyCoverageAdapter](../../../../mathematics/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean/declarations/doubledfrequencycoverageadapter--f09ddc1a4a4b56d5cf65fabc.md) | 430 | `declaration-track:f09ddc1a4a4b56d5cf65fabc3349f20220a248d52080c59e6b736c90f3fe7f30` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
