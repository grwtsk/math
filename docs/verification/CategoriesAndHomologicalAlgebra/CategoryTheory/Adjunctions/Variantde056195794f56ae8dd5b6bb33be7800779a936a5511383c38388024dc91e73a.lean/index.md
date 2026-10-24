# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Adjunctions.Variantde056195794f56ae8dd5b6bb33be7800779a936a5511383c38388024dc91e73a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a4b6c30907875e8ba304259b245c2ee60f02ff0",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantde056195794f56ae8dd5b6bb33be7800779a936a5511383c38388024dc91e73a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantde056195794f56ae8dd5b6bb33be7800779a936a5511383c38388024dc91e73a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantde056195794f56ae8dd5b6bb33be7800779a936a5511383c38388024dc91e73a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a4b6c30907875e8ba304259b245c2ee60f02ff0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantde056195794f56ae8dd5b6bb33be7800779a936a5511383c38388024dc91e73a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantde056195794f56ae8dd5b6bb33be7800779a936a5511383c38388024dc91e73a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Grp.Preadditive` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.FreeAbelianGroup` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Shapes` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [free](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantde056195794f56ae8dd5b6bb33be7800779a936a5511383c38388024dc91e73a.lean/declarations/free--bf28a07b67b6dc762a2dc0ea.md) | 45 | `declaration-track:bf28a07b67b6dc762a2dc0ea75ddca89ac11f73429c6959e78d70948defdd7c0` |
| 2 | `theorem` | [free_obj_coe](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantde056195794f56ae8dd5b6bb33be7800779a936a5511383c38388024dc91e73a.lean/declarations/free-obj-coe--e1f958b99d8774de4b4e4cf5.md) | 52 | `result-track:e1f958b99d8774de4b4e4cf576f3f9d9f022efb0c2b5793f8a9e9bf1ae67a1d9` |
| 3 | `theorem` | [free_map_coe](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantde056195794f56ae8dd5b6bb33be7800779a936a5511383c38388024dc91e73a.lean/declarations/free-map-coe--bc0f568c98a58595f4195cb1.md) | 58 | `result-track:bc0f568c98a58595f4195cb1322575430a179d6b06715d2b666f6fb6268277b7` |
| 4 | `def` | [adj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantde056195794f56ae8dd5b6bb33be7800779a936a5511383c38388024dc91e73a.lean/declarations/adj--7326c9764fbc0cb345e5c2eb.md) | 64 | `declaration-track:7326c9764fbc0cb345e5c2eb7d8bf19f3ec9898bb65a963812f82d90b3863029` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantde056195794f56ae8dd5b6bb33be7800779a936a5511383c38388024dc91e73a.lean/declarations/instance--0702ca5fb0a222759c5f8c04.md) | 74 | `declaration-track:0702ca5fb0a222759c5f8c04864bbdcfc02b9c60a8e7036fdc10d3131a1243c1` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantde056195794f56ae8dd5b6bb33be7800779a936a5511383c38388024dc91e73a.lean/declarations/instance--391e41b2153d6c28917bb9d0.md) | 77 | `declaration-track:391e41b2153d6c28917bb9d0164278ae9540812e3e1711eba3f56cf7abe0364b` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantde056195794f56ae8dd5b6bb33be7800779a936a5511383c38388024dc91e73a.lean/declarations/instance--1546fe58729f6d35c4009d58.md) | 80 | `declaration-track:1546fe58729f6d35c4009d5899204fd04ec58da8b81b1782d5dd5648bb3b34f3` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantde056195794f56ae8dd5b6bb33be7800779a936a5511383c38388024dc91e73a.lean/declarations/example--2e5cfa1b77b39da5a35d2ee3.md) | 88 | `declaration-track:2e5cfa1b77b39da5a35d2ee3c03bb451ed2314574fe9581c89f606d2bb6b9594` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantde056195794f56ae8dd5b6bb33be7800779a936a5511383c38388024dc91e73a.lean/declarations/instance--bbf915d989062b71a3dea125.md) | 91 | `declaration-track:bbf915d989062b71a3dea1252dd7053557381bd8235ef785a6fc13f7a37e2d85` |
| 10 | `def` | [free](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantde056195794f56ae8dd5b6bb33be7800779a936a5511383c38388024dc91e73a.lean/declarations/free--7089d41f4c7a3c9db8caa0a0.md) | 110 | `declaration-track:7089d41f4c7a3c9db8caa0a04f99c4cd0792e8b2b417b2fecee381440b6b1357` |
| 11 | `def` | [adj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantde056195794f56ae8dd5b6bb33be7800779a936a5511383c38388024dc91e73a.lean/declarations/adj--a6e3c0b6326d88dfc913b0e4.md) | 116 | `declaration-track:a6e3c0b6326d88dfc913b0e42278aa128f8d96d05ee6952c8b57339813686843` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantde056195794f56ae8dd5b6bb33be7800779a936a5511383c38388024dc91e73a.lean/declarations/instance--741d333d008743416961a40a.md) | 127 | `declaration-track:741d333d008743416961a40aa556b23f5bdee49648110a1758a62aea6ba17ef2` |
| 13 | `def` | [abelianize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantde056195794f56ae8dd5b6bb33be7800779a936a5511383c38388024dc91e73a.lean/declarations/abelianize--f1757e98c1bd28b8bd507778.md) | 134 | `declaration-track:f1757e98c1bd28b8bd5077786990605210b5f57fefbf7d271ebcfeaf832a4014` |
| 14 | `def` | [abelianizeAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantde056195794f56ae8dd5b6bb33be7800779a936a5511383c38388024dc91e73a.lean/declarations/abelianizeadj--5e5e8508bffb87e3df11a4c8.md) | 149 | `declaration-track:5e5e8508bffb87e3df11a4c813c33790de9816644e216fab75d69ad249585dbe` |
| 15 | `def` | [MonCat.units](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantde056195794f56ae8dd5b6bb33be7800779a936a5511383c38388024dc91e73a.lean/declarations/moncat-units--83b9b6347f7a7d26f1b2a718.md) | 170 | `declaration-track:83b9b6347f7a7d26f1b2a718eee4af7fceeb21369c83a3938d559d598668b3a9` |
| 16 | `def` | [Grp.forget₂MonAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantde056195794f56ae8dd5b6bb33be7800779a936a5511383c38388024dc91e73a.lean/declarations/grp-forget-monadj--cdf788baf9906d41ca933696.md) | 177 | `declaration-track:cdf788baf9906d41ca933696f2605ea9bf98f2eecb5c7bf3d1727b14ef6c91e6` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantde056195794f56ae8dd5b6bb33be7800779a936a5511383c38388024dc91e73a.lean/declarations/instance--be4e1538811a24c12894f04c.md) | 190 | `declaration-track:be4e1538811a24c12894f04ce841593d8042adccd3b41bdd4a641a6179de564e` |
| 18 | `def` | [CommMonCat.units](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantde056195794f56ae8dd5b6bb33be7800779a936a5511383c38388024dc91e73a.lean/declarations/commmoncat-units--b1e285613898f2d7054ec494.md) | 195 | `declaration-track:b1e285613898f2d7054ec494f3e5d013fd628f1fe98b492016a5535b8ddd0752` |
| 19 | `def` | [CommGrp.forget₂CommMonAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantde056195794f56ae8dd5b6bb33be7800779a936a5511383c38388024dc91e73a.lean/declarations/commgrp-forget-commmonadj--f2150ac93f4f14d84f3e6066.md) | 202 | `declaration-track:f2150ac93f4f14d84f3e606649f21254ce8b4799bd2dfc6c58b33f3edcd2398f` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantde056195794f56ae8dd5b6bb33be7800779a936a5511383c38388024dc91e73a.lean/declarations/instance--6d62d38eae7bb459f49e6f54.md) | 220 | `declaration-track:6d62d38eae7bb459f49e6f542125ee75683c424c12aaf98b729d503286f33717` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
