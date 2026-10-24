# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Bifunctor.Variantdf6747ded95a42254b14662625242c51ff98250726e766ecadee40357929ad3b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40e906bf2dbec88498404eb087352af03eeaa0ea",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantdf6747ded95a42254b14662625242c51ff98250726e766ecadee40357929ad3b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantdf6747ded95a42254b14662625242c51ff98250726e766ecadee40357929ad3b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantdf6747ded95a42254b14662625242c51ff98250726e766ecadee40357929ad3b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40e906bf2dbec88498404eb087352af03eeaa0ea`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantdf6747ded95a42254b14662625242c51ff98250726e766ecadee40357929ad3b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantdf6747ded95a42254b14662625242c51ff98250726e766ecadee40357929ad3b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Functor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sum.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Bifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantdf6747ded95a42254b14662625242c51ff98250726e766ecadee40357929ad3b.lean/declarations/bifunctor--24d61230c8849b7b494b654e.md) | 34 | `declaration-track:24d61230c8849b7b494b654ed87c3ebab3457c5176c1cba061ffdbcc34f8b587` |
| 2 | `class` | [LawfulBifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantdf6747ded95a42254b14662625242c51ff98250726e766ecadee40357929ad3b.lean/declarations/lawfulbifunctor--de03adf272067472f3e077a3.md) | 41 | `declaration-track:de03adf272067472f3e077a3e235263793f167622a9059ba5b901b7ec1bc69e4` |
| 3 | `def` | [fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantdf6747ded95a42254b14662625242c51ff98250726e766ecadee40357929ad3b.lean/declarations/fst--960ca273343500e510407c09.md) | 64 | `declaration-track:960ca273343500e510407c0979644da31e8d02d2a78563e6354ac400073ba6a7` |
| 4 | `def` | [snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantdf6747ded95a42254b14662625242c51ff98250726e766ecadee40357929ad3b.lean/declarations/snd--9bbc76d298a335333bff1004.md) | 70 | `declaration-track:9bbc76d298a335333bff10040c18ff1b6356ee90789386e49cec911bb632f261` |
| 5 | `theorem` | [id_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantdf6747ded95a42254b14662625242c51ff98250726e766ecadee40357929ad3b.lean/declarations/id-fst--951738f61d67028e53f138c9.md) | 77 | `result-track:951738f61d67028e53f138c9f1516870b995b03b12c1f173354d43a0ed897e8a` |
| 6 | `theorem` | [id_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantdf6747ded95a42254b14662625242c51ff98250726e766ecadee40357929ad3b.lean/declarations/id-snd--ed04af8aa8ee95c1ee035398.md) | 83 | `result-track:ed04af8aa8ee95c1ee0353985ac1e0ec4fc4843fa14b97c635c4966c975df144` |
| 7 | `theorem` | [comp_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantdf6747ded95a42254b14662625242c51ff98250726e766ecadee40357929ad3b.lean/declarations/comp-fst--7e4a3f18e6fc3d0f6abdf19e.md) | 89 | `result-track:7e4a3f18e6fc3d0f6abdf19e4b3d410184bac2b8c54a874d6443d06236963406` |
| 8 | `theorem` | [fst_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantdf6747ded95a42254b14662625242c51ff98250726e766ecadee40357929ad3b.lean/declarations/fst-snd--1c953d4aa422b4ed4e9dc1dd.md) | 95 | `result-track:1c953d4aa422b4ed4e9dc1dd010160e176706ef5350e1c6070f038486b5fd79c` |
| 9 | `theorem` | [snd_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantdf6747ded95a42254b14662625242c51ff98250726e766ecadee40357929ad3b.lean/declarations/snd-fst--ddccbd3afacd929f96337ffb.md) | 101 | `result-track:ddccbd3afacd929f96337ffb816e5757a307b0d206b144556151afe011334e3a` |
| 10 | `theorem` | [comp_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantdf6747ded95a42254b14662625242c51ff98250726e766ecadee40357929ad3b.lean/declarations/comp-snd--3baf5ce1b4380be2d976cf04.md) | 107 | `result-track:3baf5ce1b4380be2d976cf046e91ed957f318b3ae9a984468f5dac95e1bb78c6` |
| 11 | `instance` | [Prod.bifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantdf6747ded95a42254b14662625242c51ff98250726e766ecadee40357929ad3b.lean/declarations/prod-bifunctor--40a2bd8949461f3ae84b9c36.md) | 120 | `declaration-track:40a2bd8949461f3ae84b9c36d6a55f2ad2567826e16e77020a74f99f80ff8d7c` |
| 12 | `instance` | [Prod.lawfulBifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantdf6747ded95a42254b14662625242c51ff98250726e766ecadee40357929ad3b.lean/declarations/prod-lawfulbifunctor--1532e89190af72a22adb673f.md) | 123 | `declaration-track:1532e89190af72a22adb673f2979ec0bb2088e3d71ab43a4d2759823e2836cc8` |
| 13 | `instance` | [Bifunctor.const](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantdf6747ded95a42254b14662625242c51ff98250726e766ecadee40357929ad3b.lean/declarations/bifunctor-const--22843f906212941ee65b66fa.md) | 127 | `declaration-track:22843f906212941ee65b66fa0339446b588e2b9b4fd7af48c44a5acf09d86bb1` |
| 14 | `instance` | [LawfulBifunctor.const](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantdf6747ded95a42254b14662625242c51ff98250726e766ecadee40357929ad3b.lean/declarations/lawfulbifunctor-const--bf4123db72cc77cc690cc4e4.md) | 130 | `declaration-track:bf4123db72cc77cc690cc4e4491e4de98757c23e14dc4d8383e683949941a3f9` |
| 15 | `instance` | [Bifunctor.flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantdf6747ded95a42254b14662625242c51ff98250726e766ecadee40357929ad3b.lean/declarations/bifunctor-flip--ea8431e33c6813f38dd1fcac.md) | 133 | `declaration-track:ea8431e33c6813f38dd1fcacc56898b83fab2457866690bb3bcf0d1cfa720d51` |
| 16 | `instance` | [LawfulBifunctor.flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantdf6747ded95a42254b14662625242c51ff98250726e766ecadee40357929ad3b.lean/declarations/lawfulbifunctor-flip--a9e86a656f3ccf4a1a5f180f.md) | 137 | `declaration-track:a9e86a656f3ccf4a1a5f180f5a8f4a624498b78e8e546988a5cfefc0d1d36635` |
| 17 | `instance` | [Sum.bifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantdf6747ded95a42254b14662625242c51ff98250726e766ecadee40357929ad3b.lean/declarations/sum-bifunctor--b4d49adb3c42ac44fea34d6d.md) | 141 | `declaration-track:b4d49adb3c42ac44fea34d6d107d13164cdf464f8c842816b2d9b961575e06f2` |
| 18 | `instance` | [Sum.lawfulBifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantdf6747ded95a42254b14662625242c51ff98250726e766ecadee40357929ad3b.lean/declarations/sum-lawfulbifunctor--64ce6ad253994584916322b4.md) | 144 | `declaration-track:64ce6ad253994584916322b43320274ffa24e2da7aea322560eec894c90f61ab` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantdf6747ded95a42254b14662625242c51ff98250726e766ecadee40357929ad3b.lean/declarations/instance--5c34d67b1811ee32246284ee.md) | 150 | `declaration-track:5c34d67b1811ee32246284eea1993e6bac72f1cad7d35974c6c2c3c2aff6b0fe` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantdf6747ded95a42254b14662625242c51ff98250726e766ecadee40357929ad3b.lean/declarations/instance--9324cbaa3527f24b263ef4cc.md) | 153 | `declaration-track:9324cbaa3527f24b263ef4cc97a673f92d95c4f0647efda7a2b5a190df586e40` |
| 21 | `instance` | [Function.bicompl.bifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantdf6747ded95a42254b14662625242c51ff98250726e766ecadee40357929ad3b.lean/declarations/function-bicompl-bifunctor--2a6b1f66faf82d3d5c0b0ba8.md) | 162 | `declaration-track:2a6b1f66faf82d3d5c0b0ba886f24c30ee51a83b732cd820068f66fa77ac01d6` |
| 22 | `instance` | [Function.bicompl.lawfulBifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantdf6747ded95a42254b14662625242c51ff98250726e766ecadee40357929ad3b.lean/declarations/function-bicompl-lawfulbifunctor--fc6d5d2bae00a01f932c951b.md) | 166 | `declaration-track:fc6d5d2bae00a01f932c951bf25fbe958a135b871492d96c1589f877bc146c1f` |
| 23 | `instance` | [Function.bicompr.bifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantdf6747ded95a42254b14662625242c51ff98250726e766ecadee40357929ad3b.lean/declarations/function-bicompr-bifunctor--4d4f40b7fa9c4665f48b3acd.md) | 177 | `declaration-track:4d4f40b7fa9c4665f48b3acd658a982699e162d51e41e5fc2a6a686338f23cb0` |
| 24 | `instance` | [Function.bicompr.lawfulBifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantdf6747ded95a42254b14662625242c51ff98250726e766ecadee40357929ad3b.lean/declarations/function-bicompr-lawfulbifunctor--d15be49463c8fdea71128349.md) | 181 | `declaration-track:d15be49463c8fdea711283497b9f133e0e985629aac5d880d5d843edcc2f078c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
