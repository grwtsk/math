# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.Bundled.Variant55b2362b35f3d355e5fe7ed8fca3615393cc1cab47523693ee6748cd591a181f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5fc873f49158a277aa13058846e3ad186fc9044c",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant55b2362b35f3d355e5fe7ed8fca3615393cc1cab47523693ee6748cd591a181f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant55b2362b35f3d355e5fe7ed8fca3615393cc1cab47523693ee6748cd591a181f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant55b2362b35f3d355e5fe7ed8fca3615393cc1cab47523693ee6748cd591a181f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5fc873f49158a277aa13058846e3ad186fc9044c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant55b2362b35f3d355e5fe7ed8fca3615393cc1cab47523693ee6748cd591a181f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant55b2362b35f3d355e5fe7ed8fca3615393cc1cab47523693ee6748cd591a181f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.ModelTheory.ElementarySubstructures` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Bundled` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [CategoryTheory.Bundled.structure](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant55b2362b35f3d355e5fe7ed8fca3615393cc1cab47523693ee6748cd591a181f.lean/declarations/categorytheory-bundled-structure--c3ca833759d0a33d62ecd42a.md) | 29 | `declaration-track:c3ca833759d0a33d62ecd42aee6db57151f642591b9062a809cbda08b0ebb6a3` |
| 2 | `def` | [bundledInduced](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant55b2362b35f3d355e5fe7ed8fca3615393cc1cab47523693ee6748cd591a181f.lean/declarations/bundledinduced--4ce8edee26f2cef01dfc8e04.md) | 42 | `declaration-track:4ce8edee26f2cef01dfc8e042accebc6ec4067fb6bd11996cef05fa18be163e5` |
| 3 | `def` | [bundledInducedEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant55b2362b35f3d355e5fe7ed8fca3615393cc1cab47523693ee6748cd591a181f.lean/declarations/bundledinducedequiv--6510b076154e0b37daae9cf8.md) | 48 | `declaration-track:6510b076154e0b37daae9cf8dbd5a0a16ea696878eb12c8195bb32ebd43c5600` |
| 4 | `instance` | [equivSetoid](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant55b2362b35f3d355e5fe7ed8fca3615393cc1cab47523693ee6748cd591a181f.lean/declarations/equivsetoid--0e124b6e1b1b29f3e869a666.md) | 58 | `declaration-track:0e124b6e1b1b29f3e869a666c4de8143845d81c518b7e5432de7bcdc0cf82165` |
| 5 | `structure` | [ModelType](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant55b2362b35f3d355e5fe7ed8fca3615393cc1cab47523693ee6748cd591a181f.lean/declarations/modeltype--7d82479c092565f576e9e90c.md) | 69 | `declaration-track:7d82479c092565f576e9e90c6ddb4d8f38457640a84ad9987db39d0e6c588e1c` |
| 6 | `instance` | [instCoeSort](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant55b2362b35f3d355e5fe7ed8fca3615393cc1cab47523693ee6748cd591a181f.lean/declarations/instcoesort--f6bd37caf8472f9a292d1505.md) | 84 | `declaration-track:f6bd37caf8472f9a292d1505fb3a54e375b06f18963316d6f57cecb45487f2b9` |
| 7 | `def` | [of](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant55b2362b35f3d355e5fe7ed8fca3615393cc1cab47523693ee6748cd591a181f.lean/declarations/of--e8e3210e6277812793867fd5.md) | 89 | `declaration-track:e8e3210e6277812793867fd549860339b6d5046a7142430318f6560aa15f318b` |
| 8 | `theorem` | [coe_of](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant55b2362b35f3d355e5fe7ed8fca3615393cc1cab47523693ee6748cd591a181f.lean/declarations/coe-of--cf5248966084a5a6dab9ba31.md) | 93 | `result-track:cf5248966084a5a6dab9ba31f2f0b0bfefc52a08e8522cdfcc36172e0507ba3b` |
| 9 | `instance` | [instNonempty](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant55b2362b35f3d355e5fe7ed8fca3615393cc1cab47523693ee6748cd591a181f.lean/declarations/instnonempty--696de67c91adce733b668eda.md) | 96 | `declaration-track:696de67c91adce733b668eda8dd946a257483161be4af4689cea55953fd0100d` |
| 10 | `instance` | [instInhabited](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant55b2362b35f3d355e5fe7ed8fca3615393cc1cab47523693ee6748cd591a181f.lean/declarations/instinhabited--1bd2508109f48d2d92de9097.md) | 103 | `declaration-track:1bd2508109f48d2d92de9097d0995ac793624a6774e8f922e64614c50acf4b2b` |
| 11 | `def` | [equivInduced](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant55b2362b35f3d355e5fe7ed8fca3615393cc1cab47523693ee6748cd591a181f.lean/declarations/equivinduced--8ca7a3489ec7b65cf9bf2ca3.md) | 111 | `declaration-track:8ca7a3489ec7b65cf9bf2ca39549f2a5de410b114c9c03b8de999caa58e6e5b4` |
| 12 | `instance` | [of_small](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant55b2362b35f3d355e5fe7ed8fca3615393cc1cab47523693ee6748cd591a181f.lean/declarations/of-small--f7d95042d107f41d766b7028.md) | 119 | `declaration-track:f7d95042d107f41d766b70288b730e7d3677542f3a2c7c15ba980bf79197f47b` |
| 13 | `def` | [shrink](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant55b2362b35f3d355e5fe7ed8fca3615393cc1cab47523693ee6748cd591a181f.lean/declarations/shrink--d061ae07b4cc4e5bd702e866.md) | 124 | `declaration-track:d061ae07b4cc4e5bd702e86614f7586e36d67be8ce17a09298c84b243b8de5fd` |
| 14 | `def` | [ulift](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant55b2362b35f3d355e5fe7ed8fca3615393cc1cab47523693ee6748cd591a181f.lean/declarations/ulift--da8ab0d6468334b4d2d680c0.md) | 128 | `declaration-track:da8ab0d6468334b4d2d680c0c8b3be1fb16f0ad7af57c2f65561fe64d49fc33e` |
| 15 | `def` | [reduct](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant55b2362b35f3d355e5fe7ed8fca3615393cc1cab47523693ee6748cd591a181f.lean/declarations/reduct--5170984b7bb98de3a4b71180.md) | 133 | `declaration-track:5170984b7bb98de3a4b711801c01152dbd31e436b84d6e72517570f685cb4a13` |
| 16 | `def` | [defaultExpansion](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant55b2362b35f3d355e5fe7ed8fca3615393cc1cab47523693ee6748cd591a181f.lean/declarations/defaultexpansion--81e947016c5a03eecd0a470e.md) | 142 | `declaration-track:81e947016c5a03eecd0a470ed84fe914c3fa0687a063c231b44ef2787593c100` |
| 17 | `instance` | [leftStructure](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant55b2362b35f3d355e5fe7ed8fca3615393cc1cab47523693ee6748cd591a181f.lean/declarations/leftstructure--6699efcaf2c9873309e29a0a.md) | 153 | `declaration-track:6699efcaf2c9873309e29a0a7bd9dfe7df8a0980bf3a66fdd7029c19f2b27608` |
| 18 | `instance` | [rightStructure](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant55b2362b35f3d355e5fe7ed8fca3615393cc1cab47523693ee6748cd591a181f.lean/declarations/rightstructure--bc9d8728bc225a1c6e24ebab.md) | 156 | `declaration-track:bc9d8728bc225a1c6e24ebab17128d65c4db2e88f48f2076e3a6f3f7e34ba1c8` |
| 19 | `def` | [subtheoryModel](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant55b2362b35f3d355e5fe7ed8fca3615393cc1cab47523693ee6748cd591a181f.lean/declarations/subtheorymodel--8633b6965ceab732be1eb246.md) | 162 | `declaration-track:8633b6965ceab732be1eb246795896966c595cfd26a949b51b15888e1eab531b` |
| 20 | `instance` | [subtheoryModel_models](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant55b2362b35f3d355e5fe7ed8fca3615393cc1cab47523693ee6748cd591a181f.lean/declarations/subtheorymodel-models--ee97af09561ada72fafa28d5.md) | 166 | `declaration-track:ee97af09561ada72fafa28d55ac6d807ce66c5554d2bd70239001f9872c48e46` |
| 21 | `def` | [Model.bundled](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant55b2362b35f3d355e5fe7ed8fca3615393cc1cab47523693ee6748cd591a181f.lean/declarations/model-bundled--aaa6cade185092b8f4056977.md) | 175 | `declaration-track:aaa6cade185092b8f405697730935e62b254201fc6857380c47889c263e54801` |
| 22 | `theorem` | [coe_of](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant55b2362b35f3d355e5fe7ed8fca3615393cc1cab47523693ee6748cd591a181f.lean/declarations/coe-of--c683514175cf69bebec712c7.md) | 179 | `result-track:c683514175cf69bebec712c740e7a7d6eaa1a6edd8b12bafda36e7c4d25d7842` |
| 23 | `def` | [ElementarilyEquivalent.toModel](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant55b2362b35f3d355e5fe7ed8fca3615393cc1cab47523693ee6748cd591a181f.lean/declarations/elementarilyequivalent-tomodel--38981f9fe941b791fd5a68d0.md) | 185 | `declaration-track:38981f9fe941b791fd5a68d0025fbd6115813e5a7e8d03e1f85f54a6c6efdc3a` |
| 24 | `def` | [ElementarySubstructure.toModel](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant55b2362b35f3d355e5fe7ed8fca3615393cc1cab47523693ee6748cd591a181f.lean/declarations/elementarysubstructure-tomodel--fe3d3458c75538f1c4a8f060.md) | 193 | `declaration-track:fe3d3458c75538f1c4a8f06013668358a05db6e3cdd58214a1a09cc7d44b2f65` |
| 25 | `instance` | [ElementarySubstructure.toModel.instSmall](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant55b2362b35f3d355e5fe7ed8fca3615393cc1cab47523693ee6748cd591a181f.lean/declarations/elementarysubstructure-tomodel-instsmall--8f9b286361370d52a8869b67.md) | 197 | `declaration-track:8f9b286361370d52a8869b67dbf61413f66bdca09103149ae69b37f6d607f7a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
