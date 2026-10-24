# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Lifting.Variant7af9496d8de0e41abefb79c9c33589de25494d8633548a77580f887c19e4a140

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25446b72a342cb1d98e4ed1a724bb0721659a48a",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Lifting/Variant7af9496d8de0e41abefb79c9c33589de25494d8633548a77580f887c19e4a140.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lifting/Variant7af9496d8de0e41abefb79c9c33589de25494d8633548a77580f887c19e4a140.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lifting/Variant7af9496d8de0e41abefb79c9c33589de25494d8633548a77580f887c19e4a140.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25446b72a342cb1d98e4ed1a724bb0721659a48a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Lifting/Variant7af9496d8de0e41abefb79c9c33589de25494d8633548a77580f887c19e4a140.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Lifting/Variant7af9496d8de0e41abefb79c9c33589de25494d8633548a77580f887c19e4a140.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Equalizers` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Reflexive` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monad.Adjunction` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monad.Coequalizer` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [counitCoequalises](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lifting/Variant7af9496d8de0e41abefb79c9c33589de25494d8633548a77580f887c19e4a140.lean/declarations/counitcoequalises--9e6394773051242218f7e9c0.md) | 84 | `declaration-track:9e6394773051242218f7e9c0b4e4c5d3c119d5179cc31090d20e615f20738c1a` |
| 2 | `def` | [otherMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lifting/Variant7af9496d8de0e41abefb79c9c33589de25494d8633548a77580f887c19e4a140.lean/declarations/othermap--81741c8fd8b9354f9d8a2a2b.md) | 108 | `declaration-track:81741c8fd8b9354f9d8a2a2b0431459fa74c912dc717921517fa66988282271e` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lifting/Variant7af9496d8de0e41abefb79c9c33589de25494d8633548a77580f887c19e4a140.lean/declarations/instance--02923a72ad0199cfb183b771.md) | 115 | `declaration-track:02923a72ad0199cfb183b771690752082160a43f78662847fb9a60e3d57c309f` |
| 4 | `def` | [constructLeftAdjointObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lifting/Variant7af9496d8de0e41abefb79c9c33589de25494d8633548a77580f887c19e4a140.lean/declarations/constructleftadjointobj--c9a9d272b87e0a1bf8c590d1.md) | 131 | `declaration-track:c9a9d272b87e0a1bf8c590d1c24802aeb5a6d95ee10b3e714598dd78918d2a93` |
| 5 | `def` | [constructLeftAdjointEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lifting/Variant7af9496d8de0e41abefb79c9c33589de25494d8633548a77580f887c19e4a140.lean/declarations/constructleftadjointequiv--7ac02b91a292e2f28cc438fd.md) | 137 | `declaration-track:7ac02b91a292e2f28cc438fdd421fbcd3f40053da0ae68a147d51ab77e03a014` |
| 6 | `def` | [constructLeftAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lifting/Variant7af9496d8de0e41abefb79c9c33589de25494d8633548a77580f887c19e4a140.lean/declarations/constructleftadjoint--a21feec4b0df3e2fbea11587.md) | 165 | `declaration-track:a21feec4b0df3e2fbea11587021a0ecb151f8669a5a73c384f57825a6e7b5114` |
| 7 | `def` | [adjointTriangleLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lifting/Variant7af9496d8de0e41abefb79c9c33589de25494d8633548a77580f887c19e4a140.lean/declarations/adjointtrianglelift--936a0f6058caf3c3cfc8d5cc.md) | 186 | `declaration-track:936a0f6058caf3c3cfc8d5ccaa01561f289e2735e7c99a42f3d54217f59426a6` |
| 8 | `def` | [monadicAdjointTriangleLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lifting/Variant7af9496d8de0e41abefb79c9c33589de25494d8633548a77580f887c19e4a140.lean/declarations/monadicadjointtrianglelift--55ce9ac0224fe029f9bcc9e5.md) | 197 | `declaration-track:55ce9ac0224fe029f9bcc9e5b0a29b7c55c0bf79bac8c9379d394eeff18a0a96` |
| 9 | `def` | [adjointSquareLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lifting/Variant7af9496d8de0e41abefb79c9c33589de25494d8633548a77580f887c19e4a140.lean/declarations/adjointsquarelift--83e5c37236fb8bb78b8662c2.md) | 234 | `declaration-track:83e5c37236fb8bb78b8662c25e3ff0d83b4e63eb2c0d94367c99c9785f7bc07c` |
| 10 | `def` | [monadicAdjointSquareLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Lifting/Variant7af9496d8de0e41abefb79c9c33589de25494d8633548a77580f887c19e4a140.lean/declarations/monadicadjointsquarelift--81e76523088e469eb8911931.md) | 255 | `declaration-track:81e76523088e469eb8911931ed3c17b475240c7ff2b3cd93892acc5e96a61f5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
