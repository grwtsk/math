# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limits.Variant8bbec67df018a52c0b92f0405a0aeb257b17911a87249d51a52afef364e1efd9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be0f842d918af092935cdf1bc65278c6a1737739",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8bbec67df018a52c0b92f0405a0aeb257b17911a87249d51a52afef364e1efd9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8bbec67df018a52c0b92f0405a0aeb257b17911a87249d51a52afef364e1efd9.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8bbec67df018a52c0b92f0405a0aeb257b17911a87249d51a52afef364e1efd9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be0f842d918af092935cdf1bc65278c6a1737739`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8bbec67df018a52c0b92f0405a0aeb257b17911a87249d51a52afef364e1efd9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8bbec67df018a52c0b92f0405a0aeb257b17911a87249d51a52afef364e1efd9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.Yoneda.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Abelian` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Yoneda` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [preservesLimits_preadditiveYonedaObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8bbec67df018a52c0b92f0405a0aeb257b17911a87249d51a52afef364e1efd9.lean/declarations/preserveslimits-preadditiveyonedaobj--483a1cf43b7c090d0d099ed4.md) | 33 | `declaration-track:483a1cf43b7c090d0d099ed4adaebb0416b3b5fd43a69b2b0085f2e766a671f3` |
| 2 | `instance` | [preservesLimits_preadditiveCoyonedaObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8bbec67df018a52c0b92f0405a0aeb257b17911a87249d51a52afef364e1efd9.lean/declarations/preserveslimits-preadditivecoyonedaobj--c4e2665c10bca9b441029969.md) | 38 | `declaration-track:c4e2665c10bca9b4410299694fbf3c3b6eca4486d678fa9b7170b4c9a0dd97f3` |
| 3 | `instance` | [preservesLimits_preadditiveYoneda_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8bbec67df018a52c0b92f0405a0aeb257b17911a87249d51a52afef364e1efd9.lean/declarations/preserveslimits-preadditiveyoneda-obj--b1b6b09da3ab52e127dec8af.md) | 44 | `declaration-track:b1b6b09da3ab52e127dec8af7dd13bf6105a7736809b85507efe2d4de4026cd3` |
| 4 | `instance` | [preservesLimits_preadditiveCoyoneda_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8bbec67df018a52c0b92f0405a0aeb257b17911a87249d51a52afef364e1efd9.lean/declarations/preserveslimits-preadditivecoyoneda-obj--2d7c528f862e003d56e18c41.md) | 48 | `declaration-track:2d7c528f862e003d56e18c413d0419bde25a331da6baa4bb684dfa00be098bf8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
