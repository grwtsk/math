# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Preserves.Variant52f106064477d35aec22639f9af5774d42dd8128258f24e6d39641cc78095a75

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "edab5329826cd79830569020fb205cfd3cbcd0b1",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant52f106064477d35aec22639f9af5774d42dd8128258f24e6d39641cc78095a75.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant52f106064477d35aec22639f9af5774d42dd8128258f24e6d39641cc78095a75.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant52f106064477d35aec22639f9af5774d42dd8128258f24e6d39641cc78095a75.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `edab5329826cd79830569020fb205cfd3cbcd0b1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant52f106064477d35aec22639f9af5774d42dd8128258f24e6d39641cc78095a75.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant52f106064477d35aec22639f9af5774d42dd8128258f24e6d39641cc78095a75.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.EffectiveEpi.Comp` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.EquivFin` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [effectiveEpiFamilyStructOfEquivalence_aux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant52f106064477d35aec22639f9af5774d42dd8128258f24e6d39641cc78095a75.lean/declarations/effectiveepifamilystructofequivalence-aux--2ad04ef8c71193b5b896ecaa.md) | 42 | `result-track:2ad04ef8c71193b5b896ecaa9a21daac316a9b70685592a011a9341085d73b89` |
| 2 | `def` | [effectiveEpiFamilyStructOfEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant52f106064477d35aec22639f9af5774d42dd8128258f24e6d39641cc78095a75.lean/declarations/effectiveepifamilystructofequivalence--c6632c1643acccfa19e83882.md) | 55 | `declaration-track:c6632c1643acccfa19e83882e9eb5bfce5b2efed6bffc84379ac6646cb115db3` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant52f106064477d35aec22639f9af5774d42dd8128258f24e6d39641cc78095a75.lean/declarations/instance--c2acd41e379e4544a5ac5d3d.md) | 79 | `declaration-track:c2acd41e379e4544a5ac5d3d24e6fd2467b137ced0d2130331ba381c743d11dd` |
| 4 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant52f106064477d35aec22639f9af5774d42dd8128258f24e6d39641cc78095a75.lean/declarations/example--7ae6b693a21c00904429150c.md) | 83 | `declaration-track:7ae6b693a21c00904429150c754801348a2f3ef5badeafd09ee9d9884db8139f` |
| 5 | `class` | [PreservesEffectiveEpis](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant52f106064477d35aec22639f9af5774d42dd8128258f24e6d39641cc78095a75.lean/declarations/preserveseffectiveepis--4b9726a4eb417d12ba775f77.md) | 97 | `declaration-track:4b9726a4eb417d12ba775f77945b001fa67d7a6c594b3fed901428f0fd0584c5` |
| 6 | `instance` | [map_effectiveEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant52f106064477d35aec22639f9af5774d42dd8128258f24e6d39641cc78095a75.lean/declarations/map-effectiveepi--3dffb6513bad4001fb8ed341.md) | 104 | `declaration-track:3dffb6513bad4001fb8ed341863f9e17c140c1fa76bb250cf4f158e0e875890e` |
| 7 | `class` | [PreservesEffectiveEpiFamilies](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant52f106064477d35aec22639f9af5774d42dd8128258f24e6d39641cc78095a75.lean/declarations/preserveseffectiveepifamilies--e7929fa5a64ec8aa3349420c.md) | 111 | `declaration-track:e7929fa5a64ec8aa3349420cbe0bdb55ea4b0992ea21277b5b9f9dfa75f06d37` |
| 8 | `instance` | [map_effectiveEpiFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant52f106064477d35aec22639f9af5774d42dd8128258f24e6d39641cc78095a75.lean/declarations/map-effectiveepifamily--636c94a6afeb98d24faac31e.md) | 119 | `declaration-track:636c94a6afeb98d24faac31e7aebbb94b8dc5e8b5d1d8a29fc5d27d76a1976bf` |
| 9 | `class` | [PreservesFiniteEffectiveEpiFamilies](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant52f106064477d35aec22639f9af5774d42dd8128258f24e6d39641cc78095a75.lean/declarations/preservesfiniteeffectiveepifamilies--c10faf1d04d737963588b6cd.md) | 127 | `declaration-track:c10faf1d04d737963588b6cd98dd534a7bb9fa0e9006f6ad7310579486e3a22d` |
| 10 | `instance` | [map_finite_effectiveEpiFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant52f106064477d35aec22639f9af5774d42dd8128258f24e6d39641cc78095a75.lean/declarations/map-finite-effectiveepifamily--af5261ec5920df799547a7e6.md) | 136 | `declaration-track:af5261ec5920df799547a7e67a87760b81bab97b33d8e81cecc11d1cb017ddba` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant52f106064477d35aec22639f9af5774d42dd8128258f24e6d39641cc78095a75.lean/declarations/instance--bec989779ec82d64e10fd8b9.md) | 141 | `declaration-track:bec989779ec82d64e10fd8b93a3994aa0dfa15c8edf37f3b324dab260a2873ed` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant52f106064477d35aec22639f9af5774d42dd8128258f24e6d39641cc78095a75.lean/declarations/instance--9c73da37fe875e5eb7ae2e84.md) | 145 | `declaration-track:9c73da37fe875e5eb7ae2e842d5ab2573562841b426be5571383a62e8de12d20` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant52f106064477d35aec22639f9af5774d42dd8128258f24e6d39641cc78095a75.lean/declarations/instance--58bac90f33b32a250778a514.md) | 148 | `declaration-track:58bac90f33b32a250778a5147a75822a04b09a3e07e28702e18f07a4f22ad721` |
| 14 | `class` | [ReflectsEffectiveEpis](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant52f106064477d35aec22639f9af5774d42dd8128258f24e6d39641cc78095a75.lean/declarations/reflectseffectiveepis--07a3b772046b1b5ece073ca1.md) | 158 | `declaration-track:07a3b772046b1b5ece073ca117047442d7062558951d675ec28f04f3f1cbdd31` |
| 15 | `lemma` | [effectiveEpi_of_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant52f106064477d35aec22639f9af5774d42dd8128258f24e6d39641cc78095a75.lean/declarations/effectiveepi-of-map--61d08daba6113a812fdcbf45.md) | 165 | `result-track:61d08daba6113a812fdcbf45d85fca0291f0e8e2b261b4da675b504bca725dfa` |
| 16 | `class` | [ReflectsEffectiveEpiFamilies](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant52f106064477d35aec22639f9af5774d42dd8128258f24e6d39641cc78095a75.lean/declarations/reflectseffectiveepifamilies--936797e1a32b3779e00152d9.md) | 172 | `declaration-track:936797e1a32b3779e00152d9086a1d29910ae8114f5ae6d56c9640811e8e4e91` |
| 17 | `lemma` | [effectiveEpiFamily_of_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant52f106064477d35aec22639f9af5774d42dd8128258f24e6d39641cc78095a75.lean/declarations/effectiveepifamily-of-map--bf1436380070d79945817340.md) | 181 | `result-track:bf1436380070d79945817340c4e05c2e04a5df19c236f78318296dc64d2eb22d` |
| 18 | `class` | [ReflectsFiniteEffectiveEpiFamilies](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant52f106064477d35aec22639f9af5774d42dd8128258f24e6d39641cc78095a75.lean/declarations/reflectsfiniteeffectiveepifamilies--af3e095f6318897e2110310a.md) | 190 | `declaration-track:af3e095f6318897e2110310a51083ddb1ecda2cd7c4689dfb63d006f4c681736` |
| 19 | `lemma` | [finite_effectiveEpiFamily_of_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant52f106064477d35aec22639f9af5774d42dd8128258f24e6d39641cc78095a75.lean/declarations/finite-effectiveepifamily-of-map--7fdc923ec4f1549501b40f5d.md) | 199 | `result-track:7fdc923ec4f1549501b40f5d15719846bac1ae534b8f2fde68e72d9fb326ace6` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant52f106064477d35aec22639f9af5774d42dd8128258f24e6d39641cc78095a75.lean/declarations/instance--7b6ec4828e098d628b44f4b9.md) | 205 | `declaration-track:7b6ec4828e098d628b44f4b946d01423329fb91509de106ddd52195f2ca3ece8` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant52f106064477d35aec22639f9af5774d42dd8128258f24e6d39641cc78095a75.lean/declarations/instance--22e33ded56e58c005a51fb6a.md) | 211 | `declaration-track:22e33ded56e58c005a51fb6a2c66a5d5fbb4f2b1e3ce810414e9c5a66f476710` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant52f106064477d35aec22639f9af5774d42dd8128258f24e6d39641cc78095a75.lean/declarations/instance--fd1c343ff98ad12dc3d802db.md) | 217 | `declaration-track:fd1c343ff98ad12dc3d802dbe84fb3675d7e7bf9b2d5a3d3e5a4147f6a7a9b92` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant52f106064477d35aec22639f9af5774d42dd8128258f24e6d39641cc78095a75.lean/declarations/instance--3b63b9d1f59ef3674971d584.md) | 220 | `declaration-track:3b63b9d1f59ef3674971d584ddfcfac72b995d5dafc09e05ca103fafe50e1e17` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
