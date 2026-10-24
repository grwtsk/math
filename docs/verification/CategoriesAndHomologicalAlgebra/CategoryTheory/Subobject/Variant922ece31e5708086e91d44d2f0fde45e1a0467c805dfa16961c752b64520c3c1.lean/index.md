# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Subobject.Variant922ece31e5708086e91d44d2f0fde45e1a0467c805dfa16961c752b64520c3c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "267388e04f1fe1c99c27406e56c42bd1f2ea5917",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant922ece31e5708086e91d44d2f0fde45e1a0467c805dfa16961c752b64520c3c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant922ece31e5708086e91d44d2f0fde45e1a0467c805dfa16961c752b64520c3c1.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant922ece31e5708086e91d44d2f0fde45e1a0467c805dfa16961c752b64520c3c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `267388e04f1fe1c99c27406e56c42bd1f2ea5917`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant922ece31e5708086e91d44d2f0fde45e1a0467c805dfa16961c752b64520c3c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant922ece31e5708086e91d44d2f0fde45e1a0467c805dfa16961c752b64520c3c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.EpiMono` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Kernels` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Subobject.WellPowered` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Subobject.Limits` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [subobjectModule](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant922ece31e5708086e91d44d2f0fde45e1a0467c805dfa16961c752b64520c3c1.lean/declarations/subobjectmodule--587009a90d47319bea820f67.md) | 39 | `declaration-track:587009a90d47319bea820f675ea9f6ac2864ff18a1d734a97794628ab16367b2` |
| 2 | `instance` | [wellPowered_moduleCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant922ece31e5708086e91d44d2f0fde45e1a0467c805dfa16961c752b64520c3c1.lean/declarations/wellpowered-modulecat--2bbb0c3dc26a99402ed46f79.md) | 76 | `declaration-track:2bbb0c3dc26a99402ed46f792d496a0970088d011090e2e423427d1bb7de97ee` |
| 3 | `def` | [toKernelSubobject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant922ece31e5708086e91d44d2f0fde45e1a0467c805dfa16961c752b64520c3c1.lean/declarations/tokernelsubobject--41eb1f63eeba66ecefbe73a4.md) | 83 | `declaration-track:41eb1f63eeba66ecefbe73a42219c573fbee71ec3d256d1d689370eff7a504ba` |
| 4 | `theorem` | [toKernelSubobject_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant922ece31e5708086e91d44d2f0fde45e1a0467c805dfa16961c752b64520c3c1.lean/declarations/tokernelsubobject-arrow--82dac802ffc6da800d6a8dd3.md) | 89 | `result-track:82dac802ffc6da800d6a8dd35198a07555af7759e99a0340994390a72708d204` |
| 5 | `theorem` | [cokernel_π_imageSubobject_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant922ece31e5708086e91d44d2f0fde45e1a0467c805dfa16961c752b64520c3c1.lean/declarations/cokernel-imagesubobject-ext--545253bccd81dcc938e1f264.md) | 110 | `result-track:545253bccd81dcc938e1f264247e62896b622fa58f3d65d3a77795950440c8f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
