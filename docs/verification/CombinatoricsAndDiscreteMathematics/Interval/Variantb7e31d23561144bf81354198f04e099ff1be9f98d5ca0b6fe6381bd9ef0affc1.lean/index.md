# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Interval.Variantb7e31d23561144bf81354198f04e099ff1be9f98d5ca0b6fe6381bd9ef0affc1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1bc294691c88f15e43f0e11fe2bdcd729b9dc4b3",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variantb7e31d23561144bf81354198f04e099ff1be9f98d5ca0b6fe6381bd9ef0affc1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantb7e31d23561144bf81354198f04e099ff1be9f98d5ca0b6fe6381bd9ef0affc1.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantb7e31d23561144bf81354198f04e099ff1be9f98d5ca0b6fe6381bd9ef0affc1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1bc294691c88f15e43f0e11fe2bdcd729b9dc4b3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variantb7e31d23561144bf81354198f04e099ff1be9f98d5ca0b6fe6381bd9ef0affc1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Interval/Variantb7e31d23561144bf81354198f04e099ff1be9f98d5ca0b6fe6381bd9ef0affc1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instLocallyFiniteOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantb7e31d23561144bf81354198f04e099ff1be9f98d5ca0b6fe6381bd9ef0affc1.lean/declarations/instlocallyfiniteorder--bcda586523db68285d5f58a2.md) | 27 | `declaration-track:bcda586523db68285d5f58a2c634c326259ee0d3a5034ee14e20d62c5d5886a0` |
| 2 | `theorem` | [Icc_eq_finset_subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantb7e31d23561144bf81354198f04e099ff1be9f98d5ca0b6fe6381bd9ef0affc1.lean/declarations/icc-eq-finset-subtype--2c4c66e209b3c2b515268e2a.md) | 30 | `result-track:2c4c66e209b3c2b515268e2a599527baf336be9b9fa39d72f9bd31da18cec970` |
| 3 | `theorem` | [Ico_eq_finset_subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantb7e31d23561144bf81354198f04e099ff1be9f98d5ca0b6fe6381bd9ef0affc1.lean/declarations/ico-eq-finset-subtype--0f4577f4149e67e01ca9694d.md) | 33 | `result-track:0f4577f4149e67e01ca9694dd3114028fac4d0435f94e7b9e14b1ebc9eb115dd` |
| 4 | `theorem` | [Ioc_eq_finset_subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantb7e31d23561144bf81354198f04e099ff1be9f98d5ca0b6fe6381bd9ef0affc1.lean/declarations/ioc-eq-finset-subtype--7fc2f3eb8ea12bdf5fb3cb04.md) | 36 | `result-track:7fc2f3eb8ea12bdf5fb3cb041f9786341768277d331477e1989f345ce2e58c79` |
| 5 | `theorem` | [Ioo_eq_finset_subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantb7e31d23561144bf81354198f04e099ff1be9f98d5ca0b6fe6381bd9ef0affc1.lean/declarations/ioo-eq-finset-subtype--1a3e1a760c1183d80f4d441a.md) | 39 | `result-track:1a3e1a760c1183d80f4d441a1b43709a2c03ad3f57d3ca3bc974726e558cf283` |
| 6 | `theorem` | [uIcc_eq_finset_subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantb7e31d23561144bf81354198f04e099ff1be9f98d5ca0b6fe6381bd9ef0affc1.lean/declarations/uicc-eq-finset-subtype--64f3b73f6c2faea8818e43c8.md) | 42 | `result-track:64f3b73f6c2faea8818e43c82be2a2466f9a3bda086a491f7814cca0eaf3bd55` |
| 7 | `theorem` | [map_subtype_embedding_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantb7e31d23561144bf81354198f04e099ff1be9f98d5ca0b6fe6381bd9ef0affc1.lean/declarations/map-subtype-embedding-icc--827113878856f46f6eb028d8.md) | 44 | `result-track:827113878856f46f6eb028d817fa61a55f20d3e8a8601bfddb9b279fb7faae75` |
| 8 | `theorem` | [map_subtype_embedding_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantb7e31d23561144bf81354198f04e099ff1be9f98d5ca0b6fe6381bd9ef0affc1.lean/declarations/map-subtype-embedding-ico--7694b8e84caea8fa0622f20f.md) | 47 | `result-track:7694b8e84caea8fa0622f20f7cdc2283802cefc323f8f741bdd5dddc1c1002a4` |
| 9 | `theorem` | [map_subtype_embedding_Ioc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantb7e31d23561144bf81354198f04e099ff1be9f98d5ca0b6fe6381bd9ef0affc1.lean/declarations/map-subtype-embedding-ioc--961ebe13d6bcd60fdbae4f86.md) | 50 | `result-track:961ebe13d6bcd60fdbae4f86402dd5397fdcab087a14e908194a5bc0c87215b3` |
| 10 | `theorem` | [map_subtype_embedding_Ioo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantb7e31d23561144bf81354198f04e099ff1be9f98d5ca0b6fe6381bd9ef0affc1.lean/declarations/map-subtype-embedding-ioo--2274b52e45c3f9bf7d6e3c98.md) | 53 | `result-track:2274b52e45c3f9bf7d6e3c98707b536508e144f7ff8851d229c6a65b788e8897` |
| 11 | `theorem` | [map_subtype_embedding_uIcc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantb7e31d23561144bf81354198f04e099ff1be9f98d5ca0b6fe6381bd9ef0affc1.lean/declarations/map-subtype-embedding-uicc--0073a66e200c48c6aa1769c7.md) | 56 | `result-track:0073a66e200c48c6aa1769c7b5c46d46eb434f3114a0becc02371e367c7db601` |
| 12 | `theorem` | [card_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantb7e31d23561144bf81354198f04e099ff1be9f98d5ca0b6fe6381bd9ef0affc1.lean/declarations/card-icc--7c24c5285c0cfdf02c473f1a.md) | 61 | `result-track:7c24c5285c0cfdf02c473f1a483f3dfb5f61e804548b2eca27e91a02035b7f38` |
| 13 | `theorem` | [card_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantb7e31d23561144bf81354198f04e099ff1be9f98d5ca0b6fe6381bd9ef0affc1.lean/declarations/card-ico--3345f2d34604e0a2833e4128.md) | 66 | `result-track:3345f2d34604e0a2833e41285cd2bd058175595f052e4e47eb09facaecbd2681` |
| 14 | `theorem` | [card_Ioc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantb7e31d23561144bf81354198f04e099ff1be9f98d5ca0b6fe6381bd9ef0affc1.lean/declarations/card-ioc--ab02eb9c01b2c202366bddeb.md) | 71 | `result-track:ab02eb9c01b2c202366bddebba6097e20b2a473b023163545ecabb7674621782` |
| 15 | `theorem` | [card_Ioo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantb7e31d23561144bf81354198f04e099ff1be9f98d5ca0b6fe6381bd9ef0affc1.lean/declarations/card-ioo--c871a7ff126afcf3e3fe0539.md) | 76 | `result-track:c871a7ff126afcf3e3fe0539a65cfce3af3856c8756bfeca819f9182521c7488` |
| 16 | `theorem` | [card_uIcc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantb7e31d23561144bf81354198f04e099ff1be9f98d5ca0b6fe6381bd9ef0affc1.lean/declarations/card-uicc--615811ad01b0505805236760.md) | 81 | `result-track:615811ad01b05058052367608d3aa7c7720f03ea8cb46519705c33cf93fbac83` |
| 17 | `theorem` | [card_fintype_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantb7e31d23561144bf81354198f04e099ff1be9f98d5ca0b6fe6381bd9ef0affc1.lean/declarations/card-fintype-icc--b779c39bf88faa95aab055b0.md) | 84 | `result-track:b779c39bf88faa95aab055b0d9c7853122a6fe1e0c7b29390b94e6dc6007c7a5` |
| 18 | `theorem` | [card_fintype_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantb7e31d23561144bf81354198f04e099ff1be9f98d5ca0b6fe6381bd9ef0affc1.lean/declarations/card-fintype-ico--4cf02d07d6c524357ad8f3e5.md) | 87 | `result-track:4cf02d07d6c524357ad8f3e578dd1a2226f84ec4089ee351a44b238b70f19ac7` |
| 19 | `theorem` | [card_fintype_Ioc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantb7e31d23561144bf81354198f04e099ff1be9f98d5ca0b6fe6381bd9ef0affc1.lean/declarations/card-fintype-ioc--98b4e324189d447d105ed1f6.md) | 90 | `result-track:98b4e324189d447d105ed1f6af4252d7bda3ccdf2af0063adef37ab6291f83b9` |
| 20 | `theorem` | [card_fintype_Ioo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantb7e31d23561144bf81354198f04e099ff1be9f98d5ca0b6fe6381bd9ef0affc1.lean/declarations/card-fintype-ioo--dd3b1d2f52bcf10cbfedf9ae.md) | 93 | `result-track:dd3b1d2f52bcf10cbfedf9ae0a9972e3633d51b4c97b5fd1fed5d0e067045059` |
| 21 | `theorem` | [card_fintype_uIcc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantb7e31d23561144bf81354198f04e099ff1be9f98d5ca0b6fe6381bd9ef0affc1.lean/declarations/card-fintype-uicc--b03550506fc59ad9df101db7.md) | 97 | `result-track:b03550506fc59ad9df101db79beb2f2c7a5332c3e1a55ac727b7d67aa2917eb2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
