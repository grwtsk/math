# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limits.Variantb6690bbfa4fc567cfee632dcdc20c6a4b15f7e19042b07dadcf85185fb7ddd1d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c3d86e726381454cf3244fab9ceb86688a79ff7",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb6690bbfa4fc567cfee632dcdc20c6a4b15f7e19042b07dadcf85185fb7ddd1d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb6690bbfa4fc567cfee632dcdc20c6a4b15f7e19042b07dadcf85185fb7ddd1d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb6690bbfa4fc567cfee632dcdc20c6a4b15f7e19042b07dadcf85185fb7ddd1d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c3d86e726381454cf3244fab9ceb86688a79ff7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb6690bbfa4fc567cfee632dcdc20c6a4b15f7e19042b07dadcf85185fb7ddd1d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb6690bbfa4fc567cfee632dcdc20c6a4b15f7e19042b07dadcf85185fb7ddd1d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.FunctorCategory` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.HasLimits` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb6690bbfa4fc567cfee632dcdc20c6a4b15f7e19042b07dadcf85185fb7ddd1d.lean/declarations/instance--2bd8cab82b9f769990589fe3.md) | 43 | `declaration-track:2bd8cab82b9f769990589fe3df890d1ca11cc8bbdf84ed4890ea1dc93da665df` |
| 2 | `lemma` | [lim_ε_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb6690bbfa4fc567cfee632dcdc20c6a4b15f7e19042b07dadcf85185fb7ddd1d.lean/declarations/lim--69990f93c319459dc4c77766.md) | 98 | `result-track:69990f93c319459dc4c77766dd3f157d02dd4e6c12831dcf3cc7871f0dc37b57` |
| 3 | `lemma` | [lim_μ_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb6690bbfa4fc567cfee632dcdc20c6a4b15f7e19042b07dadcf85185fb7ddd1d.lean/declarations/lim--78b6f1841d0403d7a19de7cf.md) | 102 | `result-track:78b6f1841d0403d7a19de7cfe5ac0ca5b4bd27f674ad7ace482aca2f7f1708e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
