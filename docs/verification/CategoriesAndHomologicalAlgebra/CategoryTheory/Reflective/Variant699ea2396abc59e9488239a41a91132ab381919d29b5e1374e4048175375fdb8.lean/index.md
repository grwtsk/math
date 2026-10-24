# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Reflective.Variant699ea2396abc59e9488239a41a91132ab381919d29b5e1374e4048175375fdb8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "682687af8c2cc6a1106ea8203767c160eea4a10e",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant699ea2396abc59e9488239a41a91132ab381919d29b5e1374e4048175375fdb8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant699ea2396abc59e9488239a41a91132ab381919d29b5e1374e4048175375fdb8.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant699ea2396abc59e9488239a41a91132ab381919d29b5e1374e4048175375fdb8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `682687af8c2cc6a1106ea8203767c160eea4a10e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant699ea2396abc59e9488239a41a91132ab381919d29b5e1374e4048175375fdb8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant699ea2396abc59e9488239a41a91132ab381919d29b5e1374e4048175375fdb8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.FullyFaithful` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.ReflectsIso` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.EpiMono` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Reflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant699ea2396abc59e9488239a41a91132ab381919d29b5e1374e4048175375fdb8.lean/declarations/reflective--e47058137f5656416d4374f0.md) | 37 | `declaration-track:e47058137f5656416d4374f0a01a5dc67121a87cfc561d74f891c0ec98f977c0` |
| 2 | `theorem` | [unit_obj_eq_map_unit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant699ea2396abc59e9488239a41a91132ab381919d29b5e1374e4048175375fdb8.lean/declarations/unit-obj-eq-map-unit--4a2e6799a4bc67a9800df746.md) | 45 | `result-track:4a2e6799a4bc67a9800df746a41c5db724e41a7e6f5b814e580df16dd52720ae` |
| 3 | `instance` | [isIso_unit_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant699ea2396abc59e9488239a41a91132ab381919d29b5e1374e4048175375fdb8.lean/declarations/isiso-unit-obj--44ac19292308b94c066c93b0.md) | 59 | `declaration-track:44ac19292308b94c066c93b066c80d7ca913d61eeac469b4c67b9aeaafaa1789` |
| 4 | `theorem` | [Functor.essImage.unit_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant699ea2396abc59e9488239a41a91132ab381919d29b5e1374e4048175375fdb8.lean/declarations/functor-essimage-unit-isiso--b3af2535d2b8719961d95ca6.md) | 73 | `result-track:b3af2535d2b8719961d95ca689eae0c478f123e97f02c767a37fe1357dec374c` |
| 5 | `theorem` | [mem_essImage_of_unit_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant699ea2396abc59e9488239a41a91132ab381919d29b5e1374e4048175375fdb8.lean/declarations/mem-essimage-of-unit-isiso--8280c7686b69d0b1d3674a4d.md) | 85 | `result-track:8280c7686b69d0b1d3674a4dea43d86bc8b5d420bc60f0c179566e3e726b7958` |
| 6 | `theorem` | [mem_essImage_of_unit_isSplitMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant699ea2396abc59e9488239a41a91132ab381919d29b5e1374e4048175375fdb8.lean/declarations/mem-essimage-of-unit-issplitmono--1505928ec90ed0d9c2ac71b8.md) | 91 | `result-track:1505928ec90ed0d9c2ac71b8b68adaa1fcc65e8c75763c83ce228f8e4e064a36` |
| 7 | `instance` | [Reflective.comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant699ea2396abc59e9488239a41a91132ab381919d29b5e1374e4048175375fdb8.lean/declarations/reflective-comp--f68606dccdc536729473721b.md) | 106 | `declaration-track:f68606dccdc536729473721bdab3161964efdf32d0ca4039dc1084d33bd42848` |
| 8 | `def` | [unitCompPartialBijectiveAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant699ea2396abc59e9488239a41a91132ab381919d29b5e1374e4048175375fdb8.lean/declarations/unitcomppartialbijectiveaux--15c80aba89e1d630757c62a6.md) | 111 | `declaration-track:15c80aba89e1d630757c62a615547ab85963521177d36faea038991622933740` |
| 9 | `theorem` | [unitCompPartialBijectiveAux_symm_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant699ea2396abc59e9488239a41a91132ab381919d29b5e1374e4048175375fdb8.lean/declarations/unitcomppartialbijectiveaux-symm-apply--690a27feeff8176f7984db80.md) | 117 | `result-track:690a27feeff8176f7984db80f5cdf350c290da9915368c902387a7b5f49254e1` |
| 10 | `def` | [unitCompPartialBijective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant699ea2396abc59e9488239a41a91132ab381919d29b5e1374e4048175375fdb8.lean/declarations/unitcomppartialbijective--4ab2c8b9339cd0a7fc3247bd.md) | 134 | `declaration-track:4ab2c8b9339cd0a7fc3247bdbad2aacb34b08d9d1674daffb0116470f5e04a51` |
| 11 | `theorem` | [unitCompPartialBijective_symm_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant699ea2396abc59e9488239a41a91132ab381919d29b5e1374e4048175375fdb8.lean/declarations/unitcomppartialbijective-symm-apply--7c085fc031b89093c93459ca.md) | 144 | `result-track:7c085fc031b89093c93459cab42393ed2869af7e36e088c17362d892141ffde8` |
| 12 | `theorem` | [unitCompPartialBijective_symm_natural](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant699ea2396abc59e9488239a41a91132ab381919d29b5e1374e4048175375fdb8.lean/declarations/unitcomppartialbijective-symm-natural--06d3881387b6c4bc5e04beba.md) | 149 | `result-track:06d3881387b6c4bc5e04bebae3da1e4eb09976626e7a6576d007b7d2692dd262` |
| 13 | `theorem` | [unitCompPartialBijective_natural](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant699ea2396abc59e9488239a41a91132ab381919d29b5e1374e4048175375fdb8.lean/declarations/unitcomppartialbijective-natural--d1f48f0de6a88440a1f159ba.md) | 155 | `result-track:d1f48f0de6a88440a1f159ba67a5566419a3e1e9f76fa733e699afa2903964f9` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant699ea2396abc59e9488239a41a91132ab381919d29b5e1374e4048175375fdb8.lean/declarations/instance--c1c434b70d7037d3012027f3.md) | 161 | `declaration-track:c1c434b70d7037d3012027f3dcead7682f877f0666b8a94451456214901ccfbb` |
| 15 | `def` | [equivEssImageOfReflective_counitIso_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant699ea2396abc59e9488239a41a91132ab381919d29b5e1374e4048175375fdb8.lean/declarations/equivessimageofreflective-counitiso-app--ea52e2eaba82e76edc6f7d93.md) | 169 | `declaration-track:ea52e2eaba82e76edc6f7d93d4e585a99e00147542e3cc3bbec6b8bd8f86adaf` |
| 16 | `lemma` | [equivEssImageOfReflective_map_counitIso_app_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant699ea2396abc59e9488239a41a91132ab381919d29b5e1374e4048175375fdb8.lean/declarations/equivessimageofreflective-map-counitiso-app-hom--b05872dfab7f747a23d7d2e0.md) | 176 | `result-track:b05872dfab7f747a23d7d2e072887b0a5b4914bc478e1fb98042554796620ca2` |
| 17 | `lemma` | [equivEssImageOfReflective_map_counitIso_app_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant699ea2396abc59e9488239a41a91132ab381919d29b5e1374e4048175375fdb8.lean/declarations/equivessimageofreflective-map-counitiso-app-inv--b89aa36ef85a002919c8a137.md) | 183 | `result-track:b89aa36ef85a002919c8a137bb48f7cb552e89fce3580e47438017be54ae0fa1` |
| 18 | `def` | [equivEssImageOfReflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant699ea2396abc59e9488239a41a91132ab381919d29b5e1374e4048175375fdb8.lean/declarations/equivessimageofreflective--0005aa9bb3fae916d7a482bd.md) | 191 | `declaration-track:0005aa9bb3fae916d7a482bd5d91c0c82fee6118c1b80456e41c4510a2bf9761` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
