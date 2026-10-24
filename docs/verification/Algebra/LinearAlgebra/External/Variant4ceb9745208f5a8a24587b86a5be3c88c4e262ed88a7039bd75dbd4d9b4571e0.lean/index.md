# Verification target: GRWTSK.Algebra.LinearAlgebra.External.Variant4ceb9745208f5a8a24587b86a5be3c88c4e262ed88a7039bd75dbd4d9b4571e0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59b892f70e82e6acceb4f84faf0f2939dbd6c004",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/External/Variant4ceb9745208f5a8a24587b86a5be3c88c4e262ed88a7039bd75dbd4d9b4571e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant4ceb9745208f5a8a24587b86a5be3c88c4e262ed88a7039bd75dbd4d9b4571e0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant4ceb9745208f5a8a24587b86a5be3c88c4e262ed88a7039bd75dbd4d9b4571e0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59b892f70e82e6acceb4f84faf0f2939dbd6c004`.

Source path: `GRWTSK/Algebra/LinearAlgebra/External/Variant4ceb9745208f5a8a24587b86a5be3c88c4e262ed88a7039bd75dbd4d9b4571e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/External/Variant4ceb9745208f5a8a24587b86a5be3c88c4e262ed88a7039bd75dbd4d9b4571e0.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant4ceb9745208f5a8a24587b86a5be3c88c4e262ed88a7039bd75dbd4d9b4571e0.lean/declarations/instance--ae6ce9448719943f5dadc1e1.md) | 63 | `declaration-track:ae6ce9448719943f5dadc1e12120c0f6b2fe68ecfd332601615c076cbbd64052` |
| 2 | `def` | [gradedCommAux](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant4ceb9745208f5a8a24587b86a5be3c88c4e262ed88a7039bd75dbd4d9b4571e0.lean/declarations/gradedcommaux--7a5abc8f4de1b81f66ab594e.md) | 78 | `declaration-track:7a5abc8f4de1b81f66ab594e094199b04674e690b2df1ec8edf1d3e4b41be38d` |
| 3 | `theorem` | [gradedCommAux_lof_tmul](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant4ceb9745208f5a8a24587b86a5be3c88c4e262ed88a7039bd75dbd4d9b4571e0.lean/declarations/gradedcommaux-lof-tmul--13c756433d410eae98ab27b4.md) | 85 | `result-track:13c756433d410eae98ab27b48ba468342a44f97a9e4931479407538667e8f52e` |
| 4 | `theorem` | [gradedCommAux_comp_gradedCommAux](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant4ceb9745208f5a8a24587b86a5be3c88c4e262ed88a7039bd75dbd4d9b4571e0.lean/declarations/gradedcommaux-comp-gradedcommaux--0ad2a8b613ce8c42d199f947.md) | 93 | `result-track:0ad2a8b613ce8c42d199f94727353120f190573bebf0cd1468fff69a0168b228` |
| 5 | `def` | [gradedComm](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant4ceb9745208f5a8a24587b86a5be3c88c4e262ed88a7039bd75dbd4d9b4571e0.lean/declarations/gradedcomm--dc7449feb780987d7bfee09f.md) | 103 | `declaration-track:dc7449feb780987d7bfee09fc68c823b4cdd6abcd7b552e04cebc9b0712752b7` |
| 6 | `theorem` | [gradedComm_symm](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant4ceb9745208f5a8a24587b86a5be3c88c4e262ed88a7039bd75dbd4d9b4571e0.lean/declarations/gradedcomm-symm--631567b1e8b7dc30624f9d77.md) | 111 | `result-track:631567b1e8b7dc30624f9d77678c2f1e05ae4813e27f1e5d36c9d6e1ba781176` |
| 7 | `theorem` | [gradedComm_of_tmul_of](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant4ceb9745208f5a8a24587b86a5be3c88c4e262ed88a7039bd75dbd4d9b4571e0.lean/declarations/gradedcomm-of-tmul-of--911dc96c4c0cff00337fd724.md) | 114 | `result-track:911dc96c4c0cff00337fd7249587d447e6e60891e37dd9944dafc91f23a680fe` |
| 8 | `theorem` | [gradedComm_tmul_of_zero](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant4ceb9745208f5a8a24587b86a5be3c88c4e262ed88a7039bd75dbd4d9b4571e0.lean/declarations/gradedcomm-tmul-of-zero--e0f32c2a3227c1ae2336a792.md) | 124 | `result-track:e0f32c2a3227c1ae2336a79214c958d2104dfaaf8aa5756056e32a2d1e015433` |
| 9 | `theorem` | [gradedComm_of_zero_tmul](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant4ceb9745208f5a8a24587b86a5be3c88c4e262ed88a7039bd75dbd4d9b4571e0.lean/declarations/gradedcomm-of-zero-tmul--d2f9c6094f96d3217d449643.md) | 135 | `result-track:d2f9c6094f96d3217d449643f134222546cef844b07908cee732bef44ec176bd` |
| 10 | `theorem` | [gradedComm_tmul_one](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant4ceb9745208f5a8a24587b86a5be3c88c4e262ed88a7039bd75dbd4d9b4571e0.lean/declarations/gradedcomm-tmul-one--86d19f534bbfb38e11bc518a.md) | 145 | `result-track:86d19f534bbfb38e11bc518a2d743f13507908c8046f534e45107ec34eca580b` |
| 11 | `theorem` | [gradedComm_one_tmul](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant4ceb9745208f5a8a24587b86a5be3c88c4e262ed88a7039bd75dbd4d9b4571e0.lean/declarations/gradedcomm-one-tmul--fa55a88b58015cafa5929a61.md) | 149 | `result-track:fa55a88b58015cafa5929a61c3d4fd41c8f12e2b9bf2990d53fa6662a8a8c9af` |
| 12 | `theorem` | [gradedComm_one](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant4ceb9745208f5a8a24587b86a5be3c88c4e262ed88a7039bd75dbd4d9b4571e0.lean/declarations/gradedcomm-one--4cd49a1e7f4befd0f29f97cb.md) | 154 | `result-track:4cd49a1e7f4befd0f29f97cb3374c7881d19849e3e8bc699101a78722052aa3c` |
| 13 | `theorem` | [gradedComm_tmul_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant4ceb9745208f5a8a24587b86a5be3c88c4e262ed88a7039bd75dbd4d9b4571e0.lean/declarations/gradedcomm-tmul-algebramap--ce1ae86ce59e00db9e68016e.md) | 157 | `result-track:ce1ae86ce59e00db9e68016e8c2e489875edf0358fcff444e2772daa36f08533` |
| 14 | `theorem` | [gradedComm_algebraMap_tmul](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant4ceb9745208f5a8a24587b86a5be3c88c4e262ed88a7039bd75dbd4d9b4571e0.lean/declarations/gradedcomm-algebramap-tmul--915d9dd3b80b99b862b29f1d.md) | 162 | `result-track:915d9dd3b80b99b862b29f1d5bb8e605cda9cfe92887dd2fe67b17bba9ec7f6a` |
| 15 | `theorem` | [gradedComm_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant4ceb9745208f5a8a24587b86a5be3c88c4e262ed88a7039bd75dbd4d9b4571e0.lean/declarations/gradedcomm-algebramap--604f4bd0a8364ec30cb96f99.md) | 167 | `result-track:604f4bd0a8364ec30cb96f99d3ec151bc2491db358095a0131b1820cab284c17` |
| 16 | `theorem` | [tmul_of_gradedMul_of_tmul](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant4ceb9745208f5a8a24587b86a5be3c88c4e262ed88a7039bd75dbd4d9b4571e0.lean/declarations/tmul-of-gradedmul-of-tmul--83e0d37ddf1fb0c2f8471921.md) | 189 | `result-track:83e0d37ddf1fb0c2f84719216ee2eb7a7b20b941d764e4f95a133132f8178e08` |
| 17 | `theorem` | [algebraMap_gradedMul](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant4ceb9745208f5a8a24587b86a5be3c88c4e262ed88a7039bd75dbd4d9b4571e0.lean/declarations/algebramap-gradedmul--ac998638c7f0e727b1285e17.md) | 207 | `result-track:ac998638c7f0e727b1285e178a14f5cc8181f9eadd97ad583d1ba415e42a8788` |
| 18 | `theorem` | [one_gradedMul](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant4ceb9745208f5a8a24587b86a5be3c88c4e262ed88a7039bd75dbd4d9b4571e0.lean/declarations/one-gradedmul--9feee2c039e7908458a59640.md) | 217 | `result-track:9feee2c039e7908458a5964087ba5d3e19ffa54046d5ee2f52dcdac2e15e42c6` |
| 19 | `theorem` | [gradedMul_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant4ceb9745208f5a8a24587b86a5be3c88c4e262ed88a7039bd75dbd4d9b4571e0.lean/declarations/gradedmul-algebramap--8ee261bcda2fbd5ce41714a5.md) | 223 | `result-track:8ee261bcda2fbd5ce41714a56543d05b0c95ab14bd7b9ef5d3e688ea94a9b447` |
| 20 | `theorem` | [gradedMul_one](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant4ceb9745208f5a8a24587b86a5be3c88c4e262ed88a7039bd75dbd4d9b4571e0.lean/declarations/gradedmul-one--387bda423d28b7a0200477bd.md) | 234 | `result-track:387bda423d28b7a0200477bd7031e170699444cfd158919cbfe1475d53a1ff13` |
| 21 | `theorem` | [gradedMul_assoc](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant4ceb9745208f5a8a24587b86a5be3c88c4e262ed88a7039bd75dbd4d9b4571e0.lean/declarations/gradedmul-assoc--7e58d3356dd8e26ce202c5d2.md) | 240 | `result-track:7e58d3356dd8e26ce202c5d2adbf5347ec2a68afd793bf3485ababe855348acc` |
| 22 | `theorem` | [gradedComm_gradedMul](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant4ceb9745208f5a8a24587b86a5be3c88c4e262ed88a7039bd75dbd4d9b4571e0.lean/declarations/gradedcomm-gradedmul--3df6c05b222b421e190f6fc1.md) | 259 | `result-track:3df6c05b222b421e190f6fc11bc930e7ba33e499d2a3cfee6c03e27441dd5cb4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
