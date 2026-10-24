# Verification target: GRWTSK.Algebra.LinearAlgebra.MatrixTheory.FiniteBooleanDerivativeAndFieldData.Variant3ebcd6479f74a588.FaithfulLeftRegularRepresentation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9cb12f6200ea43e1cce5ff60260b9e752cf8f6bf",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixTheory/FiniteBooleanDerivativeAndFieldData/Variant3ebcd6479f74a588/FaithfulLeftRegularRepresentation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteBooleanDerivativeAndFieldData/Variant3ebcd6479f74a588/FaithfulLeftRegularRepresentation.lean/index.md) · [Full source](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteBooleanDerivativeAndFieldData/Variant3ebcd6479f74a588/FaithfulLeftRegularRepresentation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9cb12f6200ea43e1cce5ff60260b9e752cf8f6bf`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixTheory/FiniteBooleanDerivativeAndFieldData/Variant3ebcd6479f74a588/FaithfulLeftRegularRepresentation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixTheory/FiniteBooleanDerivativeAndFieldData/Variant3ebcd6479f74a588/FaithfulLeftRegularRepresentation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.FiniteField.Galois` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftMulLinear](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteBooleanDerivativeAndFieldData/Variant3ebcd6479f74a588/FaithfulLeftRegularRepresentation.lean/declarations/leftmullinear--c209692ae35de62075505058.md) | 58 | `declaration-track:c209692ae35de62075505058f66886c99047586b20f92e04251005b5328657b4` |
| 2 | `theorem` | [leftMulLinear_apply](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteBooleanDerivativeAndFieldData/Variant3ebcd6479f74a588/FaithfulLeftRegularRepresentation.lean/declarations/leftmullinear-apply--6a82e9e02ec4aa970886cedc.md) | 62 | `result-track:6a82e9e02ec4aa970886cedc1b9d53eaa162699079581e16bdbf92b89404ad58` |
| 3 | `def` | [regularMatrix](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteBooleanDerivativeAndFieldData/Variant3ebcd6479f74a588/FaithfulLeftRegularRepresentation.lean/declarations/regularmatrix--1b9ff6726d6dac68e5adcf70.md) | 67 | `declaration-track:1b9ff6726d6dac68e5adcf70e314b7531b33f8573828c4afbab467b08d76ffcb` |
| 4 | `theorem` | [regularMatrix_zero](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteBooleanDerivativeAndFieldData/Variant3ebcd6479f74a588/FaithfulLeftRegularRepresentation.lean/declarations/regularmatrix-zero--49fafc8b3305e18477fdbe02.md) | 74 | `result-track:49fafc8b3305e18477fdbe029be17335d246c5950b02b85016cd3b44ab8ccc0a` |
| 5 | `theorem` | [regularMatrix_one](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteBooleanDerivativeAndFieldData/Variant3ebcd6479f74a588/FaithfulLeftRegularRepresentation.lean/declarations/regularmatrix-one--781299219598f101be0ab64c.md) | 80 | `result-track:781299219598f101be0ab64c8e9c882aa1056f1d6a9c23996a9a7bcae5172af3` |
| 6 | `theorem` | [regularMatrix_add](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteBooleanDerivativeAndFieldData/Variant3ebcd6479f74a588/FaithfulLeftRegularRepresentation.lean/declarations/regularmatrix-add--c3e4a74b7ec6b9c470c512a6.md) | 85 | `result-track:c3e4a74b7ec6b9c470c512a6d6131c68d13da621863328bde60f0d52ff260760` |
| 7 | `theorem` | [regularMatrix_mul](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteBooleanDerivativeAndFieldData/Variant3ebcd6479f74a588/FaithfulLeftRegularRepresentation.lean/declarations/regularmatrix-mul--51bddb58503c50420a0d89f0.md) | 99 | `result-track:51bddb58503c50420a0d89f0129410b967f98575ced9a7e4dce2f1a8c41d7cf4` |
| 8 | `def` | [regularRepresentation](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteBooleanDerivativeAndFieldData/Variant3ebcd6479f74a588/FaithfulLeftRegularRepresentation.lean/declarations/regularrepresentation--b203cede937e2bd0613aa22a.md) | 109 | `declaration-track:b203cede937e2bd0613aa22a51d543b7e745350abf0d1c7fb0c29f6c8907b4a2` |
| 9 | `theorem` | [regularRepresentation_apply](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteBooleanDerivativeAndFieldData/Variant3ebcd6479f74a588/FaithfulLeftRegularRepresentation.lean/declarations/regularrepresentation-apply--12aa8d8615912be90c94e501.md) | 115 | `result-track:12aa8d8615912be90c94e5011024d59e14f16e4cd7844e3283a2e94e808a43a0` |
| 10 | `theorem` | [regularMatrix_injective](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteBooleanDerivativeAndFieldData/Variant3ebcd6479f74a588/FaithfulLeftRegularRepresentation.lean/declarations/regularmatrix-injective--28288c888e55b902e0ab099d.md) | 126 | `result-track:28288c888e55b902e0ab099d7f12bd07ff7260b9d59e82e6376505a2870fe4bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
