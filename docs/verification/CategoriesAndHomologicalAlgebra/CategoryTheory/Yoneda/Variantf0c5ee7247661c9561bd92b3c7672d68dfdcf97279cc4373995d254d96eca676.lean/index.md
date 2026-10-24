# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Yoneda.Variantf0c5ee7247661c9561bd92b3c7672d68dfdcf97279cc4373995d254d96eca676

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c87b00c4bbcc2607fdbae7bc792a9bbf5a614c36",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variantf0c5ee7247661c9561bd92b3c7672d68dfdcf97279cc4373995d254d96eca676.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variantf0c5ee7247661c9561bd92b3c7672d68dfdcf97279cc4373995d254d96eca676.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variantf0c5ee7247661c9561bd92b3c7672d68dfdcf97279cc4373995d254d96eca676.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c87b00c4bbcc2607fdbae7bc792a9bbf5a614c36`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variantf0c5ee7247661c9561bd92b3c7672d68dfdcf97279cc4373995d254d96eca676.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variantf0c5ee7247661c9561bd92b3c7672d68dfdcf97279cc4373995d254d96eca676.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Ulift` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorToTypes` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [yonedaYonedaColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variantf0c5ee7247661c9561bd92b3c7672d68dfdcf97279cc4373995d254d96eca676.lean/declarations/yonedayonedacolimit--20721c3c90b32bcab5374809.md) | 50 | `declaration-track:20721c3c90b32bcab537480910061cd6d0c3197bc52d572fe4034c902e6c91da` |
| 2 | `theorem` | [yonedaYonedaColimit_app_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variantf0c5ee7247661c9561bd92b3c7672d68dfdcf97279cc4373995d254d96eca676.lean/declarations/yonedayonedacolimit-app-inv--2c0c734421a95d1c6c16909b.md) | 63 | `result-track:2c0c734421a95d1c6c16909b9f1ef70559b222a607fc8fa4c4164037def6b78e` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variantf0c5ee7247661c9561bd92b3c7672d68dfdcf97279cc4373995d254d96eca676.lean/declarations/instance--4215c6ccfda9567b546b4028.md) | 79 | `declaration-track:4215c6ccfda9567b546b40289ebcd59d281b7958c2beee501929119bd93658d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
