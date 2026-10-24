# Verification target: GRWTSK.Algebra.LinearAlgebra.MatrixTheory.LosslessMatrixCodecTransport.Variantb0b9be35259cd59d.DefaultedCodecTransport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "21e978881e1d5c351a26072c366971177252cd17",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixTheory/LosslessMatrixCodecTransport/Variantb0b9be35259cd59d/DefaultedCodecTransport.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/LosslessMatrixCodecTransport/Variantb0b9be35259cd59d/DefaultedCodecTransport.lean/index.md) · [Full source](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/LosslessMatrixCodecTransport/Variantb0b9be35259cd59d/DefaultedCodecTransport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `21e978881e1d5c351a26072c366971177252cd17`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixTheory/LosslessMatrixCodecTransport/Variantb0b9be35259cd59d/DefaultedCodecTransport.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixTheory/LosslessMatrixCodecTransport/Variantb0b9be35259cd59d/DefaultedCodecTransport.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BooleanMatrix.Codec.Core` — import line 19; external provider; requires a separately pinned dependency.
- `BooleanMatrix.Matrix.Core` — import line 20; external provider; requires a separately pinned dependency.
- `BooleanMatrix.TypedApplication` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [liftOr](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/LosslessMatrixCodecTransport/Variantb0b9be35259cd59d/DefaultedCodecTransport.lean/declarations/liftor--d4ea306c5c6b654eda32e719.md) | 40 | `declaration-track:d4ea306c5c6b654eda32e7193722e391eddd6026ab03b8a18ff4f18bb7a6d5ab` |
| 2 | `theorem` | [liftOr_encode](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/LosslessMatrixCodecTransport/Variantb0b9be35259cd59d/DefaultedCodecTransport.lean/declarations/liftor-encode--a89832e68deb27c3a8e65311.md) | 52 | `result-track:a89832e68deb27c3a8e653112dc9f95f29defc5f468f1a86430fc72b2bb70956` |
| 3 | `def` | [lift](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/LosslessMatrixCodecTransport/Variantb0b9be35259cd59d/DefaultedCodecTransport.lean/declarations/lift--1135c53519ac7085c538e7ef.md) | 64 | `declaration-track:1135c53519ac7085c538e7ef8832e976ca68100b9aa1456e3bb9c4508ba13615` |
| 4 | `theorem` | [lift_encode](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/LosslessMatrixCodecTransport/Variantb0b9be35259cd59d/DefaultedCodecTransport.lean/declarations/lift-encode--865b44cf676628b2732bc0f2.md) | 72 | `result-track:865b44cf676628b2732bc0f23f9318b6341aed614b12acb0916ddfbae7060a2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
