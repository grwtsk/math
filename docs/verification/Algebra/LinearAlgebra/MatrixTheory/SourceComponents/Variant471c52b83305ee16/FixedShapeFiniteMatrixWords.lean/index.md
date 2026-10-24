# Verification target: GRWTSK.Algebra.LinearAlgebra.MatrixTheory.SourceComponents.Variant471c52b83305ee16.FixedShapeFiniteMatrixWords

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ac65c4e57c1aa3c145051c4234bf81e25e1f4ff",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixTheory/SourceComponents/Variant471c52b83305ee16/FixedShapeFiniteMatrixWords.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/SourceComponents/Variant471c52b83305ee16/FixedShapeFiniteMatrixWords.lean/index.md) · [Full source](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/SourceComponents/Variant471c52b83305ee16/FixedShapeFiniteMatrixWords.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ac65c4e57c1aa3c145051c4234bf81e25e1f4ff`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixTheory/SourceComponents/Variant471c52b83305ee16/FixedShapeFiniteMatrixWords.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixTheory/SourceComponents/Variant471c52b83305ee16/FixedShapeFiniteMatrixWords.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Carrier.BinaryMatrix` — import line 19; external provider; requires a separately pinned dependency.
- [`GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Words.SourceComponents.Variant471c52b83305ee16.FiniteMatrixWords`](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/SourceComponents/Variant471c52b83305ee16/FiniteMatrixWords.lean/index.md) — import line 20; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [timeLength](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/SourceComponents/Variant471c52b83305ee16/FixedShapeFiniteMatrixWords.lean/declarations/timelength--bb943d323ba0004b32ca718c.md) | 39 | `declaration-track:bb943d323ba0004b32ca718c27e89df612b6c9bf1d1ce14dc1e3d7b40dd4bb0c` |
| 2 | `def` | [frameAt](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/SourceComponents/Variant471c52b83305ee16/FixedShapeFiniteMatrixWords.lean/declarations/frameat--990a4e1dd2afacfc9293ac46.md) | 43 | `declaration-track:990a4e1dd2afacfc9293ac460e74e2d50fe32137747712ee1eb591add66de80c` |
| 3 | `theorem` | [timeLength_eq_length](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/SourceComponents/Variant471c52b83305ee16/FixedShapeFiniteMatrixWords.lean/declarations/timelength-eq-length--b360b4592827b131c9015ede.md) | 46 | `result-track:b360b4592827b131c9015ede009444a8c4bc78575c3f6cab8e7ca8e9d634cf84` |
| 4 | `theorem` | [frameAt_eq_get](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/SourceComponents/Variant471c52b83305ee16/FixedShapeFiniteMatrixWords.lean/declarations/frameat-eq-get--570307fd6cae7a3797235e10.md) | 50 | `result-track:570307fd6cae7a3797235e10e509e3d74ac418fc91ccde57b7d138f0f6e91dd1` |
| 5 | `def` | [HasFixedWidth](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/SourceComponents/Variant471c52b83305ee16/FixedShapeFiniteMatrixWords.lean/declarations/hasfixedwidth--e7c8796d2333bf3221b7c9ea.md) | 60 | `declaration-track:e7c8796d2333bf3221b7c9eaf9c94921017b7a916a6d38a61cb5cf8f3c7362c5` |
| 6 | `theorem` | [empty_hasFixedWidth](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/SourceComponents/Variant471c52b83305ee16/FixedShapeFiniteMatrixWords.lean/declarations/empty-hasfixedwidth--a41abf4a8810d614880c7274.md) | 65 | `result-track:a41abf4a8810d614880c7274fc5ac5d1a4d5657398b775009e52700c49eef80b` |
| 7 | `theorem` | [hasFixedWidth_of_shape](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/SourceComponents/Variant471c52b83305ee16/FixedShapeFiniteMatrixWords.lean/declarations/hasfixedwidth-of-shape--82bc703c4d36a095c3cad4bc.md) | 74 | `result-track:82bc703c4d36a095c3cad4bcaf35a7c6f1c16f3f8bd1066011d50337004f3fc5` |
| 8 | `theorem` | [mapMatrix_hasFixedWidth](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/SourceComponents/Variant471c52b83305ee16/FixedShapeFiniteMatrixWords.lean/declarations/mapmatrix-hasfixedwidth--86c7170d3ac68a95f71ed9ea.md) | 85 | `result-track:86c7170d3ac68a95f71ed9eac7b44da5686e50588e31a4ea4021bee597956574` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
