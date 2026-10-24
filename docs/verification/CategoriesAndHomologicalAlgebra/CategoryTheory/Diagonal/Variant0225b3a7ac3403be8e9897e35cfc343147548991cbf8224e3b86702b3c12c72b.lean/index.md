# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Diagonal.Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "243bc397d4264f483462c84b7c2cd3174f6fc42b",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `243bc397d4264f483462c84b7c2cd3174f6fc42b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Comma.Over.Pullback` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.KernelPair` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.CommSq` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.Assoc` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [diagonalObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/declarations/diagonalobj--682657b60a9873b93190353d.md) | 35 | `declaration-track:682657b60a9873b93190353dc216f84eae2841459a19edf52c9d9a11b0ecc25e` |
| 2 | `def` | [diagonal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/declarations/diagonal--7725d29784d834b447a654f1.md) | 39 | `declaration-track:7725d29784d834b447a654f190bbb68564237a0ab324fcb658e9e48819ff53de` |
| 3 | `theorem` | [diagonal_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/declarations/diagonal-fst--fe4de4b5431aec62a8b99098.md) | 43 | `result-track:fe4de4b5431aec62a8b9909852b0bdcdc3110e19132f5222f6dc8453fa35e156` |
| 4 | `theorem` | [diagonal_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/declarations/diagonal-snd--a021f6e908e4d3d4df066455.md) | 47 | `result-track:a021f6e908e4d3d4df066455a7c3138f1a686cd57babacd1388059e8272caabe` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/declarations/instance--d1e9385194cb53311903a8ad.md) | 50 | `declaration-track:d1e9385194cb53311903a8ad6d46112fcfae30258a16533f3e2ba0dab69c3916` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/declarations/instance--c3099e7e55f96546841f01ea.md) | 53 | `declaration-track:c3099e7e55f96546841f01ea5255c90fd0610dd0e52de0947634984bf5194221` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/declarations/instance--b832b1c0cdadeeb448d35012.md) | 56 | `declaration-track:b832b1c0cdadeeb448d3501291c37b06498b73c464359514f2e8cc7247b93952` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/declarations/instance--fb2178944ea10e081ea83340.md) | 59 | `declaration-track:fb2178944ea10e081ea8334010f8613961d09c0b9515ac44be7dd22c7ccb9a06` |
| 9 | `lemma` | [isIso_diagonal_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/declarations/isiso-diagonal-iff--4e0ac34c29c874e9ca8efc80.md) | 63 | `result-track:4e0ac34c29c874e9ca8efc8001af7723cdacde1b89b47e2978a077aa0f994290` |
| 10 | `theorem` | [diagonal_isKernelPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/declarations/diagonal-iskernelpair--702c7278560d1bb975c71720.md) | 68 | `result-track:702c7278560d1bb975c71720d8aeb2fdb865d5ef615032d95060d48185e2af13` |
| 11 | `theorem` | [pullback_diagonal_map_snd_fst_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/declarations/pullback-diagonal-map-snd-fst-fst--b05fbe5bcdd29c3389f81b87.md) | 85 | `result-track:b05fbe5bcdd29c3389f81b8703dc29c4dcae4081373ccede742304cc258b9ac0` |
| 12 | `theorem` | [pullback_diagonal_map_snd_snd_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/declarations/pullback-diagonal-map-snd-snd-fst--0167df199123c138c20dc563.md) | 95 | `result-track:0167df199123c138c20dc5635fd07fb961fec86964f22b4c3d97ffacfc3cbf42` |
| 13 | `abbrev` | [pullbackDiagonalMapIso.hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/declarations/pullbackdiagonalmapiso-hom--1f390f743dc416b1faab8585.md) | 107 | `declaration-track:1f390f743dc416b1faab8585a3b830d0adf587e6ad7276ef00e68f8e53fcf32f` |
| 14 | `abbrev` | [pullbackDiagonalMapIso.inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/declarations/pullbackdiagonalmapiso-inv--6e4fd40707b60a26011c9e03.md) | 120 | `declaration-track:6e4fd40707b60a26011c9e0377f81a7d83fa6061972047067950129b07fefeb0` |
| 15 | `def` | [pullbackDiagonalMapIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/declarations/pullbackdiagonalmapiso--443ba329d2443c05af63f860.md) | 148 | `declaration-track:443ba329d2443c05af63f860d5b2e7baf1ea5458fb1394751eb8c89fe58a7c1e` |
| 16 | `theorem` | [pullbackDiagonalMapIso.hom_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/declarations/pullbackdiagonalmapiso-hom-fst--64d665445cb817d0a0eeba44.md) | 158 | `result-track:64d665445cb817d0a0eeba44176b11a94ff2e9da1699eea71ec8ed781201bb46` |
| 17 | `theorem` | [pullbackDiagonalMapIso.hom_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/declarations/pullbackdiagonalmapiso-hom-snd--764a953928d5ffedd0c35fed.md) | 165 | `result-track:764a953928d5ffedd0c35fedf4ebf2418d1f8a0912b58dc75f73dd99def5998b` |
| 18 | `theorem` | [pullbackDiagonalMapIso.inv_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/declarations/pullbackdiagonalmapiso-inv-fst--c9f6672e5407e40e25d9a34e.md) | 172 | `result-track:c9f6672e5407e40e25d9a34ec48443c79084943f73907545b5144e4cb55f0f56` |
| 19 | `theorem` | [pullbackDiagonalMapIso.inv_snd_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/declarations/pullbackdiagonalmapiso-inv-snd-fst--1c80d4268011237c817ad741.md) | 179 | `result-track:1c80d4268011237c817ad741f87e1f5da06c6b8397489344b5962b876399abce` |
| 20 | `theorem` | [pullbackDiagonalMapIso.inv_snd_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/declarations/pullbackdiagonalmapiso-inv-snd-snd--1cfa69c216a530ce18ef74a6.md) | 186 | `result-track:1cfa69c216a530ce18ef74a64795e2d72926beea689fb40ec55b6492baf7f0d0` |
| 21 | `theorem` | [pullback_fst_map_snd_isPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/declarations/pullback-fst-map-snd-ispullback--abbcca38e5d6da9b7ce5759a.md) | 192 | `result-track:abbcca38e5d6da9b7ce5759ae50817a6b45e270c566ccb821abfcd38d9e8f255` |
| 22 | `def` | [pullbackDiagonalMapIdIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/declarations/pullbackdiagonalmapidiso--e2258ec1e2da31a4b3798d27.md) | 227 | `declaration-track:e2258ec1e2da31a4b3798d2743f13fe5b14cf843e2585fb5e015945c8ad2fcbb` |
| 23 | `theorem` | [pullbackDiagonalMapIdIso_hom_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/declarations/pullbackdiagonalmapidiso-hom-fst--bc20ac326d1bc959d2524b4f.md) | 246 | `result-track:bc20ac326d1bc959d2524b4ffbd0582fe0f0974c443c6940b3a2f0f15eee02e9` |
| 24 | `theorem` | [pullbackDiagonalMapIdIso_hom_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/declarations/pullbackdiagonalmapidiso-hom-snd--582f353a31cbd6a72d9d6664.md) | 253 | `result-track:582f353a31cbd6a72d9d6664d1944605116af309d8604490ca25108218a8cea0` |
| 25 | `theorem` | [pullbackDiagonalMapIdIso_inv_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/declarations/pullbackdiagonalmapidiso-inv-fst--78db7edf884c24948b4ce6dc.md) | 260 | `result-track:78db7edf884c24948b4ce6dc4b2c820790e404f2039c17a091d93fd9f1b96138` |
| 26 | `theorem` | [pullbackDiagonalMapIdIso_inv_snd_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/declarations/pullbackdiagonalmapidiso-inv-snd-fst--6d33b7da959e1c87dd54eb7e.md) | 267 | `result-track:6d33b7da959e1c87dd54eb7ecd96dc3259148f991dc0da4ae32107c277567b2e` |
| 27 | `theorem` | [pullbackDiagonalMapIdIso_inv_snd_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/declarations/pullbackdiagonalmapidiso-inv-snd-snd--809793692041893048efac98.md) | 274 | `result-track:809793692041893048efac980b61b1d183d7f7da3815220dcfac8a82b92bfd13` |
| 28 | `theorem` | [pullback.diagonal_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/declarations/pullback-diagonal-comp--d273bd2f7e8e3cfc1515cb26.md) | 280 | `result-track:d273bd2f7e8e3cfc1515cb2693162b0cc5d70571d6748cc5392b6e511947ca51` |
| 29 | `lemma` | [pullback.comp_diagonal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/declarations/pullback-comp-diagonal--518df37e7e2da10d0f50a821.md) | 285 | `result-track:518df37e7e2da10d0f50a82152609a983955588ad4bf8541ced01b48e5b13a8d` |
| 30 | `theorem` | [pullback_map_diagonal_isPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/declarations/pullback-map-diagonal-ispullback--ba38f6ae989a9f613d0f0449.md) | 290 | `result-track:ba38f6ae989a9f613d0f04490a1cac7d83529af1774dbf44234c4b41df45cff0` |
| 31 | `def` | [diagonalObjPullbackFstIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/declarations/diagonalobjpullbackfstiso--ecfbb94c0ca495b20efef065.md) | 302 | `declaration-track:ecfbb94c0ca495b20efef06518ff19588c300250219481a20db46fe99b69125d` |
| 32 | `theorem` | [diagonalObjPullbackFstIso_hom_fst_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/declarations/diagonalobjpullbackfstiso-hom-fst-fst--4a18cea51b2594ba43e0bbdc.md) | 310 | `result-track:4a18cea51b2594ba43e0bbdce444f89e044377d5043b720ce1606f908d3cfff9` |
| 33 | `theorem` | [diagonalObjPullbackFstIso_hom_fst_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/declarations/diagonalobjpullbackfstiso-hom-fst-snd--0fae1d6f4a968aefc9f102e1.md) | 317 | `result-track:0fae1d6f4a968aefc9f102e1b674380d2dfe60d8e48dae62207eccd05735522e` |
| 34 | `theorem` | [diagonalObjPullbackFstIso_hom_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/declarations/diagonalobjpullbackfstiso-hom-snd--85efc2e6092bee557171233b.md) | 324 | `result-track:85efc2e6092bee557171233b44ddf6ab9193f94b4164be6f422dc827373e6fd4` |
| 35 | `theorem` | [diagonalObjPullbackFstIso_inv_fst_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/declarations/diagonalobjpullbackfstiso-inv-fst-fst--7ed8198ea2c394287fc154d4.md) | 331 | `result-track:7ed8198ea2c394287fc154d4512b9007af454e4352221452c5fd3dae5b259afd` |
| 36 | `theorem` | [diagonalObjPullbackFstIso_inv_fst_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/declarations/diagonalobjpullbackfstiso-inv-fst-snd--d208b1bf8ebe95ea983d3e16.md) | 338 | `result-track:d208b1bf8ebe95ea983d3e16b8a539d54dd4b50c6159cf4c216753b8fad22022` |
| 37 | `theorem` | [diagonalObjPullbackFstIso_inv_snd_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/declarations/diagonalobjpullbackfstiso-inv-snd-fst--513e1cba5cfee073519f4a3c.md) | 345 | `result-track:513e1cba5cfee073519f4a3cffe37362e87504e92453396ea0272e1be6d0c214` |
| 38 | `theorem` | [diagonalObjPullbackFstIso_inv_snd_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/declarations/diagonalobjpullbackfstiso-inv-snd-snd--690e21b4518bac55d6283751.md) | 352 | `result-track:690e21b4518bac55d6283751fd5ff1ddc368c9d9a5c51cbd881d77e067ac178d` |
| 39 | `theorem` | [diagonal_pullback_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/declarations/diagonal-pullback-fst--5ccf7f7eceb595e56071becc.md) | 358 | `result-track:5ccf7f7eceb595e56071becc22d282490fd3d76b0cddb24d12755fb23faac153` |
| 40 | `lemma` | [pullback_lift_diagonal_isPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/declarations/pullback-lift-diagonal-ispullback--0e9590e658fa54871eae3ba7.md) | 367 | `result-track:0e9590e658fa54871eae3ba73ee1a6e4c7c0df30f8c16689ea95e3d5c592643a` |
| 41 | `def` | [pullbackFstFstIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/declarations/pullbackfstfstiso--41637af4a3c4cc490878a435.md) | 407 | `declaration-track:41637af4a3c4cc490878a435881cb3b4f4fa17bfbc4cd3db37b1016f711967da` |
| 42 | `theorem` | [pullback_map_eq_pullbackFstFstIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/declarations/pullback-map-eq-pullbackfstfstiso-inv--f682ef1a4a5ef3b37eb73fc5.md) | 446 | `result-track:f682ef1a4a5ef3b37eb73fc5cb62dbfdeb4d6bf0e6e69142036f21d31ffd355e` |
| 43 | `theorem` | [pullback_lift_map_isPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/declarations/pullback-lift-map-ispullback--4b3ae924d8e8c3c4964edd66.md) | 453 | `result-track:4b3ae924d8e8c3c4964edd6618a96a6b72338012f9e0aa93cfaedf50b10a2c4a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
