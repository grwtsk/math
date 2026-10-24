# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functor.Variantf3de1706af38e019de4e697b94592f75f85bac22ed55ec16fbe0bd5851fd945e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1039643a45bdea98acf930c1cd87ca314c0645e4",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantf3de1706af38e019de4e697b94592f75f85bac22ed55ec16fbe0bd5851fd945e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantf3de1706af38e019de4e697b94592f75f85bac22ed55ec16fbe0bd5851fd945e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantf3de1706af38e019de4e697b94592f75f85bac22ed55ec16fbe0bd5851fd945e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1039643a45bdea98acf930c1cd87ca314c0645e4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantf3de1706af38e019de4e697b94592f75f85bac22ed55ec16fbe0bd5851fd945e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantf3de1706af38e019de4e697b94592f75f85bac22ed55ec16fbe0bd5851fd945e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Bifunctor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mapEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantf3de1706af38e019de4e697b94592f75f85bac22ed55ec16fbe0bd5851fd945e.lean/declarations/mapequiv--710f4b463252cc6d8ad02d8b.md) | 46 | `declaration-track:710f4b463252cc6d8ad02d8bf266983fa44e358e5475ad7bc5f348dbebc50a92` |
| 2 | `theorem` | [mapEquiv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantf3de1706af38e019de4e697b94592f75f85bac22ed55ec16fbe0bd5851fd945e.lean/declarations/mapequiv-apply--f1663fc56178880a602cc8c7.md) | 54 | `result-track:f1663fc56178880a602cc8c7d2a7ee3dc4c740ea2c344027067449bcfdbf494d` |
| 3 | `theorem` | [mapEquiv_symm_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantf3de1706af38e019de4e697b94592f75f85bac22ed55ec16fbe0bd5851fd945e.lean/declarations/mapequiv-symm-apply--cd3e64d0df91fd10c383eed5.md) | 59 | `result-track:cd3e64d0df91fd10c383eed5b92258de1dd08a34e2fe89d792918e843c6d16ec` |
| 4 | `theorem` | [mapEquiv_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantf3de1706af38e019de4e697b94592f75f85bac22ed55ec16fbe0bd5851fd945e.lean/declarations/mapequiv-refl--fe5d2c5654bae96ceeedf209.md) | 65 | `result-track:fe5d2c5654bae96ceeedf209c381d5b22ef0720537d9610d0226a02858938cfd` |
| 5 | `def` | [mapEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantf3de1706af38e019de4e697b94592f75f85bac22ed55ec16fbe0bd5851fd945e.lean/declarations/mapequiv--31af52a46d89c3b0893b6ac4.md) | 78 | `declaration-track:31af52a46d89c3b0893b6ac4708a7ee4478449370195c70fb09ec57948fe3238` |
| 6 | `theorem` | [mapEquiv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantf3de1706af38e019de4e697b94592f75f85bac22ed55ec16fbe0bd5851fd945e.lean/declarations/mapequiv-apply--a6cbf44e3fed59af14596015.md) | 86 | `result-track:a6cbf44e3fed59af14596015d2603fbac8eb33372d42d50e0f09e0b8974b7042` |
| 7 | `theorem` | [mapEquiv_symm_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantf3de1706af38e019de4e697b94592f75f85bac22ed55ec16fbe0bd5851fd945e.lean/declarations/mapequiv-symm-apply--f05bcc838b7cd1086469e5dc.md) | 92 | `result-track:f05bcc838b7cd1086469e5dc65d36ae23b242e44365dc54a0d75268b20e7c93f` |
| 8 | `theorem` | [mapEquiv_refl_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantf3de1706af38e019de4e697b94592f75f85bac22ed55ec16fbe0bd5851fd945e.lean/declarations/mapequiv-refl-refl--b79bacb4869e149e7974b82a.md) | 98 | `result-track:b79bacb4869e149e7974b82a500c99fd3b4096f6bcdb9063a852451fca68dbf4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
