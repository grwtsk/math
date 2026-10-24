# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FiniteLimits.Variantcf6076fb33181fd93d32bb095d3ad27c48b6916f0b14f6c8decccdeb291e506a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f0c41ec162f192709ef989acff81dcbe61a0c92e",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variantcf6076fb33181fd93d32bb095d3ad27c48b6916f0b14f6c8decccdeb291e506a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variantcf6076fb33181fd93d32bb095d3ad27c48b6916f0b14f6c8decccdeb291e506a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variantcf6076fb33181fd93d32bb095d3ad27c48b6916f0b14f6c8decccdeb291e506a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f0c41ec162f192709ef989acff81dcbe61a0c92e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variantcf6076fb33181fd93d32bb095d3ad27c48b6916f0b14f6c8decccdeb291e506a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variantcf6076fb33181fd93d32bb095d3ad27c48b6916f0b14f6c8decccdeb291e506a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.FinCategory.AsType` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Equalizers` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.WidePullbacks` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.HasPullback` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Option` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variantcf6076fb33181fd93d32bb095d3ad27c48b6916f0b14f6c8decccdeb291e506a.lean/declarations/hasfinitelimits--4ab16e2ae16b0c122dbdf05e.md) | 37 | `declaration-track:4ab16e2ae16b0c122dbdf05eacb8213d4a412c9a3dcce8c3253706db8a5f55e1` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variantcf6076fb33181fd93d32bb095d3ad27c48b6916f0b14f6c8decccdeb291e506a.lean/declarations/instance--c7809fea6483ba890a74ff94.md) | 42 | `declaration-track:c7809fea6483ba890a74ff949c697f4462e13210761bf563a1cf529b117822bb` |
| 3 | `lemma` | [hasFiniteLimits_of_hasLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variantcf6076fb33181fd93d32bb095d3ad27c48b6916f0b14f6c8decccdeb291e506a.lean/declarations/hasfinitelimits-of-haslimitsofsize--31daf938e414eb16fe48c716.md) | 47 | `result-track:31daf938e414eb16fe48c71636e3748025f9d926eab5bb4029b106df638fa83e` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variantcf6076fb33181fd93d32bb095d3ad27c48b6916f0b14f6c8decccdeb291e506a.lean/declarations/instance--10afc178af713b27c32d1d6c.md) | 56 | `declaration-track:10afc178af713b27c32d1d6caff6c78aeaeaefccf7207b644832dc593cc7fe92` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variantcf6076fb33181fd93d32bb095d3ad27c48b6916f0b14f6c8decccdeb291e506a.lean/declarations/instance--0ff5c400b3c1024a29e096d4.md) | 59 | `declaration-track:0ff5c400b3c1024a29e096d4d077136b7c6a3ae73cb9da7d55a6abed78201745` |
| 6 | `theorem` | [hasFiniteLimits_of_hasFiniteLimits_of_size](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variantcf6076fb33181fd93d32bb095d3ad27c48b6916f0b14f6c8decccdeb291e506a.lean/declarations/hasfinitelimits-of-hasfinitelimits-of-size--e3359eec0a9bf1756f5aad1c.md) | 65 | `result-track:e3359eec0a9bf1756f5aad1c2f2032a1b6b58fd0b50ade8dc31f1aeb49bb967b` |
| 7 | `class` | [HasFiniteColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variantcf6076fb33181fd93d32bb095d3ad27c48b6916f0b14f6c8decccdeb291e506a.lean/declarations/hasfinitecolimits--a0c6bb99a4154e6de6db8cd6.md) | 86 | `declaration-track:a0c6bb99a4154e6de6db8cd695cfe6cdc4c26545bef038b2074160002db7b4ae` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variantcf6076fb33181fd93d32bb095d3ad27c48b6916f0b14f6c8decccdeb291e506a.lean/declarations/instance--4f0d2208ca75a920646da23f.md) | 92 | `declaration-track:4f0d2208ca75a920646da23fb3c6dcef4414efb33035d2b1e1e4a6fcf6a3d6f9` |
| 9 | `lemma` | [hasFiniteColimits_of_hasColimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variantcf6076fb33181fd93d32bb095d3ad27c48b6916f0b14f6c8decccdeb291e506a.lean/declarations/hasfinitecolimits-of-hascolimitsofsize--07c47ef63d66a99d82199063.md) | 97 | `result-track:07c47ef63d66a99d821990634efdf6a73bf5c952e1ca87be3cc489bd1766d2c9` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variantcf6076fb33181fd93d32bb095d3ad27c48b6916f0b14f6c8decccdeb291e506a.lean/declarations/instance--2c9dde2103e009fb0e1e2946.md) | 105 | `declaration-track:2c9dde2103e009fb0e1e29461c987d35b05e3c8a058130f8909f67cb4f43c4a5` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variantcf6076fb33181fd93d32bb095d3ad27c48b6916f0b14f6c8decccdeb291e506a.lean/declarations/instance--287e4aa45eae9efc4a8123d8.md) | 108 | `declaration-track:287e4aa45eae9efc4a8123d8dea3baf0bef69d350f78d1f9b449f5a6c319bffb` |
| 12 | `theorem` | [hasFiniteColimits_of_hasFiniteColimits_of_size](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variantcf6076fb33181fd93d32bb095d3ad27c48b6916f0b14f6c8decccdeb291e506a.lean/declarations/hasfinitecolimits-of-hasfinitecolimits-of-size--c443b05067b92e2103cb1e44.md) | 114 | `result-track:c443b05067b92e2103cb1e44e5997e3c78d62eb3d5683d2b6920a02da6be677a` |
| 13 | `instance` | [fintypeWalkingParallelPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variantcf6076fb33181fd93d32bb095d3ad27c48b6916f0b14f6c8decccdeb291e506a.lean/declarations/fintypewalkingparallelpair--ff8f0ccd7ec47c4d6b0aafc8.md) | 131 | `declaration-track:ff8f0ccd7ec47c4d6b0aafc8eac9a9a4d8810223458a1818a4a1acb586ac95b4` |
| 14 | `instance` | [instFintypeWalkingParallelPairHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variantcf6076fb33181fd93d32bb095d3ad27c48b6916f0b14f6c8decccdeb291e506a.lean/declarations/instfintypewalkingparallelpairhom--9fe52fcfb39391611766c053.md) | 137 | `declaration-track:9fe52fcfb39391611766c053c39e298316c2d29af3d5d2c57131b937a6c87e13` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variantcf6076fb33181fd93d32bb095d3ad27c48b6916f0b14f6c8decccdeb291e506a.lean/declarations/instance--fef9326de0086c8162960138.md) | 149 | `declaration-track:fef9326de0086c81629601382be660c040a0ddb86774d046f764d6e8932882b3` |
| 16 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variantcf6076fb33181fd93d32bb095d3ad27c48b6916f0b14f6c8decccdeb291e506a.lean/declarations/example--299880b85d3e9f67f02c8b74.md) | 154 | `declaration-track:299880b85d3e9f67f02c8b743dd4a664cdf93e436d20979207180891e97fd6d1` |
| 17 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variantcf6076fb33181fd93d32bb095d3ad27c48b6916f0b14f6c8decccdeb291e506a.lean/declarations/example--c27765cb4a4084dd2a49d1fd.md) | 158 | `declaration-track:c27765cb4a4084dd2a49d1fd99ecd8940a3fdb04237c3b93ec7195321198e9c5` |
| 18 | `instance` | [fintypeObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variantcf6076fb33181fd93d32bb095d3ad27c48b6916f0b14f6c8decccdeb291e506a.lean/declarations/fintypeobj--5e97cb951b3ee5839c8eb398.md) | 166 | `declaration-track:5e97cb951b3ee5839c8eb3982c2581bed399c205e4cf923e3579d9a3d544866d` |
| 19 | `instance` | [fintypeHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variantcf6076fb33181fd93d32bb095d3ad27c48b6916f0b14f6c8decccdeb291e506a.lean/declarations/fintypehom--659511d4bee91c6c6246f542.md) | 169 | `declaration-track:659511d4bee91c6c6246f542a0456afd6071645a1d915b9eacdc1d90624419e8` |
| 20 | `instance` | [fintypeObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variantcf6076fb33181fd93d32bb095d3ad27c48b6916f0b14f6c8decccdeb291e506a.lean/declarations/fintypeobj--6c1a770f8f39b718f8672140.md) | 188 | `declaration-track:6c1a770f8f39b718f86721405d6d7f21f405fe92061ecab793d60f7633259efd` |
| 21 | `instance` | [fintypeHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variantcf6076fb33181fd93d32bb095d3ad27c48b6916f0b14f6c8decccdeb291e506a.lean/declarations/fintypehom--5b9af98f3bd0004bc31445a9.md) | 191 | `declaration-track:5b9af98f3bd0004bc31445a936e2b082408f2431048ba05876d24e7a09f42544` |
| 22 | `instance` | [finCategoryWidePullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variantcf6076fb33181fd93d32bb095d3ad27c48b6916f0b14f6c8decccdeb291e506a.lean/declarations/fincategorywidepullback--1f2380dabfd049299949d9f9.md) | 208 | `declaration-track:1f2380dabfd049299949d9f996a5f8f620745fafeed371e6e2e097778c21d336` |
| 23 | `instance` | [finCategoryWidePushout](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variantcf6076fb33181fd93d32bb095d3ad27c48b6916f0b14f6c8decccdeb291e506a.lean/declarations/fincategorywidepushout--92c4e98ee29d19fb0ede98e8.md) | 211 | `declaration-track:92c4e98ee29d19fb0ede98e862cb9ad29e5a1b88445c2e155e0c16498c52ec23` |
| 24 | `class` | [HasFiniteWidePullbacks](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variantcf6076fb33181fd93d32bb095d3ad27c48b6916f0b14f6c8decccdeb291e506a.lean/declarations/hasfinitewidepullbacks--ecbbbe4c3757acf8a991a56b.md) | 219 | `declaration-track:ecbbbe4c3757acf8a991a56bedb07644c924b06c9ed28fb6ed5c713950d3b398` |
| 25 | `instance` | [hasLimitsOfShape_widePullbackShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variantcf6076fb33181fd93d32bb095d3ad27c48b6916f0b14f6c8decccdeb291e506a.lean/declarations/haslimitsofshape-widepullbackshape--ed522cd16077edbfca01b379.md) | 223 | `declaration-track:ed522cd16077edbfca01b37993e6167ba5b16f55760597d35d0f4a1e1b86a196` |
| 26 | `class` | [HasFiniteWidePushouts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variantcf6076fb33181fd93d32bb095d3ad27c48b6916f0b14f6c8decccdeb291e506a.lean/declarations/hasfinitewidepushouts--a03de0315ab34ba456f55429.md) | 231 | `declaration-track:a03de0315ab34ba456f55429c86e3eb3878cd3d42c183c83b56a0c4913bd9ba3` |
| 27 | `instance` | [hasColimitsOfShape_widePushoutShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variantcf6076fb33181fd93d32bb095d3ad27c48b6916f0b14f6c8decccdeb291e506a.lean/declarations/hascolimitsofshape-widepushoutshape--965c2b520f9b20adb146d3fe.md) | 235 | `declaration-track:965c2b520f9b20adb146d3fe98ec3c411243dad57b027257237b04742935fd75` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variantcf6076fb33181fd93d32bb095d3ad27c48b6916f0b14f6c8decccdeb291e506a.lean/declarations/instance--b05a514c574ba5ff888d8d9b.md) | 243 | `declaration-track:b05a514c574ba5ff888d8d9b8395b44b62b06c0ccd1fa69c2a1633965bdd47b1` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variantcf6076fb33181fd93d32bb095d3ad27c48b6916f0b14f6c8decccdeb291e506a.lean/declarations/instance--a5d9fa355adacbc8f3444737.md) | 250 | `declaration-track:a5d9fa355adacbc8f34447373a65aee9da74340c5525f1448e6f357c9c951569` |
| 30 | `instance` | [fintypeWalkingPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variantcf6076fb33181fd93d32bb095d3ad27c48b6916f0b14f6c8decccdeb291e506a.lean/declarations/fintypewalkingpair--f3a7aa863de5c44e593224d5.md) | 254 | `declaration-track:f3a7aa863de5c44e593224d5deaf4e6aa12b421d0c6a73095bba838c1b8d48ed` |
| 31 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variantcf6076fb33181fd93d32bb095d3ad27c48b6916f0b14f6c8decccdeb291e506a.lean/declarations/example--ce0e24c99a4296ab0e159912.md) | 259 | `declaration-track:ce0e24c99a4296ab0e159912d41853261127ae877be1348722063038bf1a7161` |
| 32 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variantcf6076fb33181fd93d32bb095d3ad27c48b6916f0b14f6c8decccdeb291e506a.lean/declarations/example--b97296e359506aa2d5a28bef.md) | 262 | `declaration-track:b97296e359506aa2d5a28bef5554ed9761abc83674d53b36e5830b66f9b20cc6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
