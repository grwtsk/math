# Verification target: GRWTSK.Algebra.LinearAlgebra.MatrixTheory.SourceComponents.Variant6a8c4d7c421f9c98.BinaryMatrixTranspose

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d6364aa837f42e373ce1aa354938e79cbc850b6",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixTheory/SourceComponents/Variant6a8c4d7c421f9c98/BinaryMatrixTranspose.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/SourceComponents/Variant6a8c4d7c421f9c98/BinaryMatrixTranspose.lean/index.md) · [Full source](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/SourceComponents/Variant6a8c4d7c421f9c98/BinaryMatrixTranspose.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d6364aa837f42e373ce1aa354938e79cbc850b6`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixTheory/SourceComponents/Variant6a8c4d7c421f9c98/BinaryMatrixTranspose.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixTheory/SourceComponents/Variant6a8c4d7c421f9c98/BinaryMatrixTranspose.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Carrier.Bit` — import line 19; external provider; requires a separately pinned dependency.
- [`GRWTSK.Algebra.LinearAlgebra.MatrixTheory.SourceComponents.Variant6a8c4d7c421f9c98.FiniteBinaryMatrixCarrier`](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/SourceComponents/Variant6a8c4d7c421f9c98/FiniteBinaryMatrixCarrier.lean/index.md) — import line 20; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [transpose](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/SourceComponents/Variant6a8c4d7c421f9c98/BinaryMatrixTranspose.lean/declarations/transpose--9811dc533b39f945bce716e8.md) | 38 | `declaration-track:9811dc533b39f945bce716e890078df6ec28a7be5ed8f5566df9e503abbdc828` |
| 2 | `theorem` | [rows_transpose](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/SourceComponents/Variant6a8c4d7c421f9c98/BinaryMatrixTranspose.lean/declarations/rows-transpose--383a5932503c3ef943f37448.md) | 42 | `result-track:383a5932503c3ef943f3744822f209b4ad03a423d65a706f39e5896b925b1762` |
| 3 | `theorem` | [cols_transpose](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/SourceComponents/Variant6a8c4d7c421f9c98/BinaryMatrixTranspose.lean/declarations/cols-transpose--56b9ce549b799ae4807c0989.md) | 47 | `result-track:56b9ce549b799ae4807c0989a203bb840d8247024a321aea12b163aa09fef4e7` |
| 4 | `theorem` | [get_transpose](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/SourceComponents/Variant6a8c4d7c421f9c98/BinaryMatrixTranspose.lean/declarations/get-transpose--94e1696c52c04b36f89b4dad.md) | 52 | `result-track:94e1696c52c04b36f89b4dad2b847239c9d7c7bccaba714608a951ed83fb5241` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
