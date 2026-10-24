# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.DifferentialObject.Variant79c736aca78bf36b8079ab9f833de0885c2a5e0503e91c914a90f14fcc5a29b7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f9d2fea3c69146b39338b90c9c3327174c78ad5",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant79c736aca78bf36b8079ab9f833de0885c2a5e0503e91c914a90f14fcc5a29b7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant79c736aca78bf36b8079ab9f833de0885c2a5e0503e91c914a90f14fcc5a29b7.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant79c736aca78bf36b8079ab9f833de0885c2a5e0503e91c914a90f14fcc5a29b7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f9d2fea3c69146b39338b90c9c3327174c78ad5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant79c736aca78bf36b8079ab9f833de0885c2a5e0503e91c914a90f14fcc5a29b7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant79c736aca78bf36b8079ab9f833de0885c2a5e0503e91c914a90f14fcc5a29b7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Shift.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DifferentialObject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant79c736aca78bf36b8079ab9f833de0885c2a5e0503e91c914a90f14fcc5a29b7.lean/declarations/differentialobject--7f063e9ea7098419675a867b.md) | 44 | `declaration-track:7f063e9ea7098419675a867bed7e0ebdb13ac1a09fcca2870c15418b868d64e5` |
| 2 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant79c736aca78bf36b8079ab9f833de0885c2a5e0503e91c914a90f14fcc5a29b7.lean/declarations/hom--7c467ba8e336570ad52048f2.md) | 60 | `declaration-track:7c467ba8e336570ad52048f2efd77e478b0f624c2aa6dc9c8706f5a38e03b048` |
| 3 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant79c736aca78bf36b8079ab9f833de0885c2a5e0503e91c914a90f14fcc5a29b7.lean/declarations/id--1b9e01139e12cdefe0cc5763.md) | 71 | `declaration-track:1b9e01139e12cdefe0cc5763ce0e54a959bb33fb220c175eaa3bdc731d2672a6` |
| 4 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant79c736aca78bf36b8079ab9f833de0885c2a5e0503e91c914a90f14fcc5a29b7.lean/declarations/comp--220047d113ea96053d82c48e.md) | 76 | `declaration-track:220047d113ea96053d82c48e0e65007ccda9cfbe2f72eb18926f91a0a04dc1e1` |
| 5 | `instance` | [categoryOfDifferentialObjects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant79c736aca78bf36b8079ab9f833de0885c2a5e0503e91c914a90f14fcc5a29b7.lean/declarations/categoryofdifferentialobjects--7ec303783f7139611f8d9e23.md) | 81 | `declaration-track:7ec303783f7139611f8d9e231173dd4fa66d1d147b41eec075db03629960b465` |
| 6 | `theorem` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant79c736aca78bf36b8079ab9f833de0885c2a5e0503e91c914a90f14fcc5a29b7.lean/declarations/ext--11862bc5e1df45706b697e11.md) | 87 | `result-track:11862bc5e1df45706b697e11d7b71c57a7761b6597a6a5799a8088a9135fc8e3` |
| 7 | `theorem` | [id_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant79c736aca78bf36b8079ab9f833de0885c2a5e0503e91c914a90f14fcc5a29b7.lean/declarations/id-f--9d3b236f2b4f50da41a7f02c.md) | 91 | `result-track:9d3b236f2b4f50da41a7f02c4483db5e2314a6d8235b77781c11b8433d116204` |
| 8 | `theorem` | [comp_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant79c736aca78bf36b8079ab9f833de0885c2a5e0503e91c914a90f14fcc5a29b7.lean/declarations/comp-f--ab1ccf2a7a003640bf8e5c07.md) | 94 | `result-track:ab1ccf2a7a003640bf8e5c07f4337628bea701d9a2e0400abe9356e3c6490968` |
| 9 | `theorem` | [eqToHom_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant79c736aca78bf36b8079ab9f833de0885c2a5e0503e91c914a90f14fcc5a29b7.lean/declarations/eqtohom-f--e37c22298b96cc7a3f1fe30e.md) | 99 | `result-track:e37c22298b96cc7a3f1fe30e2ec4136d117c3a37523b87d72758351a3a68adbc` |
| 10 | `def` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant79c736aca78bf36b8079ab9f833de0885c2a5e0503e91c914a90f14fcc5a29b7.lean/declarations/forget--32c9a173d728f333847f179b.md) | 108 | `declaration-track:32c9a173d728f333847f179be8875c7ac1a139acb2146e4007b78e58cde97eb0` |
| 11 | `instance` | [forget_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant79c736aca78bf36b8079ab9f833de0885c2a5e0503e91c914a90f14fcc5a29b7.lean/declarations/forget-faithful--a52adec04308d636647e666b.md) | 112 | `declaration-track:a52adec04308d636647e666bc2284d43f22da814170109d98898a0cce86d8376` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant79c736aca78bf36b8079ab9f833de0885c2a5e0503e91c914a90f14fcc5a29b7.lean/declarations/instance--0ab79d16cd6b4dd5a4bac987.md) | 119 | `declaration-track:0ab79d16cd6b4dd5a4bac987eb9225a7447339802dcc2dd7d7e0fb0adc410fac` |
| 13 | `theorem` | [zero_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant79c736aca78bf36b8079ab9f833de0885c2a5e0503e91c914a90f14fcc5a29b7.lean/declarations/zero-f--a21fdf55a7c30ef2e9ba885e.md) | 122 | `result-track:a21fdf55a7c30ef2e9ba885ef2456cd58959eafe4ba25361ecd9faf8e9779260` |
| 14 | `instance` | [hasZeroMorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant79c736aca78bf36b8079ab9f833de0885c2a5e0503e91c914a90f14fcc5a29b7.lean/declarations/haszeromorphisms--2d1f2418b4c7a30d8a11120c.md) | 124 | `declaration-track:2d1f2418b4c7a30d8a11120c5f1d002ff6003d07555fcf70a09c32f8e6adfdcb` |
| 15 | `def` | [isoApp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant79c736aca78bf36b8079ab9f833de0885c2a5e0503e91c914a90f14fcc5a29b7.lean/declarations/isoapp--39853ba25c9c603a19a97a48.md) | 130 | `declaration-track:39853ba25c9c603a19a97a486d28d2b08ce0fb74599a3928d710991530bb2f73` |
| 16 | `theorem` | [isoApp_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant79c736aca78bf36b8079ab9f833de0885c2a5e0503e91c914a90f14fcc5a29b7.lean/declarations/isoapp-refl--05eda865cec0fa0a329e2648.md) | 137 | `result-track:05eda865cec0fa0a329e2648ea84c77882b2314ba25ff7ecf58c3a147a9f781b` |
| 17 | `theorem` | [isoApp_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant79c736aca78bf36b8079ab9f833de0885c2a5e0503e91c914a90f14fcc5a29b7.lean/declarations/isoapp-symm--1cf8f8497a14179e44413137.md) | 140 | `result-track:1cf8f8497a14179e44413137b0d86d084d683d948ecd638c2ec4526190de5b07` |
| 18 | `theorem` | [isoApp_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant79c736aca78bf36b8079ab9f833de0885c2a5e0503e91c914a90f14fcc5a29b7.lean/declarations/isoapp-trans--d13221d87319aa2809d54e8a.md) | 144 | `result-track:d13221d87319aa2809d54e8ac9231ef2a8225979b74675f74c786c9ef7ce18e5` |
| 19 | `def` | [mkIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant79c736aca78bf36b8079ab9f833de0885c2a5e0503e91c914a90f14fcc5a29b7.lean/declarations/mkiso--4c6d03d7347fa40233bc9a51.md) | 150 | `declaration-track:4c6d03d7347fa40233bc9a516e243c128ca2b81c27414a22536a407d5b042a4c` |
| 20 | `def` | [mapDifferentialObject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant79c736aca78bf36b8079ab9f833de0885c2a5e0503e91c914a90f14fcc5a29b7.lean/declarations/mapdifferentialobject--4aaee2d16a791c7b1476ab28.md) | 171 | `declaration-track:4aaee2d16a791c7b1476ab283ad2e89ffeb3100561a676bf65610924831b0557` |
| 21 | `instance` | [hasZeroObject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant79c736aca78bf36b8079ab9f833de0885c2a5e0503e91c914a90f14fcc5a29b7.lean/declarations/haszeroobject--5c98e13a1e41dd65c2c56c84.md) | 207 | `declaration-track:5c98e13a1e41dd65c2c56c84286fa8c290e20b1782170ec2c8823f1102e9d047` |
| 22 | `instance` | [hasForgetOfDifferentialObjects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant79c736aca78bf36b8079ab9f833de0885c2a5e0503e91c914a90f14fcc5a29b7.lean/declarations/hasforgetofdifferentialobjects--48bef1e3d6dd36882d15467f.md) | 222 | `declaration-track:48bef1e3d6dd36882d15467f8991dfceb5b21408830e28778f7c7170aa63dd99` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant79c736aca78bf36b8079ab9f833de0885c2a5e0503e91c914a90f14fcc5a29b7.lean/declarations/instance--711e5f04447f397e1e00f537.md) | 225 | `declaration-track:711e5f04447f397e1e00f5379476ef7aed4c2578d44a75575c5c90a50e02d87d` |
| 24 | `abbrev` | [HomSubtype](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant79c736aca78bf36b8079ab9f833de0885c2a5e0503e91c914a90f14fcc5a29b7.lean/declarations/homsubtype--55a50345076c806fea0e6081.md) | 240 | `declaration-track:55a50345076c806fea0e608169a94f46615dca3cf0667e3bf5bd83b23b5bfe28` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant79c736aca78bf36b8079ab9f833de0885c2a5e0503e91c914a90f14fcc5a29b7.lean/declarations/instance--382c0fbc341cef50deb2082c.md) | 243 | `declaration-track:382c0fbc341cef50deb2082c41e50ff3fd6d9ad7028a34d83f72cf852663c212` |
| 26 | `instance` | [concreteCategoryOfDifferentialObjects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant79c736aca78bf36b8079ab9f833de0885c2a5e0503e91c914a90f14fcc5a29b7.lean/declarations/concretecategoryofdifferentialobjects--a9dd5bbe0cf84959bdac50e8.md) | 248 | `declaration-track:a9dd5bbe0cf84959bdac50e87dc475400c884cfc41dcc7caa09db608fcf9d6ea` |
| 27 | `def` | [shiftFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant79c736aca78bf36b8079ab9f833de0885c2a5e0503e91c914a90f14fcc5a29b7.lean/declarations/shiftfunctor--15945871cb34eecf4f46ad07.md) | 273 | `declaration-track:15945871cb34eecf4f46ad07f903acb52b14d1a9cf85172cfe98f8c265d73a6c` |
| 28 | `def` | [shiftFunctorAdd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant79c736aca78bf36b8079ab9f833de0885c2a5e0503e91c914a90f14fcc5a29b7.lean/declarations/shiftfunctoradd--2767cb327f45c693b4a7ccac.md) | 293 | `declaration-track:2767cb327f45c693b4a7ccace7ec7b0982d5b61e0e89480d11e6fb823bb26059` |
| 29 | `def` | [shiftZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant79c736aca78bf36b8079ab9f833de0885c2a5e0503e91c914a90f14fcc5a29b7.lean/declarations/shiftzero--639997bd9f36afaf70cfc071.md) | 310 | `declaration-track:639997bd9f36afaf70cfc0712c035ca02b0531e8242e51772dfe1ea8f98ddb75` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant79c736aca78bf36b8079ab9f833de0885c2a5e0503e91c914a90f14fcc5a29b7.lean/declarations/instance--8e9421e700c9a21f1cb55112.md) | 319 | `declaration-track:8e9421e700c9a21f1cb55112022b35401c1768e40a4d12ba21a048a77337c921` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
