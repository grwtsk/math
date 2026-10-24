# Verification target: GRWTSK.Algebra.GroupTheory.Alternating.Variant2e3a16530f044685c83656d1fe7e7fdee63a9b6bac8972f8131f3f2f919870c3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e7bedb64954bbc139f053b9a9a8af0aadbb6667b",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Alternating/Variant2e3a16530f044685c83656d1fe7e7fdee63a9b6bac8972f8131f3f2f919870c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant2e3a16530f044685c83656d1fe7e7fdee63a9b6bac8972f8131f3f2f919870c3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant2e3a16530f044685c83656d1fe7e7fdee63a9b6bac8972f8131f3f2f919870c3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e7bedb64954bbc139f053b9a9a8af0aadbb6667b`.

Source path: `GRWTSK/Algebra/GroupTheory/Alternating/Variant2e3a16530f044685c83656d1fe7e7fdee63a9b6bac8972f8131f3f2f919870c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Alternating/Variant2e3a16530f044685c83656d1fe7e7fdee63a9b6bac8972f8131f3f2f919870c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.CharZero` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Units` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.IndexNormal` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Fin` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.Simple` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin.Rotate` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant2e3a16530f044685c83656d1fe7e7fdee63a9b6bac8972f8131f3f2f919870c3.lean/declarations/example--9d276c905614b0ad029f345d.md) | 65 | `declaration-track:9d276c905614b0ad029f345df62b4067ddf69241bbc9037645db801f72ef4167` |
| 2 | `def` | [alternatingGroup](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant2e3a16530f044685c83656d1fe7e7fdee63a9b6bac8972f8131f3f2f919870c3.lean/declarations/alternatinggroup--cf85fc501d3756ff7003a428.md) | 74 | `declaration-track:cf85fc501d3756ff7003a428dffe344844ddc59015736ef438657df5643003eb` |
| 3 | `instance` | [alternatingGroup.instFintype](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant2e3a16530f044685c83656d1fe7e7fdee63a9b6bac8972f8131f3f2f919870c3.lean/declarations/alternatinggroup-instfintype--98c350e25208c6a0c6fb0ceb.md) | 77 | `declaration-track:98c350e25208c6a0c6fb0cebeed29d8c6a05ae6b0e5ee4ca302e2556cb1e1b53` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant2e3a16530f044685c83656d1fe7e7fdee63a9b6bac8972f8131f3f2f919870c3.lean/declarations/instance--c3d69674bf741dca02a7e69d.md) | 80 | `declaration-track:c3d69674bf741dca02a7e69d811283fe484248417a4c284fb290adf289cf8931` |
| 5 | `theorem` | [alternatingGroup_eq_sign_ker](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant2e3a16530f044685c83656d1fe7e7fdee63a9b6bac8972f8131f3f2f919870c3.lean/declarations/alternatinggroup-eq-sign-ker--2c2c640fc2215d4f55b9405e.md) | 85 | `result-track:2c2c640fc2215d4f55b9405ea418980652322b923089cfdf480932a1f34f080b` |
| 6 | `theorem` | [mem_alternatingGroup](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant2e3a16530f044685c83656d1fe7e7fdee63a9b6bac8972f8131f3f2f919870c3.lean/declarations/mem-alternatinggroup--1c5cde7db3bb4173d0f73d8f.md) | 91 | `result-track:1c5cde7db3bb4173d0f73d8f287a7528a2b35fbc45bb3897f653cb08d842b549` |
| 7 | `theorem` | [prod_list_swap_mem_alternatingGroup_iff_even_length](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant2e3a16530f044685c83656d1fe7e7fdee63a9b6bac8972f8131f3f2f919870c3.lean/declarations/prod-list-swap-mem-alternatinggroup-iff-even-length--7e059a0f91f486183aecb852.md) | 94 | `result-track:7e059a0f91f486183aecb85270079c394971d099f2d0df1c88f4573075af02f3` |
| 8 | `theorem` | [IsThreeCycle.mem_alternatingGroup](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant2e3a16530f044685c83656d1fe7e7fdee63a9b6bac8972f8131f3f2f919870c3.lean/declarations/isthreecycle-mem-alternatinggroup--52e6adbdf5989dae3488016e.md) | 99 | `result-track:52e6adbdf5989dae3488016eb50ee69480e3b87ea8390a86a81a076adec98331` |
| 9 | `theorem` | [finRotate_bit1_mem_alternatingGroup](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant2e3a16530f044685c83656d1fe7e7fdee63a9b6bac8972f8131f3f2f919870c3.lean/declarations/finrotate-bit1-mem-alternatinggroup--83f7e4b0e7636edb60b7a290.md) | 103 | `result-track:83f7e4b0e7636edb60b7a29003e1f551995c113f68df6e667def6b976a58a933` |
| 10 | `theorem` | [alternatingGroup.index_eq_two](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant2e3a16530f044685c83656d1fe7e7fdee63a9b6bac8972f8131f3f2f919870c3.lean/declarations/alternatinggroup-index-eq-two--72ea2bb01fb9475be12752ea.md) | 110 | `result-track:72ea2bb01fb9475be12752eab90bd5ef130f9dcabdef99910f68062752455bf9` |
| 11 | `theorem` | [alternatingGroup.index_eq_one](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant2e3a16530f044685c83656d1fe7e7fdee63a9b6bac8972f8131f3f2f919870c3.lean/declarations/alternatinggroup-index-eq-one--1abc9a923341673c8cfda49a.md) | 116 | `result-track:1abc9a923341673c8cfda49a553ba59fb9dee269c4a60bdc4d10a1dd5ce9082d` |
| 12 | `theorem` | [two_mul_card_alternatingGroup](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant2e3a16530f044685c83656d1fe7e7fdee63a9b6bac8972f8131f3f2f919870c3.lean/declarations/two-mul-card-alternatinggroup--11b109d38488d66702a4599e.md) | 119 | `result-track:11b109d38488d66702a4599eeeb5c5d9f72f908861b8e43760c14f03c626c4ac` |
| 13 | `instance` | [normal](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant2e3a16530f044685c83656d1fe7e7fdee63a9b6bac8972f8131f3f2f919870c3.lean/declarations/normal--4dbf31c3417ba0f6a6401037.md) | 127 | `declaration-track:4dbf31c3417ba0f6a6401037fedb7d52fad94fe77858e48073fa7ec7b20851ab` |
| 14 | `theorem` | [isConj_of](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant2e3a16530f044685c83656d1fe7e7fdee63a9b6bac8972f8131f3f2f919870c3.lean/declarations/isconj-of--8ed9b162222fa26b7f356841.md) | 130 | `result-track:8ed9b162222fa26b7f356841fa639f5e0ed9293e98dc877b5f3c3c945d6c7442` |
| 15 | `theorem` | [isThreeCycle_isConj](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant2e3a16530f044685c83656d1fe7e7fdee63a9b6bac8972f8131f3f2f919870c3.lean/declarations/isthreecycle-isconj--27d195240b3ce67c0c5e7bc7.md) | 154 | `result-track:27d195240b3ce67c0c5e7bc793de394061fb804d9f35bfb090271d367ca6fbf6` |
| 16 | `theorem` | [closure_three_cycles_eq_alternating](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant2e3a16530f044685c83656d1fe7e7fdee63a9b6bac8972f8131f3f2f919870c3.lean/declarations/closure-three-cycles-eq-alternating--32b395e249f2753935fcd1cd.md) | 166 | `result-track:32b395e249f2753935fcd1cdd2dde09d1f534157babe4a89bad9cf0e106030da` |
| 17 | `theorem` | [IsThreeCycle.alternating_normalClosure](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant2e3a16530f044685c83656d1fe7e7fdee63a9b6bac8972f8131f3f2f919870c3.lean/declarations/isthreecycle-alternating-normalclosure--e9bd8f9a0654211236ed6735.md) | 193 | `result-track:e9bd8f9a0654211236ed673547a2907e56f7419af6bef80d706901c2b7a31ef9` |
| 18 | `theorem` | [isThreeCycle_sq_of_three_mem_cycleType_five](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant2e3a16530f044685c83656d1fe7e7fdee63a9b6bac8972f8131f3f2f919870c3.lean/declarations/isthreecycle-sq-of-three-mem-cycletype-five--cbdd1a583cbda49dff0b9036.md) | 211 | `result-track:cbdd1a583cbda49dff0b90364d148aff765f526ea46241f6d7072ad36724fc58` |
| 19 | `theorem` | [eq_bot_of_card_le_two](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant2e3a16530f044685c83656d1fe7e7fdee63a9b6bac8972f8131f3f2f919870c3.lean/declarations/eq-bot-of-card-le-two--05085bb42bada7510d8885f6.md) | 232 | `result-track:05085bb42bada7510d8885f6af224c79d6ea737b51f7b98a2e3ba1a479778ee8` |
| 20 | `theorem` | [nontrivial_of_three_le_card](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant2e3a16530f044685c83656d1fe7e7fdee63a9b6bac8972f8131f3f2f919870c3.lean/declarations/nontrivial-of-three-le-card--7de622f30855dfee726b6fd5.md) | 240 | `result-track:7de622f30855dfee726b6fd5808ac79db6d18639aa1f74410632b07734ad31f0` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant2e3a16530f044685c83656d1fe7e7fdee63a9b6bac8972f8131f3f2f919870c3.lean/declarations/instance--994b9c0c6f5924d8b207c48a.md) | 247 | `declaration-track:994b9c0c6f5924d8b207c48a39671c367c8d2d28847f42bbe4f646d498914713` |
| 22 | `theorem` | [normalClosure_finRotate_five](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant2e3a16530f044685c83656d1fe7e7fdee63a9b6bac8972f8131f3f2f919870c3.lean/declarations/normalclosure-finrotate-five--e869fbe4e43bd16b3e6e1512.md) | 255 | `result-track:e869fbe4e43bd16b3e6e15128b50bc1cf2c323d38c7950c7f48dc7d62036974d` |
| 23 | `theorem` | [normalClosure_swap_mul_swap_five](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant2e3a16530f044685c83656d1fe7e7fdee63a9b6bac8972f8131f3f2f919870c3.lean/declarations/normalclosure-swap-mul-swap-five--3c1b83611615f3582cfa0629.md) | 276 | `result-track:3c1b83611615f3582cfa0629b53c68d90b2f77618f9a5a38736fcc7f1dc84bdb` |
| 24 | `theorem` | [isConj_swap_mul_swap_of_cycleType_two](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant2e3a16530f044685c83656d1fe7e7fdee63a9b6bac8972f8131f3f2f919870c3.lean/declarations/isconj-swap-mul-swap-of-cycletype-two--ab6e66ab60df9796b09fec9a.md) | 298 | `result-track:ab6e66ab60df9796b09fec9ad5397a84d6ee3b838408d4904945995584ef6840` |
| 25 | `instance` | [isSimpleGroup_five](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant2e3a16530f044685c83656d1fe7e7fdee63a9b6bac8972f8131f3f2f919870c3.lean/declarations/issimplegroup-five--4df3f6939dd10294424f430f.md) | 325 | `declaration-track:4df3f6939dd10294424f430f8c378bd022ab97ca40e74608ef96c8fe197d0515` |
| 26 | `theorem` | [eq_alternatingGroup_of_index_eq_two](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant2e3a16530f044685c83656d1fe7e7fdee63a9b6bac8972f8131f3f2f919870c3.lean/declarations/eq-alternatinggroup-of-index-eq-two--fb4ae2dfc35e26546df9dfca.md) | 380 | `result-track:fb4ae2dfc35e26546df9dfca6dbee19283b3c2cc7fbfc0da897ea5dc1fcb3fd6` |
| 27 | `theorem` | [alternatingGroup_le_of_index_le_two](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant2e3a16530f044685c83656d1fe7e7fdee63a9b6bac8972f8131f3f2f919870c3.lean/declarations/alternatinggroup-le-of-index-le-two--6aeff50d460f37d0576da814.md) | 396 | `result-track:6aeff50d460f37d0576da8143204cba69d48d05506b781338784434e8adc581b` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant2e3a16530f044685c83656d1fe7e7fdee63a9b6bac8972f8131f3f2f919870c3.lean/declarations/instance--38dbd2494f916f7e1d72781e.md) | 408 | `declaration-track:38dbd2494f916f7e1d72781e4f96bba738f0707de71b44eef49810415156bca8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
