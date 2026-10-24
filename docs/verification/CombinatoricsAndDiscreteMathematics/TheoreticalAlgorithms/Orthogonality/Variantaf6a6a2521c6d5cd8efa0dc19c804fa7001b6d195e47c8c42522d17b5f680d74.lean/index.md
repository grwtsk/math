# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Orthogonality.Variantaf6a6a2521c6d5cd8efa0dc19c804fa7001b6d195e47c8c42522d17b5f680d74

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0807a6172d565ade335ad0307ef377cdfbb231e",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orthogonality/Variantaf6a6a2521c6d5cd8efa0dc19c804fa7001b6d195e47c8c42522d17b5f680d74.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orthogonality/Variantaf6a6a2521c6d5cd8efa0dc19c804fa7001b6d195e47c8c42522d17b5f680d74.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orthogonality/Variantaf6a6a2521c6d5cd8efa0dc19c804fa7001b6d195e47c8c42522d17b5f680d74.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0807a6172d565ade335ad0307ef377cdfbb231e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orthogonality/Variantaf6a6a2521c6d5cd8efa0dc19c804fa7001b6d195e47c8c42522d17b5f680d74.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orthogonality/Variantaf6a6a2521c6d5cd8efa0dc19c804fa7001b6d195e47c8c42522d17b5f680d74.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.WalshFourier` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [addInt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orthogonality/Variantaf6a6a2521c6d5cd8efa0dc19c804fa7001b6d195e47c8c42522d17b5f680d74.lean/declarations/addint--0e8d008e38982ecd80fdb54d.md) | 15 | `declaration-track:0e8d008e38982ecd80fdb54d57a9cf0a54f78d35bb1f350a7331e5d80a2c67f7` |
| 2 | `theorem` | [sumInt_foldl_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orthogonality/Variantaf6a6a2521c6d5cd8efa0dc19c804fa7001b6d195e47c8c42522d17b5f680d74.lean/declarations/sumint-foldl-eq--9b985bd428d067655482a6f0.md) | 18 | `result-track:9b985bd428d067655482a6f0bce1adeb21b4a2546ea48d1dbb1e28bb0e89bf54` |
| 3 | `theorem` | [sumInt_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orthogonality/Variantaf6a6a2521c6d5cd8efa0dc19c804fa7001b6d195e47c8c42522d17b5f680d74.lean/declarations/sumint-cons--eb3e932022515e81fc3476b7.md) | 30 | `result-track:eb3e932022515e81fc3476b783afa0683433ccb62f1fd3c6fdd90256e3027302` |
| 4 | `theorem` | [sumInt_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orthogonality/Variantaf6a6a2521c6d5cd8efa0dc19c804fa7001b6d195e47c8c42522d17b5f680d74.lean/declarations/sumint-append--f9dc6fa201780ee3a2879dc1.md) | 38 | `result-track:f9dc6fa201780ee3a2879dc199070d160263553df3b678ab46f1f00e9a368ec2` |
| 5 | `theorem` | [sumInt_map_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orthogonality/Variantaf6a6a2521c6d5cd8efa0dc19c804fa7001b6d195e47c8c42522d17b5f680d74.lean/declarations/sumint-map-neg--ac405366fbee00616dd81d97.md) | 48 | `result-track:ac405366fbee00616dd81d97ed27b1c6d2aeba56cee0c96363ee8c1fa8fd61ae` |
| 6 | `theorem` | [sumInt_map_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orthogonality/Variantaf6a6a2521c6d5cd8efa0dc19c804fa7001b6d195e47c8c42522d17b5f680d74.lean/declarations/sumint-map-add--790e6bdc875009e2623143dd.md) | 59 | `result-track:790e6bdc875009e2623143ddbe58abb78c250325abdb58f2907ee12b62b92f2a` |
| 7 | `theorem` | [sumInt_map_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orthogonality/Variantaf6a6a2521c6d5cd8efa0dc19c804fa7001b6d195e47c8c42522d17b5f680d74.lean/declarations/sumint-map-zero--0ca954978ef01fa89133f2c5.md) | 70 | `result-track:0ca954978ef01fa89133f2c5ff0b39c9b2511d3e84cf5fa7789a3c7463ede712` |
| 8 | `theorem` | [sumInt_map_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orthogonality/Variantaf6a6a2521c6d5cd8efa0dc19c804fa7001b6d195e47c8c42522d17b5f680d74.lean/declarations/sumint-map-one--6c6d7514919f15ed1dc3a4ca.md) | 78 | `result-track:6c6d7514919f15ed1dc3a4ca213a41c4470b4316cd70f2f0e7499f488daed5e8` |
| 9 | `theorem` | [sumInt_flatMap_pair](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orthogonality/Variantaf6a6a2521c6d5cd8efa0dc19c804fa7001b6d195e47c8c42522d17b5f680d74.lean/declarations/sumint-flatmap-pair--7f2c7fa2d4be50e86684d791.md) | 87 | `result-track:7f2c7fa2d4be50e86684d791ebf9eee7067d422ae9e444114362349fb3232842` |
| 10 | `theorem` | [sumInt_map_congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orthogonality/Variantaf6a6a2521c6d5cd8efa0dc19c804fa7001b6d195e47c8c42522d17b5f680d74.lean/declarations/sumint-map-congr--8bda3b8736f90814b445c405.md) | 98 | `result-track:8bda3b8736f90814b445c405cc0fb7d722d618a03f7015b1a8f63aa1945b123c` |
| 11 | `def` | [characterProductSum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orthogonality/Variantaf6a6a2521c6d5cd8efa0dc19c804fa7001b6d195e47c8c42522d17b5f680d74.lean/declarations/characterproductsum--7b0a89ee376b9b166a883d59.md) | 113 | `declaration-track:7b0a89ee376b9b166a883d59173b42ed1f3936ea595c685946ae52d58408f404` |
| 12 | `theorem` | [characterProductSum_eq_innerProduct](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orthogonality/Variantaf6a6a2521c6d5cd8efa0dc19c804fa7001b6d195e47c8c42522d17b5f680d74.lean/declarations/characterproductsum-eq-innerproduct--99e6be0e81f57fb848a4f58d.md) | 120 | `result-track:99e6be0e81f57fb848a4f58d6441a09f883c261239e39535ae737abab8b637bf` |
| 13 | `theorem` | [character_extend](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orthogonality/Variantaf6a6a2521c6d5cd8efa0dc19c804fa7001b6d195e47c8c42522d17b5f680d74.lean/declarations/character-extend--93085b155cbcb8746e267906.md) | 127 | `result-track:93085b155cbcb8746e267906ea06984f71ea4f40c76903815ef27dbc32b11e97` |
| 14 | `theorem` | [character_eq_neg_one_or_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orthogonality/Variantaf6a6a2521c6d5cd8efa0dc19c804fa7001b6d195e47c8c42522d17b5f680d74.lean/declarations/character-eq-neg-one-or-one--6f047bf61c3b11b3a2780fdd.md) | 150 | `result-track:6f047bf61c3b11b3a2780fdde1aa9ebcdc6b1cc74f154d70e247fff50c9daa77` |
| 15 | `theorem` | [character_mul_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orthogonality/Variantaf6a6a2521c6d5cd8efa0dc19c804fa7001b6d195e47c8c42522d17b5f680d74.lean/declarations/character-mul-self--6ee40ec127ddbe294c43a528.md) | 181 | `result-track:6ee40ec127ddbe294c43a52859a1c4a6e7a20bc9416022b8ae839b431f6328a8` |
| 16 | `theorem` | [neg_mul_neg_eq_mul_of_character](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orthogonality/Variantaf6a6a2521c6d5cd8efa0dc19c804fa7001b6d195e47c8c42522d17b5f680d74.lean/declarations/neg-mul-neg-eq-mul-of-character--c4a5968f5bbd2925e1c645b1.md) | 187 | `result-track:c4a5968f5bbd2925e1c645b1afec6e0df0fab65e9c73ff7150c96e2debdb8d56` |
| 17 | `theorem` | [mul_neg_eq_neg_mul_of_character](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orthogonality/Variantaf6a6a2521c6d5cd8efa0dc19c804fa7001b6d195e47c8c42522d17b5f680d74.lean/declarations/mul-neg-eq-neg-mul-of-character--a6ed2543b2698ab16f033d8f.md) | 196 | `result-track:a6ed2543b2698ab16f033d8fc0fc9e1010f151c9a7b0902789896d3259884ed6` |
| 18 | `theorem` | [neg_mul_eq_neg_mul_of_character](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orthogonality/Variantaf6a6a2521c6d5cd8efa0dc19c804fa7001b6d195e47c8c42522d17b5f680d74.lean/declarations/neg-mul-eq-neg-mul-of-character--b93568167c21ba6fb1ac547e.md) | 205 | `result-track:b93568167c21ba6fb1ac547edb1321651828623fc560e95a464e3b1a07978d14` |
| 19 | `theorem` | [characterProductSum_eq_zero_of_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orthogonality/Variantaf6a6a2521c6d5cd8efa0dc19c804fa7001b6d195e47c8c42522d17b5f680d74.lean/declarations/characterproductsum-eq-zero-of-ne--5bce7c360c809c7f4cc595a8.md) | 214 | `result-track:5bce7c360c809c7f4cc595a881cc43dc13c27cd6a84ada590df98980fa0f2432` |
| 20 | `theorem` | [characterProductSum_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orthogonality/Variantaf6a6a2521c6d5cd8efa0dc19c804fa7001b6d195e47c8c42522d17b5f680d74.lean/declarations/characterproductsum-self--18f341824fb6b35622afa6e2.md) | 355 | `result-track:18f341824fb6b35622afa6e2a74ce998ffb74f07d8bfa29d37e5267fb87f4be1` |
| 21 | `theorem` | [characterProductSum_eq_if](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orthogonality/Variantaf6a6a2521c6d5cd8efa0dc19c804fa7001b6d195e47c8c42522d17b5f680d74.lean/declarations/characterproductsum-eq-if--8040c20b3351290a68354a7b.md) | 375 | `result-track:8040c20b3351290a68354a7bc756699ab95fa207c702a2f72d284bd97b46e950` |
| 22 | `theorem` | [character_innerProduct_eq_if](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orthogonality/Variantaf6a6a2521c6d5cd8efa0dc19c804fa7001b6d195e47c8c42522d17b5f680d74.lean/declarations/character-innerproduct-eq-if--26a79bd5f1d4f3e8f88c3c38.md) | 391 | `result-track:26a79bd5f1d4f3e8f88c3c38700cc71633a5831b3280bcd05524ffea69883adb` |
| 23 | `theorem` | [character_orthogonal_of_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orthogonality/Variantaf6a6a2521c6d5cd8efa0dc19c804fa7001b6d195e47c8c42522d17b5f680d74.lean/declarations/character-orthogonal-of-ne--d24a48596cb78b69d721cbe4.md) | 402 | `result-track:d24a48596cb78b69d721cbe4e4837e41a3dd3c9978cb70ab7f9bd64577c3dc54` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
