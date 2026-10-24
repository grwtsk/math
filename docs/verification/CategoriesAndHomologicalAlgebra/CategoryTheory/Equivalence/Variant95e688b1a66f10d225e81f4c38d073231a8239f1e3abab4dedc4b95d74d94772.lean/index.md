# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Equivalence.Variant95e688b1a66f10d225e81f4c38d073231a8239f1e3abab4dedc4b95d74d94772

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3de5ba0f8596ec3a1d8b345c019ae3f0b11fd17",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant95e688b1a66f10d225e81f4c38d073231a8239f1e3abab4dedc4b95d74d94772.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant95e688b1a66f10d225e81f4c38d073231a8239f1e3abab4dedc4b95d74d94772.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant95e688b1a66f10d225e81f4c38d073231a8239f1e3abab4dedc4b95d74d94772.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3de5ba0f8596ec3a1d8b345c019ae3f0b11fd17`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant95e688b1a66f10d225e81f4c38d073231a8239f1e3abab4dedc4b95d74d94772.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant95e688b1a66f10d225e81f4c38d073231a8239f1e3abab4dedc4b95d74d94772.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Limits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Terminal` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasInitial_of_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant95e688b1a66f10d225e81f4c38d073231a8239f1e3abab4dedc4b95d74d94772.lean/declarations/hasinitial-of-equivalence--5c4d3c3c5e08a294b368a81f.md) | 33 | `result-track:5c4d3c3c5e08a294b368a81f04cc4768ce2d6d58fc09ca6b5d41fb9db8acaaa0` |
| 2 | `theorem` | [Equivalence.hasInitial_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant95e688b1a66f10d225e81f4c38d073231a8239f1e3abab4dedc4b95d74d94772.lean/declarations/equivalence-hasinitial-iff--bbd2a910296605dee5137574.md) | 36 | `result-track:bbd2a910296605dee5137574d8d9e1a1ebde704bd7e66586777bb7c969183a2b` |
| 3 | `theorem` | [hasTerminal_of_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant95e688b1a66f10d225e81f4c38d073231a8239f1e3abab4dedc4b95d74d94772.lean/declarations/hasterminal-of-equivalence--d5d00e83bf088d8013b1dd5e.md) | 40 | `result-track:d5d00e83bf088d8013b1dd5eaa255c4b6cd76701b86c5766d9f782aa3a1e0f2b` |
| 4 | `theorem` | [Equivalence.hasTerminal_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant95e688b1a66f10d225e81f4c38d073231a8239f1e3abab4dedc4b95d74d94772.lean/declarations/equivalence-hasterminal-iff--0301a239782d4628e854f950.md) | 43 | `result-track:0301a239782d4628e854f950761f71f8010b0358a8f3633523795a552beb2383` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
