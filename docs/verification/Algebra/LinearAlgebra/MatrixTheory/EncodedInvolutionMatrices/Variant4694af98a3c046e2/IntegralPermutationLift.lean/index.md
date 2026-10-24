# Verification target: GRWTSK.Algebra.LinearAlgebra.MatrixTheory.EncodedInvolutionMatrices.Variant4694af98a3c046e2.IntegralPermutationLift

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c57b6db3b059ff7fb2c71b601508af63237ad5d",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixTheory/EncodedInvolutionMatrices/Variant4694af98a3c046e2/IntegralPermutationLift.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/EncodedInvolutionMatrices/Variant4694af98a3c046e2/IntegralPermutationLift.lean/index.md) · [Full source](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/EncodedInvolutionMatrices/Variant4694af98a3c046e2/IntegralPermutationLift.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c57b6db3b059ff7fb2c71b601508af63237ad5d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixTheory/EncodedInvolutionMatrices/Variant4694af98a3c046e2/IntegralPermutationLift.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixTheory/EncodedInvolutionMatrices/Variant4694af98a3c046e2/IntegralPermutationLift.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Algebra.InvolutionProjection` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Sign` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [encodedPerm](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/EncodedInvolutionMatrices/Variant4694af98a3c046e2/IntegralPermutationLift.lean/declarations/encodedperm--e36a59dcb501b69a1490d8a2.md) | 42 | `declaration-track:e36a59dcb501b69a1490d8a258654cb9d4ec6e0158e7084d64d322fc09b116b9` |
| 2 | `theorem` | [encodedPerm_apply](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/EncodedInvolutionMatrices/Variant4694af98a3c046e2/IntegralPermutationLift.lean/declarations/encodedperm-apply--977c187b8f4acdda04830426.md) | 45 | `result-track:977c187b8f4acdda048304269753f74c3f4fe52673d4c245f5f0dc30c149f77d` |
| 3 | `theorem` | [encodedPerm_symm](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/EncodedInvolutionMatrices/Variant4694af98a3c046e2/IntegralPermutationLift.lean/declarations/encodedperm-symm--e61c1b56eae928d1a77c059c.md) | 50 | `result-track:e61c1b56eae928d1a77c059ca58096ccf4fbdde5b891d933373675b975c35737` |
| 4 | `theorem` | [encodedPerm_apply_self](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/EncodedInvolutionMatrices/Variant4694af98a3c046e2/IntegralPermutationLift.lean/declarations/encodedperm-apply-self--d9c513dc816d53a94119a149.md) | 59 | `result-track:d9c513dc816d53a94119a149acf6f33f476a2e52dbad45eb10d981cd832fa60b` |
| 5 | `def` | [integralMatrix](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/EncodedInvolutionMatrices/Variant4694af98a3c046e2/IntegralPermutationLift.lean/declarations/integralmatrix--32c0a402f5e586e3528b7a43.md) | 65 | `declaration-track:32c0a402f5e586e3528b7a4377a7e82412547330c6ce0ed9924669b59b4a4a4b` |
| 6 | `theorem` | [integralMatrix_eq_ite](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/EncodedInvolutionMatrices/Variant4694af98a3c046e2/IntegralPermutationLift.lean/declarations/integralmatrix-eq-ite--27620025b27d724d16c2f542.md) | 68 | `result-track:27620025b27d724d16c2f542b795a23da791e162b09a74d8d4f346524dbaa1c1` |
| 7 | `theorem` | [integralMatrix_eq_one_submatrix](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/EncodedInvolutionMatrices/Variant4694af98a3c046e2/IntegralPermutationLift.lean/declarations/integralmatrix-eq-one-submatrix--f433e3c991a96e389171f76b.md) | 82 | `result-track:f433e3c991a96e389171f76b96a3aa8efdf75c8f373aef3ac219cf0b92ba9d26` |
| 8 | `theorem` | [integralMatrix_mul_self](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/EncodedInvolutionMatrices/Variant4694af98a3c046e2/IntegralPermutationLift.lean/declarations/integralmatrix-mul-self--c03be00ec5bca701db5ab95c.md) | 90 | `result-track:c03be00ec5bca701db5ab95c88c71393329b37d401f65b83cb1039e010cb6dec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
