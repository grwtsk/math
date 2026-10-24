# Verification target: GRWTSK.Algebra.LinearAlgebra.Matrix.Variantb8fdb5794825ee4abbc085ca28d86e35557e74a6fbbacfd3cb77422696214492

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2183f95df7c0c85032f32fd1efc52bad9b719022",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variantb8fdb5794825ee4abbc085ca28d86e35557e74a6fbbacfd3cb77422696214492.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantb8fdb5794825ee4abbc085ca28d86e35557e74a6fbbacfd3cb77422696214492.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantb8fdb5794825ee4abbc085ca28d86e35557e74a6fbbacfd3cb77422696214492.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2183f95df7c0c85032f32fd1efc52bad9b719022`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Matrix/Variantb8fdb5794825ee4abbc085ca28d86e35557e74a6fbbacfd3cb77422696214492.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Matrix/Variantb8fdb5794825ee4abbc085ca28d86e35557e74a6fbbacfd3cb77422696214492.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Azumaya.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Finite.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [AlgHom.mulLeftRightMatrix_inv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantb8fdb5794825ee4abbc085ca28d86e35557e74a6fbbacfd3cb77422696214492.lean/declarations/alghom-mulleftrightmatrix-inv--e540066fb5fea06f047aae78.md) | 39 | `declaration-track:e540066fb5fea06f047aae78f55d90b12132b5cf1b8554be337182a5f4084600` |
| 2 | `lemma` | [AlgHom.mulLeftRightMatrix.inv_comp](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantb8fdb5794825ee4abbc085ca28d86e35557e74a6fbbacfd3cb77422696214492.lean/declarations/alghom-mulleftrightmatrix-inv-comp--3ea585e075ff93f07bf61f12.md) | 46 | `result-track:3ea585e075ff93f07bf61f122a55ac45fd164d9d8f770c86e4efe8bc428486dc` |
| 3 | `lemma` | [AlgHom.mulLeftRightMatrix.comp_inv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantb8fdb5794825ee4abbc085ca28d86e35557e74a6fbbacfd3cb77422696214492.lean/declarations/alghom-mulleftrightmatrix-comp-inv--9f354d0e9d624bcce76da8e2.md) | 55 | `result-track:9f354d0e9d624bcce76da8e20211b71c199093ee3bfc06865e5591961c0e7566` |
| 4 | `theorem` | [matrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantb8fdb5794825ee4abbc085ca28d86e35557e74a6fbbacfd3cb77422696214492.lean/declarations/matrix--1efa3f14fee29fb00ee765e1.md) | 71 | `result-track:1efa3f14fee29fb00ee765e11a3a7590c138eecf847391e5cbb9c44ec593fdbb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
