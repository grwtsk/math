# Verification target: GRWTSK.Algebra.LinearAlgebra.Curry.Variant7ff6c11322c3d1ce285a45f723aad68a0255dbf13a259d005eda6ad8a5791639

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4d137069d177d0562a2976508351386c818d92b",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Curry/Variant7ff6c11322c3d1ce285a45f723aad68a0255dbf13a259d005eda6ad8a5791639.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant7ff6c11322c3d1ce285a45f723aad68a0255dbf13a259d005eda6ad8a5791639.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant7ff6c11322c3d1ce285a45f723aad68a0255dbf13a259d005eda6ad8a5791639.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4d137069d177d0562a2976508351386c818d92b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Curry/Variant7ff6c11322c3d1ce285a45f723aad68a0255dbf13a259d005eda6ad8a5791639.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Curry/Variant7ff6c11322c3d1ce285a45f723aad68a0255dbf13a259d005eda6ad8a5791639.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LinearMap.uncurryLeft](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant7ff6c11322c3d1ce285a45f723aad68a0255dbf13a259d005eda6ad8a5791639.lean/declarations/linearmap-uncurryleft--b55feb3e431082def9307eab.md) | 61 | `declaration-track:b55feb3e431082def9307eabccff5c91feb0a13556df1f313ece6cb8b9dc1fb1` |
| 2 | `theorem` | [LinearMap.uncurryLeft_apply](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant7ff6c11322c3d1ce285a45f723aad68a0255dbf13a259d005eda6ad8a5791639.lean/declarations/linearmap-uncurryleft-apply--3cf8dcb6f7323785b842718d.md) | 68 | `result-track:3cf8dcb6f7323785b842718d916a697e25020e2cca6a59bb0ee85b9e4e42ef6f` |
| 3 | `def` | [MultilinearMap.curryLeft](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant7ff6c11322c3d1ce285a45f723aad68a0255dbf13a259d005eda6ad8a5791639.lean/declarations/multilinearmap-curryleft--78b9032f19f61e06fb4fea04.md) | 74 | `declaration-track:78b9032f19f61e06fb4fea04777360149fe2ebcdd4d692cde20246c8eb6e948c` |
| 4 | `theorem` | [MultilinearMap.curryLeft_apply](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant7ff6c11322c3d1ce285a45f723aad68a0255dbf13a259d005eda6ad8a5791639.lean/declarations/multilinearmap-curryleft-apply--7f728277cafe69ce0ce5258d.md) | 85 | `result-track:7f728277cafe69ce0ce5258dbe8f7ad03bb0bc8192650ffcdce09a56e622360b` |
| 5 | `theorem` | [LinearMap.curry_uncurryLeft](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant7ff6c11322c3d1ce285a45f723aad68a0255dbf13a259d005eda6ad8a5791639.lean/declarations/linearmap-curry-uncurryleft--08c2f307f273e48e44a31f0f.md) | 90 | `result-track:08c2f307f273e48e44a31f0f744a71c0f9f97d25742be5f6163a543c3b4dd6c1` |
| 6 | `theorem` | [MultilinearMap.uncurry_curryLeft](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant7ff6c11322c3d1ce285a45f723aad68a0255dbf13a259d005eda6ad8a5791639.lean/declarations/multilinearmap-uncurry-curryleft--312950282113301d84bfc56b.md) | 95 | `result-track:312950282113301d84bfc56b9f501a7040edad93a09ee700fbf95edf0dd17817` |
| 7 | `def` | [multilinearCurryLeftEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant7ff6c11322c3d1ce285a45f723aad68a0255dbf13a259d005eda6ad8a5791639.lean/declarations/multilinearcurryleftequiv--9262b7901fe97023a2d829ee.md) | 110 | `declaration-track:9262b7901fe97023a2d829ee9151a272525bd64132e9094f233d2fd91ce8a189` |
| 8 | `def` | [MultilinearMap.uncurryRight](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant7ff6c11322c3d1ce285a45f723aad68a0255dbf13a259d005eda6ad8a5791639.lean/declarations/multilinearmap-uncurryright--069a8dbd1be00fdeb3855068.md) | 126 | `declaration-track:069a8dbd1be00fdeb38550688d479f736b6705affe9b2bbf5aec9cc66cddb2a6` |
| 9 | `theorem` | [MultilinearMap.uncurryRight_apply](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant7ff6c11322c3d1ce285a45f723aad68a0255dbf13a259d005eda6ad8a5791639.lean/declarations/multilinearmap-uncurryright-apply--30418f305b4361cc951e8ff5.md) | 134 | `result-track:30418f305b4361cc951e8ff5492af219dfcf5076b37486978b0fd8210d99de17` |
| 10 | `def` | [MultilinearMap.curryRight](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant7ff6c11322c3d1ce285a45f723aad68a0255dbf13a259d005eda6ad8a5791639.lean/declarations/multilinearmap-curryright--c26beffdc1774f2266f58f69.md) | 142 | `declaration-track:c26beffdc1774f2266f58f69b79dd5ab6dae010d1d881c257dc4eb83e3af8903` |
| 11 | `theorem` | [MultilinearMap.curryRight_apply](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant7ff6c11322c3d1ce285a45f723aad68a0255dbf13a259d005eda6ad8a5791639.lean/declarations/multilinearmap-curryright-apply--540aab78c518e98b87d44e58.md) | 150 | `result-track:540aab78c518e98b87d44e58ec1ead7c574c85a6463503bbb1670172656d1ae0` |
| 12 | `theorem` | [MultilinearMap.curry_uncurryRight](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant7ff6c11322c3d1ce285a45f723aad68a0255dbf13a259d005eda6ad8a5791639.lean/declarations/multilinearmap-curry-uncurryright--0fbfcf9137fe0f49781f6b90.md) | 155 | `result-track:0fbfcf9137fe0f49781f6b90d8b30bc8809c065603cae9f649667351f2fafa21` |
| 13 | `theorem` | [MultilinearMap.uncurry_curryRight](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant7ff6c11322c3d1ce285a45f723aad68a0255dbf13a259d005eda6ad8a5791639.lean/declarations/multilinearmap-uncurry-curryright--bfc2e51dbe505765c91f9645.md) | 163 | `result-track:bfc2e51dbe505765c91f9645c3309eca24526833cd263081bbc03b6f3336716f` |
| 14 | `def` | [multilinearCurryRightEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant7ff6c11322c3d1ce285a45f723aad68a0255dbf13a259d005eda6ad8a5791639.lean/declarations/multilinearcurryrightequiv--97c48787c1dee9943ed38001.md) | 177 | `declaration-track:97c48787c1dee9943ed38001c04413a6a5f63cd819af6abadd37a8eb7f5df609` |
| 15 | `def` | [LinearMap.uncurryMid](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant7ff6c11322c3d1ce285a45f723aad68a0255dbf13a259d005eda6ad8a5791639.lean/declarations/linearmap-uncurrymid--bfdbd57ec2397010e0505656.md) | 193 | `declaration-track:bfdbd57ec2397010e05056560e664347dc4c6128beaa0c24e1b1dbd484504b03` |
| 16 | `def` | [MultilinearMap.curryMid](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant7ff6c11322c3d1ce285a45f723aad68a0255dbf13a259d005eda6ad8a5791639.lean/declarations/multilinearmap-currymid--e98d493cfb14425446019ebb.md) | 202 | `declaration-track:e98d493cfb14425446019ebbd6f86cf9c01d753606de6b1f263eebef33b1ef5c` |
| 17 | `theorem` | [LinearMap.curryMid_uncurryMid](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant7ff6c11322c3d1ce285a45f723aad68a0255dbf13a259d005eda6ad8a5791639.lean/declarations/linearmap-currymid-uncurrymid--12eea742ec49032c603d6cf9.md) | 209 | `result-track:12eea742ec49032c603d6cf9caf52328a0a75eeb39aee4786e0a6bb3d93b0a1f` |
| 18 | `theorem` | [MultilinearMap.uncurryMid_curryMid](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant7ff6c11322c3d1ce285a45f723aad68a0255dbf13a259d005eda6ad8a5791639.lean/declarations/multilinearmap-uncurrymid-currymid--4c8bc9382fe9ab89c8a855f9.md) | 214 | `result-track:4c8bc9382fe9ab89c8a855f98d4048e58e63b8f33dd96816a1c5fd6570fbceb0` |
| 19 | `def` | [MultilinearMap.curryMidLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant7ff6c11322c3d1ce285a45f723aad68a0255dbf13a259d005eda6ad8a5791639.lean/declarations/multilinearmap-currymidlinearequiv--3071cbaacb6038c90aac048c.md) | 221 | `declaration-track:3071cbaacb6038c90aac048c2955369b2c4981275f05620ac4b574385bf15a1e` |
| 20 | `def` | [currySum](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant7ff6c11322c3d1ce285a45f723aad68a0255dbf13a259d005eda6ad8a5791639.lean/declarations/currysum--f6c735d6ac54f06f78e3813c.md) | 239 | `declaration-track:f6c735d6ac54f06f78e3813ce2771ee394f58f3433039732ebc751a534ebbf49` |
| 21 | `theorem` | [currySum_apply](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant7ff6c11322c3d1ce285a45f723aad68a0255dbf13a259d005eda6ad8a5791639.lean/declarations/currysum-apply--9891dfb4c366c24d39daf1ec.md) | 251 | `result-track:9891dfb4c366c24d39daf1ec4deef2bbb8b136f6373fc01498598b1e4eba838d` |
| 22 | `theorem` | [currySum_apply'](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant7ff6c11322c3d1ce285a45f723aad68a0255dbf13a259d005eda6ad8a5791639.lean/declarations/currysum-apply--63e11a7254dcc386e30f15a8.md) | 256 | `result-track:63e11a7254dcc386e30f15a8461509510f18c8e86693137acd6300f80a0cb719` |
| 23 | `lemma` | [currySum_add](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant7ff6c11322c3d1ce285a45f723aad68a0255dbf13a259d005eda6ad8a5791639.lean/declarations/currysum-add--21ce737aab317b22663dfcd5.md) | 262 | `result-track:21ce737aab317b22663dfcd5b99f5ce908b4d9fe97874d19c190c630b7be763f` |
| 24 | `lemma` | [currySum_smul](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant7ff6c11322c3d1ce285a45f723aad68a0255dbf13a259d005eda6ad8a5791639.lean/declarations/currysum-smul--e68d751931df1b024c1ec731.md) | 266 | `result-track:e68d751931df1b024c1ec73124ca0ff45162b96dcc5b037cda8dd91cc99187bc` |
| 25 | `def` | [uncurrySum](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant7ff6c11322c3d1ce285a45f723aad68a0255dbf13a259d005eda6ad8a5791639.lean/declarations/uncurrysum--2c208a2d2f24d5700cb1bf15.md) | 273 | `declaration-track:2c208a2d2f24d5700cb1bf156b0343c88d535bb783188dbe4d80b41d56b7b1e1` |
| 26 | `theorem` | [uncurrySum_apply](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant7ff6c11322c3d1ce285a45f723aad68a0255dbf13a259d005eda6ad8a5791639.lean/declarations/uncurrysum-apply--1b2628d96485964bd8ec1c9e.md) | 288 | `result-track:1b2628d96485964bd8ec1c9e375ae29aa1f3c352b5f6669b7e3a0b54dfefab9d` |
| 27 | `lemma` | [uncurrySum_add](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant7ff6c11322c3d1ce285a45f723aad68a0255dbf13a259d005eda6ad8a5791639.lean/declarations/uncurrysum-add--be7541c266ba55e92aa5eb84.md) | 295 | `result-track:be7541c266ba55e92aa5eb84b3a8bd99e7ee01af2284b4b9d558b30e58a06400` |
| 28 | `lemma` | [uncurrySum_smul](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant7ff6c11322c3d1ce285a45f723aad68a0255dbf13a259d005eda6ad8a5791639.lean/declarations/uncurrysum-smul--cfd871447a9b9f2b21f995bf.md) | 301 | `result-track:cfd871447a9b9f2b21f995bf5202a4e26250720f11a1f104d303633dc89ceee6` |
| 29 | `lemma` | [uncurrySum_currySum](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant7ff6c11322c3d1ce285a45f723aad68a0255dbf13a259d005eda6ad8a5791639.lean/declarations/uncurrysum-currysum--1387bb59f4335b880accd89a.md) | 308 | `result-track:1387bb59f4335b880accd89a48d48c48e2997e4aa7c73c5afb562c6ba22d910f` |
| 30 | `lemma` | [currySum_uncurrySum](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant7ff6c11322c3d1ce285a45f723aad68a0255dbf13a259d005eda6ad8a5791639.lean/declarations/currysum-uncurrysum--c97107d08adac8ffe51c87ce.md) | 316 | `result-track:c97107d08adac8ffe51c87ceec4f02a8c040cce567508adca920224d197e635b` |
| 31 | `def` | [currySumEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant7ff6c11322c3d1ce285a45f723aad68a0255dbf13a259d005eda6ad8a5791639.lean/declarations/currysumequiv--7e7e45e36b84e61f3bef7b5f.md) | 326 | `declaration-track:7e7e45e36b84e61f3bef7b5f79523f0df755f161ed77aa421b91b93ba56be7cc` |
| 32 | `theorem` | [coe_currySumEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant7ff6c11322c3d1ce285a45f723aad68a0255dbf13a259d005eda6ad8a5791639.lean/declarations/coe-currysumequiv--7fe626a7966288de71857796.md) | 336 | `result-track:7fe626a7966288de71857796ce051a8f84964f8615802b2c12a65bbd3f611551` |
| 33 | `theorem` | [coe_currySumEquiv_symm](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant7ff6c11322c3d1ce285a45f723aad68a0255dbf13a259d005eda6ad8a5791639.lean/declarations/coe-currysumequiv-symm--c4d0335865da935a6040297c.md) | 340 | `result-track:c4d0335865da935a6040297c5e0201a72251f5ab472f8f15f58b4dfdace8914a` |
| 34 | `def` | [curryFinFinset](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant7ff6c11322c3d1ce285a45f723aad68a0255dbf13a259d005eda6ad8a5791639.lean/declarations/curryfinfinset--cc88122e727cc75ca4e7ca0d.md) | 349 | `declaration-track:cc88122e727cc75ca4e7ca0d54e6403e8eed6756a870fb0a5dedb404124463f3` |
| 35 | `theorem` | [curryFinFinset_apply](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant7ff6c11322c3d1ce285a45f723aad68a0255dbf13a259d005eda6ad8a5791639.lean/declarations/curryfinfinset-apply--6ced43c5de580b5fca9e7987.md) | 358 | `result-track:6ced43c5de580b5fca9e7987906886fe85f376050224987feaa2d973383c8a83` |
| 36 | `theorem` | [curryFinFinset_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant7ff6c11322c3d1ce285a45f723aad68a0255dbf13a259d005eda6ad8a5791639.lean/declarations/curryfinfinset-symm-apply--02305f1fd6b20ab528c7c060.md) | 365 | `result-track:02305f1fd6b20ab528c7c06012f5846ba98fc829992967ceeb401540c025b3b4` |
| 37 | `theorem` | [curryFinFinset_symm_apply_piecewise_const](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant7ff6c11322c3d1ce285a45f723aad68a0255dbf13a259d005eda6ad8a5791639.lean/declarations/curryfinfinset-symm-apply-piecewise-const--058cd0733311b6e53b8c95be.md) | 374 | `result-track:058cd0733311b6e53b8c95be90eaed2fddcccbb5674c2602dfbf68e75ae55a18` |
| 38 | `theorem` | [curryFinFinset_symm_apply_const](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant7ff6c11322c3d1ce285a45f723aad68a0255dbf13a259d005eda6ad8a5791639.lean/declarations/curryfinfinset-symm-apply-const--72435d44cce1dea0438371cd.md) | 389 | `result-track:72435d44cce1dea0438371cd8add2036137a98bf0ac342cf717d42ff571c34fc` |
| 39 | `theorem` | [curryFinFinset_apply_const](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant7ff6c11322c3d1ce285a45f723aad68a0255dbf13a259d005eda6ad8a5791639.lean/declarations/curryfinfinset-apply-const--3c64d8ab2cc8154c99c95aa3.md) | 395 | `result-track:3c64d8ab2cc8154c99c95aa3a48efc5f6803bb0d6e97ad8052fcb9f04c5a2056` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
