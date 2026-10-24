# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Countable.Variante4518fde7fa0210cf87b44e416e5d8fa5abc79d28448b026e0e7bf032d664e1e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "492c438e26500636379396dc1924d9f440145a54",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variante4518fde7fa0210cf87b44e416e5d8fa5abc79d28448b026e0e7bf032d664e1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variante4518fde7fa0210cf87b44e416e5d8fa5abc79d28448b026e0e7bf032d664e1e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variante4518fde7fa0210cf87b44e416e5d8fa5abc79d28448b026e0e7bf032d664e1e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `492c438e26500636379396dc1924d9f440145a54`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variante4518fde7fa0210cf87b44e416e5d8fa5abc79d28448b026e0e7bf032d664e1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variante4518fde7fa0210cf87b44e416e5d8fa5abc79d28448b026e0e7bf032d664e1e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Final` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.FiniteProducts` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Countable` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Countable.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasCountableLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variante4518fde7fa0210cf87b44e416e5d8fa5abc79d28448b026e0e7bf032d664e1e.lean/declarations/hascountablelimits--dabd088615c4fec421a3ee63.md) | 45 | `declaration-track:dabd088615c4fec421a3ee63a09b546a54cbc03845745f21be0a9cf76bfd369b` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variante4518fde7fa0210cf87b44e416e5d8fa5abc79d28448b026e0e7bf032d664e1e.lean/declarations/instance--bf0a4f2a2dc72e7f219e9a1c.md) | 50 | `declaration-track:bf0a4f2a2dc72e7f219e9a1c4bfba55bb377f9c1eaaa2636ec3ea6ffe5ffa3cb` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variante4518fde7fa0210cf87b44e416e5d8fa5abc79d28448b026e0e7bf032d664e1e.lean/declarations/instance--75d0dc0ae7b8afac203f1f57.md) | 54 | `declaration-track:75d0dc0ae7b8afac203f1f57be73ca503656f4160596f59a04f638789a008002` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variante4518fde7fa0210cf87b44e416e5d8fa5abc79d28448b026e0e7bf032d664e1e.lean/declarations/instance--628c041344af8d17ab422b94.md) | 59 | `declaration-track:628c041344af8d17ab422b949deeb881e281a24cb0d2fa48fc9656b4603f8630` |
| 5 | `class` | [HasCountableProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variante4518fde7fa0210cf87b44e416e5d8fa5abc79d28448b026e0e7bf032d664e1e.lean/declarations/hascountableproducts--60f6df0b967f06d4da50f9d0.md) | 64 | `declaration-track:60f6df0b967f06d4da50f9d004883479062287242de21e4e23f26b78310ad43f` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variante4518fde7fa0210cf87b44e416e5d8fa5abc79d28448b026e0e7bf032d664e1e.lean/declarations/instance--62346db9b086cec6f49a51e7.md) | 67 | `declaration-track:62346db9b086cec6f49a51e73d4161627c5592e0c965545c2cc4b7177d223f1d` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variante4518fde7fa0210cf87b44e416e5d8fa5abc79d28448b026e0e7bf032d664e1e.lean/declarations/instance--1923010231ed768c7bfe8340.md) | 72 | `declaration-track:1923010231ed768c7bfe8340831aa95c2dd0e25ab5cb18f8d8f09eac03482011` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variante4518fde7fa0210cf87b44e416e5d8fa5abc79d28448b026e0e7bf032d664e1e.lean/declarations/instance--d8345a2e9439c6e75aa2c5ea.md) | 78 | `declaration-track:d8345a2e9439c6e75aa2c5eaf35add106491afbd7e5778a57ece26250be90918` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variante4518fde7fa0210cf87b44e416e5d8fa5abc79d28448b026e0e7bf032d664e1e.lean/declarations/instance--4c491ea3b8e0bddeba9903b7.md) | 82 | `declaration-track:4c491ea3b8e0bddeba9903b78b4d19a263487ea5d461e6b7030a31850d29c1cd` |
| 10 | `class` | [HasCountableColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variante4518fde7fa0210cf87b44e416e5d8fa5abc79d28448b026e0e7bf032d664e1e.lean/declarations/hascountablecolimits--684b1a9f4fe45a820b0db99a.md) | 90 | `declaration-track:684b1a9f4fe45a820b0db99abe4bf27c818759599350eac3059923b005a0a8bf` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variante4518fde7fa0210cf87b44e416e5d8fa5abc79d28448b026e0e7bf032d664e1e.lean/declarations/instance--5dd096f1e92ce0b9152132c6.md) | 95 | `declaration-track:5dd096f1e92ce0b9152132c6b1e0d29c0de93c8754bc1b8aa3b3f46fec10c131` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variante4518fde7fa0210cf87b44e416e5d8fa5abc79d28448b026e0e7bf032d664e1e.lean/declarations/instance--ddb79f4d90829ae39e00c1f9.md) | 99 | `declaration-track:ddb79f4d90829ae39e00c1f9c5f2a563a77dff5b383d58802e73f90e9caac5bd` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variante4518fde7fa0210cf87b44e416e5d8fa5abc79d28448b026e0e7bf032d664e1e.lean/declarations/instance--5b5c90c6735334bbe3b17591.md) | 105 | `declaration-track:5b5c90c6735334bbe3b17591f54c67dfb52caf58f37bd59a61dae186b532a2e0` |
| 14 | `class` | [HasCountableCoproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variante4518fde7fa0210cf87b44e416e5d8fa5abc79d28448b026e0e7bf032d664e1e.lean/declarations/hascountablecoproducts--58b356f9840bb305b2a2535b.md) | 111 | `declaration-track:58b356f9840bb305b2a2535b6fa8d818974b6e0fdf973709dd24996feceb27a5` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variante4518fde7fa0210cf87b44e416e5d8fa5abc79d28448b026e0e7bf032d664e1e.lean/declarations/instance--fe6960ae0d3f1cd551934f31.md) | 114 | `declaration-track:fe6960ae0d3f1cd551934f31bb71effe161a1371685d0249810f8f02c1f7f78c` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variante4518fde7fa0210cf87b44e416e5d8fa5abc79d28448b026e0e7bf032d664e1e.lean/declarations/instance--6d128dcb147f26d0ecf59709.md) | 121 | `declaration-track:6d128dcb147f26d0ecf59709ba5033f890afc92610db3c6eff3d340e33bf9b65` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variante4518fde7fa0210cf87b44e416e5d8fa5abc79d28448b026e0e7bf032d664e1e.lean/declarations/instance--b07d94708664fc9d08d47363.md) | 126 | `declaration-track:b07d94708664fc9d08d4736340cf816bd5bc3ea04494ba08d8d9dfb8d6afd257` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variante4518fde7fa0210cf87b44e416e5d8fa5abc79d28448b026e0e7bf032d664e1e.lean/declarations/instance--c901a0c176abd57895278cff.md) | 130 | `declaration-track:c901a0c176abd57895278cff11bf2ae836000dfc4d5f978a85fe5f207d2c0f42` |
| 19 | `def` | [sequentialFunctor_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variante4518fde7fa0210cf87b44e416e5d8fa5abc79d28448b026e0e7bf032d664e1e.lean/declarations/sequentialfunctor-obj--a4d3efd5b8d5afa03c9aa819.md) | 143 | `declaration-track:a4d3efd5b8d5afa03c9aa81918c118668389064d202ed3cf5f303a53f9ebe479` |
| 20 | `theorem` | [sequentialFunctor_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variante4518fde7fa0210cf87b44e416e5d8fa5abc79d28448b026e0e7bf032d664e1e.lean/declarations/sequentialfunctor-map--9c8f5309860fc854a016db3e.md) | 148 | `result-track:9c8f5309860fc854a016db3e14facf673b39346d2c7444224ebfa49554a78c27` |
| 21 | `def` | [sequentialFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variante4518fde7fa0210cf87b44e416e5d8fa5abc79d28448b026e0e7bf032d664e1e.lean/declarations/sequentialfunctor--1d07c24d0a0f36c72083c4aa.md) | 157 | `declaration-track:1d07c24d0a0f36c72083c4aa6d2430efd68caae9bdbbd898459529c4747e6b92` |
| 22 | `theorem` | [sequentialFunctor_final_aux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variante4518fde7fa0210cf87b44e416e5d8fa5abc79d28448b026e0e7bf032d664e1e.lean/declarations/sequentialfunctor-final-aux--b504c1b82258e7814f21beba.md) | 161 | `result-track:b504c1b82258e7814f21beba855e49ead01ffadcc854e395da312daa2b4faac0` |
| 23 | `instance` | [sequentialFunctor_final](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variante4518fde7fa0210cf87b44e416e5d8fa5abc79d28448b026e0e7bf032d664e1e.lean/declarations/sequentialfunctor-final--806919fe20c0d83c67b0147f.md) | 167 | `declaration-track:806919fe20c0d83c67b0147fef15f4572b562550c95ebe458639cbfd68b12e9c` |
| 24 | `def` | [sequentialFunctor_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variante4518fde7fa0210cf87b44e416e5d8fa5abc79d28448b026e0e7bf032d664e1e.lean/declarations/sequentialfunctor-obj--6b283d1aaad55b5ffc211de2.md) | 191 | `declaration-track:6b283d1aaad55b5ffc211de27854b2a2bff1c3528b8af87b8b42da5adc918f60` |
| 25 | `theorem` | [sequentialFunctor_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variante4518fde7fa0210cf87b44e416e5d8fa5abc79d28448b026e0e7bf032d664e1e.lean/declarations/sequentialfunctor-map--9e78d7a5c38761ded06d7041.md) | 196 | `result-track:9e78d7a5c38761ded06d7041b6e878141cb6220a0bdb2973711b9b1d052699a9` |
| 26 | `def` | [sequentialFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variante4518fde7fa0210cf87b44e416e5d8fa5abc79d28448b026e0e7bf032d664e1e.lean/declarations/sequentialfunctor--c509eb5855ea0fa07965ad6e.md) | 208 | `declaration-track:c509eb5855ea0fa07965ad6e63e78c6a941f2b79bac9cc1ccde47a7857bb8c18` |
| 27 | `theorem` | [sequentialFunctor_initial_aux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variante4518fde7fa0210cf87b44e416e5d8fa5abc79d28448b026e0e7bf032d664e1e.lean/declarations/sequentialfunctor-initial-aux--978901ebf40364219ef939a7.md) | 212 | `result-track:978901ebf40364219ef939a75f50cbc58ed9d227e4b81d845b0e8dfe6499a7a2` |
| 28 | `instance` | [sequentialFunctor_initial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variante4518fde7fa0210cf87b44e416e5d8fa5abc79d28448b026e0e7bf032d664e1e.lean/declarations/sequentialfunctor-initial--519987d6f9a74599ad1d4642.md) | 218 | `declaration-track:519987d6f9a74599ad1d46427838f7b1d4e8e331f1e5a681d70f53b6526972d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
