# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Preorder.Variant286c3d34d3a3973267d5fca88e0d72fb196b898f1f75fe2516f23247aec26f53

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a8ae79f06e166b267e518d914757268ebbe14999",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant286c3d34d3a3973267d5fca88e0d72fb196b898f1f75fe2516f23247aec26f53.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant286c3d34d3a3973267d5fca88e0d72fb196b898f1f75fe2516f23247aec26f53.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant286c3d34d3a3973267d5fca88e0d72fb196b898f1f75fe2516f23247aec26f53.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a8ae79f06e166b267e518d914757268ebbe14999`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant286c3d34d3a3973267d5fca88e0d72fb196b898f1f75fe2516f23247aec26f53.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant286c3d34d3a3973267d5fca88e0d72fb196b898f1f75fe2516f23247aec26f53.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Preorder.WellOrderContinuous` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Preorder.HasIterationOfShape` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PreservesWellOrderContinuousOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant286c3d34d3a3973267d5fca88e0d72fb196b898f1f75fe2516f23247aec26f53.lean/declarations/preserveswellordercontinuousofshape--6ec3e81c581ae802cad57d53.md) | 34 | `declaration-track:6ec3e81c581ae802cad57d53e942763c73c480ee529fa69a8a297aab49d54cfa` |
| 2 | `lemma` | [preservesColimitsOfShape_of_preservesWellOrderContinuousOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant286c3d34d3a3973267d5fca88e0d72fb196b898f1f75fe2516f23247aec26f53.lean/declarations/preservescolimitsofshape-of-preserveswellordercontinuousofshape--01d019f94f27ac0d15c3a56c.md) | 39 | `result-track:01d019f94f27ac0d15c3a56c6ff6f9ee3f8c7ded39c397d0d7f59ab30a18f29e` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant286c3d34d3a3973267d5fca88e0d72fb196b898f1f75fe2516f23247aec26f53.lean/declarations/instance--ac0e17fabb950244a08a7728.md) | 45 | `declaration-track:ac0e17fabb950244a08a772811e6003f4b6bda65d13d0bd8ace68daf81c12cae` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant286c3d34d3a3973267d5fca88e0d72fb196b898f1f75fe2516f23247aec26f53.lean/declarations/instance--0b6786fda96a3de378ae70a0.md) | 52 | `declaration-track:0b6786fda96a3de378ae70a0b29850121346edb844c44acb81e22f0dd3bbc4ef` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant286c3d34d3a3973267d5fca88e0d72fb196b898f1f75fe2516f23247aec26f53.lean/declarations/instance--6cc82b88f57b0a57bcc2a8b0.md) | 61 | `declaration-track:6cc82b88f57b0a57bcc2a8b00dba46cb015a5320228b6c0a5629964dfdd62783` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant286c3d34d3a3973267d5fca88e0d72fb196b898f1f75fe2516f23247aec26f53.lean/declarations/instance--0aff8c611ddc8a907f8b6e1c.md) | 67 | `declaration-track:0aff8c611ddc8a907f8b6e1cfa910855002f650a1bc76b92fec3b96e7386bf6b` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant286c3d34d3a3973267d5fca88e0d72fb196b898f1f75fe2516f23247aec26f53.lean/declarations/instance--da7b57b0c47a0c102314c637.md) | 73 | `declaration-track:da7b57b0c47a0c102314c637f30272ac03b69dd257644af64d43a9b0dc292b85` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
