# Verification target: GRWTSK.Algebra.GroupTheory.CyclicHolonomy.Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "989d07e0c603630d71731d4f8fbe68d981372162",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `989d07e0c603630d71731d4f8fbe68d981372162`.

Source path: `GRWTSK/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cycleLength](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/declarations/cyclelength--4ab7d1885722e252976c7a81.md) | 46 | `declaration-track:4ab7d1885722e252976c7a81dd222c8ca9e4fc59c2fdcbf7d6a50e7291e0c451` |
| 2 | `theorem` | [cycleLength_pos](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/declarations/cyclelength-pos--c138137aea3a7586cb16e645.md) | 50 | `result-track:c138137aea3a7586cb16e645cde4a2a19d3ad439717f2e16127e4fa24700e729` |
| 3 | `theorem` | [card_coverPhase](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/declarations/card-coverphase--ddedeebbe336e42715377981.md) | 55 | `result-track:ddedeebbe336e427153779811d579abbf04bfe08e1a877f863f96ad2389cf28f` |
| 4 | `def` | [advance](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/declarations/advance--1da2d50f0dac6681898ae4d3.md) | 61 | `declaration-track:1da2d50f0dac6681898ae4d396d479b845fccc5e390af3bbbcbfa16a88af7df9` |
| 5 | `theorem` | [successor_iterate_eq_advance](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/declarations/successor-iterate-eq-advance--450cdb78654e89c5352f9f74.md) | 66 | `result-track:450cdb78654e89c5352f9f744f742f7a82b5b903f6dac167f12465f8d3ec4fbc` |
| 6 | `theorem` | [advance_zero](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/declarations/advance-zero--3e812741ee9d1ee0f064935e.md) | 76 | `result-track:3e812741ee9d1ee0f064935e1e589a0d8f41cdfca167970a68bb6be3c2044dd4` |
| 7 | `theorem` | [advance_one](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/declarations/advance-one--221e96a7f4e824a842ac2546.md) | 81 | `result-track:221e96a7f4e824a842ac254608f6cc495bf880d2c6576bd084fffa86912f7783` |
| 8 | `theorem` | [advance_succ](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/declarations/advance-succ--3c48b571dcd1b02ec497be15.md) | 86 | `result-track:3c48b571dcd1b02ec497be150d2492857d68bbed163f108a1e7965b81af72a60` |
| 9 | `theorem` | [advance_successor](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/declarations/advance-successor--85b9eb4c7a4ed54a6f568071.md) | 92 | `result-track:85b9eb4c7a4ed54a6f56807168d3314c0de8ea40f320792f610fc965e8f4ece4` |
| 10 | `theorem` | [advance_add](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/declarations/advance-add--1301413a5dc801cd3788c2c5.md) | 99 | `result-track:1301413a5dc801cd3788c2c5b9f186198c9d95cebc5f4d08d6e14cb2c66924c8` |
| 11 | `theorem` | [advance_cycle](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/declarations/advance-cycle--a3f92f6ab9c878e12564460f.md) | 106 | `result-track:a3f92f6ab9c878e12564460f395ee2eb1c8fc639a66140cce720822f636fdb9a` |
| 12 | `theorem` | [advance_mod_cycle](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/declarations/advance-mod-cycle--6217b710f3d442e211d644ca.md) | 115 | `result-track:6217b710f3d442e211d644ca538153f6dd10d4e462d98b391396c3c09d4112f9` |
| 13 | `theorem` | [advance_half](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/declarations/advance-half--54a50a6ee1f82991a19db96f.md) | 122 | `result-track:54a50a6ee1f82991a19db96f36ce06cd10a2ed67e5ef3f20e8594365575b871e` |
| 14 | `theorem` | [forwardProduct_add](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/declarations/forwardproduct-add--52ac94611e1a0a42f44edacd.md) | 137 | `result-track:52ac94611e1a0a42f44edacd84848e7415929a9b947b4e4a69110e8f8d60fa94` |
| 15 | `theorem` | [forwardProduct_one](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/declarations/forwardproduct-one--64f189077a1946aa3272c721.md) | 151 | `result-track:64f189077a1946aa3272c721c9959d332a41547bdce15c7f2a52e1e34036683b` |
| 16 | `def` | [monodromy](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/declarations/monodromy--d806c0cf09becf75af2ac3a8.md) | 159 | `declaration-track:d806c0cf09becf75af2ac3a8e3dfba3a96ed8e38ceec67b06b80c5a802ad4beb` |
| 17 | `theorem` | [forwardProduct_cycle_add](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/declarations/forwardproduct-cycle-add--47706470bfb64a74d0ba4434.md) | 169 | `result-track:47706470bfb64a74d0ba443478766a4aa4a77b5b6ae6f8226c86f8d3615a95ff` |
| 18 | `def` | [holonomyGroupAt](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/declarations/holonomygroupat--bcfc2540cd8b680545ca5bd3.md) | 178 | `declaration-track:bcfc2540cd8b680545ca5bd341b2c2c5877eb07b33e78d405b526f2800b385cb` |
| 19 | `theorem` | [mem_holonomyGroupAt_iff](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/declarations/mem-holonomygroupat-iff--c7273a1079c6dccf0e9b77ad.md) | 188 | `result-track:c7273a1079c6dccf0e9b77adb3db35e4c4181dfe83390f992814a716632ebdde` |
| 20 | `def` | [StepsInSubgroup](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/declarations/stepsinsubgroup--b86ad4f3c61c77ad8eba0eb5.md) | 198 | `declaration-track:b86ad4f3c61c77ad8eba0eb5fa4606d4987918c52d5ebd6f8f89c54b8bd23558` |
| 21 | `theorem` | [forwardProduct_mem_subgroup](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/declarations/forwardproduct-mem-subgroup--29266a361634582d49f791bb.md) | 204 | `result-track:29266a361634582d49f791bbf2a4a577aa154a0ff889698bc13b460ece1232d0` |
| 22 | `theorem` | [monodromy_mem_subgroup](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/declarations/monodromy-mem-subgroup--0f89f155b3c2a44284d3c244.md) | 217 | `result-track:0f89f155b3c2a44284d3c24482e155e6562862d1aa33a0f1eb051f305252a95e` |
| 23 | `theorem` | [transport_intertwines_monodromy](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/declarations/transport-intertwines-monodromy--8291c8836cca9501456a94fc.md) | 225 | `result-track:8291c8836cca9501456a94fc9576312b4027566781e5a9223043f0d8f61beec7` |
| 24 | `theorem` | [monodromy_advance_eq_conjugate](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/declarations/monodromy-advance-eq-conjugate--07b8b606ea771352712b1c6e.md) | 251 | `result-track:07b8b606ea771352712b1c6ec6f515adecce6d0084eaee55a939e1f1669758e8` |
| 25 | `theorem` | [monodromy_successor_eq_conjugate](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/declarations/monodromy-successor-eq-conjugate--5782b60bbff31aaa6643c251.md) | 265 | `result-track:5782b60bbff31aaa6643c251080ce0d7e1ea0c2c5b41ee48e13709a237477b85` |
| 26 | `theorem` | [monodromy_successor_mem_of_mem_normalizer](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/declarations/monodromy-successor-mem-of-mem-normalizer--2ce06cf1500b52da852944c1.md) | 280 | `result-track:2ce06cf1500b52da852944c1be379988c3e51e35f1e901f652ae0b054bfcb082` |
| 27 | `theorem` | [monodromy_successor_mem_of_normal](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/declarations/monodromy-successor-mem-of-normal--3e7be6bd826f3245878653f8.md) | 299 | `result-track:3e7be6bd826f3245878653f8d01de7716382459c3897df39acdda1f8e5282f0d` |
| 28 | `def` | [ClosesAfterCircuit](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/declarations/closesaftercircuit--4f6d1fdf6239d2e2e6cd42f3.md) | 309 | `declaration-track:4f6d1fdf6239d2e2e6cd42f31b88c3c8421945940bbc310e330541896af25f88` |
| 29 | `theorem` | [closesAfterCircuit_iff_monodromy_fixed](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/declarations/closesaftercircuit-iff-monodromy-fixed--bb7109b8da988bc8c81fc905.md) | 314 | `result-track:bb7109b8da988bc8c81fc905f7854bfc84d1d266714b9b93b3f171c9199e0672` |
| 30 | `def` | [IsParallelSection](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/declarations/isparallelsection--d191e91d05eb8162c646f9a8.md) | 323 | `declaration-track:d191e91d05eb8162c646f9a8bab554a3200acf734520daecc7aedba790e99429` |
| 31 | `theorem` | [forwardProduct_apply_of_isParallelSection](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/declarations/forwardproduct-apply-of-isparallelsection--8fd8668c16fe83e1e34aad81.md) | 328 | `result-track:8fd8668c16fe83e1e34aad81e578026237ce3845b767d92d44cbb46ad7f19857` |
| 32 | `theorem` | [isParallelSection_closesAfterCircuit](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/declarations/isparallelsection-closesaftercircuit--bcc53b08088fa6869a2d8b61.md) | 340 | `result-track:bcc53b08088fa6869a2d8b61c765470f10a22e0f4222d8182347409506b44fab` |
| 33 | `def` | [halfTransport](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/declarations/halftransport--0370d9d8dbdac2f0632fb917.md) | 349 | `declaration-track:0370d9d8dbdac2f0632fb917a5c7ea04737214ce39562d89aa41febb88883415` |
| 34 | `theorem` | [monodromy_eq_halfTransport_trans_self](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/declarations/monodromy-eq-halftransport-trans-self--8fb836d8076ffffedc6b8bf2.md) | 366 | `result-track:8fb836d8076ffffedc6b8bf2833a36d9ecd2c3e1caded8172fd52d4b2713d1ac` |
| 35 | `structure` | [PathDecomposition](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/declarations/pathdecomposition--a408cd3e96d9dd9df6c3f170.md) | 381 | `declaration-track:a408cd3e96d9dd9df6c3f170c0f4fb80699382b9619cc20e7a22ec7b9815de79` |
| 36 | `def` | [decomposeSteps](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/declarations/decomposesteps--b5e1cd3d324de1242525aeb7.md) | 388 | `declaration-track:b5e1cd3d324de1242525aeb7b67fe8f1d7fda0bd59e374ccdf0254b17c514bcf` |
| 37 | `theorem` | [decomposeSteps_recompose](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/declarations/decomposesteps-recompose--00ecac16a05468d8b3782352.md) | 395 | `result-track:00ecac16a05468d8b378235278ce64c5061bbac332cfb8dcd953a17f4240382d` |
| 38 | `theorem` | [forwardProduct_laps_add](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/declarations/forwardproduct-laps-add--9b2d564f0caf04a36b8dc749.md) | 409 | `result-track:9b2d564f0caf04a36b8dc749e3ca2e2a965166092aaf09a48db9503d5ff68593` |
| 39 | `theorem` | [forwardProduct_decomposition](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/declarations/forwardproduct-decomposition--dfacfa276a80a60a3bf1734a.md) | 436 | `result-track:dfacfa276a80a60a3bf1734aa31f547b3ae1e3570313318255aae7bfded1be17` |
| 40 | `abbrev` | [OneLapIndex](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/declarations/onelapindex--0a6092534b6be9079536ef9d.md) | 452 | `declaration-track:0a6092534b6be9079536ef9d81e05cf642dc48636e0b33b585f0d1705564566e` |
| 41 | `def` | [oneLapStart](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/declarations/onelapstart--bfdca7df93723611df3ac62e.md) | 457 | `declaration-track:bfdca7df93723611df3ac62e00d8c7d2c791e578fae704cd6d430a6675eed3df` |
| 42 | `def` | [oneLapEnd](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/declarations/onelapend--af259239c8f4c2ebfdfc2191.md) | 462 | `declaration-track:af259239c8f4c2ebfdfc21910ae3c0d8264c698f01f7f110c996374180c94a81` |
| 43 | `def` | [oneLapPhase](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/declarations/onelapphase--e84ad340f3631cf0d30fded4.md) | 467 | `declaration-track:e84ad340f3631cf0d30fded40f82a1bfcee4e99d2590ae6b30dbe3b25b4c913f` |
| 44 | `def` | [oneLapProduct](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/declarations/onelapproduct--6f4e3f4c801d2b142066ea94.md) | 472 | `declaration-track:6f4e3f4c801d2b142066ea94318332fffa77dc855ec388ebabc41447931fe592` |
| 45 | `theorem` | [oneLapPhase_start](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/declarations/onelapphase-start--333a071b9f68557cb49f8c43.md) | 477 | `result-track:333a071b9f68557cb49f8c434f6c69c1f7525bb624c36b78efe1bd34aede53c3` |
| 46 | `theorem` | [oneLapPhase_end](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/declarations/onelapphase-end--a665a6e393dbb6a0afc90934.md) | 482 | `result-track:a665a6e393dbb6a0afc909344d8321b2bb1610aa953ef5edd97aa31f52b3927f` |
| 47 | `theorem` | [oneLapProduct_start](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/declarations/onelapproduct-start--e82302bae430615a4c282ab8.md) | 487 | `result-track:e82302bae430615a4c282ab86de9f924b7cf235f441339cc41792ea64ca1b344` |
| 48 | `theorem` | [oneLapProduct_end](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/declarations/onelapproduct-end--dc4e35e50fe49aae795b138d.md) | 492 | `result-track:dc4e35e50fe49aae795b138db41f72215f1d5d5e6b9e21143c1080829b13076e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
