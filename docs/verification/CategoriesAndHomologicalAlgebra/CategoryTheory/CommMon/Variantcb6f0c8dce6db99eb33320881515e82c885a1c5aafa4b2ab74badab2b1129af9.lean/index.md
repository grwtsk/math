# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CommMon.Variantcb6f0c8dce6db99eb33320881515e82c885a1c5aafa4b2ab74badab2b1129af9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1850ab3cfa042952640372f6a43da271583a6b1f",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb6f0c8dce6db99eb33320881515e82c885a1c5aafa4b2ab74badab2b1129af9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb6f0c8dce6db99eb33320881515e82c885a1c5aafa4b2ab74badab2b1129af9.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb6f0c8dce6db99eb33320881515e82c885a1c5aafa4b2ab74badab2b1129af9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1850ab3cfa042952640372f6a43da271583a6b1f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb6f0c8dce6db99eb33320881515e82c885a1c5aafa4b2ab74badab2b1129af9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb6f0c8dce6db99eb33320881515e82c885a1c5aafa4b2ab74badab2b1129af9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Braided` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Mon_` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CommMon_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb6f0c8dce6db99eb33320881515e82c885a1c5aafa4b2ab74badab2b1129af9.lean/declarations/commmon--5681901c08310bac89f32b40.md) | 24 | `declaration-track:5681901c08310bac89f32b406877b5e68cc08a35170953716aaf20d34f1f10f4` |
| 2 | `def` | [trivial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb6f0c8dce6db99eb33320881515e82c885a1c5aafa4b2ab74badab2b1129af9.lean/declarations/trivial--05f57412b74afa5686534dad.md) | 36 | `declaration-track:05f57412b74afa5686534dada5ae960ebc13e6a2cf76fde18e11a06b3b400abb` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb6f0c8dce6db99eb33320881515e82c885a1c5aafa4b2ab74badab2b1129af9.lean/declarations/instance--1bf2e7d933d69130c8fed6dd.md) | 41 | `declaration-track:1bf2e7d933d69130c8fed6ddc06878b591f9665c09f7f1ffaab0d648fec733ca` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb6f0c8dce6db99eb33320881515e82c885a1c5aafa4b2ab74badab2b1129af9.lean/declarations/instance--6e1731fa0193b86427dfcf4e.md) | 47 | `declaration-track:6e1731fa0193b86427dfcf4ea7e8a45c5b8cfc1f1f58ead5d9ffcba97cff1432` |
| 5 | `theorem` | [id_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb6f0c8dce6db99eb33320881515e82c885a1c5aafa4b2ab74badab2b1129af9.lean/declarations/id-hom--aa3c42efff091b6ed7b07f78.md) | 51 | `result-track:aa3c42efff091b6ed7b07f781e62d00bde5c3b55a931ad5728aa1259ff9a58dd` |
| 6 | `theorem` | [comp_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb6f0c8dce6db99eb33320881515e82c885a1c5aafa4b2ab74badab2b1129af9.lean/declarations/comp-hom--1edc449e1f687b655eecdd40.md) | 57 | `result-track:1edc449e1f687b655eecdd40e5497ef76b0334f742cf051e871d0b18d37f7c4d` |
| 7 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb6f0c8dce6db99eb33320881515e82c885a1c5aafa4b2ab74badab2b1129af9.lean/declarations/hom-ext--f0ba4ae21511a6ccebdb4b17.md) | 67 | `result-track:f0ba4ae21511a6ccebdb4b17396d93d01f4f193ebc1ea493d4c6cfa45bbd14d1` |
| 8 | `lemma` | [id'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb6f0c8dce6db99eb33320881515e82c885a1c5aafa4b2ab74badab2b1129af9.lean/declarations/id--6df1a21bb3098f1016230dcf.md) | 72 | `result-track:6df1a21bb3098f1016230dcfa61c106b1516bb35a596d96bcb85a73e720cc415` |
| 9 | `lemma` | [comp'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb6f0c8dce6db99eb33320881515e82c885a1c5aafa4b2ab74badab2b1129af9.lean/declarations/comp--79952042471f75f71b76fec9.md) | 75 | `result-track:79952042471f75f71b76fec9edb68aced6f0c6c0f19d26db15bb0905990efef0` |
| 10 | `def` | [forget₂Mon_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb6f0c8dce6db99eb33320881515e82c885a1c5aafa4b2ab74badab2b1129af9.lean/declarations/forget-mon--89ffef884346c35d27664f53.md) | 83 | `declaration-track:89ffef884346c35d27664f53bf2b59e0b41e81009406c60321c38248bdab2b9a` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb6f0c8dce6db99eb33320881515e82c885a1c5aafa4b2ab74badab2b1129af9.lean/declarations/instance--1052d6b0a1663f7f3275d037.md) | 89 | `declaration-track:1052d6b0a1663f7f3275d03727c6507faefde0c74b193b847e4f8c81c350463d` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb6f0c8dce6db99eb33320881515e82c885a1c5aafa4b2ab74badab2b1129af9.lean/declarations/instance--14effb78e2582581b990369d.md) | 90 | `declaration-track:14effb78e2582581b990369d3a4bc3f36b5e7726df66aa6d368e1cf05803a7e3` |
| 13 | `theorem` | [forget₂_Mon_obj_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb6f0c8dce6db99eb33320881515e82c885a1c5aafa4b2ab74badab2b1129af9.lean/declarations/forget-mon-obj-one--26aaf34dc31581642c50faf5.md) | 93 | `result-track:26aaf34dc31581642c50faf578e206079a04037f1254665e468a57c225244569` |
| 14 | `theorem` | [forget₂_Mon_obj_mul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb6f0c8dce6db99eb33320881515e82c885a1c5aafa4b2ab74badab2b1129af9.lean/declarations/forget-mon-obj-mul--e82879df5e2d070c3e4b3a1d.md) | 99 | `result-track:e82879df5e2d070c3e4b3a1d4cd4132772abdedb33a657c9bca128bb44a54e35` |
| 15 | `theorem` | [forget₂_Mon_map_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb6f0c8dce6db99eb33320881515e82c885a1c5aafa4b2ab74badab2b1129af9.lean/declarations/forget-mon-map-hom--841662973445120df0890235.md) | 105 | `result-track:841662973445120df08902351025600bf7cbcc5f896a2002dd8a9f97b9442b8d` |
| 16 | `instance` | [uniqueHomFromTrivial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb6f0c8dce6db99eb33320881515e82c885a1c5aafa4b2ab74badab2b1129af9.lean/declarations/uniquehomfromtrivial--f85cb0a56fe6b5d33993a465.md) | 112 | `declaration-track:f85cb0a56fe6b5d33993a4651465ec00fa4cfa48d8f284a7c36968cbcc27e5c8` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb6f0c8dce6db99eb33320881515e82c885a1c5aafa4b2ab74badab2b1129af9.lean/declarations/instance--2e0322587a037d08c7b1e0f6.md) | 119 | `declaration-track:2e0322587a037d08c7b1e0f629c2f856d0bbf9e2ee8e4399319c98792607ebd1` |
| 18 | `def` | [mapCommMon](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb6f0c8dce6db99eb33320881515e82c885a1c5aafa4b2ab74badab2b1129af9.lean/declarations/mapcommmon--7e2ee1a75392019ace210014.md) | 133 | `declaration-track:7e2ee1a75392019ace210014751bf40367946bbf0e0f787e2e9ccbc807985bec` |
| 19 | `def` | [mapCommMonFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb6f0c8dce6db99eb33320881515e82c885a1c5aafa4b2ab74badab2b1129af9.lean/declarations/mapcommmonfunctor--0e9e13fa5013865bbf5b5189.md) | 150 | `declaration-track:0e9e13fa5013865bbf5b5189161a9ddb9d204b929080d979cebe28233cb9f167` |
| 20 | `def` | [laxBraidedToCommMon](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb6f0c8dce6db99eb33320881515e82c885a1c5aafa4b2ab74badab2b1129af9.lean/declarations/laxbraidedtocommmon--086fc8e1f43ac9e3573c5e52.md) | 168 | `declaration-track:086fc8e1f43ac9e3573c5e52101401c526ecc0e088bbeb3898cb5c6eeed853f2` |
| 21 | `def` | [commMonToLaxBraided](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb6f0c8dce6db99eb33320881515e82c885a1c5aafa4b2ab74badab2b1129af9.lean/declarations/commmontolaxbraided--132f26dbd55343888fbd878f.md) | 176 | `declaration-track:132f26dbd55343888fbd878f6a79ae7986795800c5156c9ec63922e970684402` |
| 22 | `def` | [unitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb6f0c8dce6db99eb33320881515e82c885a1c5aafa4b2ab74badab2b1129af9.lean/declarations/unitiso--b806c095f537ab8aee8c19a9.md) | 194 | `declaration-track:b806c095f537ab8aee8c19a986d566e6b9264fb0120686cae2fe9b11c95834e3` |
| 23 | `def` | [counitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb6f0c8dce6db99eb33320881515e82c885a1c5aafa4b2ab74badab2b1129af9.lean/declarations/counitiso--2cd3e87999b4465a2bdb98cc.md) | 208 | `declaration-track:2cd3e87999b4465a2bdb98ccbf4f2f5c14c2199d90c3335ede436edf3ced189c` |
| 24 | `def` | [equivLaxBraidedFunctorPunit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb6f0c8dce6db99eb33320881515e82c885a1c5aafa4b2ab74badab2b1129af9.lean/declarations/equivlaxbraidedfunctorpunit--222a2d371ceff9ca4e0ebd1a.md) | 224 | `declaration-track:222a2d371ceff9ca4e0ebd1a0f728f206e1b1448f7e42e5c9a32d73096c273df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
