# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Subobject.Variant7c9f4914599aa2960e3ffa9c919cfa8048993f391e987b6d327e332fb3ebafe0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8820309db4d3684dd936ce731508ea32e7b81620",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant7c9f4914599aa2960e3ffa9c919cfa8048993f391e987b6d327e332fb3ebafe0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant7c9f4914599aa2960e3ffa9c919cfa8048993f391e987b6d327e332fb3ebafe0.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant7c9f4914599aa2960e3ffa9c919cfa8048993f391e987b6d327e332fb3ebafe0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8820309db4d3684dd936ce731508ea32e7b81620`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant7c9f4914599aa2960e3ffa9c919cfa8048993f391e987b6d327e332fb3ebafe0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant7c9f4914599aa2960e3ffa9c919cfa8048993f391e987b6d327e332fb3ebafe0.lean.json)

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
| 1 | `def` | [subobjectModule](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant7c9f4914599aa2960e3ffa9c919cfa8048993f391e987b6d327e332fb3ebafe0.lean/declarations/subobjectmodule--ad49147a456d5fc8c4f4b9aa.md) | 47 | `declaration-track:ad49147a456d5fc8c4f4b9aa2346dd449fa0b8fa041e44401e120425f075f2cf` |
| 2 | `instance` | [wellPowered_moduleCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant7c9f4914599aa2960e3ffa9c919cfa8048993f391e987b6d327e332fb3ebafe0.lean/declarations/wellpowered-modulecat--0eeff9e97fc4b648dd7667b4.md) | 84 | `declaration-track:0eeff9e97fc4b648dd7667b4c9f63b746b92859773c9e6e1e3157d99037f3f0e` |
| 3 | `def` | [toKernelSubobject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant7c9f4914599aa2960e3ffa9c919cfa8048993f391e987b6d327e332fb3ebafe0.lean/declarations/tokernelsubobject--db2ce08f080c44173a251664.md) | 91 | `declaration-track:db2ce08f080c44173a251664363acadef2462d8eb19874e48dbaec4f43b2b709` |
| 4 | `theorem` | [toKernelSubobject_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant7c9f4914599aa2960e3ffa9c919cfa8048993f391e987b6d327e332fb3ebafe0.lean/declarations/tokernelsubobject-arrow--cd8f4659ef881e6d3d5b5c96.md) | 97 | `result-track:cd8f4659ef881e6d3d5b5c9600ce6e2099690c4b8487c23aa91001fda57ff48b` |
| 5 | `theorem` | [cokernel_π_imageSubobject_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant7c9f4914599aa2960e3ffa9c919cfa8048993f391e987b6d327e332fb3ebafe0.lean/declarations/cokernel-imagesubobject-ext--37ecdd6c047f701bd00af2b0.md) | 118 | `result-track:37ecdd6c047f701bd00af2b04502204673602c4a808664f09546185c76c4f0b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
