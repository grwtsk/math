# Verification target: GRWTSK.NumberTheory.Moebius.HalfIndexAffineChowlaTwoNonunitKernelPair

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a887099c7d7598b5ec0a64aa555b7651faf0eaae",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitKernelPair.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitKernelPair.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitKernelPair.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a887099c7d7598b5ec0a64aa555b7651faf0eaae`.

Source path: `GRWTSK/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitKernelPair.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitKernelPair.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.HalfIndexAffineChowlaTwoUnitSplit`](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoUnitSplit.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [TwoNonunitSquareModulusParameter](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitKernelPair.lean/declarations/twononunitsquaremodulusparameter--62d197d0a584547f29efcf4e.md) | 44 | `declaration-track:62d197d0a584547f29efcf4e6d74c8ebabfa53b2e3c19dc897543ccb9a2f105f` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitKernelPair.lean/declarations/instance--e80823ecd770f40418896f72.md) | 47 | `declaration-track:e80823ecd770f40418896f7204296613c7c5cbd7b9cb1a9549567eeffc6ded04` |
| 3 | `theorem` | [squareModulus_even_of_twoNonunit](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitKernelPair.lean/declarations/squaremodulus-even-of-twononunit--95a0ef086d778939b40ad176.md) | 51 | `result-track:95a0ef086d778939b40ad176c3ac91b45987aae093dd7d782aa1516f56af9a67` |
| 4 | `def` | [twoKernelFrequency](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitKernelPair.lean/declarations/twokernelfrequency--1bd3c2cfd22a1a9f8cf8fddf.md) | 61 | `declaration-track:1bd3c2cfd22a1a9f8cf8fddf3956c627de39e2edb86d7ad683778156d382f670` |
| 5 | `theorem` | [twoKernelFrequency_add_self_eq_zero](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitKernelPair.lean/declarations/twokernelfrequency-add-self-eq-zero--af72cb42382996633c0082d0.md) | 66 | `result-track:af72cb42382996633c0082d031aabe6ea6ab03062cb1b4e273d327aacc4d7884` |
| 6 | `theorem` | [twoKernelFrequency_ne_zero](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitKernelPair.lean/declarations/twokernelfrequency-ne-zero--7fb2b3d34c15d903c9f580c6.md) | 79 | `result-track:7fb2b3d34c15d903c9f580c65592dbadb16d56bc4d51072d959bce6c6966c838` |
| 7 | `def` | [twoKernelPartner](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitKernelPair.lean/declarations/twokernelpartner--77314da28866d74325c8fa80.md) | 100 | `declaration-track:77314da28866d74325c8fa80ad9ec19ccdecf1dd7e61809bbdd10d9defa75af3` |
| 8 | `theorem` | [twoKernelPartner_involutive](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitKernelPair.lean/declarations/twokernelpartner-involutive--c65712c4911a511c6b22097b.md) | 106 | `result-track:c65712c4911a511c6b22097bd185f78b6882f0495d4d0efe8bacad4cd97fcc8a` |
| 9 | `theorem` | [doubledSquareModulusFrequency_partner](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitKernelPair.lean/declarations/doubledsquaremodulusfrequency-partner--52517e5ee21321167d158b05.md) | 116 | `result-track:52517e5ee21321167d158b05df6bed7cd6cf4d7468b9700986a27236edaca16e` |
| 10 | `theorem` | [twoKernelPartner_zero](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitKernelPair.lean/declarations/twokernelpartner-zero--ebd40dad4305f4fb9d6d56c0.md) | 132 | `result-track:ebd40dad4305f4fb9d6d56c00c2c934c546352a9ba7d8c784c82fa03c339b07e` |
| 11 | `theorem` | [twoKernelPartner_kernel_eq_zero](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitKernelPair.lean/declarations/twokernelpartner-kernel-eq-zero--7e5b70f3e40e17bc0827093c.md) | 138 | `result-track:7e5b70f3e40e17bc0827093c6f41d784738c167207d27f7ac85b020b8f3a9c4e` |
| 12 | `def` | [twoKernelShiftCharacter](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitKernelPair.lean/declarations/twokernelshiftcharacter--3d42ae8500502875e19cc116.md) | 146 | `declaration-track:3d42ae8500502875e19cc11676d24363c29a14f1ecde4611a9563ff54cc73262` |
| 13 | `theorem` | [twoKernelShiftCharacter_sq](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitKernelPair.lean/declarations/twokernelshiftcharacter-sq--841998bce1534240877b9fb5.md) | 153 | `result-track:841998bce1534240877b9fb515a7b45fedda9cc8877ce0c14144eb486b3de28c` |
| 14 | `theorem` | [affineChowlaShiftPhase_partner](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitKernelPair.lean/declarations/affinechowlashiftphase-partner--f6c1c0e6df09708a6b9efa3e.md) | 174 | `result-track:f6c1c0e6df09708a6b9efa3e77587c162e25ac9e4dc36f236dc6f044db5d3c4f` |
| 15 | `theorem` | [halfIndexAffineChowlaShiftAggregate_partner](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitKernelPair.lean/declarations/halfindexaffinechowlashiftaggregate-partner--d86280596e19a73e0cde73e1.md) | 189 | `result-track:d86280596e19a73e0cde73e1f7867ba001fe4a978a482070db796d2cca14da18` |
| 16 | `def` | [twoKernelPairPlusAggregate](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitKernelPair.lean/declarations/twokernelpairplusaggregate--2def35b0e3b225a0c3985081.md) | 207 | `declaration-track:2def35b0e3b225a0c3985081163c8ffea28e18777a5645cafad16256b8f11550` |
| 17 | `def` | [twoKernelPairMinusAggregate](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitKernelPair.lean/declarations/twokernelpairminusaggregate--61b1b39823d07fb371144b59.md) | 215 | `declaration-track:61b1b39823d07fb371144b591cc3b86539d3f23f4cca25de016aded52221195c` |
| 18 | `theorem` | [twoKernelPairPlusAggregate_eq_projector](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitKernelPair.lean/declarations/twokernelpairplusaggregate-eq-projector--47098f48902c2ea4bcab37bc.md) | 223 | `result-track:47098f48902c2ea4bcab37bcbdfdff681c2fa6a87ecfc20201c891cece1acf92` |
| 19 | `theorem` | [twoKernelPairMinusAggregate_eq_projector](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitKernelPair.lean/declarations/twokernelpairminusaggregate-eq-projector--43646a766a2256dee6cc51d5.md) | 243 | `result-track:43646a766a2256dee6cc51d59572e00ffd7cba0f0dd285bf96f341c7b0568fe2` |
| 20 | `theorem` | [halfIndexAggregate_eq_half_pairPlus_add_pairMinus](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitKernelPair.lean/declarations/halfindexaggregate-eq-half-pairplus-add-pairminus--5be5cf176267c7661bb395c9.md) | 263 | `result-track:5be5cf176267c7661bb395c91303d29fe821ad5d1012ef8ad441faf3e349a522` |
| 21 | `theorem` | [halfIndexPartnerAggregate_eq_half_pairPlus_sub_pairMinus](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitKernelPair.lean/declarations/halfindexpartneraggregate-eq-half-pairplus-sub-pairminus--ae2781b9103b25990dd4e237.md) | 274 | `result-track:ae2781b9103b25990dd4e2375891b17e40c48ce4d4b24a15ca1b04dcc64f6c06` |
| 22 | `def` | [twoNonunitKernelPairFrequencyMajorant](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitKernelPair.lean/declarations/twononunitkernelpairfrequencymajorant--81f1b6ccd3b6c4ccf9498aa2.md) | 287 | `declaration-track:81f1b6ccd3b6c4ccf9498aa2a7a4c5b808b9c1827e3e6790dc2075ad40db08ba` |
| 23 | `theorem` | [halfIndexAffineChowlaFrequencyMajorant_le_kernelPair](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitKernelPair.lean/declarations/halfindexaffinechowlafrequencymajorant-le-kernelpair--f31011c1238f7fad4e27a6fe.md) | 298 | `result-track:f31011c1238f7fad4e27a6fecb5405fbbe13c9e8fb981de7e2bec65242e580df` |
| 24 | `def` | [twoNonunitKernelPairEndpointMajorant](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitKernelPair.lean/declarations/twononunitkernelpairendpointmajorant--8b68a1cd25d41e4d04fac844.md) | 328 | `declaration-track:8b68a1cd25d41e4d04fac844e0527e2146b2e9d97a742991e9ab7421425ce38b` |
| 25 | `theorem` | [twoNonunitHalfIndexEndpointMajorant_le_kernelPair](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitKernelPair.lean/declarations/twononunithalfindexendpointmajorant-le-kernelpair--08df4140429b0f65528b8823.md) | 342 | `result-track:08df4140429b0f65528b8823410e197abab580478930193feb13fb9740c4bbe9` |
| 26 | `def` | [DyadicNaturalScaleTwoNonunitKernelPairBudget](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitKernelPair.lean/declarations/dyadicnaturalscaletwononunitkernelpairbudget--8d4bbe1114b2b735dc814361.md) | 364 | `declaration-track:8d4bbe1114b2b735dc81436183ed39b3d8461008ccb70d675526b57fc5e37f4c` |
| 27 | `theorem` | [twoNonunitHalfIndexBudget_of_kernelPair](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitKernelPair.lean/declarations/twononunithalfindexbudget-of-kernelpair--27ae785a62e9e0dc8505c61b.md) | 373 | `result-track:27ae785a62e9e0dc8505c61be674473743dadf9065ea70a362396c69b6e3a1c6` |
| 28 | `theorem` | [naturalScaleCongruenceL1_of_pointwiseMertens_twoUnit_kernelPair](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitKernelPair.lean/declarations/naturalscalecongruencel1-of-pointwisemertens-twounit-kernelpair--58390c5dea0ad4e4a1be2140.md) | 386 | `result-track:58390c5dea0ad4e4a1be2140a9ba7de4001f67d8ee393a1918ff90d23e6335f5` |
| 29 | `structure` | [ToTwoNonunitKernelPairBudgetAdapter](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitKernelPair.lean/declarations/totwononunitkernelpairbudgetadapter--a2a6fb2881231d78167897f7.md) | 395 | `declaration-track:a2a6fb2881231d78167897f799546d4fb16d630992702ed7197862c09f43cae2` |
| 30 | `structure` | [TwoNonunitKernelPairAnalyticData](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitKernelPair.lean/declarations/twononunitkernelpairanalyticdata--51111501b2bf11ca740d5557.md) | 401 | `declaration-track:51111501b2bf11ca740d55573c7c8ef9baa720ecbf313f343a647a6ec7e8d329` |
| 31 | `def` | [TwoNonunitKernelPairAnalyticSource](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitKernelPair.lean/declarations/twononunitkernelpairanalyticsource--b699c219808e2e237a67e478.md) | 413 | `declaration-track:b699c219808e2e237a67e4781c0884255fe18d85bf03620b937e3195b18fa2cb` |
| 32 | `abbrev` | [TwoNonunitKernelPairAnalyticAdapter](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitKernelPair.lean/declarations/twononunitkernelpairanalyticadapter--3b330765f784015d6c4da805.md) | 425 | `declaration-track:3b330765f784015d6c4da805578ca8ad334d2a6c5408ffad52806234965aeb9a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
