# Verification target: GRWTSK.Algebra.LinearAlgebra.TensorProduct.Variant91a7c5f48543031950e31a1b8af8b2ec1b307b9843f5ef18aea8036b8533b65d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8497235efa56a6d531674ea8ff1310176cabc67e",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant91a7c5f48543031950e31a1b8af8b2ec1b307b9843f5ef18aea8036b8533b65d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant91a7c5f48543031950e31a1b8af8b2ec1b307b9843f5ef18aea8036b8533b65d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant91a7c5f48543031950e31a1b8af8b2ec1b307b9843f5ef18aea8036b8533b65d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8497235efa56a6d531674ea8ff1310176cabc67e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant91a7c5f48543031950e31a1b8af8b2ec1b307b9843f5ef18aea8036b8533b65d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TensorProduct/Variant91a7c5f48543031950e31a1b8af8b2ec1b307b9843f5ef18aea8036b8533b65d.lean.json)

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
| 1 | `def` | [directSum](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant91a7c5f48543031950e31a1b8af8b2ec1b307b9843f5ef18aea8036b8533b65d.lean/declarations/directsum--bc982c80b09def042ac7ffac.md) | 50 | `declaration-track:bc982c80b09def042ac7ffacfe8938195875c1bca420aef757133b60e65506b1` |
| 2 | `def` | [directSumLeft](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant91a7c5f48543031950e31a1b8af8b2ec1b307b9843f5ef18aea8036b8533b65d.lean/declarations/directsumleft--c08f13a5ece253c9c1192e80.md) | 67 | `declaration-track:c08f13a5ece253c9c1192e806791c86bbf9c817ba50588219bc2776a515b68f4` |
| 3 | `def` | [directSumRight](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant91a7c5f48543031950e31a1b8af8b2ec1b307b9843f5ef18aea8036b8533b65d.lean/declarations/directsumright--6cc793944305efbb425c275c.md) | 73 | `declaration-track:6cc793944305efbb425c275cbe13f2a4b9d1ac7d1b9cbcb379d2dd20b27d36cd` |
| 4 | `theorem` | [directSum_lof_tmul_lof](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant91a7c5f48543031950e31a1b8af8b2ec1b307b9843f5ef18aea8036b8533b65d.lean/declarations/directsum-lof-tmul-lof--e5c8935adb829475cb105cca.md) | 83 | `result-track:e5c8935adb829475cb105cca7382374e0d38e0aa6bb65a174a8ec5349d9ae6aa` |
| 5 | `theorem` | [directSum_symm_lof_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant91a7c5f48543031950e31a1b8af8b2ec1b307b9843f5ef18aea8036b8533b65d.lean/declarations/directsum-symm-lof-tmul--1270da8852f6c4e8318a3154.md) | 89 | `result-track:1270da8852f6c4e8318a3154e6c3bac0d3aa5c2a03993468354b30280816237f` |
| 6 | `theorem` | [directSumLeft_tmul_lof](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant91a7c5f48543031950e31a1b8af8b2ec1b307b9843f5ef18aea8036b8533b65d.lean/declarations/directsumleft-tmul-lof--db533f6bdb6382a6a8c95c22.md) | 97 | `result-track:db533f6bdb6382a6a8c95c22145a7f4589f26914b82dad6705fc741e6fcd7ef1` |
| 7 | `theorem` | [directSumLeft_symm_lof_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant91a7c5f48543031950e31a1b8af8b2ec1b307b9843f5ef18aea8036b8533b65d.lean/declarations/directsumleft-symm-lof-tmul--fb9d17b061ad7b068f1570b8.md) | 103 | `result-track:fb9d17b061ad7b068f1570b8938706d8572f819f000723abeaff280f468c4e3a` |
| 8 | `lemma` | [directSumLeft_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant91a7c5f48543031950e31a1b8af8b2ec1b307b9843f5ef18aea8036b8533b65d.lean/declarations/directsumleft-tmul--33e49aa651d64d6771edfa96.md) | 109 | `result-track:33e49aa651d64d6771edfa96bfd3f96a42c31d861814780763c5ee15deb6e224` |
| 9 | `lemma` | [directSumLeft_symm_of](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant91a7c5f48543031950e31a1b8af8b2ec1b307b9843f5ef18aea8036b8533b65d.lean/declarations/directsumleft-symm-of--29f36242a948210eb1f7183d.md) | 120 | `result-track:29f36242a948210eb1f7183decf0d04484f9f053f9d88c36fec91b240b19a369` |
| 10 | `theorem` | [directSumRight_tmul_lof](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant91a7c5f48543031950e31a1b8af8b2ec1b307b9843f5ef18aea8036b8533b65d.lean/declarations/directsumright-tmul-lof--3d281f8833c86f0a76dd1b6e.md) | 129 | `result-track:3d281f8833c86f0a76dd1b6e75ed42129cbaea943c89e3a5b67d52fdff398c1f` |
| 11 | `theorem` | [directSumRight_symm_lof_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant91a7c5f48543031950e31a1b8af8b2ec1b307b9843f5ef18aea8036b8533b65d.lean/declarations/directsumright-symm-lof-tmul--ff0aa88dbfa8fcb566d82925.md) | 135 | `result-track:ff0aa88dbfa8fcb566d8292581b8bac3c790acd675ab4b2619ac70adff09a5ea` |
| 12 | `lemma` | [directSumRight_comp_rTensor](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant91a7c5f48543031950e31a1b8af8b2ec1b307b9843f5ef18aea8036b8533b65d.lean/declarations/directsumright-comp-rtensor--c862646836374c1e453b4a0b.md) | 140 | `result-track:c862646836374c1e453b4a0bdd164c9b30dca253372f4af96c4911f1f6ce5839` |
| 13 | `lemma` | [directSumRight_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant91a7c5f48543031950e31a1b8af8b2ec1b307b9843f5ef18aea8036b8533b65d.lean/declarations/directsumright-tmul--bd3fd625240b867503f11a11.md) | 146 | `result-track:bd3fd625240b867503f11a11b6e22e87dfd92a3237d6a5fd80176a9793351afc` |
| 14 | `lemma` | [restrictScalar_directSumRight](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant91a7c5f48543031950e31a1b8af8b2ec1b307b9843f5ef18aea8036b8533b65d.lean/declarations/restrictscalar-directsumright--45d7c832fc8c67919f68226a.md) | 161 | `result-track:45d7c832fc8c67919f68226ad1ef442784690f14c74ee4e7c3a04c955991da31` |
| 15 | `lemma` | [coe_directSumRight](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant91a7c5f48543031950e31a1b8af8b2ec1b307b9843f5ef18aea8036b8533b65d.lean/declarations/coe-directsumright--d63960a113693bc4d87c1025.md) | 168 | `result-track:d63960a113693bc4d87c102541892ce6752292c2ae4bbbc30704dc7d24356da8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
