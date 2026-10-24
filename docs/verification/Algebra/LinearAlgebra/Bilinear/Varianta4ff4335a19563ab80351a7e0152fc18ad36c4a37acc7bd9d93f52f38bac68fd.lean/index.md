# Verification target: GRWTSK.Algebra.LinearAlgebra.Bilinear.Varianta4ff4335a19563ab80351a7e0152fc18ad36c4a37acc7bd9d93f52f38bac68fd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec749b417a9412f00b2e10b1c807ecf065a839c6",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Bilinear/Varianta4ff4335a19563ab80351a7e0152fc18ad36c4a37acc7bd9d93f52f38bac68fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Varianta4ff4335a19563ab80351a7e0152fc18ad36c4a37acc7bd9d93f52f38bac68fd.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Varianta4ff4335a19563ab80351a7e0152fc18ad36c4a37acc7bd9d93f52f38bac68fd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec749b417a9412f00b2e10b1c807ecf065a839c6`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Bilinear/Varianta4ff4335a19563ab80351a7e0152fc18ad36c4a37acc7bd9d93f52f38bac68fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Bilinear/Varianta4ff4335a19563ab80351a7e0152fc18ad36c4a37acc7bd9d93f52f38bac68fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.BilinearMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ext_basis](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Varianta4ff4335a19563ab80351a7e0152fc18ad36c4a37acc7bd9d93f52f38bac68fd.lean/declarations/ext-basis--521e1febccf359cd25259b1f.md) | 34 | `result-track:521e1febccf359cd25259b1faca1ca23c49b7de17a7222cbb3c5405bab614e1f` |
| 2 | `theorem` | [sum_repr_mul_repr_mulₛₗ](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Varianta4ff4335a19563ab80351a7e0152fc18ad36c4a37acc7bd9d93f52f38bac68fd.lean/declarations/sum-repr-mul-repr-mul--3deb7d3434f410d11166434f.md) | 41 | `result-track:3deb7d3434f410d11166434fcdf907c34820f0ac9c9d2d077b539ef3995caf44` |
| 3 | `theorem` | [sum_repr_mul_repr_mul](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Varianta4ff4335a19563ab80351a7e0152fc18ad36c4a37acc7bd9d93f52f38bac68fd.lean/declarations/sum-repr-mul-repr-mul--db4b9a51a35feef58f22fda3.md) | 51 | `result-track:db4b9a51a35feef58f22fda33ec0d0252d8583fb1100165c75758e320a0cca75` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
