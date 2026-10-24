# Verification target: GRWTSK.Algebra.Basic.Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0891cab5b04a95977573cf609d82e8a780cae533",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0891cab5b04a95977573cf609d82e8a780cae533`.

Source path: `GRWTSK/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Ring` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Commute` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [add_div](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/add-div--b557401a18e7bd50b79a3644.md) | 37 | `result-track:b557401a18e7bd50b79a3644d1bf902c881f8314c3e991f4053c5d4da479cdbd` |
| 2 | `theorem` | [div_add_div_same](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/div-add-div-same--56968b42b3863b2e16651275.md) | 41 | `result-track:56968b42b3863b2e16651275a75d007306ee9fbced0f15e78b576c4defadea84` |
| 3 | `theorem` | [same_add_div](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/same-add-div--b60d533c56f855b011e8ea04.md) | 45 | `result-track:b60d533c56f855b011e8ea0463443ff0676a2b1e9e873f2275ed2665e044d648` |
| 4 | `theorem` | [div_add_same](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/div-add-same--d846474a09ffe3ba0d8ae4d3.md) | 48 | `result-track:d846474a09ffe3ba0d8ae4d3bc2211d0c26d2c93cf91c8e51f186b06515bd5eb` |
| 5 | `theorem` | [one_add_div](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/one-add-div--21d82e6176834a70527e89bb.md) | 51 | `result-track:21d82e6176834a70527e89bba26d4aced523ddd7ae6174007618828d8ce64d40` |
| 6 | `theorem` | [div_add_one](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/div-add-one--42d0472a6c7a61e6db728fd4.md) | 55 | `result-track:42d0472a6c7a61e6db728fd464bc9a6e829596af976ed1ae77563a9f6aa7e263` |
| 7 | `theorem` | [one_div_mul_add_mul_one_div_eq_one_div_add_one_div](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/one-div-mul-add-mul-one-div-eq-one-div-add-one-div--3592e9d70f8be6b36c29f8a6.md) | 59 | `result-track:3592e9d70f8be6b36c29f8a60bbb26175ee235b3e14ffda8711412d7aa294bc5` |
| 8 | `theorem` | [add_div_eq_mul_add_div](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/add-div-eq-mul-add-div--8460e0c0722d2f39b9384361.md) | 65 | `result-track:8460e0c0722d2f39b9384361713a10460c5e36eed86b06d3970c6a463c32a9e4` |
| 9 | `theorem` | [add_div'](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/add-div--9ad57d72210cd96f3901695e.md) | 70 | `result-track:9ad57d72210cd96f3901695eed193644908725ae7397d2338ee1cf94010ae976` |
| 10 | `theorem` | [div_add'](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/div-add--742f55508b968023395a5279.md) | 75 | `result-track:742f55508b968023395a5279ff7ccae151b2e78bab73f47b0baee730be351f2b` |
| 11 | `theorem` | [Commute.div_add_div](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/commute-div-add-div--a733f74945ac8931195b41e8.md) | 79 | `result-track:a733f74945ac8931195b41e81087d1f9c2b50075d6c7adc83d676feeb909afcc` |
| 12 | `theorem` | [Commute.one_div_add_one_div](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/commute-one-div-add-one-div--4352a2048cde9e41d939ad6a.md) | 84 | `result-track:4352a2048cde9e41d939ad6a6cbc1e02d5567e8a78c6be7dd9f5417ad947540e` |
| 13 | `theorem` | [Commute.inv_add_inv](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/commute-inv-add-inv--886ef15ad911a6cc103fc537.md) | 89 | `result-track:886ef15ad911a6cc103fc5372f8e47183618c3809f1efd716d4084b59e102f72` |
| 14 | `theorem` | [one_div_neg_one_eq_neg_one](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/one-div-neg-one-eq-neg-one--b7474caf02af44d64e351a3e.md) | 100 | `result-track:b7474caf02af44d64e351a3ef560a4ac13e4ec6a1ef20ee75a6daab0ba506325` |
| 15 | `theorem` | [one_div_neg_eq_neg_one_div](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/one-div-neg-eq-neg-one-div--f0f6791a645f20f32ac56293.md) | 105 | `result-track:f0f6791a645f20f32ac562937db39bf84d64af5e6988702db393a688a27eb391` |
| 16 | `theorem` | [div_neg_eq_neg_div](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/div-neg-eq-neg-div--8b290dcde678cb314f2e38e6.md) | 113 | `result-track:8b290dcde678cb314f2e38e64d4dd48d217e23b31ae3aabf8fc397d86f2932c2` |
| 17 | `theorem` | [neg_div](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/neg-div--74af300ca607f16508efb733.md) | 121 | `result-track:74af300ca607f16508efb733138e1c54f01551e57d6066e49f61a6d348308d2d` |
| 18 | `theorem` | [neg_div'](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/neg-div--4a063734467a4805d3e95807.md) | 126 | `result-track:4a063734467a4805d3e95807f2e36e9273c60290e0eed18b084679e245ceb471` |
| 19 | `theorem` | [neg_div_neg_eq](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/neg-div-neg-eq--4d4d6c318d31f34cc51bd769.md) | 129 | `result-track:4d4d6c318d31f34cc51bd769def8a72d0bda0ca8d5c78493ccda5ab3ea7dfa21` |
| 20 | `theorem` | [neg_inv](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/neg-inv--3fbcb9087793029c79311f6a.md) | 132 | `result-track:3fbcb9087793029c79311f6a91e0b880f17bf688c7a2973cb78d4a9309e42dc3` |
| 21 | `theorem` | [div_neg](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/div-neg--1fdf959680eeac2d0f20387c.md) | 135 | `result-track:1fdf959680eeac2d0f20387c2f019be5cb4c65c826223cbf9dcb208c4f4a512e` |
| 22 | `theorem` | [inv_neg](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/inv-neg--2fef81373a12a4b9a9323812.md) | 138 | `result-track:2fef81373a12a4b9a932381203fd8078636f6be45d82a3085ba7295244389c48` |
| 23 | `theorem` | [inv_neg_one](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/inv-neg-one--ff8d281b0149424f61108b81.md) | 141 | `result-track:ff8d281b0149424f61108b81b027eb5e105b7446a999fef6f99c9ed1f05509db` |
| 24 | `theorem` | [div_neg_self](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/div-neg-self--585f6c4f1da4d2b0716592bb.md) | 150 | `result-track:585f6c4f1da4d2b0716592bbea0cfc62351fa64bff4bdfe502384b7d9633f929` |
| 25 | `theorem` | [neg_div_self](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/neg-div-self--23ce6a86e62da985bcf62e11.md) | 154 | `result-track:23ce6a86e62da985bcf62e11a52c2dd948df54b99d11912af33dc7f8f1012216` |
| 26 | `theorem` | [div_sub_div_same](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/div-sub-div-same--0a73e95a74e638ab3229e406.md) | 157 | `result-track:0a73e95a74e638ab3229e406ace85c4f80a58091d1ab11be431efbffde4ae0ec` |
| 27 | `theorem` | [same_sub_div](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/same-sub-div--f51d134c3c61016a8ed56caa.md) | 161 | `result-track:f51d134c3c61016a8ed56caa2697e2f70db6e5a3c5aecc435c8d2d743d5def86` |
| 28 | `theorem` | [one_sub_div](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/one-sub-div--bd1b738fa768acc2075b749d.md) | 165 | `result-track:bd1b738fa768acc2075b749d433e669b0312443158d7fa55d8987c813149a011` |
| 29 | `theorem` | [div_sub_same](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/div-sub-same--c049764e8171808303fd368f.md) | 169 | `result-track:c049764e8171808303fd368f09dbb7a128204eb71b63c2429e7354aeb90d5348` |
| 30 | `theorem` | [div_sub_one](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/div-sub-one--be4b0ad116114dc2e1561946.md) | 173 | `result-track:be4b0ad116114dc2e15619469da6ee2bc20e2f3294e648db822292467f0298ab` |
| 31 | `theorem` | [sub_div](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/sub-div--4aa1da62c4b9d18880ec0577.md) | 177 | `result-track:4aa1da62c4b9d18880ec057736efde10dca01ac142cdeddcd9963bc586ff8b8a` |
| 32 | `theorem` | [inv_sub_inv'](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/inv-sub-inv--3c0dcbcaa35808894df095fa.md) | 182 | `result-track:3c0dcbcaa35808894df095faa355396b486af5562709e3bd5e0b5ccf3d3b777e` |
| 33 | `theorem` | [one_div_mul_sub_mul_one_div_eq_one_div_add_one_div](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/one-div-mul-sub-mul-one-div-eq-one-div-add-one-div--f26b6fa1f1892788d4b72ed6.md) | 186 | `result-track:f26b6fa1f1892788d4b72ed6753c0a3b563e6b56e0ff30c714228e1505800d1c` |
| 34 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/instance--1d9f4867300e80748e98577e.md) | 193 | `declaration-track:1d9f4867300e80748e98577efb46fceca47375b26d34f640de8ee4ef6ff6020a` |
| 35 | `theorem` | [Commute.div_sub_div](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/commute-div-sub-div--e83b9c59e30835e63cf3c62f.md) | 197 | `result-track:e83b9c59e30835e63cf3c62f5824439ea25d11a2e8cb0f29b6877cacc299f582` |
| 36 | `theorem` | [Commute.inv_sub_inv](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/commute-inv-sub-inv--858c517a91c6f9ce797c2cb2.md) | 202 | `result-track:858c517a91c6f9ce797c2cb23a6a81e83d6892a23db26422a25e3fadccd171a5` |
| 37 | `theorem` | [div_add_div](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/div-add-div--487392cc8996e4a3ed0935c3.md) | 213 | `result-track:487392cc8996e4a3ed0935c3f59c62422be7865569f2405218c5cebcca343a0d` |
| 38 | `theorem` | [one_div_add_one_div](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/one-div-add-one-div--25a6f33a2f1423073f5f740a.md) | 218 | `result-track:25a6f33a2f1423073f5f740a355326882214d12dc5e0d3cb519ae1f0a4e86431` |
| 39 | `theorem` | [inv_add_inv](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/inv-add-inv--463907993ad42b71900ca5c3.md) | 222 | `result-track:463907993ad42b71900ca5c3bea93eda2764907f5dfbad89f02204129e3ef8bb` |
| 40 | `theorem` | [div_sub_div](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/div-sub-div--d5aa589270795514f60358bf.md) | 235 | `result-track:d5aa589270795514f60358bfe2bd9fc866c24efad3046c934542b54c0ad5d474` |
| 41 | `theorem` | [inv_sub_inv](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/inv-sub-inv--55f46f739cbd6f7eb7bc65fd.md) | 240 | `result-track:55f46f739cbd6f7eb7bc65fd6001b1ba075d018477e230a18cfdbaef0362e064` |
| 42 | `theorem` | [sub_div'](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/sub-div--d0bf2c7599b35edb4e4e5156.md) | 245 | `result-track:d0bf2c7599b35edb4e4e5156120118c7a2bbe4421898fa539f78bedc8c66ec28` |
| 43 | `theorem` | [div_sub'](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/div-sub--b08e409e68a3688ee6cacc60.md) | 250 | `result-track:b08e409e68a3688ee6cacc60410f4e46642e0178626f8a918e1bfb1fbc667548` |
| 44 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/instance--e71d75d38beaa444e6b35885.md) | 255 | `declaration-track:e71d75d38beaa444e6b358856281e0a03bbec395e3921646e78764bc7fac1ef4` |
| 45 | `theorem` | [injective](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/injective--50b68428ad718f431b2aca5f.md) | 263 | `result-track:50b68428ad718f431b2aca5fde8064c1515651a9d850cc0ac34b2992ba2c2da4` |
| 46 | `def` | [divisionRingOfIsUnitOrEqZero](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/divisionringofisunitoreqzero--9a7d9107cd57d7453b71c39c.md) | 275 | `declaration-track:9a7d9107cd57d7453b71c39cc11e80c5bb1788a65f557a344bd97fae6616ad77` |
| 47 | `def` | [fieldOfIsUnitOrEqZero](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/fieldofisunitoreqzero--c589f836d6411cf0049e5d21.md) | 283 | `declaration-track:c589f836d6411cf0049e5d21560fbe8cb6438a5f12ec1b835a0a6b4de62aa0b4` |
| 48 | `def` | [Function.Injective.divisionSemiring](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/function-injective-divisionsemiring--b01a29c1af07ce3e1b433596.md) | 293 | `declaration-track:b01a29c1af07ce3e1b433596166ed1811dfb728a9b89304a5b189617db4a777f` |
| 49 | `def` | [Function.Injective.divisionRing](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/function-injective-divisionring--bfc999cb81505498144048b1.md) | 307 | `declaration-track:bfc999cb81505498144048b164337a578d56c4e3a7fb239e89cd06e2944f896e` |
| 50 | `def` | [Function.Injective.semifield](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/function-injective-semifield--711003d892b6db126dd254fe.md) | 332 | `declaration-track:711003d892b6db126dd254fec91a2e0e905d084da333813cff6aff7a898d9a72` |
| 51 | `def` | [Function.Injective.field](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/function-injective-field--7daffece38b4ed6f4980ffd3.md) | 346 | `declaration-track:7daffece38b4ed6f4980ffd3f87b9baf0679cd94ce6b4fc3e7018f302479ea74` |
| 52 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/instance--d05d8b56e67de00e4547a577.md) | 370 | `declaration-track:d05d8b56e67de00e4547a577d7fc1c4d51af15a83f5142fa2f84e69657fd4a56` |
| 53 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/instance--d087ca5dad48e826f513e559.md) | 373 | `declaration-track:d087ca5dad48e826f513e559c83bf7de731287f8696bafb0de6aeb6adcab5589` |
| 54 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/instance--b64e653f0f495acd3d545270.md) | 376 | `declaration-track:b64e653f0f495acd3d545270c145ad3f92c53870ff31a2dff67253a1caae1168` |
| 55 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/instance--5c417aeffb3d1692a7fe8683.md) | 379 | `declaration-track:5c417aeffb3d1692a7fe86832f50076fca2464b0825d0287c00f22f45484fdf7` |
| 56 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/instance--a8293c2ba178be63f35fb8d0.md) | 382 | `declaration-track:a8293c2ba178be63f35fb8d0b3c19cfa429fcf0a0dbd77a6fc8dbe5a0ea170c0` |
| 57 | `theorem` | [toDual_rat_cast](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/todual-rat-cast--ecded8cb060081defa99fc01.md) | 386 | `result-track:ecded8cb060081defa99fc011ca1c73f8ef87c67a838eff2bc6b9f67a51c9aba` |
| 58 | `theorem` | [ofDual_rat_cast](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/ofdual-rat-cast--217706424a17d1240abec752.md) | 391 | `result-track:217706424a17d1240abec7521b859a28de0e271aa2f720dc6123e35963003438` |
| 59 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/instance--e5d2d06896352d4410f44a16.md) | 397 | `declaration-track:e5d2d06896352d4410f44a16150031d0950b98414d64c8d97041734b02cc943e` |
| 60 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/instance--69a076687505377b71d81a17.md) | 400 | `declaration-track:69a076687505377b71d81a17cb1d1dd07d91f2433a8eaee8224e73e4fadc0e03` |
| 61 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/instance--e2bc4900fd84389cf4e0c303.md) | 403 | `declaration-track:e2bc4900fd84389cf4e0c303ed42875cc12a69733992706a1437724b6e1edeaf` |
| 62 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/instance--292643941d9c9882e4351bc1.md) | 406 | `declaration-track:292643941d9c9882e4351bc1be9f9a9cb8c00c29913a5e55eb9b69d2bc31faf0` |
| 63 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/instance--9c98269f82e6676a7265bd02.md) | 409 | `declaration-track:9c98269f82e6676a7265bd023b3db8d3b7c9558bef1509ab237dcaa92cd750f2` |
| 64 | `theorem` | [toLex_rat_cast](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/tolex-rat-cast--ec025294f14fdadd669b98cd.md) | 413 | `result-track:ec025294f14fdadd669b98cd4b711a45140f14c98c16e68f881f6d968544d988` |
| 65 | `theorem` | [ofLex_rat_cast](../../../../mathematics/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/declarations/oflex-rat-cast--f8d62957b1e45bb8f4c440c4.md) | 418 | `result-track:f8d62957b1e45bb8f4c440c45fa3c8e1f59d424e0f7b41bf2615db55904ac446` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
