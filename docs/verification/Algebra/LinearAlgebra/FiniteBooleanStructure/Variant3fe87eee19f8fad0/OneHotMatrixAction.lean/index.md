# Verification target: GRWTSK.Algebra.LinearAlgebra.FiniteBooleanStructure.Variant3fe87eee19f8fad0.OneHotMatrixAction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90d655f38ea5bf9b1007784a17110ef1f0fdf370",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant3fe87eee19f8fad0/OneHotMatrixAction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant3fe87eee19f8fad0/OneHotMatrixAction.lean/index.md) · [Full source](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant3fe87eee19f8fad0/OneHotMatrixAction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90d655f38ea5bf9b1007784a17110ef1f0fdf370`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant3fe87eee19f8fad0/OneHotMatrixAction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant3fe87eee19f8fad0/OneHotMatrixAction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Geometry.GlobalProjection` — import line 19; external provider; requires a separately pinned dependency.
- `BitMatrix.FiniteField.Galois` — import line 20; external provider; requires a separately pinned dependency.
- `DAF.FiniteDynamics.Involution` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 22; external provider; requires a separately pinned dependency.
- [`GRWTSK.Algebra.LinearAlgebra.FiniteBooleanStructure.Variant3fe87eee19f8fad0.CertifiedPermutationProjection`](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant3fe87eee19f8fad0/CertifiedPermutationProjection.lean/index.md) — import line 24; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [stateVector](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant3fe87eee19f8fad0/OneHotMatrixAction.lean/declarations/statevector--4b2a5c8b0831cd05e3764deb.md) | 44 | `declaration-track:4b2a5c8b0831cd05e3764debee9976c16581a0659c81e7cd85134c5d03e34b83` |
| 2 | `theorem` | [stateVector_apply](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant3fe87eee19f8fad0/OneHotMatrixAction.lean/declarations/statevector-apply--e6b16cca09a60112f3cd3722.md) | 48 | `result-track:e6b16cca09a60112f3cd3722dfd9da48df8b86fa7abeb9316e77f1c61f8928ad` |
| 3 | `theorem` | [mulVec_stateVector](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant3fe87eee19f8fad0/OneHotMatrixAction.lean/declarations/mulvec-statevector--3525ea24ed585adf55784f13.md) | 53 | `result-track:3525ea24ed585adf55784f131bdf97e9dc5c0a8f7aacbf52f7a2a06fe49d527e` |
| 4 | `theorem` | [f2Matrix_mul_self](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant3fe87eee19f8fad0/OneHotMatrixAction.lean/declarations/f2matrix-mul-self--79f5aaa16b6b4123a556d215.md) | 68 | `result-track:79f5aaa16b6b4123a556d21543a7524f813f4c42d8a5ae3fd0abd190453e84e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
