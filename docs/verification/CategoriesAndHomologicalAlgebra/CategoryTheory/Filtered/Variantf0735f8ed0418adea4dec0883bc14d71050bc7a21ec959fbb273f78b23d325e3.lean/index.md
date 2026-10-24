# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Filtered.Variantf0735f8ed0418adea4dec0883bc14d71050bc7a21ec959fbb273f78b23d325e3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32a577c78b31a6928f858cb3aa30dbd7726c7d9f",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf0735f8ed0418adea4dec0883bc14d71050bc7a21ec959fbb273f78b23d325e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf0735f8ed0418adea4dec0883bc14d71050bc7a21ec959fbb273f78b23d325e3.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf0735f8ed0418adea4dec0883bc14d71050bc7a21ec959fbb273f78b23d325e3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32a577c78b31a6928f858cb3aa30dbd7726c7d9f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf0735f8ed0418adea4dec0883bc14d71050bc7a21ec959fbb273f78b23d325e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf0735f8ed0418adea4dec0883bc14d71050bc7a21ec959fbb273f78b23d325e3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Filtered.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PreservesFilteredColimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf0735f8ed0418adea4dec0883bc14d71050bc7a21ec959fbb273f78b23d325e3.lean/declarations/preservesfilteredcolimitsofsize--701dd04297d47db08fa761d8.md) | 38 | `declaration-track:701dd04297d47db08fa761d810b3ebe0ccb0123ecb45987c6bb64f0acc7789f9` |
| 2 | `abbrev` | [PreservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf0735f8ed0418adea4dec0883bc14d71050bc7a21ec959fbb273f78b23d325e3.lean/declarations/preservesfilteredcolimits--ecb1b058e003d1700ba6cdd9.md) | 47 | `declaration-track:ecb1b058e003d1700ba6cdd92193dce5a1bdf304726d2e8223d5f6063c2e49fd` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf0735f8ed0418adea4dec0883bc14d71050bc7a21ec959fbb273f78b23d325e3.lean/declarations/instance--504d559be1f7c9472b2bcb76.md) | 52 | `declaration-track:504d559be1f7c9472b2bcb76ecd6dfc83a75abee9e63b7727a5c1a6880a4941f` |
| 4 | `instance` | [comp_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf0735f8ed0418adea4dec0883bc14d71050bc7a21ec959fbb273f78b23d325e3.lean/declarations/comp-preservesfilteredcolimits--3296865b80665509061be65f.md) | 56 | `declaration-track:3296865b80665509061be65f71537e9e19179006e187ba2695b11a3022ad0bfa` |
| 5 | `lemma` | [preservesFilteredColimitsOfSize_of_univLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf0735f8ed0418adea4dec0883bc14d71050bc7a21ec959fbb273f78b23d325e3.lean/declarations/preservesfilteredcolimitsofsize-of-univle--1a30479042ed8dcc741373ca.md) | 62 | `result-track:1a30479042ed8dcc741373ca5e895a5d5d2d71c6ae7251a6191cce02ef353245` |
| 6 | `lemma` | [preservesFilteredColimitsOfSize_shrink](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf0735f8ed0418adea4dec0883bc14d71050bc7a21ec959fbb273f78b23d325e3.lean/declarations/preservesfilteredcolimitsofsize-shrink--d3f097a661402888efc83873.md) | 74 | `result-track:d3f097a661402888efc8387345012087b344c31bd0eb8c4be170454fd6aa2e6e` |
| 7 | `lemma` | [preservesSmallestFilteredColimits_of_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf0735f8ed0418adea4dec0883bc14d71050bc7a21ec959fbb273f78b23d325e3.lean/declarations/preservessmallestfilteredcolimits-of-preservesfilteredcolimits--51f54e8490d7e241140f1993.md) | 82 | `result-track:51f54e8490d7e241140f1993b1d4e4e507b4c7f6db3496d17ff8c34ec6b860fd` |
| 8 | `class` | [ReflectsFilteredColimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf0735f8ed0418adea4dec0883bc14d71050bc7a21ec959fbb273f78b23d325e3.lean/declarations/reflectsfilteredcolimitsofsize--e8b45dc3f2975cbebaaa7591.md) | 94 | `declaration-track:e8b45dc3f2975cbebaaa7591ca90c184b7d94028d9706b223844f639e654d4e7` |
| 9 | `abbrev` | [ReflectsFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf0735f8ed0418adea4dec0883bc14d71050bc7a21ec959fbb273f78b23d325e3.lean/declarations/reflectsfilteredcolimits--e537879d539766fcb6a90b1f.md) | 103 | `declaration-track:e537879d539766fcb6a90b1f4cf659584d8d5eda51d0e864254661562d79e988` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf0735f8ed0418adea4dec0883bc14d71050bc7a21ec959fbb273f78b23d325e3.lean/declarations/instance--47b7def261ec6ce8952a59cb.md) | 108 | `declaration-track:47b7def261ec6ce8952a59cbb69d2dc0c7b50cb82a79b3472352cb38e6f17ab4` |
| 11 | `instance` | [comp_reflectsFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf0735f8ed0418adea4dec0883bc14d71050bc7a21ec959fbb273f78b23d325e3.lean/declarations/comp-reflectsfilteredcolimits--1a9b0c9a7aa845a1ed4a5dc7.md) | 112 | `declaration-track:1a9b0c9a7aa845a1ed4a5dc7e755c71b36ad426bf756ac4ab847ea1a756b3200` |
| 12 | `lemma` | [reflectsFilteredColimitsOfSize_of_univLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf0735f8ed0418adea4dec0883bc14d71050bc7a21ec959fbb273f78b23d325e3.lean/declarations/reflectsfilteredcolimitsofsize-of-univle--d460f2f1714f1a2da3d62986.md) | 118 | `result-track:d460f2f1714f1a2da3d6298685b884fd9a85bbbd946c2479383e8cbbd69e7747` |
| 13 | `lemma` | [reflectsFilteredColimitsOfSize_shrink](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf0735f8ed0418adea4dec0883bc14d71050bc7a21ec959fbb273f78b23d325e3.lean/declarations/reflectsfilteredcolimitsofsize-shrink--2effe41b21c23c5aaf69849f.md) | 130 | `result-track:2effe41b21c23c5aaf69849f011180042a0387fb577c843aa6d5cc926c4a0f54` |
| 14 | `lemma` | [reflectsSmallestFilteredColimits_of_reflectsFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf0735f8ed0418adea4dec0883bc14d71050bc7a21ec959fbb273f78b23d325e3.lean/declarations/reflectssmallestfilteredcolimits-of-reflectsfilteredcolimits--0b88cae0352e7e3de5135340.md) | 138 | `result-track:0b88cae0352e7e3de5135340438288f5a65b79cfc5683885d0b001f8df695b1f` |
| 15 | `class` | [PreservesCofilteredLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf0735f8ed0418adea4dec0883bc14d71050bc7a21ec959fbb273f78b23d325e3.lean/declarations/preservescofilteredlimitsofsize--6471fedeab693e3268ed3d6f.md) | 154 | `declaration-track:6471fedeab693e3268ed3d6f1137a7309f0681ab9e0f737da048e7170d8da29a` |
| 16 | `abbrev` | [PreservesCofilteredLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf0735f8ed0418adea4dec0883bc14d71050bc7a21ec959fbb273f78b23d325e3.lean/declarations/preservescofilteredlimits--b8d381da186f3e386a55c1e3.md) | 163 | `declaration-track:b8d381da186f3e386a55c1e32cbc0f0862bcdff4464e58a71faf56464762c4c8` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf0735f8ed0418adea4dec0883bc14d71050bc7a21ec959fbb273f78b23d325e3.lean/declarations/instance--db9296e2208626f487cbfa28.md) | 168 | `declaration-track:db9296e2208626f487cbfa28c5574fe317da6cfd9f0f4161ac8c19342da9d7b3` |
| 18 | `instance` | [comp_preservesCofilteredLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf0735f8ed0418adea4dec0883bc14d71050bc7a21ec959fbb273f78b23d325e3.lean/declarations/comp-preservescofilteredlimits--f98cad4094efcc39951f7bbc.md) | 172 | `declaration-track:f98cad4094efcc39951f7bbc17ed87b77d44d271a476775ad2e8d6e9c435dc92` |
| 19 | `lemma` | [preservesCofilteredLimitsOfSize_of_univLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf0735f8ed0418adea4dec0883bc14d71050bc7a21ec959fbb273f78b23d325e3.lean/declarations/preservescofilteredlimitsofsize-of-univle--b49e3437d74b533068329746.md) | 178 | `result-track:b49e3437d74b5330683297467a57cf5989b421ddd8897e0e9eb493d3a25a5549` |
| 20 | `lemma` | [preservesCofilteredLimitsOfSize_shrink](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf0735f8ed0418adea4dec0883bc14d71050bc7a21ec959fbb273f78b23d325e3.lean/declarations/preservescofilteredlimitsofsize-shrink--26b93cffd6551acbad043ce6.md) | 190 | `result-track:26b93cffd6551acbad043ce62dcc4ebf6144039f69acd5d8d64dbbfa18fc9803` |
| 21 | `lemma` | [preservesSmallestCofilteredLimits_of_preservesCofilteredLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf0735f8ed0418adea4dec0883bc14d71050bc7a21ec959fbb273f78b23d325e3.lean/declarations/preservessmallestcofilteredlimits-of-preservescofilteredlimits--b1e54601d0dc6b9ce905f683.md) | 198 | `result-track:b1e54601d0dc6b9ce905f6837d87362610f48bcecf399d83e143dfb113b98b2a` |
| 22 | `class` | [ReflectsCofilteredLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf0735f8ed0418adea4dec0883bc14d71050bc7a21ec959fbb273f78b23d325e3.lean/declarations/reflectscofilteredlimitsofsize--483ab6acce7179ed0ada06bf.md) | 210 | `declaration-track:483ab6acce7179ed0ada06bfc6d9cb6c5f7d70e30de6bc9b760320c689085d0b` |
| 23 | `abbrev` | [ReflectsCofilteredLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf0735f8ed0418adea4dec0883bc14d71050bc7a21ec959fbb273f78b23d325e3.lean/declarations/reflectscofilteredlimits--da46702ef409d4a498450ecb.md) | 219 | `declaration-track:da46702ef409d4a498450ecb854047e6b0d402218b907166ddf969d19108f25e` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf0735f8ed0418adea4dec0883bc14d71050bc7a21ec959fbb273f78b23d325e3.lean/declarations/instance--c6bf28c181ac32f616ddb2f1.md) | 224 | `declaration-track:c6bf28c181ac32f616ddb2f1d85dd55cdc50f223c695605f21d19744554e7a9b` |
| 25 | `instance` | [comp_reflectsCofilteredLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf0735f8ed0418adea4dec0883bc14d71050bc7a21ec959fbb273f78b23d325e3.lean/declarations/comp-reflectscofilteredlimits--035b42989387ac1fe21cacd3.md) | 228 | `declaration-track:035b42989387ac1fe21cacd39cc90ceb0e00954da59be9e81442e7d500ca360a` |
| 26 | `lemma` | [reflectsCofilteredLimitsOfSize_of_univLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf0735f8ed0418adea4dec0883bc14d71050bc7a21ec959fbb273f78b23d325e3.lean/declarations/reflectscofilteredlimitsofsize-of-univle--0c57c8547f57c191629956fb.md) | 234 | `result-track:0c57c8547f57c191629956fbe22fad703f4bc05a7f4e7543ace952a2991ec862` |
| 27 | `lemma` | [reflectsCofilteredLimitsOfSize_shrink](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf0735f8ed0418adea4dec0883bc14d71050bc7a21ec959fbb273f78b23d325e3.lean/declarations/reflectscofilteredlimitsofsize-shrink--e002c766543399865d712dd7.md) | 246 | `result-track:e002c766543399865d712dd7fd893587abe38dd5d582e524909a719cddc01a57` |
| 28 | `lemma` | [reflectsSmallestCofilteredLimits_of_reflectsCofilteredLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf0735f8ed0418adea4dec0883bc14d71050bc7a21ec959fbb273f78b23d325e3.lean/declarations/reflectssmallestcofilteredlimits-of-reflectscofilteredlimits--9076dfb0b975d32bc35be573.md) | 254 | `result-track:9076dfb0b975d32bc35be573f7b006850a9bd34b9f45ece6437cb577aa1ee488` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
