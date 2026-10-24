# Verification target: GRWTSK.Algebra.LinearAlgebra.MatrixTheory.SourceComponents.Variant6a8c4d7c421f9c98.BinaryMatrixEntrywiseOperations

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2dcf09b24d051ff553fc015f18f599a3c227c81",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixTheory/SourceComponents/Variant6a8c4d7c421f9c98/BinaryMatrixEntrywiseOperations.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/SourceComponents/Variant6a8c4d7c421f9c98/BinaryMatrixEntrywiseOperations.lean/index.md) · [Full source](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/SourceComponents/Variant6a8c4d7c421f9c98/BinaryMatrixEntrywiseOperations.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2dcf09b24d051ff553fc015f18f599a3c227c81`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixTheory/SourceComponents/Variant6a8c4d7c421f9c98/BinaryMatrixEntrywiseOperations.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixTheory/SourceComponents/Variant6a8c4d7c421f9c98/BinaryMatrixEntrywiseOperations.lean.json)

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
| 1 | `def` | [map](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/SourceComponents/Variant6a8c4d7c421f9c98/BinaryMatrixEntrywiseOperations.lean/declarations/map--84ffee4139e070cc56e06bfa.md) | 38 | `declaration-track:84ffee4139e070cc56e06bfaaa1408f85a1c23f262f5812ae33cc7bdad79bd46` |
| 2 | `def` | [zipWith](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/SourceComponents/Variant6a8c4d7c421f9c98/BinaryMatrixEntrywiseOperations.lean/declarations/zipwith--7cd38330911bd150a4fd2f49.md) | 41 | `declaration-track:7cd38330911bd150a4fd2f490d3f2fab4c20b652ab4f270f5e37254d4223910f` |
| 3 | `def` | [complement](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/SourceComponents/Variant6a8c4d7c421f9c98/BinaryMatrixEntrywiseOperations.lean/declarations/complement--c5cb7487d0abebc7b383c75d.md) | 52 | `declaration-track:c5cb7487d0abebc7b383c75d63aa1b5a0cf189f66a7d9e4a04ac03981902b97a` |
| 4 | `theorem` | [rows_map](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/SourceComponents/Variant6a8c4d7c421f9c98/BinaryMatrixEntrywiseOperations.lean/declarations/rows-map--c1c82abeefc1b4bc6263fe59.md) | 56 | `result-track:c1c82abeefc1b4bc6263fe5916df2ff70ec83999ca41f772dc3c0f933b32d622` |
| 5 | `theorem` | [cols_map](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/SourceComponents/Variant6a8c4d7c421f9c98/BinaryMatrixEntrywiseOperations.lean/declarations/cols-map--d09ae317b6570c9aeafd5247.md) | 61 | `result-track:d09ae317b6570c9aeafd5247390d712d062fe989479cf6dd836e0e351c63dffb` |
| 6 | `theorem` | [get_map](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/SourceComponents/Variant6a8c4d7c421f9c98/BinaryMatrixEntrywiseOperations.lean/declarations/get-map--a6adc9e9f98cae3d6a3ea4d0.md) | 66 | `result-track:a6adc9e9f98cae3d6a3ea4d0dc0306cb872d0d529593899abf4ea81339e3a069` |
| 7 | `theorem` | [rows_zipWith](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/SourceComponents/Variant6a8c4d7c421f9c98/BinaryMatrixEntrywiseOperations.lean/declarations/rows-zipwith--f39f11bc2f13ed461c4f67e4.md) | 72 | `result-track:f39f11bc2f13ed461c4f67e4245db6fc54b8e805a606bf23bebe67eefbfb2314` |
| 8 | `theorem` | [cols_zipWith](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/SourceComponents/Variant6a8c4d7c421f9c98/BinaryMatrixEntrywiseOperations.lean/declarations/cols-zipwith--d4b2b2ae95cb40b0d3322c62.md) | 77 | `result-track:d4b2b2ae95cb40b0d3322c6209bffb9ed872ef0f013f841cb39d53d8f68a93a3` |
| 9 | `theorem` | [get_zipWith](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/SourceComponents/Variant6a8c4d7c421f9c98/BinaryMatrixEntrywiseOperations.lean/declarations/get-zipwith--f495cd3c4c49784810c4786c.md) | 82 | `result-track:f495cd3c4c49784810c4786c7007198069fcee03c1da4dd1f2db7513ac8300c8` |
| 10 | `theorem` | [rows_complement](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/SourceComponents/Variant6a8c4d7c421f9c98/BinaryMatrixEntrywiseOperations.lean/declarations/rows-complement--018bc27cc4f5af078c4777d0.md) | 98 | `result-track:018bc27cc4f5af078c4777d07bb28985a8f7d76ede1947e318668db667d5a631` |
| 11 | `theorem` | [cols_complement](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/SourceComponents/Variant6a8c4d7c421f9c98/BinaryMatrixEntrywiseOperations.lean/declarations/cols-complement--6fc8d4379dc2d4cc35924b9d.md) | 103 | `result-track:6fc8d4379dc2d4cc35924b9db225eb6c2e01bc2ba2a7fab1245b39ad6721f427` |
| 12 | `theorem` | [get_complement](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/SourceComponents/Variant6a8c4d7c421f9c98/BinaryMatrixEntrywiseOperations.lean/declarations/get-complement--bd1d520207600d5e0a9bff51.md) | 108 | `result-track:bd1d520207600d5e0a9bff51cd3176b3d8d8d3768bd7c76644e4ef28748eded3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
