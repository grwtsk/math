# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantc8d4a0493680869d5acaf7c2ae7f5f0614bbf4ec0f1eb2bb9b80b47f4189aa73

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c920935f27539ff611f1be58a32e8a58c53c9933",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc8d4a0493680869d5acaf7c2ae7f5f0614bbf4ec0f1eb2bb9b80b47f4189aa73.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc8d4a0493680869d5acaf7c2ae7f5f0614bbf4ec0f1eb2bb9b80b47f4189aa73.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc8d4a0493680869d5acaf7c2ae7f5f0614bbf4ec0f1eb2bb9b80b47f4189aa73.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c920935f27539ff611f1be58a32e8a58c53c9933`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc8d4a0493680869d5acaf7c2ae7f5f0614bbf4ec0f1eb2bb9b80b47f4189aa73.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc8d4a0493680869d5acaf7c2ae7f5f0614bbf4ec0f1eb2bb9b80b47f4189aa73.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.CategoryTheory.Coherence.Normalize` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Coherence.PureCoherence` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mk_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc8d4a0493680869d5acaf7c2ae7f5f0614bbf4ec0f1eb2bb9b80b47f4189aa73.lean/declarations/mk-eq--d71ab64638b4800fda4f4c53.md) | 37 | `result-track:d71ab64638b4800fda4f4c53ff66b89a20b6f1215cd8db3ab6283b2311bf662c` |
| 2 | `def` | [normalForm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc8d4a0493680869d5acaf7c2ae7f5f0614bbf4ec0f1eb2bb9b80b47f4189aa73.lean/declarations/normalform--5a0f55c4eec60992f8d3e01b.md) | 41 | `declaration-track:5a0f55c4eec60992f8d3e01b77f8435f579294e4df4a5bac6333af182a1d92e1` |
| 3 | `theorem` | [mk_eq_of_cons](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc8d4a0493680869d5acaf7c2ae7f5f0614bbf4ec0f1eb2bb9b80b47f4189aa73.lean/declarations/mk-eq-of-cons--60c6a51317f3c402a939887c.md) | 64 | `result-track:60c6a51317f3c402a939887cb4d48383116a495c84284a4d961dc5373bc60b17` |
| 4 | `def` | [ofNormalizedEq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc8d4a0493680869d5acaf7c2ae7f5f0614bbf4ec0f1eb2bb9b80b47f4189aa73.lean/declarations/ofnormalizedeq--1821768895e73d2c434b8f43.md) | 72 | `declaration-track:1821768895e73d2c434b8f4383f9f31af13a8c4955b8d5a6bebf02d5bc6c407a` |
| 5 | `def` | [List.splitEvenOdd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc8d4a0493680869d5acaf7c2ae7f5f0614bbf4ec0f1eb2bb9b80b47f4189aa73.lean/declarations/list-splitevenodd--c0419f16f49af98a1e8cfd43.md) | 91 | `declaration-track:c0419f16f49af98a1e8cfd4336fbb219caa1b6f9876dc005c736d815e82150c3` |
| 6 | `def` | [main](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc8d4a0493680869d5acaf7c2ae7f5f0614bbf4ec0f1eb2bb9b80b47f4189aa73.lean/declarations/main--8534fed4a01221ded186bee1.md) | 99 | `declaration-track:8534fed4a01221ded186bee1bbd622207482f34cf6f871c24e78a10b146c1b36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
