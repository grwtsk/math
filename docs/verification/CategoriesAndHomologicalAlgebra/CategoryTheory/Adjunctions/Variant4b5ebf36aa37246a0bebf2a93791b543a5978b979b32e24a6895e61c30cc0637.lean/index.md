# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Adjunctions.Variant4b5ebf36aa37246a0bebf2a93791b543a5978b979b32e24a6895e61c30cc0637

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1c18e403ab98ff1f5dd1b7848f45f8b23a9ef9b",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant4b5ebf36aa37246a0bebf2a93791b543a5978b979b32e24a6895e61c30cc0637.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant4b5ebf36aa37246a0bebf2a93791b543a5978b979b32e24a6895e61c30cc0637.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant4b5ebf36aa37246a0bebf2a93791b543a5978b979b32e24a6895e61c30cc0637.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1c18e403ab98ff1f5dd1b7848f45f8b23a9ef9b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant4b5ebf36aa37246a0bebf2a93791b543a5978b979b32e24a6895e61c30cc0637.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant4b5ebf36aa37246a0bebf2a93791b543a5978b979b32e24a6895e61c30cc0637.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Monoidal.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Types.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.DirectSum.Finsupp` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Linear.LinearFunctor` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [free](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant4b5ebf36aa37246a0bebf2a93791b543a5978b979b32e24a6895e61c30cc0637.lean/declarations/free--3b20b187e9368b27a5af50d2.md) | 45 | `declaration-track:3b20b187e9368b27a5af50d2972f518c1cbbcc179800c6b744e3e786b3df4bbd` |
| 2 | `def` | [freeMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant4b5ebf36aa37246a0bebf2a93791b543a5978b979b32e24a6895e61c30cc0637.lean/declarations/freemk--f855a51479156465a0f872a5.md) | 54 | `declaration-track:f855a51479156465a0f872a5ec7c7ee36e612d01bb8bf8cfb4a2cd3cf1ccf6ed` |
| 3 | `lemma` | [free_hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant4b5ebf36aa37246a0bebf2a93791b543a5978b979b32e24a6895e61c30cc0637.lean/declarations/free-hom-ext--af64bf58d9c9af93ded65cc4.md) | 57 | `result-track:af64bf58d9c9af93ded65cc48d446e02053e98363c2caf460c2841a1ba8a2d30` |
| 4 | `def` | [freeDesc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant4b5ebf36aa37246a0bebf2a93791b543a5978b979b32e24a6895e61c30cc0637.lean/declarations/freedesc--fce93fbae737a2a56f700ca2.md) | 64 | `declaration-track:fce93fbae737a2a56f700ca232592ec0dfad33177393740abb090d41ef9cbae2` |
| 5 | `lemma` | [freeDesc_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant4b5ebf36aa37246a0bebf2a93791b543a5978b979b32e24a6895e61c30cc0637.lean/declarations/freedesc-apply--4bce7913eedc13e754e312b8.md) | 69 | `result-track:4bce7913eedc13e754e312b8a809d825aac04806feb5dec548fbefb754430353` |
| 6 | `lemma` | [free_map_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant4b5ebf36aa37246a0bebf2a93791b543a5978b979b32e24a6895e61c30cc0637.lean/declarations/free-map-apply--0cb52b1ce9d254e51eaf1aed.md) | 76 | `result-track:0cb52b1ce9d254e51eaf1aed771d8813bd882ef59be1a945bb07520a0b89a9cc` |
| 7 | `def` | [freeHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant4b5ebf36aa37246a0bebf2a93791b543a5978b979b32e24a6895e61c30cc0637.lean/declarations/freehomequiv--e802e1f530eb5e04a2a4a511.md) | 82 | `declaration-track:e802e1f530eb5e04a2a4a5116e00bda90c45e343c930d34821c6087c666c0a64` |
| 8 | `def` | [adj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant4b5ebf36aa37246a0bebf2a93791b543a5978b979b32e24a6895e61c30cc0637.lean/declarations/adj--c885bba236aae5f0c0029732.md) | 93 | `declaration-track:c885bba236aae5f0c00297320a1655fd6b4b0fe82f694cef580c2d5912115325` |
| 9 | `lemma` | [adj_homEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant4b5ebf36aa37246a0bebf2a93791b543a5978b979b32e24a6895e61c30cc0637.lean/declarations/adj-homequiv--af8d1a356f6b1ae96366fa16.md) | 99 | `result-track:af8d1a356f6b1ae96366fa163679d14926bb60a732bafcc99637e875318ebbf5` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant4b5ebf36aa37246a0bebf2a93791b543a5978b979b32e24a6895e61c30cc0637.lean/declarations/instance--68136b433bb1d55634e1e3c5.md) | 103 | `declaration-track:68136b433bb1d55634e1e3c5e9cda70c5a475eb37900ecd7f70631d1e5ba2f42` |
| 11 | `def` | [εIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant4b5ebf36aa37246a0bebf2a93791b543a5978b979b32e24a6895e61c30cc0637.lean/declarations/iso--d9469f06180f8a815a9f20e5.md) | 119 | `declaration-track:d9469f06180f8a815a9f20e513fdbefecbd0f6ef4b39eb90056ce2b3316db4e7` |
| 12 | `lemma` | [εIso_hom_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant4b5ebf36aa37246a0bebf2a93791b543a5978b979b32e24a6895e61c30cc0637.lean/declarations/iso-hom-one--73ffa23fa3cfd67a3e1ae921.md) | 132 | `result-track:73ffa23fa3cfd67a3e1ae921e57d4e05dc96c100111efc200d4c98302cae129e` |
| 13 | `lemma` | [εIso_inv_freeMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant4b5ebf36aa37246a0bebf2a93791b543a5978b979b32e24a6895e61c30cc0637.lean/declarations/iso-inv-freemk--f2659090d330388c992e6238.md) | 135 | `result-track:f2659090d330388c992e6238dfa806f3f92b3b1fb42ac6c7dbd68e00aefb5bcf` |
| 14 | `def` | [μIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant4b5ebf36aa37246a0bebf2a93791b543a5978b979b32e24a6895e61c30cc0637.lean/declarations/iso--fee74eba24229b52e0b90c17.md) | 144 | `declaration-track:fee74eba24229b52e0b90c176265a387e7a833f3938cfe7a326478717ecbc9e2` |
| 15 | `lemma` | [μIso_hom_freeMk_tmul_freeMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant4b5ebf36aa37246a0bebf2a93791b543a5978b979b32e24a6895e61c30cc0637.lean/declarations/iso-hom-freemk-tmul-freemk--2853d2f8e2434262e85cb2ef.md) | 149 | `result-track:2853d2f8e2434262e85cb2ef478ab1b7ffadaf406fc42ef4dd4d4d4f4ff83175` |
| 16 | `lemma` | [μIso_inv_freeMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant4b5ebf36aa37246a0bebf2a93791b543a5978b979b32e24a6895e61c30cc0637.lean/declarations/iso-inv-freemk--a49dd898e5141027b82b4f12.md) | 156 | `result-track:a49dd898e5141027b82b4f1248c367ed41b2ba0ece4ea594fdb868dc6b4aca4d` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant4b5ebf36aa37246a0bebf2a93791b543a5978b979b32e24a6895e61c30cc0637.lean/declarations/instance--79a11840a0864902968ee6d1.md) | 165 | `declaration-track:79a11840a0864902968ee6d1be7c3937de6abbef8e91e645cfc998fa4f6a15c4` |
| 18 | `lemma` | [free_ε_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant4b5ebf36aa37246a0bebf2a93791b543a5978b979b32e24a6895e61c30cc0637.lean/declarations/free-one--df5938497aba6f5841c88a1a.md) | 195 | `result-track:df5938497aba6f5841c88a1a65ef43d11fabde575e07e34b826c51992911c1b1` |
| 19 | `lemma` | [free_η_freeMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant4b5ebf36aa37246a0bebf2a93791b543a5978b979b32e24a6895e61c30cc0637.lean/declarations/free-freemk--a219103bb2e926655ce955c1.md) | 198 | `result-track:a219103bb2e926655ce955c18cfbbe979fccb1934350089fd1e54f3015cb31b2` |
| 20 | `lemma` | [free_μ_freeMk_tmul_freeMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant4b5ebf36aa37246a0bebf2a93791b543a5978b979b32e24a6895e61c30cc0637.lean/declarations/free-freemk-tmul-freemk--7d4b00e1cf5d3ebe3d5228a4.md) | 202 | `result-track:7d4b00e1cf5d3ebe3d5228a42289d14934c7784b18d763378efe533d185774eb` |
| 21 | `lemma` | [free_δ_freeMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant4b5ebf36aa37246a0bebf2a93791b543a5978b979b32e24a6895e61c30cc0637.lean/declarations/free-freemk--bb90131ca330cee4a7fde19c.md) | 207 | `result-track:bb90131ca330cee4a7fde19ca1499c5af95ba25088924168ada33dfb24d33e3e` |
| 22 | `def` | [Free](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant4b5ebf36aa37246a0bebf2a93791b543a5978b979b32e24a6895e61c30cc0637.lean/declarations/free--1f0bc25bd98fa20ccf17c35d.md) | 224 | `declaration-track:1f0bc25bd98fa20ccf17c35d07ce6bc890683278856397e3690cd0a0c097db9d` |
| 23 | `def` | [Free.of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant4b5ebf36aa37246a0bebf2a93791b543a5978b979b32e24a6895e61c30cc0637.lean/declarations/free-of--21b1e5d8a17ca954dd60cb2a.md) | 232 | `declaration-track:21b1e5d8a17ca954dd60cb2af781d9bd0d23413d7bdb5473a2f7c398d0910237` |
| 24 | `instance` | [categoryFree](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant4b5ebf36aa37246a0bebf2a93791b543a5978b979b32e24a6895e61c30cc0637.lean/declarations/categoryfree--665f8854fbc02ece7a16985a.md) | 242 | `declaration-track:665f8854fbc02ece7a16985a4ef27d7864f9447b25047401827744325d0d26b6` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant4b5ebf36aa37246a0bebf2a93791b543a5978b979b32e24a6895e61c30cc0637.lean/declarations/instance--ed12b956e9ca6fb8b895e43b.md) | 257 | `declaration-track:ed12b956e9ca6fb8b895e43b75d3fee1955c1100f13a0e35538038823a9a17a8` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant4b5ebf36aa37246a0bebf2a93791b543a5978b979b32e24a6895e61c30cc0637.lean/declarations/instance--89a61e9c74085ef16b2690f4.md) | 268 | `declaration-track:89a61e9c74085ef16b2690f460874dafd8e75e15c4741d499753f3c4cee78082` |
| 27 | `theorem` | [single_comp_single](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant4b5ebf36aa37246a0bebf2a93791b543a5978b979b32e24a6895e61c30cc0637.lean/declarations/single-comp-single--242c5cfab8b05f3f59458ab8.md) | 279 | `result-track:242c5cfab8b05f3f59458ab836dd83b8dc221c731c474aa17274d11cb8134ab1` |
| 28 | `def` | [embedding](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant4b5ebf36aa37246a0bebf2a93791b543a5978b979b32e24a6895e61c30cc0637.lean/declarations/embedding--2082f89292cac508c10bfb3b.md) | 290 | `declaration-track:2082f89292cac508c10bfb3b63e37a09679b4fc22abafd9e2e7e049273ef0c5d` |
| 29 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant4b5ebf36aa37246a0bebf2a93791b543a5978b979b32e24a6895e61c30cc0637.lean/declarations/lift--7e34402550114dee6e707906.md) | 305 | `declaration-track:7e34402550114dee6e707906a62cf38eae64e85ba5b60fa68d77c8735cccf07a` |
| 30 | `theorem` | [lift_map_single](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant4b5ebf36aa37246a0bebf2a93791b543a5978b979b32e24a6895e61c30cc0637.lean/declarations/lift-map-single--69da2f98c038d965ecd165c1.md) | 335 | `result-track:69da2f98c038d965ecd165c1900be38c30102cb4a871331b2508394781cd6dd6` |
| 31 | `instance` | [lift_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant4b5ebf36aa37246a0bebf2a93791b543a5978b979b32e24a6895e61c30cc0637.lean/declarations/lift-additive--55c78212f139522e0292dd5b.md) | 338 | `declaration-track:55c78212f139522e0292dd5b77ccce3d6955fc753ccf1ac4f5d5d9dc3a2a915b` |
| 32 | `instance` | [lift_linear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant4b5ebf36aa37246a0bebf2a93791b543a5978b979b32e24a6895e61c30cc0637.lean/declarations/lift-linear--1df9083b72164d042cc2050e.md) | 343 | `declaration-track:1df9083b72164d042cc2050e17aa47ea271ec53e0ee8c133781cc63874f786a6` |
| 33 | `def` | [embeddingLiftIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant4b5ebf36aa37246a0bebf2a93791b543a5978b979b32e24a6895e61c30cc0637.lean/declarations/embeddingliftiso--6255739b4c27f4231577f951.md) | 351 | `declaration-track:6255739b4c27f4231577f951944e6507b5ad0dbc80a907027811f4e2579a0bc9` |
| 34 | `def` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant4b5ebf36aa37246a0bebf2a93791b543a5978b979b32e24a6895e61c30cc0637.lean/declarations/ext--cdc6f899cc1203e8842f7447.md) | 357 | `declaration-track:cdc6f899cc1203e8842f74475f20c7b84f9ed43a91f0be38af1eede52f5f8ea5` |
| 35 | `def` | [liftUnique](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant4b5ebf36aa37246a0bebf2a93791b543a5978b979b32e24a6895e61c30cc0637.lean/declarations/liftunique--ebcb6505f387e746db25efdd.md) | 375 | `declaration-track:ebcb6505f387e746db25efddba857a70d6a6d13d73e27fa9dc7069a8052417e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
