# Verification target: GRWTSK.Algebra.LinearAlgebra.Matrix.Variant213331f051d11b33aac28cf3a31d57e8bb7b0325a12b07bd01d98065e9e2b50f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca11a587379bb1cb32a0bbf67b57b52a2210a224",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant213331f051d11b33aac28cf3a31d57e8bb7b0325a12b07bd01d98065e9e2b50f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant213331f051d11b33aac28cf3a31d57e8bb7b0325a12b07bd01d98065e9e2b50f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant213331f051d11b33aac28cf3a31d57e8bb7b0325a12b07bd01d98065e9e2b50f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca11a587379bb1cb32a0bbf67b57b52a2210a224`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Matrix/Variant213331f051d11b33aac28cf3a31d57e8bb7b0325a12b07bd01d98065e9e2b50f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Matrix/Variant213331f051d11b33aac28cf3a31d57e8bb7b0325a12b07bd01d98065e9e2b50f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Eigenspace.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [hasEigenvector_toLin_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant213331f051d11b33aac28cf3a31d57e8bb7b0325a12b07bd01d98065e9e2b50f.lean/declarations/haseigenvector-tolin-diagonal--bc4eccccf2ac2255ef8ba133.md) | 40 | `result-track:bc4eccccf2ac2255ef8ba1330cb8023b7413f95dafc827d2e48201c7cc03e73a` |
| 2 | `lemma` | [hasEigenvector_toLin'_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant213331f051d11b33aac28cf3a31d57e8bb7b0325a12b07bd01d98065e9e2b50f.lean/declarations/haseigenvector-tolin-diagonal--ec6de087ac15f35c44dd0d3f.md) | 45 | `result-track:ec6de087ac15f35c44dd0d3f0068b2d51bc2e7327bbe72a7a269ec005e1aa7ad` |
| 3 | `lemma` | [hasEigenvalue_toLin_diagonal_iff](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant213331f051d11b33aac28cf3a31d57e8bb7b0325a12b07bd01d98065e9e2b50f.lean/declarations/haseigenvalue-tolin-diagonal-iff--f33a0fdc06d032768deffac6.md) | 50 | `result-track:f33a0fdc06d032768deffac69d10430dc96e2a89684f3a879d4b8ca2f3322506` |
| 4 | `lemma` | [hasEigenvalue_toLin'_diagonal_iff](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant213331f051d11b33aac28cf3a31d57e8bb7b0325a12b07bd01d98065e9e2b50f.lean/declarations/haseigenvalue-tolin-diagonal-iff--28f7947c5cf0d62b02d2f009.md) | 74 | `result-track:28f7947c5cf0d62b02d2f0092026a65060b802bb9901e90545cfa650cfa79a5f` |
| 5 | `lemma` | [spectrum_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant213331f051d11b33aac28cf3a31d57e8bb7b0325a12b07bd01d98065e9e2b50f.lean/declarations/spectrum-diagonal--75d75b2e59d97376936c3fa6.md) | 81 | `result-track:75d75b2e59d97376936c3fa68782f73138bffb34716c00984d834b46f4564c82` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
