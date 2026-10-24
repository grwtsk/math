# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Connected.Variant497c2c5663330d2a3f563def82573ad09ec505bf87d2f0eb9df27b66793552aa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec86650b78156f7e3d41c45c88bd9bdddba94532",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant497c2c5663330d2a3f563def82573ad09ec505bf87d2f0eb9df27b66793552aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant497c2c5663330d2a3f563def82573ad09ec505bf87d2f0eb9df27b66793552aa.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant497c2c5663330d2a3f563def82573ad09ec505bf87d2f0eb9df27b66793552aa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec86650b78156f7e3d41c45c88bd9bdddba94532`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant497c2c5663330d2a3f563def82573ad09ec505bf87d2f0eb9df27b66793552aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant497c2c5663330d2a3f563def82573ad09ec505bf87d2f0eb9df27b66793552aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Equalizers` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.WidePullbacks` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.IsConnected` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [widePullbackShape_connected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant497c2c5663330d2a3f563def82573ad09ec505bf87d2f0eb9df27b66793552aa.lean/declarations/widepullbackshape-connected--74d1372745c4ff5ee8fdfe08.md) | 35 | `declaration-track:74d1372745c4ff5ee8fdfe08db2c564b61a9094e5bb4183a002f95117e9c28ff` |
| 2 | `instance` | [widePushoutShape_connected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant497c2c5663330d2a3f563def82573ad09ec505bf87d2f0eb9df27b66793552aa.lean/declarations/widepushoutshape-connected--1da2653f05a3c74dad29bbd0.md) | 43 | `declaration-track:1da2653f05a3c74dad29bbd0c0c77887cfa7057ea83e5a70e71adee01075408c` |
| 3 | `instance` | [parallelPairInhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant497c2c5663330d2a3f563def82573ad09ec505bf87d2f0eb9df27b66793552aa.lean/declarations/parallelpairinhabited--561fe759a4270afb27384c35.md) | 51 | `declaration-track:561fe759a4270afb27384c3567366bc6e8df3c265e19fb3762347a20ce9c1502` |
| 4 | `instance` | [parallel_pair_connected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant497c2c5663330d2a3f563def82573ad09ec505bf87d2f0eb9df27b66793552aa.lean/declarations/parallel-pair-connected--d1b5310cdef928b8ed27889d.md) | 55 | `declaration-track:d1b5310cdef928b8ed27889d406242becba9cb3cbcd1f2eb25eac73574b9c201` |
| 5 | `def` | [γ₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant497c2c5663330d2a3f563def82573ad09ec505bf87d2f0eb9df27b66793552aa.lean/declarations/anonymous--be030c3afd0f5a1b5b5a9fe1.md) | 75 | `declaration-track:be030c3afd0f5a1b5b5a9fe1381a24d53dbaeafc6ed94af784781cf06dba7425` |
| 6 | `def` | [γ₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant497c2c5663330d2a3f563def82573ad09ec505bf87d2f0eb9df27b66793552aa.lean/declarations/anonymous--f460003216929d1f8cfb74f4.md) | 80 | `declaration-track:f460003216929d1f8cfb74f4afcb8677665e7fd78df258c4054bd50ed15e4896` |
| 7 | `def` | [forgetCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant497c2c5663330d2a3f563def82573ad09ec505bf87d2f0eb9df27b66793552aa.lean/declarations/forgetcone--12c28fd8554e34f075a9a4f8.md) | 87 | `declaration-track:12c28fd8554e34f075a9a4f828cc2edc7f72075dfe6d3097d56500a89e61e883` |
| 8 | `def` | [prodPreservesConnectedLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant497c2c5663330d2a3f563def82573ad09ec505bf87d2f0eb9df27b66793552aa.lean/declarations/prodpreservesconnectedlimits--8e7c94f14b0adf447883b99d.md) | 102 | `declaration-track:8e7c94f14b0adf447883b99dc4a3789838075728ae2fbba6f71db70b37bc7647` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
