# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Quasicoherent.Variantc8a135150447044308897853166db347c6d5c8fda60f941208c4c759e7ca4ecc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "72de7ee318ea008938da236e28f29a2bc190594c",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quasicoherent/Variantc8a135150447044308897853166db347c6d5c8fda60f941208c4c759e7ca4ecc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quasicoherent/Variantc8a135150447044308897853166db347c6d5c8fda60f941208c4c759e7ca4ecc.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quasicoherent/Variantc8a135150447044308897853166db347c6d5c8fda60f941208c4c759e7ca4ecc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `72de7ee318ea008938da236e28f29a2bc190594c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quasicoherent/Variantc8a135150447044308897853166db347c6d5c8fda60f941208c4c759e7ca4ecc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Quasicoherent/Variantc8a135150447044308897853166db347c6d5c8fda60f941208c4c759e7ca4ecc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Sheaf.Generators` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Presentation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quasicoherent/Variantc8a135150447044308897853166db347c6d5c8fda60f941208c4c759e7ca4ecc.lean/declarations/presentation--e656c89df02c1b8090417fa3.md) | 42 | `declaration-track:e656c89df02c1b8090417fa3a08f120b0e58f15eeca007a6baf473a57eed8ea7` |
| 2 | `structure` | [QuasicoherentData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quasicoherent/Variantc8a135150447044308897853166db347c6d5c8fda60f941208c4c759e7ca4ecc.lean/declarations/quasicoherentdata--4310641e80734531ada19ed4.md) | 57 | `declaration-track:4310641e80734531ada19ed40e93a02fb6d714cabfad62cc6a24e60728d81b57` |
| 3 | `def` | [localGeneratorsData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quasicoherent/Variantc8a135150447044308897853166db347c6d5c8fda60f941208c4c759e7ca4ecc.lean/declarations/localgeneratorsdata--7168480aa2fb707b61ebfbcf.md) | 72 | `declaration-track:7168480aa2fb707b61ebfbcfd653cbcb3899a20119662378b7379a41037cb4c6` |
| 4 | `class` | [IsQuasicoherent](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quasicoherent/Variantc8a135150447044308897853166db347c6d5c8fda60f941208c4c759e7ca4ecc.lean/declarations/isquasicoherent--c2568344536f01e51e072159.md) | 82 | `declaration-track:c2568344536f01e51e07215981717aba005f8828c64bca8761b62dbc08accd29` |
| 5 | `class` | [IsFinitePresentation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quasicoherent/Variantc8a135150447044308897853166db347c6d5c8fda60f941208c4c759e7ca4ecc.lean/declarations/isfinitepresentation--77f92c4e586b7581587a95a8.md) | 87 | `declaration-track:77f92c4e586b7581587a95a82a5387d1ecaf588e5b14247fef2520f0b2ffeab3` |
| 6 | `def` | [quasicoherentDataOfIsFinitePresentation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quasicoherent/Variantc8a135150447044308897853166db347c6d5c8fda60f941208c4c759e7ca4ecc.lean/declarations/quasicoherentdataofisfinitepresentation--1a51c3aa0e71861bbfdefb99.md) | 97 | `declaration-track:1a51c3aa0e71861bbfdefb9915e3331afc82f0f1044508b15beafa01e310bd8b` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quasicoherent/Variantc8a135150447044308897853166db347c6d5c8fda60f941208c4c759e7ca4ecc.lean/declarations/instance--5b14cd8873899a6454591f8e.md) | 100 | `declaration-track:5b14cd8873899a6454591f8edb2b0b98d2313a5ea7e1af527722abc36425ea80` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quasicoherent/Variantc8a135150447044308897853166db347c6d5c8fda60f941208c4c759e7ca4ecc.lean/declarations/instance--dd433d9dd7d8551d8fda2d20.md) | 106 | `declaration-track:dd433d9dd7d8551d8fda2d205c135d32c4029d6e9c0872ec67a58692f9f478a8` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quasicoherent/Variantc8a135150447044308897853166db347c6d5c8fda60f941208c4c759e7ca4ecc.lean/declarations/instance--2b86e3d2c3152175cfc599b6.md) | 114 | `declaration-track:2b86e3d2c3152175cfc599b6f456b1472ebd210de2aecb4718ea7fa8212d8c8b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
