# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AlternatingFaceMapComplex.Variant33d859f1b1c9ac6991f81950cae23356b5d637efd33692d3ebe869c504145ff7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "110989f28cc98a68ba2a5476fd0a828cbbc436de",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant33d859f1b1c9ac6991f81950cae23356b5d637efd33692d3ebe869c504145ff7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant33d859f1b1c9ac6991f81950cae23356b5d637efd33692d3ebe869c504145ff7.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant33d859f1b1c9ac6991f81950cae23356b5d637efd33692d3ebe869c504145ff7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `110989f28cc98a68ba2a5476fd0a828cbbc436de`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant33d859f1b1c9ac6991f81950cae23356b5d637efd33692d3ebe869c504145ff7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant33d859f1b1c9ac6991f81950cae23356b5d637efd33692d3ebe869c504145ff7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Additive` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.MooreComplex` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Fin` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Opposite` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Idempotents.FunctorCategories` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [objD](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant33d859f1b1c9ac6991f81950cae23356b5d637efd33692d3ebe869c504145ff7.lean/declarations/objd--f305bafba30de49915257f65.md) | 76 | `declaration-track:f305bafba30de49915257f65d534a6fc22abe7804ff90ef69f7cab25d275a1d7` |
| 2 | `theorem` | [d_squared](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant33d859f1b1c9ac6991f81950cae23356b5d637efd33692d3ebe869c504145ff7.lean/declarations/d-squared--aa723e60a025d618149e8eb3.md) | 82 | `result-track:aa723e60a025d618149e8eb329d29ab90382dc6f1ffc223cc4e919dc77f376f8` |
| 3 | `def` | [obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant33d859f1b1c9ac6991f81950cae23356b5d637efd33692d3ebe869c504145ff7.lean/declarations/obj--af9efe40ab37c6fbdc92fe27.md) | 133 | `declaration-track:af9efe40ab37c6fbdc92fe27c3a1d133686fce3a7c9282e71c7236a58424e1a9` |
| 4 | `theorem` | [obj_X](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant33d859f1b1c9ac6991f81950cae23356b5d637efd33692d3ebe869c504145ff7.lean/declarations/obj-x--14c0d21c80947557740f864f.md) | 138 | `result-track:14c0d21c80947557740f864f54bf9f4e9369d33cbbdd7a43c838f7a566774dc5` |
| 5 | `theorem` | [obj_d_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant33d859f1b1c9ac6991f81950cae23356b5d637efd33692d3ebe869c504145ff7.lean/declarations/obj-d-eq--c1d55a618bb9f25ce2929bc8.md) | 144 | `result-track:c1d55a618bb9f25ce2929bc8eded6615f7fed43e93ac44437ca0f1c7e982b6c1` |
| 6 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant33d859f1b1c9ac6991f81950cae23356b5d637efd33692d3ebe869c504145ff7.lean/declarations/map--231a18f38d779fd52dab26dd.md) | 152 | `declaration-track:231a18f38d779fd52dab26dd2fe194c5c699d0ae41c8ffb34cd46cf9eff49d88` |
| 7 | `theorem` | [map_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant33d859f1b1c9ac6991f81950cae23356b5d637efd33692d3ebe869c504145ff7.lean/declarations/map-f--1757d539972d61564d10623d.md) | 164 | `result-track:1757d539972d61564d10623dce2af4ba914468afb68b78110a5df3dac4daf80f` |
| 8 | `def` | [alternatingFaceMapComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant33d859f1b1c9ac6991f81950cae23356b5d637efd33692d3ebe869c504145ff7.lean/declarations/alternatingfacemapcomplex--f2aef2f66f234b657d726c9b.md) | 173 | `declaration-track:f2aef2f66f234b657d726c9b5337b531f160e198f7d3b61f16e4f1d628c92f63` |
| 9 | `theorem` | [alternatingFaceMapComplex_obj_X](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant33d859f1b1c9ac6991f81950cae23356b5d637efd33692d3ebe869c504145ff7.lean/declarations/alternatingfacemapcomplex-obj-x--c90ce9e4bfb58127c69e688f.md) | 181 | `result-track:c90ce9e4bfb58127c69e688f90a6516cb576fcc866c0f955e8033f2a8213b21f` |
| 10 | `theorem` | [alternatingFaceMapComplex_obj_d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant33d859f1b1c9ac6991f81950cae23356b5d637efd33692d3ebe869c504145ff7.lean/declarations/alternatingfacemapcomplex-obj-d--5af549d93af8dc58cf331cf8.md) | 188 | `result-track:5af549d93af8dc58cf331cf8790bf6eefe5b423af242d48821d4be142e5754b0` |
| 11 | `theorem` | [alternatingFaceMapComplex_map_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant33d859f1b1c9ac6991f81950cae23356b5d637efd33692d3ebe869c504145ff7.lean/declarations/alternatingfacemapcomplex-map-f--e326632a4a5ee1ffadc66736.md) | 195 | `result-track:e326632a4a5ee1ffadc66736fe1c040e3f1b42a0733761551243df85416d88de` |
| 12 | `theorem` | [map_alternatingFaceMapComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant33d859f1b1c9ac6991f81950cae23356b5d637efd33692d3ebe869c504145ff7.lean/declarations/map-alternatingfacemapcomplex--7e4c0750afa29acb4bca1542.md) | 200 | `result-track:7e4c0750afa29acb4bca1542b6f595f6bc01da2401357a2b9ec629f058d53b65` |
| 13 | `theorem` | [karoubi_alternatingFaceMapComplex_d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant33d859f1b1c9ac6991f81950cae23356b5d637efd33692d3ebe869c504145ff7.lean/declarations/karoubi-alternatingfacemapcomplex-d--bc6fefe389df322ad872dd69.md) | 222 | `result-track:bc6fefe389df322ad872dd69b8576ae53a3a95d405ae6bb6cec6c5217143ae02` |
| 14 | `def` | [ε](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant33d859f1b1c9ac6991f81950cae23356b5d637efd33692d3ebe869c504145ff7.lean/declarations/anonymous--7bb166ba7aa14ef42c2fdaaf.md) | 236 | `declaration-track:7bb166ba7aa14ef42c2fdaaf80f1069343472443569b72353f69497dc2202084` |
| 15 | `def` | [inclusionOfMooreComplexMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant33d859f1b1c9ac6991f81950cae23356b5d637efd33692d3ebe869c504145ff7.lean/declarations/inclusionofmoorecomplexmap--7a71498728785540411be331.md) | 259 | `declaration-track:7a71498728785540411be3311fbf87a065f50faa0114201d5289b77aee6853dd` |
| 16 | `theorem` | [inclusionOfMooreComplexMap_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant33d859f1b1c9ac6991f81950cae23356b5d637efd33692d3ebe869c504145ff7.lean/declarations/inclusionofmoorecomplexmap-f--a8da764e5cf2ae54794d5530.md) | 284 | `result-track:a8da764e5cf2ae54794d5530802471b1336fb43413d3b61e4d08cf5ff02378e1` |
| 17 | `def` | [inclusionOfMooreComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant33d859f1b1c9ac6991f81950cae23356b5d637efd33692d3ebe869c504145ff7.lean/declarations/inclusionofmoorecomplex--a4ee25e939f3f45f6eba15b6.md) | 296 | `declaration-track:a4ee25e939f3f45f6eba15b6278487a2df5635edb2da15cd10ca5d70bf07ff13` |
| 18 | `def` | [objD](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant33d859f1b1c9ac6991f81950cae23356b5d637efd33692d3ebe869c504145ff7.lean/declarations/objd--0a31a255eb03171bafce5257.md) | 308 | `declaration-track:0a31a255eb03171bafce5257f9b48cadddcd72df3737b1df4b17efc41e40a71a` |
| 19 | `theorem` | [d_eq_unop_d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant33d859f1b1c9ac6991f81950cae23356b5d637efd33692d3ebe869c504145ff7.lean/declarations/d-eq-unop-d--312e666ea9547b85522cd387.md) | 312 | `result-track:312e666ea9547b85522cd3876d9962c6540cd50045331d803c50eb7b7487d4e0` |
| 20 | `theorem` | [d_squared](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant33d859f1b1c9ac6991f81950cae23356b5d637efd33692d3ebe869c504145ff7.lean/declarations/d-squared--804b72e124f1df185d3d3c9e.md) | 320 | `result-track:804b72e124f1df185d3d3c9ec681999685155d81847577c41eff9ff229ec5989` |
| 21 | `def` | [obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant33d859f1b1c9ac6991f81950cae23356b5d637efd33692d3ebe869c504145ff7.lean/declarations/obj--ad973547cc77b690cdadf0fb.md) | 325 | `declaration-track:ad973547cc77b690cdadf0fb531a7cda3bdfb1ee8827587d04fe343481612d49` |
| 22 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant33d859f1b1c9ac6991f81950cae23356b5d637efd33692d3ebe869c504145ff7.lean/declarations/map--608fb8ed17ee910859d31a85.md) | 333 | `declaration-track:608fb8ed17ee910859d31a85cbcf634252c2a3c96f3e783340332b51036bcf6d` |
| 23 | `def` | [alternatingCofaceMapComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant33d859f1b1c9ac6991f81950cae23356b5d637efd33692d3ebe869c504145ff7.lean/declarations/alternatingcofacemapcomplex--9c19424a99603fa74481e3b3.md) | 350 | `declaration-track:9c19424a99603fa74481e3b34233eabad84cf7c56c5acc14c285c5f703ae9a69` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
