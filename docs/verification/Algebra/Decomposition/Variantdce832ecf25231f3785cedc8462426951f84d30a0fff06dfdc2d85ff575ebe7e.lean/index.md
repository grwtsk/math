# Verification target: GRWTSK.Algebra.Decomposition.Variantdce832ecf25231f3785cedc8462426951f84d30a0fff06dfdc2d85ff575ebe7e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64034b3346d5a30d836c33bfa85374deb12b667e",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Decomposition/Variantdce832ecf25231f3785cedc8462426951f84d30a0fff06dfdc2d85ff575ebe7e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Decomposition/Variantdce832ecf25231f3785cedc8462426951f84d30a0fff06dfdc2d85ff575ebe7e.lean/index.md) · [Full source](../../../../mathematics/Algebra/Decomposition/Variantdce832ecf25231f3785cedc8462426951f84d30a0fff06dfdc2d85ff575ebe7e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64034b3346d5a30d836c33bfa85374deb12b667e`.

Source path: `GRWTSK/Algebra/Decomposition/Variantdce832ecf25231f3785cedc8462426951f84d30a0fff06dfdc2d85ff575ebe7e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Decomposition/Variantdce832ecf25231f3785cedc8462426951f84d30a0fff06dfdc2d85ff575ebe7e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DirectSum.Module` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Decomposition](../../../../mathematics/Algebra/Decomposition/Variantdce832ecf25231f3785cedc8462426951f84d30a0fff06dfdc2d85ff575ebe7e.lean/declarations/decomposition--9e364ca2d5842063a491f792.md) | 52 | `declaration-track:9e364ca2d5842063a491f792f50efc689f2ffe920ebe56d28bf8ee7503af0eed` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Decomposition/Variantdce832ecf25231f3785cedc8462426951f84d30a0fff06dfdc2d85ff575ebe7e.lean/declarations/instance--f67e7b5bc31e79fb9354b6da.md) | 59 | `declaration-track:f67e7b5bc31e79fb9354b6dac6f738f16e5864f79aa1aa4bceef0135a60003ec` |
| 3 | `theorem` | [Decomposition.isInternal](../../../../mathematics/Algebra/Decomposition/Variantdce832ecf25231f3785cedc8462426951f84d30a0fff06dfdc2d85ff575ebe7e.lean/declarations/decomposition-isinternal--bcb31f90bbba51254cb98f32.md) | 68 | `result-track:bcb31f90bbba51254cb98f32df253aa864c4f5a798dae1d30c1f0d13f0059985` |
| 4 | `def` | [decompose](../../../../mathematics/Algebra/Decomposition/Variantdce832ecf25231f3785cedc8462426951f84d30a0fff06dfdc2d85ff575ebe7e.lean/declarations/decompose--c919d756bb04a719790057c7.md) | 74 | `declaration-track:c919d756bb04a719790057c761b5364f387a9cf5682c3122ab605a7e689a063d` |
| 5 | `theorem` | [Decomposition.inductionOn](../../../../mathematics/Algebra/Decomposition/Variantdce832ecf25231f3785cedc8462426951f84d30a0fff06dfdc2d85ff575ebe7e.lean/declarations/decomposition-inductionon--822cf1470fa0c8740382e768.md) | 81 | `result-track:822cf1470fa0c8740382e76863f769c5080b0cb5352d38676461b6f33e74acbc` |
| 6 | `theorem` | [Decomposition.decompose'_eq](../../../../mathematics/Algebra/Decomposition/Variantdce832ecf25231f3785cedc8462426951f84d30a0fff06dfdc2d85ff575ebe7e.lean/declarations/decomposition-decompose-eq--6c9cef6b32c203b78851d329.md) | 100 | `result-track:6c9cef6b32c203b78851d3294fe879ae02d79bdd3ed24bd8e409220f6918a63b` |
| 7 | `theorem` | [decompose_symm_of](../../../../mathematics/Algebra/Decomposition/Variantdce832ecf25231f3785cedc8462426951f84d30a0fff06dfdc2d85ff575ebe7e.lean/declarations/decompose-symm-of--84d12cee5a297a2b353d0832.md) | 104 | `result-track:84d12cee5a297a2b353d0832f82793367db9d94b1de923b00e73448d3a9ffeb4` |
| 8 | `theorem` | [decompose_coe](../../../../mathematics/Algebra/Decomposition/Variantdce832ecf25231f3785cedc8462426951f84d30a0fff06dfdc2d85ff575ebe7e.lean/declarations/decompose-coe--1b7572221e9b3d99e16eeccc.md) | 109 | `result-track:1b7572221e9b3d99e16eeccc0a818e0579233c5270fc7dc568a07ea2430d7678` |
| 9 | `theorem` | [decompose_of_mem](../../../../mathematics/Algebra/Decomposition/Variantdce832ecf25231f3785cedc8462426951f84d30a0fff06dfdc2d85ff575ebe7e.lean/declarations/decompose-of-mem--812ad14a8a8de5d8c8a4d7bd.md) | 113 | `result-track:812ad14a8a8de5d8c8a4d7bd28b86e0818547ccc7ef0d1e4801e5fa63225b92c` |
| 10 | `theorem` | [decompose_of_mem_same](../../../../mathematics/Algebra/Decomposition/Variantdce832ecf25231f3785cedc8462426951f84d30a0fff06dfdc2d85ff575ebe7e.lean/declarations/decompose-of-mem-same--f378de36bc6437212c404322.md) | 118 | `result-track:f378de36bc6437212c404322c32d69ff1657bc4f930735515f6dbbbcba0db19e` |
| 11 | `theorem` | [decompose_of_mem_ne](../../../../mathematics/Algebra/Decomposition/Variantdce832ecf25231f3785cedc8462426951f84d30a0fff06dfdc2d85ff575ebe7e.lean/declarations/decompose-of-mem-ne--d68ec33fc97f050ed10247f9.md) | 122 | `result-track:d68ec33fc97f050ed10247f9a3356ccef35e330938089105ebbab0084e40e288` |
| 12 | `def` | [decomposeAddEquiv](../../../../mathematics/Algebra/Decomposition/Variantdce832ecf25231f3785cedc8462426951f84d30a0fff06dfdc2d85ff575ebe7e.lean/declarations/decomposeaddequiv--38debe7c204b4f1fd229a6b4.md) | 130 | `declaration-track:38debe7c204b4f1fd229a6b41f2a7e8541af9bdc2d22e29ee13ffdafcb2348ee` |
| 13 | `lemma` | [decomposeAddEquiv_apply](../../../../mathematics/Algebra/Decomposition/Variantdce832ecf25231f3785cedc8462426951f84d30a0fff06dfdc2d85ff575ebe7e.lean/declarations/decomposeaddequiv-apply--63411214dceea49191d678d6.md) | 135 | `result-track:63411214dceea49191d678d65c5dd8051b6f2dbb2a4d7c2642928c1fad1483ed` |
| 14 | `lemma` | [decomposeAddEquiv_symm_apply](../../../../mathematics/Algebra/Decomposition/Variantdce832ecf25231f3785cedc8462426951f84d30a0fff06dfdc2d85ff575ebe7e.lean/declarations/decomposeaddequiv-symm-apply--e47354afdd3394144213913d.md) | 139 | `result-track:e47354afdd3394144213913d1fdee95713f8cd0fd2814215b6374ab324f38547` |
| 15 | `theorem` | [decompose_zero](../../../../mathematics/Algebra/Decomposition/Variantdce832ecf25231f3785cedc8462426951f84d30a0fff06dfdc2d85ff575ebe7e.lean/declarations/decompose-zero--1d13ce561825b92cd96fd462.md) | 143 | `result-track:1d13ce561825b92cd96fd462ed4b6f6e5723993cd1fc57ddbf356d84bdace4d2` |
| 16 | `theorem` | [decompose_symm_zero](../../../../mathematics/Algebra/Decomposition/Variantdce832ecf25231f3785cedc8462426951f84d30a0fff06dfdc2d85ff575ebe7e.lean/declarations/decompose-symm-zero--358142ef1d8561c8a783aeb7.md) | 148 | `result-track:358142ef1d8561c8a783aeb7622dafced5d6850aebb546c7ea656542d44421ea` |
| 17 | `theorem` | [decompose_add](../../../../mathematics/Algebra/Decomposition/Variantdce832ecf25231f3785cedc8462426951f84d30a0fff06dfdc2d85ff575ebe7e.lean/declarations/decompose-add--43967ad1aefe194b2916c4f7.md) | 153 | `result-track:43967ad1aefe194b2916c4f7e8f4048e1578bc1d59e5a7c274d475a69ebb9149` |
| 18 | `theorem` | [decompose_symm_add](../../../../mathematics/Algebra/Decomposition/Variantdce832ecf25231f3785cedc8462426951f84d30a0fff06dfdc2d85ff575ebe7e.lean/declarations/decompose-symm-add--632e31656443b73ed420e75a.md) | 158 | `result-track:632e31656443b73ed420e75addceb285be6ecf5580a809ed0a266b7aef9f45ac` |
| 19 | `theorem` | [decompose_sum](../../../../mathematics/Algebra/Decomposition/Variantdce832ecf25231f3785cedc8462426951f84d30a0fff06dfdc2d85ff575ebe7e.lean/declarations/decompose-sum--f3f557ffbdcb06debd746c41.md) | 164 | `result-track:f3f557ffbdcb06debd746c41b95a000cccb945d01fbe4fb4a53d389da7c9a6e7` |
| 20 | `theorem` | [decompose_symm_sum](../../../../mathematics/Algebra/Decomposition/Variantdce832ecf25231f3785cedc8462426951f84d30a0fff06dfdc2d85ff575ebe7e.lean/declarations/decompose-symm-sum--9aee202294511a93a830a6ad.md) | 170 | `result-track:9aee202294511a93a830a6adb2b3bcfdea8fa0bdc13175cf306d725c7c9b5c40` |
| 21 | `theorem` | [sum_support_decompose](../../../../mathematics/Algebra/Decomposition/Variantdce832ecf25231f3785cedc8462426951f84d30a0fff06dfdc2d85ff575ebe7e.lean/declarations/sum-support-decompose--8a5bc3b87fed918797dfb0f9.md) | 175 | `result-track:8a5bc3b87fed918797dfb0f96b03814c66597ddda0feb63a79a4c7d680f61f8d` |
| 22 | `instance` | [addCommGroupSetLike](../../../../mathematics/Algebra/Decomposition/Variantdce832ecf25231f3785cedc8462426951f84d30a0fff06dfdc2d85ff575ebe7e.lean/declarations/addcommgroupsetlike--0e355b2c91fb6861ae64d594.md) | 192 | `declaration-track:0e355b2c91fb6861ae64d59458758c8e029636dfa77d1aeb67063de2cbeb8922` |
| 23 | `theorem` | [decompose_neg](../../../../mathematics/Algebra/Decomposition/Variantdce832ecf25231f3785cedc8462426951f84d30a0fff06dfdc2d85ff575ebe7e.lean/declarations/decompose-neg--a527bb2c233391e7cd12d763.md) | 205 | `result-track:a527bb2c233391e7cd12d763afd8c5f612f819ab9cc17dcdd4373c53f7011e07` |
| 24 | `theorem` | [decompose_symm_neg](../../../../mathematics/Algebra/Decomposition/Variantdce832ecf25231f3785cedc8462426951f84d30a0fff06dfdc2d85ff575ebe7e.lean/declarations/decompose-symm-neg--d8e6226109ab1acf85fa5bd4.md) | 210 | `result-track:d8e6226109ab1acf85fa5bd43fb4d5a52229f19c2407af88d745559e767534c5` |
| 25 | `theorem` | [decompose_sub](../../../../mathematics/Algebra/Decomposition/Variantdce832ecf25231f3785cedc8462426951f84d30a0fff06dfdc2d85ff575ebe7e.lean/declarations/decompose-sub--72ff952326fd9368a4088236.md) | 215 | `result-track:72ff952326fd9368a4088236901101a443916e610fb14ec4d8530acf7120cb73` |
| 26 | `theorem` | [decompose_symm_sub](../../../../mathematics/Algebra/Decomposition/Variantdce832ecf25231f3785cedc8462426951f84d30a0fff06dfdc2d85ff575ebe7e.lean/declarations/decompose-symm-sub--a3b5bcdc10c1ec939ac6dd63.md) | 220 | `result-track:a3b5bcdc10c1ec939ac6dd63ea4f0ed0ad7de87506727d055cdc1b82161ca171` |
| 27 | `def` | [decomposeLinearEquiv](../../../../mathematics/Algebra/Decomposition/Variantdce832ecf25231f3785cedc8462426951f84d30a0fff06dfdc2d85ff575ebe7e.lean/declarations/decomposelinearequiv--abf4e09d3101d9b72622a232.md) | 238 | `declaration-track:abf4e09d3101d9b72622a232918aa35e2e316644056332d571aa96d01c4029af` |
| 28 | `theorem` | [decompose_smul](../../../../mathematics/Algebra/Decomposition/Variantdce832ecf25231f3785cedc8462426951f84d30a0fff06dfdc2d85ff575ebe7e.lean/declarations/decompose-smul--d91b4591de3fee2a5a910795.md) | 244 | `result-track:d91b4591de3fee2a5a91079535b90030b2230d3f195fdcbd32a3d380a5d1fd83` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
