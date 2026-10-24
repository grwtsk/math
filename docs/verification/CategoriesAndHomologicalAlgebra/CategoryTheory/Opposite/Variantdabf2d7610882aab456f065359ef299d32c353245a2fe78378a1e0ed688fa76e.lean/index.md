# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Opposite.Variantdabf2d7610882aab456f065359ef299d32c353245a2fe78378a1e0ed688fa76e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ebe8c352285c7d67d17a170e5db183062928755",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantdabf2d7610882aab456f065359ef299d32c353245a2fe78378a1e0ed688fa76e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantdabf2d7610882aab456f065359ef299d32c353245a2fe78378a1e0ed688fa76e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantdabf2d7610882aab456f065359ef299d32c353245a2fe78378a1e0ed688fa76e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ebe8c352285c7d67d17a170e5db183062928755`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantdabf2d7610882aab456f065359ef299d32c353245a2fe78378a1e0ed688fa76e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantdabf2d7610882aab456f065359ef299d32c353245a2fe78378a1e0ed688fa76e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Localization.Predicate` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [StrictUniversalPropertyFixedTarget.op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantdabf2d7610882aab456f065359ef299d32c353245a2fe78378a1e0ed688fa76e.lean/declarations/strictuniversalpropertyfixedtarget-op--87a8c22697ea3f95c04fa641.md) | 38 | `declaration-track:87a8c22697ea3f95c04fa64185ececf94b3dbfc1c806f6868c8940a377fd003f` |
| 2 | `instance` | [isLocalization_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantdabf2d7610882aab456f065359ef299d32c353245a2fe78378a1e0ed688fa76e.lean/declarations/islocalization-op--447144f196ca094e6936942d.md) | 51 | `declaration-track:447144f196ca094e6936942d186c0ac7294ca4551ef1f3975d516902f026abce` |
| 3 | `instance` | [IsLocalization.op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantdabf2d7610882aab456f065359ef299d32c353245a2fe78378a1e0ed688fa76e.lean/declarations/islocalization-op--17c2d70064c169703e9a6425.md) | 62 | `declaration-track:17c2d70064c169703e9a64253c27766a680216843f539dc7240db6084a7c7633` |
| 4 | `lemma` | [isoOfHom_unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantdabf2d7610882aab456f065359ef299d32c353245a2fe78378a1e0ed688fa76e.lean/declarations/isoofhom-unop--4e8d6344faadd296fa503dc3.md) | 70 | `result-track:4e8d6344faadd296fa503dc34e67e362cde877835ca49c9d0ab51cf5bb06dbbc` |
| 5 | `lemma` | [isoOfHom_op_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantdabf2d7610882aab456f065359ef299d32c353245a2fe78378a1e0ed688fa76e.lean/declarations/isoofhom-op-inv--65d660d69d97d00c228a90fc.md) | 73 | `result-track:65d660d69d97d00c228a90fcf1f110fb0f668059865446ffe62fb133383f46da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
