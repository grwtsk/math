# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Subobject.Variantafae66af58dec7aca04c8cae5c4a205aec057b66923293de7958853960db8a4d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4875abda74d42af3de8ed6940fa3b9f408a24e8",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variantafae66af58dec7aca04c8cae5c4a205aec057b66923293de7958853960db8a4d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variantafae66af58dec7aca04c8cae5c4a205aec057b66923293de7958853960db8a4d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variantafae66af58dec7aca04c8cae5c4a205aec057b66923293de7958853960db8a4d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4875abda74d42af3de8ed6940fa3b9f408a24e8`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variantafae66af58dec7aca04c8cae5c4a205aec057b66923293de7958853960db8a4d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variantafae66af58dec7aca04c8cae5c4a205aec057b66923293de7958853960db8a4d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.EpiMono` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Kernels` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Subobject.WellPowered` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Subobject.Limits` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [subobjectModule](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variantafae66af58dec7aca04c8cae5c4a205aec057b66923293de7958853960db8a4d.lean/declarations/subobjectmodule--206e199d1c577620c2af0c4e.md) | 44 | `declaration-track:206e199d1c577620c2af0c4ee29ae3ceff462678b5a177b12458fa9ab40cb37f` |
| 2 | `instance` | [wellPowered_moduleCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variantafae66af58dec7aca04c8cae5c4a205aec057b66923293de7958853960db8a4d.lean/declarations/wellpowered-modulecat--e39db25a663f8fc4eb40afa5.md) | 78 | `declaration-track:e39db25a663f8fc4eb40afa54eeb3dae1bc918a0e7407f90fac260a3f0ff793c` |
| 3 | `def` | [toKernelSubobject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variantafae66af58dec7aca04c8cae5c4a205aec057b66923293de7958853960db8a4d.lean/declarations/tokernelsubobject--7b642aed27262614f3afcfda.md) | 84 | `declaration-track:7b642aed27262614f3afcfdab63081c97e7d75e4c00fbf011fcc8d7fd9418c99` |
| 4 | `theorem` | [toKernelSubobject_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variantafae66af58dec7aca04c8cae5c4a205aec057b66923293de7958853960db8a4d.lean/declarations/tokernelsubobject-arrow--73fba22aa03a29f73a9a2df2.md) | 89 | `result-track:73fba22aa03a29f73a9a2df2f8da5e6a42817292f28de31eb4f1391d7fd33ada` |
| 5 | `theorem` | [cokernel_π_imageSubobject_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variantafae66af58dec7aca04c8cae5c4a205aec057b66923293de7958853960db8a4d.lean/declarations/cokernel-imagesubobject-ext--0f356b7035a1ce45144c5161.md) | 100 | `result-track:0f356b7035a1ce45144c5161703eb4eb8b237ae77469c624a8237b1e8947cc50` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
