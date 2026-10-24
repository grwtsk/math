# GRWTSK.NumberTheory.Moebius.GrowingShiftAffineChowlaHalfIndex

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9242ab7f752131ddfcc560324898aab75bf0f927`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [parityHalfIndexAffineBaseSet](declarations/parityhalfindexaffinebaseset--431c7ac7874935ef7286a8c9.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [halfIndex_mem_of_parityAffineBase](declarations/halfindex-mem-of-parityaffinebase--40327fe8e101adfb5bb8c718.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [parityAffineBase_mem_of_halfIndex](declarations/parityaffinebase-mem-of-halfindex--f157a2154370033ca02815ba.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [two_mul_half_add_parity_eq](declarations/two-mul-half-add-parity-eq--effc88fdff06004020fbdc31.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [reconstructedParity_half_eq](declarations/reconstructedparity-half-eq--43ab2c4dd4a871e9b97dd363.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [sum_parityAffineShiftBaseSet_eq_halfIndex](declarations/sum-parityaffineshiftbaseset-eq-halfindex--594ae7a76a32d86b8c409bb4.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [halfIndexLowerAffineForm](declarations/halfindexloweraffineform--cca18742f189a3769fe2df3e.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [halfIndexUpperAffineForm](declarations/halfindexupperaffineform--5cd39275686dc25e7f902df6.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [halfIndexUpperAffineForm_eq_lower_add_shift](declarations/halfindexupperaffineform-eq-lower-add-shift--955828e0011a5fd6b6480a13.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [doubledSquareModulusFrequency](declarations/doubledsquaremodulusfrequency--5920891fb0fc967207eb1903.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [affineChowlaShiftPhase](declarations/affinechowlashiftphase--1e430650880c31c37409a56b.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [halfIndexAffineChowlaCore](declarations/halfindexaffinechowlacore--8702a1d263bd50ca8fdce20a.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [parityAffineShiftResidueCoordinate_reconstructed](declarations/parityaffineshiftresiduecoordinate-reconstructed--1127359aaf917cecf389d91b.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [stdAddChar_affineShift_eq_shift_mul_doubled](declarations/stdaddchar-affineshift-eq-shift-mul-doubled--faf52cdfda9d98c25cbceb01.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [parityGrowingShiftAffineChowlaTwist_eq_halfIndex](declarations/paritygrowingshiftaffinechowlatwist-eq-halfindex--0da5e42c5c9f8e9a54a8ca69.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [halfIndexAffineChowlaShiftAggregate](declarations/halfindexaffinechowlashiftaggregate--6c8906f8402e404733d5cb20.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [sum_growingShiftAffineChowlaTwist_eq_halfIndexAggregate](declarations/sum-growingshiftaffinechowlatwist-eq-halfindexaggregate--3abf14b6c48fcf4204565236.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [halfIndexAffineChowlaFrequencyMajorant](declarations/halfindexaffinechowlafrequencymajorant--deab71aeb305653111000cbe.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [halfIndexAffineChowlaFrequencyMajorant_eq_growingShift](declarations/halfindexaffinechowlafrequencymajorant-eq-growingshift--89330af99e972f93b8b1e086.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [halfIndexAffineChowlaNonzeroModulusMajorant](declarations/halfindexaffinechowlanonzeromodulusmajorant--ceab0cbfe959f87e55821477.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [halfIndexAffineChowlaNonzeroModulusMajorant_eq_growingShift](declarations/halfindexaffinechowlanonzeromodulusmajorant-eq-growingshift--bb2d14daf5713d15ee90be79.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [halfIndexAffineChowlaEndpointMajorant](declarations/halfindexaffinechowlaendpointmajorant--2847fc3d03ad9c3955d00d34.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [halfIndexAffineChowlaEndpointMajorant_eq_growingShift](declarations/halfindexaffinechowlaendpointmajorant-eq-growingshift--c003a41a51941a6336768dbf.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [DyadicNaturalScaleHalfIndexAffineChowlaBudget](declarations/dyadicnaturalscalehalfindexaffinechowlabudget--79d7a2fd0205db87e95e53d0.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [dyadicNaturalScaleHalfIndexAffineChowlaBudget_iff_growingShift](declarations/dyadicnaturalscalehalfindexaffinechowlabudget-iff-growingshift--40f75d4ed71866043635d2ab.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [naturalScaleCongruenceL1_of_pointwiseMertens_and_halfIndexAffineChowla](declarations/naturalscalecongruencel1-of-pointwisemertens-and-halfindexaffinechowla--96e91bece4e17ef24234070f.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `structure` | [ToHalfIndexAffineChowlaBudgetAdapter](declarations/tohalfindexaffinechowlabudgetadapter--7c1317606b081359f3d433a9.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `structure` | [FixedFormHalfIndexAffineChowlaData](declarations/fixedformhalfindexaffinechowladata--50a057fa5edb6fb49db24818.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [FixedFormHalfIndexAffineChowlaSource](declarations/fixedformhalfindexaffinechowlasource--84d9f202b319508c0c32377f.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `abbrev` | [FixedFormHalfIndexAffineChowlaAdapter](declarations/fixedformhalfindexaffinechowlaadapter--e6b35858877c16fb2654e577.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `structure` | [DoubledFrequencyCoverageAdapter](declarations/doubledfrequencycoverageadapter--f09ddc1a4a4b56d5cf65fabc.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
