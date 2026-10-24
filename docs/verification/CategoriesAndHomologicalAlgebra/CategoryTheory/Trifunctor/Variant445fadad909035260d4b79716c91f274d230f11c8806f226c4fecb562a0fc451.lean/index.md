# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Trifunctor.Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "299be7938d2c77392c4681e50faa5a9b864cb525",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `299be7938d2c77392c4681e50faa5a9b864cb525`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.GradedObject.Bifunctor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.Trifunctor` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mapTrifunctorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean/declarations/maptrifunctorobj--4fbbeac26f9beac34d5352c8.md) | 49 | `declaration-track:4fbbeac26f9beac34d5352c85e4a4b6e2a6f097d8d210a19b7d85b9db03c3602` |
| 2 | `def` | [mapTrifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean/declarations/maptrifunctor--0f1da04a20393773c39ada16.md) | 62 | `declaration-track:0f1da04a20393773c39ada164b2f5ab8fd93ac5634636ac91068163c212f85cb` |
| 3 | `def` | [mapTrifunctorMapNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean/declarations/maptrifunctormapnattrans--5e62260b86b31863c2261660.md) | 84 | `declaration-track:5e62260b86b31863c22616606d0448016fcb922005ef6f8e44ef643d6bc3c31b` |
| 4 | `def` | [mapTrifunctorMapIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean/declarations/maptrifunctormapiso--5f93398d7118470a8db45206.md) | 101 | `declaration-track:5f93398d7118470a8db452062f4fc2eb7e0f749a392975f41f6d662570e4f1f9` |
| 5 | `def` | [mapTrifunctorMapObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean/declarations/maptrifunctormapobj--04a664fbb873a72ec07d5073.md) | 125 | `declaration-track:04a664fbb873a72ec07d507349bd854ab100cf7dfc2ee7f3f607e34bdd6b2511` |
| 6 | `def` | [ιMapTrifunctorMapObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean/declarations/maptrifunctormapobj--51b097aef1af9b2cacc8b85a.md) | 134 | `declaration-track:51b097aef1af9b2cacc8b85a521b2a66e0c99f669de6765b8ef496f3accc06ea` |
| 7 | `def` | [mapTrifunctorMapMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean/declarations/maptrifunctormapmap--6bc9595d0879e1bd3c0e12f1.md) | 142 | `declaration-track:6bc9595d0879e1bd3c0e12f1d252d14011c5eaa40e10ab410f39a6d87e208a38` |
| 8 | `lemma` | [ι_mapTrifunctorMapMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean/declarations/maptrifunctormapmap--e567c341b556755b093ec1f5.md) | 153 | `result-track:e567c341b556755b093ec1f56828e446515bcbe3f785c6b8abe186101aecdff0` |
| 9 | `lemma` | [mapTrifunctorMapObj_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean/declarations/maptrifunctormapobj-ext--77aafa7f48881d928ca7053d.md) | 170 | `result-track:77aafa7f48881d928ca7053d2a80e930636b438744e1c6d7115a983c7f15e20c` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean/declarations/instance--1c5542a7e45fdc49e55752b1.md) | 181 | `declaration-track:1c5542a7e45fdc49e55752b15ede48548c83ddd05ca822240a3717938286c6ab` |
| 11 | `def` | [mapTrifunctorMapFunctorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean/declarations/maptrifunctormapfunctorobj--63dd0f3ecce2ab5ecbe894a1.md) | 190 | `declaration-track:63dd0f3ecce2ab5ecbe894a142d72b80b814c450e6b6b21e2305b16abd800e54` |
| 12 | `def` | [mapTrifunctorMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean/declarations/maptrifunctormap--05cb1333bc3486c1e1987ef5.md) | 230 | `declaration-track:05cb1333bc3486c1e1987ef57a085c68e73283525fd2ceb27a10a879dd760d14` |
| 13 | `structure` | [BifunctorComp₁₂IndexData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean/declarations/bifunctorcomp-indexdata--8c6a40e6369e78b339ab5582.md) | 263 | `declaration-track:8c6a40e6369e78b339ab5582d0d4f1b6844ac7fa902205d15c431f28cff7796a` |
| 14 | `abbrev` | [HasGoodTrifunctor₁₂Obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean/declarations/hasgoodtrifunctor-obj--e9d76ec81a2f92f82607162e.md) | 280 | `declaration-track:e9d76ec81a2f92f82607162e46f3f2a1bbf89027191dfe8307f0b3f3c3c8c53a` |
| 15 | `def` | [ιMapBifunctor₁₂BifunctorMapObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean/declarations/mapbifunctor-bifunctormapobj--9b9d1139f1c7f950ec5b7425.md) | 291 | `declaration-track:9b9d1139f1c7f950ec5b74257ac5e748e108a578d80f7b9ce687cf542c965326` |
| 16 | `lemma` | [ιMapBifunctor₁₂BifunctorMapObj_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean/declarations/mapbifunctor-bifunctormapobj-eq--b4c7f8bce5d2d83544718c1c.md) | 300 | `result-track:b4c7f8bce5d2d83544718c1c88f302cb2f987bcff8552f75c562f04c132359b6` |
| 17 | `def` | [cofan₃MapBifunctor₁₂BifunctorMapObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean/declarations/cofan-mapbifunctor-bifunctormapobj--4f66ddfa598f8525ee4404d6.md) | 310 | `declaration-track:4f66ddfa598f8525ee4404d63fe80091397a228387521a569de8965a52860a0d` |
| 18 | `def` | [isColimitCofan₃MapBifunctor₁₂BifunctorMapObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean/declarations/iscolimitcofan-mapbifunctor-bifunctormapobj--01002c6dd2faf2b761ad6832.md) | 321 | `declaration-track:01002c6dd2faf2b761ad6832277ed9840e1babbd3dfc9434661e299a2fe8d2b6` |
| 19 | `lemma` | [HasGoodTrifunctor₁₂Obj.hasMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean/declarations/hasgoodtrifunctor-obj-hasmap--52c350d29ab144c67e7dbd5f.md) | 361 | `result-track:52c350d29ab144c67e7dbd5fcc8138c5aea42104e4ca31f95915f2b6e67bbb72` |
| 20 | `def` | [mapBifunctorComp₁₂MapObjIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean/declarations/mapbifunctorcomp-mapobjiso--474f9ef8353042826707a354.md) | 372 | `declaration-track:474f9ef8353042826707a354e7f90ddb2f82365595ec777ef28917d931241542` |
| 21 | `lemma` | [ι_mapBifunctorComp₁₂MapObjIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean/declarations/mapbifunctorcomp-mapobjiso-hom--6364b952df32ab20ebe3ebe0.md) | 379 | `result-track:6364b952df32ab20ebe3ebe0ea37ba72cd4465ccabbef51d186d2946973b6bb5` |
| 22 | `lemma` | [ι_mapBifunctorComp₁₂MapObjIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean/declarations/mapbifunctorcomp-mapobjiso-inv--6c31b1e033c4a39b769c869a.md) | 388 | `result-track:6c31b1e033c4a39b769c869a3512dfe50fc458dd48dff2b1e8e8018e8c03c8fb` |
| 23 | `lemma` | [mapBifunctor₁₂BifunctorMapObj_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean/declarations/mapbifunctor-bifunctormapobj-ext--73d15e93acdc65986821c4ff.md) | 402 | `result-track:73d15e93acdc65986821c4ffcb522763da7e2720e56ba6e806fa82fcffb18e05` |
| 24 | `def` | [mapBifunctor₁₂BifunctorDesc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean/declarations/mapbifunctor-bifunctordesc--96a1f2ea645b6b3f9c83e5a3.md) | 418 | `declaration-track:96a1f2ea645b6b3f9c83e5a3e7f4f51cb85c9e08758f57a4a2ac43829142334c` |
| 25 | `lemma` | [ι_mapBifunctor₁₂BifunctorDesc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean/declarations/mapbifunctor-bifunctordesc--040502a9d5b5f1ba64e39768.md) | 424 | `result-track:040502a9d5b5f1ba64e397685874998866c1d641f9e078beed29aa162001fc58` |
| 26 | `structure` | [BifunctorComp₂₃IndexData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean/declarations/bifunctorcomp-indexdata--707687c6242a09e31b9c7699.md) | 443 | `declaration-track:707687c6242a09e31b9c76999c895cf3c6e67cdfc5f16534dccb6c34e2d65b70` |
| 27 | `abbrev` | [HasGoodTrifunctor₂₃Obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean/declarations/hasgoodtrifunctor-obj--4f249400f30c169cd94a05a5.md) | 460 | `declaration-track:4f249400f30c169cd94a05a5c26ebcd13be3a31651747b7ad8203fce71dbb899` |
| 28 | `def` | [ιMapBifunctorBifunctor₂₃MapObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean/declarations/mapbifunctorbifunctor-mapobj--7cb66fac2b4021ef689d8121.md) | 470 | `declaration-track:7cb66fac2b4021ef689d8121f28fcc26d675fdf7491577e26dd4ecd26910196c` |
| 29 | `lemma` | [ιMapBifunctorBifunctor₂₃MapObj_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean/declarations/mapbifunctorbifunctor-mapobj-eq--d4854d20f67b8c407a920737.md) | 479 | `result-track:d4854d20f67b8c407a9207375f5b6ec29687e99854ec38bc89eb2943cc5ce385` |
| 30 | `def` | [cofan₃MapBifunctorBifunctor₂₃MapObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean/declarations/cofan-mapbifunctorbifunctor-mapobj--098dadebdc01267baeaeb2dd.md) | 489 | `declaration-track:098dadebdc01267baeaeb2ddcaa1e47d82fab3d0a39396c771aaaefd41a4ddea` |
| 31 | `def` | [isColimitCofan₃MapBifunctorBifunctor₂₃MapObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean/declarations/iscolimitcofan-mapbifunctorbifunctor-mapobj--48775e796aa5dc2d79a8ffb7.md) | 500 | `declaration-track:48775e796aa5dc2d79a8ffb729acf31535b302580dead96c27be88950dd97daa` |
| 32 | `lemma` | [HasGoodTrifunctor₂₃Obj.hasMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean/declarations/hasgoodtrifunctor-obj-hasmap--a3db46e115b576ed9e061cb2.md) | 539 | `result-track:a3db46e115b576ed9e061cb2da91e5292dfbfaed1dbb83de7076a12be6c55d42` |
| 33 | `def` | [mapBifunctorComp₂₃MapObjIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean/declarations/mapbifunctorcomp-mapobjiso--b66251c2125ffc68147a734f.md) | 550 | `declaration-track:b66251c2125ffc68147a734fb192a5f45ab84d8c2d8d4f2c07b90a97335c1c40` |
| 34 | `lemma` | [ι_mapBifunctorComp₂₃MapObjIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean/declarations/mapbifunctorcomp-mapobjiso-hom--e6ff88dfbcda94d19ba788d0.md) | 557 | `result-track:e6ff88dfbcda94d19ba788d0d3683d9008cceb86c5066f25ae539f27573726a3` |
| 35 | `lemma` | [ι_mapBifunctorComp₂₃MapObjIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean/declarations/mapbifunctorcomp-mapobjiso-inv--3eb242f031747a7aa3da69d4.md) | 566 | `result-track:3eb242f031747a7aa3da69d4c1b75998f5f98e5cc834ba76f8a146a4ae8be13d` |
| 36 | `lemma` | [mapBifunctorBifunctor₂₃MapObj_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean/declarations/mapbifunctorbifunctor-mapobj-ext--549424ff89075e70c8d698dd.md) | 580 | `result-track:549424ff89075e70c8d698dd9879b53e2afa427afbb32cf69de236fd6ad4122d` |
| 37 | `def` | [mapBifunctorBifunctor₂₃Desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean/declarations/mapbifunctorbifunctor-desc--87f4cdea110dc64b6576a7a4.md) | 597 | `declaration-track:87f4cdea110dc64b6576a7a4e92df47489049cdd35f6d7c0a3b49a554a5c5c94` |
| 38 | `lemma` | [ι_mapBifunctorBifunctor₂₃Desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean/declarations/mapbifunctorbifunctor-desc--9e8a085b83c2ebe1a0746eed.md) | 603 | `result-track:9e8a085b83c2ebe1a0746eed64ade2b306b4d00f6d928852689f7dcee52d65e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
