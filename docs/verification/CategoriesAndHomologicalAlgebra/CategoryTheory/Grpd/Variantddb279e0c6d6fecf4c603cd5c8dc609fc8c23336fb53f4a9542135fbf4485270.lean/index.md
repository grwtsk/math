# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Grpd.Variantddb279e0c6d6fecf4c603cd5c8dc609fc8c23336fb53f4a9542135fbf4485270

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e248223a6f294c5e6424926a6ec26125e19ac5f",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variantddb279e0c6d6fecf4c603cd5c8dc609fc8c23336fb53f4a9542135fbf4485270.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variantddb279e0c6d6fecf4c603cd5c8dc609fc8c23336fb53f4a9542135fbf4485270.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variantddb279e0c6d6fecf4c603cd5c8dc609fc8c23336fb53f4a9542135fbf4485270.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e248223a6f294c5e6424926a6ec26125e19ac5f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variantddb279e0c6d6fecf4c603cd5c8dc609fc8c23336fb53f4a9542135fbf4485270.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variantddb279e0c6d6fecf4c603cd5c8dc609fc8c23336fb53f4a9542135fbf4485270.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.SingleObj` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Products` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Grpd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variantddb279e0c6d6fecf4c603cd5c8dc609fc8c23336fb53f4a9542135fbf4485270.lean/declarations/grpd--6e475126d16716fd638d8096.md) | 34 | `declaration-track:6e475126d16716fd638d809663ae1613bbd8c4045b44f007f97e4eeb1597da00` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variantddb279e0c6d6fecf4c603cd5c8dc609fc8c23336fb53f4a9542135fbf4485270.lean/declarations/instance--6f78ba1f69628632de97547f.md) | 39 | `declaration-track:6f78ba1f69628632de97547f042476273d9e551e5b663825537be61e50f8aa44` |
| 3 | `instance` | [str'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variantddb279e0c6d6fecf4c603cd5c8dc609fc8c23336fb53f4a9542135fbf4485270.lean/declarations/str--a6807608ed9d278839c54845.md) | 43 | `declaration-track:a6807608ed9d278839c54845df494d30438fed70470b1bdd31e79a4f84568e1b` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variantddb279e0c6d6fecf4c603cd5c8dc609fc8c23336fb53f4a9542135fbf4485270.lean/declarations/instance--3beaeed6b259a1cb1d64ee33.md) | 46 | `declaration-track:3beaeed6b259a1cb1d64ee33f2eab957452c60a219536501667cd64dda65fbbd` |
| 5 | `def` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variantddb279e0c6d6fecf4c603cd5c8dc609fc8c23336fb53f4a9542135fbf4485270.lean/declarations/of--1bb28a55cd6acd851ad0c6ad.md) | 50 | `declaration-track:1bb28a55cd6acd851ad0c6adb1340a748664da3fcf484930b151fb81465a0ef1` |
| 6 | `theorem` | [coe_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variantddb279e0c6d6fecf4c603cd5c8dc609fc8c23336fb53f4a9542135fbf4485270.lean/declarations/coe-of--fe62a3f1fcb1a44d95940022.md) | 54 | `result-track:fe62a3f1fcb1a44d9594002287e021112ead8f326df7ff25a9f911f7b5187380` |
| 7 | `instance` | [category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variantddb279e0c6d6fecf4c603cd5c8dc609fc8c23336fb53f4a9542135fbf4485270.lean/declarations/category--b61443ab043a88f3d122b229.md) | 58 | `declaration-track:b61443ab043a88f3d122b229e68c4677d2fb75a2ae99d842dca10f7798410035` |
| 8 | `def` | [objects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variantddb279e0c6d6fecf4c603cd5c8dc609fc8c23336fb53f4a9542135fbf4485270.lean/declarations/objects--1250d317026b9c3c4e9df0a2.md) | 68 | `declaration-track:1250d317026b9c3c4e9df0a2ea36957f1522efdce8a0dae5839dbb6014fc43c2` |
| 9 | `def` | [forgetToCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variantddb279e0c6d6fecf4c603cd5c8dc609fc8c23336fb53f4a9542135fbf4485270.lean/declarations/forgettocat--a1d0dd534ebb66701ae43319.md) | 73 | `declaration-track:a1d0dd534ebb66701ae433191106eb1ab51ffb2a3d2ae3376f4ebec90b70160c` |
| 10 | `instance` | [forgetToCat_full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variantddb279e0c6d6fecf4c603cd5c8dc609fc8c23336fb53f4a9542135fbf4485270.lean/declarations/forgettocat-full--2c86ade3c080a45c1d2aaad2.md) | 77 | `declaration-track:2c86ade3c080a45c1d2aaad2ec975a6776ac3b4872a712e6470b710adf25ed41` |
| 11 | `instance` | [forgetToCat_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variantddb279e0c6d6fecf4c603cd5c8dc609fc8c23336fb53f4a9542135fbf4485270.lean/declarations/forgettocat-faithful--c4f60567c37d7d8daa020233.md) | 79 | `declaration-track:c4f60567c37d7d8daa020233097c612c14f72604a402a893e3834968d1ff5368` |
| 12 | `theorem` | [hom_to_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variantddb279e0c6d6fecf4c603cd5c8dc609fc8c23336fb53f4a9542135fbf4485270.lean/declarations/hom-to-functor--1153c6cddf84fee2106d66d5.md) | 83 | `result-track:1153c6cddf84fee2106d66d5ec27111dbd8793e46df15974439d9df0b5855353` |
| 13 | `theorem` | [id_to_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variantddb279e0c6d6fecf4c603cd5c8dc609fc8c23336fb53f4a9542135fbf4485270.lean/declarations/id-to-functor--4d99004e928b9dd234fa58fd.md) | 87 | `result-track:4d99004e928b9dd234fa58fdcf5c99f06a0588f2e970171e29775f27cdbd66cb` |
| 14 | `def` | [piLimitFan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variantddb279e0c6d6fecf4c603cd5c8dc609fc8c23336fb53f4a9542135fbf4485270.lean/declarations/pilimitfan--9362322fdd11eb2dccf393ed.md) | 93 | `declaration-track:9362322fdd11eb2dccf393edd49f475ea9244dd970ff3a0047160eb4066b7498` |
| 15 | `def` | [piLimitFanIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variantddb279e0c6d6fecf4c603cd5c8dc609fc8c23336fb53f4a9542135fbf4485270.lean/declarations/pilimitfanislimit--fe4ca45c3d663ad102c7244e.md) | 97 | `declaration-track:fe4ca45c3d663ad102c7244ebce320fdcebe1236ee84bc7dfb0d4845cf915b19` |
| 16 | `instance` | [has_pi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variantddb279e0c6d6fecf4c603cd5c8dc609fc8c23336fb53f4a9542135fbf4485270.lean/declarations/has-pi--4b1ebab126380567e0fa20b0.md) | 109 | `declaration-track:4b1ebab126380567e0fa20b0f3a35704fb8e003d938c3939a2fc44b980fb57f5` |
| 17 | `def` | [piIsoPi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variantddb279e0c6d6fecf4c603cd5c8dc609fc8c23336fb53f4a9542135fbf4485270.lean/declarations/piisopi--2539c2f9fbe775a482ba4359.md) | 114 | `declaration-track:2539c2f9fbe775a482ba4359a8c72c1fcc0328c3f183b18557774a3789b8ea9d` |
| 18 | `theorem` | [piIsoPi_hom_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variantddb279e0c6d6fecf4c603cd5c8dc609fc8c23336fb53f4a9542135fbf4485270.lean/declarations/piisopi-hom--24b2375d55da78911df17b8c.md) | 119 | `result-track:24b2375d55da78911df17b8cfe0b20606a67938a7a0d2ba5e5233ff3ecfd4630` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
