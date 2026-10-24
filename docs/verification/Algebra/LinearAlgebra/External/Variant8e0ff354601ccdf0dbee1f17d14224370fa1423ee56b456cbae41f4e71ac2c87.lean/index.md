# Verification target: GRWTSK.Algebra.LinearAlgebra.External.Variant8e0ff354601ccdf0dbee1f17d14224370fa1423ee56b456cbae41f4e71ac2c87

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5ee8cd012f0f550712fc01902938e036c3a6b15",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/External/Variant8e0ff354601ccdf0dbee1f17d14224370fa1423ee56b456cbae41f4e71ac2c87.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant8e0ff354601ccdf0dbee1f17d14224370fa1423ee56b456cbae41f4e71ac2c87.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant8e0ff354601ccdf0dbee1f17d14224370fa1423ee56b456cbae41f4e71ac2c87.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5ee8cd012f0f550712fc01902938e036c3a6b15`.

Source path: `GRWTSK/Algebra/LinearAlgebra/External/Variant8e0ff354601ccdf0dbee1f17d14224370fa1423ee56b456cbae41f4e71ac2c87.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/External/Variant8e0ff354601ccdf0dbee1f17d14224370fa1423ee56b456cbae41f4e71ac2c87.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant8e0ff354601ccdf0dbee1f17d14224370fa1423ee56b456cbae41f4e71ac2c87.lean/declarations/instance--b6238cf248ca025f62265ca0.md) | 71 | `declaration-track:b6238cf248ca025f62265ca03a0cc242291de680c98db8def40653f3107f2f28` |
| 2 | `def` | [gradedCommAux](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant8e0ff354601ccdf0dbee1f17d14224370fa1423ee56b456cbae41f4e71ac2c87.lean/declarations/gradedcommaux--0651721ef375c355b094a7ca.md) | 86 | `declaration-track:0651721ef375c355b094a7cac94186a8eb8b80731aa4a883d8e75c94aae60673` |
| 3 | `theorem` | [gradedCommAux_lof_tmul](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant8e0ff354601ccdf0dbee1f17d14224370fa1423ee56b456cbae41f4e71ac2c87.lean/declarations/gradedcommaux-lof-tmul--a915b45cbdbc871d3ec42dcd.md) | 93 | `result-track:a915b45cbdbc871d3ec42dcd81f0184fd78a58443ecf5c5a6cd9c27a5b20449f` |
| 4 | `theorem` | [gradedCommAux_comp_gradedCommAux](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant8e0ff354601ccdf0dbee1f17d14224370fa1423ee56b456cbae41f4e71ac2c87.lean/declarations/gradedcommaux-comp-gradedcommaux--ead9c60099840226366133f3.md) | 101 | `result-track:ead9c60099840226366133f3898ffa98d308fff8b9e4f738c8ec3251803c3f50` |
| 5 | `def` | [gradedComm](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant8e0ff354601ccdf0dbee1f17d14224370fa1423ee56b456cbae41f4e71ac2c87.lean/declarations/gradedcomm--18c60080b424602fa365e750.md) | 111 | `declaration-track:18c60080b424602fa365e7505df5d2d90849c38c0b3fd2194a34ae6c58d2fc1d` |
| 6 | `theorem` | [gradedComm_symm](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant8e0ff354601ccdf0dbee1f17d14224370fa1423ee56b456cbae41f4e71ac2c87.lean/declarations/gradedcomm-symm--66ebe280972d289648df24ba.md) | 119 | `result-track:66ebe280972d289648df24ba868118c59c00d122d3b0cf7f19606dd73b90c199` |
| 7 | `theorem` | [gradedComm_of_tmul_of](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant8e0ff354601ccdf0dbee1f17d14224370fa1423ee56b456cbae41f4e71ac2c87.lean/declarations/gradedcomm-of-tmul-of--1d6560326c624e30e208fda3.md) | 122 | `result-track:1d6560326c624e30e208fda3b1fabe0b5f05ddd01577022efbe054e58609204d` |
| 8 | `theorem` | [gradedComm_tmul_of_zero](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant8e0ff354601ccdf0dbee1f17d14224370fa1423ee56b456cbae41f4e71ac2c87.lean/declarations/gradedcomm-tmul-of-zero--5e8f009d15ee9cc07bda6181.md) | 132 | `result-track:5e8f009d15ee9cc07bda6181e21ce705b8439b6fd654c6215c5168a4127782c4` |
| 9 | `theorem` | [gradedComm_of_zero_tmul](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant8e0ff354601ccdf0dbee1f17d14224370fa1423ee56b456cbae41f4e71ac2c87.lean/declarations/gradedcomm-of-zero-tmul--d49b0f82355f8222539ff067.md) | 143 | `result-track:d49b0f82355f8222539ff067d5cd5ec49a185f717c55ecc857a27c064fb7a5f3` |
| 10 | `theorem` | [gradedComm_tmul_one](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant8e0ff354601ccdf0dbee1f17d14224370fa1423ee56b456cbae41f4e71ac2c87.lean/declarations/gradedcomm-tmul-one--7f78110af23ce8f1ff1b018f.md) | 153 | `result-track:7f78110af23ce8f1ff1b018fff27704a16896a2b711f65304f904c6187d76bfa` |
| 11 | `theorem` | [gradedComm_one_tmul](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant8e0ff354601ccdf0dbee1f17d14224370fa1423ee56b456cbae41f4e71ac2c87.lean/declarations/gradedcomm-one-tmul--779525a81f0b22bf64eb513b.md) | 157 | `result-track:779525a81f0b22bf64eb513b37fc1914384c7353cbb2323f7851a17779adc3e7` |
| 12 | `theorem` | [gradedComm_one](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant8e0ff354601ccdf0dbee1f17d14224370fa1423ee56b456cbae41f4e71ac2c87.lean/declarations/gradedcomm-one--6674aedfe7f380ab0fe4b50b.md) | 162 | `result-track:6674aedfe7f380ab0fe4b50b1f5cfc90b16442772492d5c24563178b8bb263ee` |
| 13 | `theorem` | [gradedComm_tmul_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant8e0ff354601ccdf0dbee1f17d14224370fa1423ee56b456cbae41f4e71ac2c87.lean/declarations/gradedcomm-tmul-algebramap--f0a4f8de19ba6ea072c4eb9f.md) | 165 | `result-track:f0a4f8de19ba6ea072c4eb9fa81fe86fd6524c2b0dc230dea026115063c0c850` |
| 14 | `theorem` | [gradedComm_algebraMap_tmul](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant8e0ff354601ccdf0dbee1f17d14224370fa1423ee56b456cbae41f4e71ac2c87.lean/declarations/gradedcomm-algebramap-tmul--b95e470b653e552356192d72.md) | 170 | `result-track:b95e470b653e552356192d72fae0e372235f4be640ec8577379050a950f0441c` |
| 15 | `theorem` | [gradedComm_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant8e0ff354601ccdf0dbee1f17d14224370fa1423ee56b456cbae41f4e71ac2c87.lean/declarations/gradedcomm-algebramap--c9d2d55135b78ccf8b9c84e5.md) | 175 | `result-track:c9d2d55135b78ccf8b9c84e5ced3a72503bf7825fdb4d6288bcd937876f8b7d2` |
| 16 | `theorem` | [tmul_of_gradedMul_of_tmul](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant8e0ff354601ccdf0dbee1f17d14224370fa1423ee56b456cbae41f4e71ac2c87.lean/declarations/tmul-of-gradedmul-of-tmul--d3950b6b0c1dc4aee6175931.md) | 197 | `result-track:d3950b6b0c1dc4aee6175931a24fd71e97f0cc16b60006367deddbf2f3decddb` |
| 17 | `theorem` | [algebraMap_gradedMul](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant8e0ff354601ccdf0dbee1f17d14224370fa1423ee56b456cbae41f4e71ac2c87.lean/declarations/algebramap-gradedmul--72c1654050a5d4870259282e.md) | 215 | `result-track:72c1654050a5d4870259282e881062587d4ee303ebeb39216ddd9c0045a2be04` |
| 18 | `theorem` | [one_gradedMul](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant8e0ff354601ccdf0dbee1f17d14224370fa1423ee56b456cbae41f4e71ac2c87.lean/declarations/one-gradedmul--0b80dfc4fe9b131c677670ba.md) | 225 | `result-track:0b80dfc4fe9b131c677670ba46fde4316ae5ddc7e0347b196498dc509518d4dc` |
| 19 | `theorem` | [gradedMul_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant8e0ff354601ccdf0dbee1f17d14224370fa1423ee56b456cbae41f4e71ac2c87.lean/declarations/gradedmul-algebramap--f96c5a1a77eb08fb89112c54.md) | 231 | `result-track:f96c5a1a77eb08fb89112c54c81bdf91667a0e4a7aa1bceec6a5985422a05ac7` |
| 20 | `theorem` | [gradedMul_one](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant8e0ff354601ccdf0dbee1f17d14224370fa1423ee56b456cbae41f4e71ac2c87.lean/declarations/gradedmul-one--2b6d913f947d0b0dfcdb01ad.md) | 242 | `result-track:2b6d913f947d0b0dfcdb01ad46571441f82720eee3f526931d9e17a5519fdc7b` |
| 21 | `theorem` | [gradedMul_assoc](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant8e0ff354601ccdf0dbee1f17d14224370fa1423ee56b456cbae41f4e71ac2c87.lean/declarations/gradedmul-assoc--d67627d1372ff8bf2d8280ad.md) | 248 | `result-track:d67627d1372ff8bf2d8280ada54a65066efa52e5606716bdee4269f8d7f6c538` |
| 22 | `theorem` | [gradedComm_gradedMul](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant8e0ff354601ccdf0dbee1f17d14224370fa1423ee56b456cbae41f4e71ac2c87.lean/declarations/gradedcomm-gradedmul--c340b9a21bbf49a7655fe188.md) | 267 | `result-track:c340b9a21bbf49a7655fe188b5dd9344b79de7d23bd5c73cb0f488f1947005d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
