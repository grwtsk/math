# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Over.Variant1da5084efb7bd528e0326856fed5802d83bcde7e45b37b00324f266a3ef09688

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fffc525411e6853a08d0216783bda908223f1ed3",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant1da5084efb7bd528e0326856fed5802d83bcde7e45b37b00324f266a3ef09688.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant1da5084efb7bd528e0326856fed5802d83bcde7e45b37b00324f266a3ef09688.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant1da5084efb7bd528e0326856fed5802d83bcde7e45b37b00324f266a3ef09688.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fffc525411e6853a08d0216783bda908223f1ed3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant1da5084efb7bd528e0326856fed5802d83bcde7e45b37b00324f266a3ef09688.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant1da5084efb7bd528e0326856fed5802d83bcde7e45b37b00324f266a3ef09688.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Comma.Over.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Comma` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.ConeCategory` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Creates` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [hasColimit_of_hasColimit_comp_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant1da5084efb7bd528e0326856fed5802d83bcde7e45b37b00324f266a3ef09688.lean/declarations/hascolimit-of-hascolimit-comp-forget--a101b4559eb3835ff0db05e2.md) | 37 | `declaration-track:a101b4559eb3835ff0db05e25b3f6d8b71973e1f60881e4c773c13f4b428644b` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant1da5084efb7bd528e0326856fed5802d83bcde7e45b37b00324f266a3ef09688.lean/declarations/instance--67afb03a5cbc54df676584c6.md) | 41 | `declaration-track:67afb03a5cbc54df676584c6d27fcfa0f039dd577621fc78cc0775556acec050` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant1da5084efb7bd528e0326856fed5802d83bcde7e45b37b00324f266a3ef09688.lean/declarations/instance--673de129b5f4035c7105d837.md) | 43 | `declaration-track:673de129b5f4035c7105d8374f312dfae6e4a267cc83d155af00c041ebeeaaba` |
| 4 | `instance` | [createsColimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant1da5084efb7bd528e0326856fed5802d83bcde7e45b37b00324f266a3ef09688.lean/declarations/createscolimitsofsize--068955ac2d5a53c5434e6f54.md) | 46 | `declaration-track:068955ac2d5a53c5434e6f54a72031f1987ae081500f755172a8fb32b0ab15e4` |
| 5 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant1da5084efb7bd528e0326856fed5802d83bcde7e45b37b00324f266a3ef09688.lean/declarations/example--fd74f340fdc516b5447a6900.md) | 50 | `declaration-track:fd74f340fdc516b5447a690058db3ce6c6a504c6e6a95347632b94553f703d0f` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant1da5084efb7bd528e0326856fed5802d83bcde7e45b37b00324f266a3ef09688.lean/declarations/example--f63a128c0c13b86d01f5dd29.md) | 53 | `declaration-track:f63a128c0c13b86d01f5dd2986a9d9db5b2c09ebc693ba9d563b3b122ddbccee` |
| 7 | `theorem` | [epi_left_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant1da5084efb7bd528e0326856fed5802d83bcde7e45b37b00324f266a3ef09688.lean/declarations/epi-left-of-epi--3a05a8a67e0684f6bbf3f516.md) | 56 | `result-track:3a05a8a67e0684f6bbf3f516222cb9dd9de29151ca778f2537f9a9e7c2bd6029` |
| 8 | `theorem` | [epi_iff_epi_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant1da5084efb7bd528e0326856fed5802d83bcde7e45b37b00324f266a3ef09688.lean/declarations/epi-iff-epi-left--95f5a5e572192620956bb1a7.md) | 59 | `result-track:95f5a5e572192620956bb1a79ed9a768e71f931970b77f5933e9451a81fcb175` |
| 9 | `instance` | [createsColimitsOfSizeMapCompForget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant1da5084efb7bd528e0326856fed5802d83bcde7e45b37b00324f266a3ef09688.lean/declarations/createscolimitsofsizemapcompforget--104f786ad0faca3ac3f05f17.md) | 62 | `declaration-track:104f786ad0faca3ac3f05f17618a67e2c7659684a623c6df52e3ae913a830daa` |
| 10 | `instance` | [preservesColimitsOfSize_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant1da5084efb7bd528e0326856fed5802d83bcde7e45b37b00324f266a3ef09688.lean/declarations/preservescolimitsofsize-map--4a780c0517ffe01664dd5670.md) | 66 | `declaration-track:4a780c0517ffe01664dd5670a8fed8652e75e44039ea76d0c5d6ba43d6ba6238` |
| 11 | `def` | [isColimitToOver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant1da5084efb7bd528e0326856fed5802d83bcde7e45b37b00324f266a3ef09688.lean/declarations/iscolimittoover--fc92bad377ce1b4f4eb46d3c.md) | 71 | `declaration-track:fc92bad377ce1b4f4eb46d3cc3a3fd9385e1282d2af75138fdb03a68fec28a53` |
| 12 | `def` | [_root_.CategoryTheory.Limits.colimit.isColimitToOver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant1da5084efb7bd528e0326856fed5802d83bcde7e45b37b00324f266a3ef09688.lean/declarations/root-categorytheory-limits-colimit-iscolimittoover--90e89014c7210a3251db4ca6.md) | 76 | `declaration-track:90e89014c7210a3251db4ca6a7b6a089ab69cf0471d10feaf9fbe8249ed697ee` |
| 13 | `instance` | [hasLimit_of_hasLimit_comp_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant1da5084efb7bd528e0326856fed5802d83bcde7e45b37b00324f266a3ef09688.lean/declarations/haslimit-of-haslimit-comp-forget--f1deddb09d46d4b6126ffc33.md) | 84 | `declaration-track:f1deddb09d46d4b6126ffc3333b2186e2bc121170128b445d248c7b9c40011bf` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant1da5084efb7bd528e0326856fed5802d83bcde7e45b37b00324f266a3ef09688.lean/declarations/instance--80ef8be4c1f3b7d80db1ece7.md) | 88 | `declaration-track:80ef8be4c1f3b7d80db1ece74f472802098857b7eed4d503eb1019f22185e48a` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant1da5084efb7bd528e0326856fed5802d83bcde7e45b37b00324f266a3ef09688.lean/declarations/instance--f9f51b2c6de9971575fa2ca3.md) | 90 | `declaration-track:f9f51b2c6de9971575fa2ca306c861f4e09221457d150203865d39ef6ded2570` |
| 16 | `theorem` | [mono_right_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant1da5084efb7bd528e0326856fed5802d83bcde7e45b37b00324f266a3ef09688.lean/declarations/mono-right-of-mono--0535ab671b315bb75139eec7.md) | 93 | `result-track:0535ab671b315bb75139eec7c9272fc8444f06dde81ae10a93437013e249dff6` |
| 17 | `theorem` | [mono_iff_mono_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant1da5084efb7bd528e0326856fed5802d83bcde7e45b37b00324f266a3ef09688.lean/declarations/mono-iff-mono-right--9ed1b812a4e2cf31b71bdf1e.md) | 96 | `result-track:9ed1b812a4e2cf31b71bdf1e8b033330174adda663f6b5fd7555e6d20f9b6818` |
| 18 | `instance` | [createsLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant1da5084efb7bd528e0326856fed5802d83bcde7e45b37b00324f266a3ef09688.lean/declarations/createslimitsofsize--556bcbfb0732e31fab1bcc89.md) | 99 | `declaration-track:556bcbfb0732e31fab1bcc89ad16a4b908d87b6ef217b6a3b205a42b974cb1b6` |
| 19 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant1da5084efb7bd528e0326856fed5802d83bcde7e45b37b00324f266a3ef09688.lean/declarations/example--1e21e97bda67f795986d1608.md) | 103 | `declaration-track:1e21e97bda67f795986d1608f61b889cef9dfc040ea777740ac6e64c69fe2a9a` |
| 20 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant1da5084efb7bd528e0326856fed5802d83bcde7e45b37b00324f266a3ef09688.lean/declarations/example--b0ab4d8350197ae8d3f41dce.md) | 106 | `declaration-track:b0ab4d8350197ae8d3f41dcea17701232de93d3e13f19949d5d03f6cd3191206` |
| 21 | `instance` | [createLimitsOfSizeMapCompForget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant1da5084efb7bd528e0326856fed5802d83bcde7e45b37b00324f266a3ef09688.lean/declarations/createlimitsofsizemapcompforget--cf108022739335cc37908075.md) | 109 | `declaration-track:cf108022739335cc3790807515c64e7286b303b69f93b62835446ca4a6c34b28` |
| 22 | `instance` | [preservesLimitsOfSize_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant1da5084efb7bd528e0326856fed5802d83bcde7e45b37b00324f266a3ef09688.lean/declarations/preserveslimitsofsize-map--7dc0892d364c4fd439ed3212.md) | 113 | `declaration-track:7dc0892d364c4fd439ed32126560f0f9bba61774bac14c4cbf9d7f6904a7a694` |
| 23 | `def` | [isLimitToUnder](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant1da5084efb7bd528e0326856fed5802d83bcde7e45b37b00324f266a3ef09688.lean/declarations/islimittounder--0d20947fc1cfcf24b9084e67.md) | 118 | `declaration-track:0d20947fc1cfcf24b9084e67b0a28ae1f35f8638ad51971fd1d66d2effee9233` |
| 24 | `def` | [_root_.CategoryTheory.Limits.limit.isLimitToOver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant1da5084efb7bd528e0326856fed5802d83bcde7e45b37b00324f266a3ef09688.lean/declarations/root-categorytheory-limits-limit-islimittoover--73119bb4baf9ec78b3ab8039.md) | 123 | `declaration-track:73119bb4baf9ec78b3ab803919b6135a660cbb98170875fb64da8104459cef58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
