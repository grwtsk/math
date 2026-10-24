# Verification target: GRWTSK.Algebra.LinearAlgebra.RealificationDraft.Variantd2fdc6a65b81a751fa467fc10b99c9e0dc7ab202507b7e8ae6ad214dcfe80b9a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "194efd35c2e64af376c84f561f9aebf9bcde5395",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/RealificationDraft/Variantd2fdc6a65b81a751fa467fc10b99c9e0dc7ab202507b7e8ae6ad214dcfe80b9a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/RealificationDraft/Variantd2fdc6a65b81a751fa467fc10b99c9e0dc7ab202507b7e8ae6ad214dcfe80b9a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/RealificationDraft/Variantd2fdc6a65b81a751fa467fc10b99c9e0dc7ab202507b7e8ae6ad214dcfe80b9a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `194efd35c2e64af376c84f561f9aebf9bcde5395`.

Source path: `GRWTSK/Algebra/LinearAlgebra/RealificationDraft/Variantd2fdc6a65b81a751fa467fc10b99c9e0dc7ab202507b7e8ae6ad214dcfe80b9a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/RealificationDraft/Variantd2fdc6a65b81a751fa467fc10b99c9e0dc7ab202507b7e8ae6ad214dcfe80b9a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Matrix.Spectrum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.QuadraticForm.Signature` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Complex.Module` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.BigOperators` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coordinates](../../../../../mathematics/Algebra/LinearAlgebra/RealificationDraft/Variantd2fdc6a65b81a751fa467fc10b99c9e0dc7ab202507b7e8ae6ad214dcfe80b9a.lean/declarations/coordinates--1abc6fd5893ee55a0f51b73c.md) | 21 | `declaration-track:1abc6fd5893ee55a0f51b73cd5fb6d13308d2428cdcfaf3950c49a73e9f0e02e` |
| 2 | `def` | [diagonalRealForm](../../../../../mathematics/Algebra/LinearAlgebra/RealificationDraft/Variantd2fdc6a65b81a751fa467fc10b99c9e0dc7ab202507b7e8ae6ad214dcfe80b9a.lean/declarations/diagonalrealform--4f4237c6c5492af803afb9b9.md) | 30 | `declaration-track:4f4237c6c5492af803afb9b90620bef431c482ce639477d30912d2fdd1dcc001` |
| 3 | `def` | [diagonalRealEquiv](../../../../../mathematics/Algebra/LinearAlgebra/RealificationDraft/Variantd2fdc6a65b81a751fa467fc10b99c9e0dc7ab202507b7e8ae6ad214dcfe80b9a.lean/declarations/diagonalrealequiv--c875aa17ebf0c3a7cd2d11a2.md) | 33 | `declaration-track:c875aa17ebf0c3a7cd2d11a22b0ba19322bff80d68e909fa1124badc55840b8f` |
| 4 | `theorem` | [diagonalRealForm_apply](../../../../../mathematics/Algebra/LinearAlgebra/RealificationDraft/Variantd2fdc6a65b81a751fa467fc10b99c9e0dc7ab202507b7e8ae6ad214dcfe80b9a.lean/declarations/diagonalrealform-apply--8ced2ecf3f329b4ae51cf160.md) | 37 | `result-track:8ced2ecf3f329b4ae51cf160fe1b76ca6f216be3da27dfe7411c42936d8b261e` |
| 5 | `theorem` | [diagonal_hermitian_energy](../../../../../mathematics/Algebra/LinearAlgebra/RealificationDraft/Variantd2fdc6a65b81a751fa467fc10b99c9e0dc7ab202507b7e8ae6ad214dcfe80b9a.lean/declarations/diagonal-hermitian-energy--038dd4b87256f55662a3fc76.md) | 47 | `result-track:038dd4b87256f55662a3fc7699b8fb5176cdc6741f786ba94b6ece954a4cf6c2` |
| 6 | `theorem` | [doubled_count](../../../../../mathematics/Algebra/LinearAlgebra/RealificationDraft/Variantd2fdc6a65b81a751fa467fc10b99c9e0dc7ab202507b7e8ae6ad214dcfe80b9a.lean/declarations/doubled-count--e5a6eb44bbcc8db10a2f775f.md) | 58 | `result-track:e5a6eb44bbcc8db10a2f775f935de30e6232c5053fd361436510f3f21e6cb6b5` |
| 7 | `theorem` | [sigPos_diagonalRealForm](../../../../../mathematics/Algebra/LinearAlgebra/RealificationDraft/Variantd2fdc6a65b81a751fa467fc10b99c9e0dc7ab202507b7e8ae6ad214dcfe80b9a.lean/declarations/sigpos-diagonalrealform--8ac642fb80b5eb4fa017941f.md) | 67 | `result-track:8ac642fb80b5eb4fa017941f0c8343ef5c86af68017abcbeb551423ab9da0ccc` |
| 8 | `theorem` | [sigNeg_diagonalRealForm](../../../../../mathematics/Algebra/LinearAlgebra/RealificationDraft/Variantd2fdc6a65b81a751fa467fc10b99c9e0dc7ab202507b7e8ae6ad214dcfe80b9a.lean/declarations/signeg-diagonalrealform--44ce3c7e38787c8461c60e75.md) | 72 | `result-track:44ce3c7e38787c8461c60e75c10c00b052e2723040d89ba3f4be7f5c51cf5a63` |
| 9 | `theorem` | [radical_diagonalRealForm](../../../../../mathematics/Algebra/LinearAlgebra/RealificationDraft/Variantd2fdc6a65b81a751fa467fc10b99c9e0dc7ab202507b7e8ae6ad214dcfe80b9a.lean/declarations/radical-diagonalrealform--931e15418f3d31f0c3057a94.md) | 77 | `result-track:931e15418f3d31f0c3057a94dbaf0eac7e17176056705c9b0db0da9a00ca1d5e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
