# Verification target: GRWTSK.Algebra.LinearAlgebra.MatrixTheory.FiniteBooleanDerivativeAndFieldData.Variant3ebcd6479f74a588.BooleanOrdinaryProductAndRegularImage

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28df18a7d64aa49693ec1afef90c7bea9a86a119",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixTheory/FiniteBooleanDerivativeAndFieldData/Variant3ebcd6479f74a588/BooleanOrdinaryProductAndRegularImage.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteBooleanDerivativeAndFieldData/Variant3ebcd6479f74a588/BooleanOrdinaryProductAndRegularImage.lean/index.md) · [Full source](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteBooleanDerivativeAndFieldData/Variant3ebcd6479f74a588/BooleanOrdinaryProductAndRegularImage.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28df18a7d64aa49693ec1afef90c7bea9a86a119`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixTheory/FiniteBooleanDerivativeAndFieldData/Variant3ebcd6479f74a588/BooleanOrdinaryProductAndRegularImage.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixTheory/FiniteBooleanDerivativeAndFieldData/Variant3ebcd6479f74a588/BooleanOrdinaryProductAndRegularImage.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.FiniteField.Galois` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 20; external provider; requires a separately pinned dependency.
- [`GRWTSK.Algebra.LinearAlgebra.MatrixTheory.FiniteBooleanDerivativeAndFieldData.Variant3ebcd6479f74a588.FaithfulLeftRegularRepresentation`](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteBooleanDerivativeAndFieldData/Variant3ebcd6479f74a588/FaithfulLeftRegularRepresentation.lean/index.md) — import line 22; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gf2MatMul](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteBooleanDerivativeAndFieldData/Variant3ebcd6479f74a588/BooleanOrdinaryProductAndRegularImage.lean/declarations/gf2matmul--9aa3c8156ad476e500288972.md) | 63 | `declaration-track:9aa3c8156ad476e5002889724382bae49b5deee837eb39eb5c1865ef2ba88fdf` |
| 2 | `def` | [gf2IdentityMatrix](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteBooleanDerivativeAndFieldData/Variant3ebcd6479f74a588/BooleanOrdinaryProductAndRegularImage.lean/declarations/gf2identitymatrix--f2ba5ad117074f5dc408a811.md) | 68 | `declaration-track:f2ba5ad117074f5dc408a811aec2b7d918de03c3a53fb1a0101906cebb270359` |
| 3 | `theorem` | [boolMatrixGF2Equiv_identity](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteBooleanDerivativeAndFieldData/Variant3ebcd6479f74a588/BooleanOrdinaryProductAndRegularImage.lean/declarations/boolmatrixgf2equiv-identity--ac8bafdf009e964847d1b32e.md) | 72 | `result-track:ac8bafdf009e964847d1b32e1a72f0ed66a9da660db8afef226f7595e9c7100f` |
| 4 | `theorem` | [gf2MatMul_identity_left](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteBooleanDerivativeAndFieldData/Variant3ebcd6479f74a588/BooleanOrdinaryProductAndRegularImage.lean/declarations/gf2matmul-identity-left--8aa75fb29af806299dd0c4dc.md) | 80 | `result-track:8aa75fb29af806299dd0c4dc541caa1ec852411e88a0590a892055fad0f76920` |
| 5 | `theorem` | [gf2MatMul_identity_right](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteBooleanDerivativeAndFieldData/Variant3ebcd6479f74a588/BooleanOrdinaryProductAndRegularImage.lean/declarations/gf2matmul-identity-right--4a6dde0b5c81e0704b876a90.md) | 87 | `result-track:4a6dde0b5c81e0704b876a9003592f88d150a405be51a0561b4113113cd6dd61` |
| 6 | `theorem` | [gf2MatMul_assoc](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteBooleanDerivativeAndFieldData/Variant3ebcd6479f74a588/BooleanOrdinaryProductAndRegularImage.lean/declarations/gf2matmul-assoc--31133dda978ea309107236cb.md) | 93 | `result-track:31133dda978ea309107236cb56b63cfab4f8d8f0ca9a7ba96be09e55d3077cb9` |
| 7 | `theorem` | [gf2MatMul_apply](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteBooleanDerivativeAndFieldData/Variant3ebcd6479f74a588/BooleanOrdinaryProductAndRegularImage.lean/declarations/gf2matmul-apply--eda1e6fbcb486314e5ad0bd7.md) | 103 | `result-track:eda1e6fbcb486314e5ad0bd715b1d4c2f8f90f252ee9bdeacc9cc3fa54b581ad` |
| 8 | `def` | [regularBitMatrix](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteBooleanDerivativeAndFieldData/Variant3ebcd6479f74a588/BooleanOrdinaryProductAndRegularImage.lean/declarations/regularbitmatrix--8e9a9abccad7342ab7bf19df.md) | 122 | `declaration-track:8e9a9abccad7342ab7bf19df2e343fc4204ea885da9c61b149d7a14b9fc2d2e8` |
| 9 | `theorem` | [regularBitMatrix_add](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteBooleanDerivativeAndFieldData/Variant3ebcd6479f74a588/BooleanOrdinaryProductAndRegularImage.lean/declarations/regularbitmatrix-add--f35a6274fc53f1449da071af.md) | 129 | `result-track:f35a6274fc53f1449da071af0738df46d5c912a20745798fb083b0fbc35f7936` |
| 10 | `theorem` | [regularBitMatrix_mul](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteBooleanDerivativeAndFieldData/Variant3ebcd6479f74a588/BooleanOrdinaryProductAndRegularImage.lean/declarations/regularbitmatrix-mul--09c6de5f8d1d1f71a0fb7094.md) | 139 | `result-track:09c6de5f8d1d1f71a0fb709453c13820bf1f658ae7848ca50bf732257518d557` |
| 11 | `theorem` | [regularBitMatrix_one](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteBooleanDerivativeAndFieldData/Variant3ebcd6479f74a588/BooleanOrdinaryProductAndRegularImage.lean/declarations/regularbitmatrix-one--27e2382f81120d55fa4be5b7.md) | 148 | `result-track:27e2382f81120d55fa4be5b713403f78bcfe6f58f7caa2229a503f7f6b16f60c` |
| 12 | `theorem` | [regularBitMatrix_injective](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteBooleanDerivativeAndFieldData/Variant3ebcd6479f74a588/BooleanOrdinaryProductAndRegularImage.lean/declarations/regularbitmatrix-injective--314dcaacc2c1a79c45e97d32.md) | 155 | `result-track:314dcaacc2c1a79c45e97d3251f4b7a284a61a1477441be2ea44c646164bf9fd` |
| 13 | `theorem` | [regularBitMatrix_inverse](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteBooleanDerivativeAndFieldData/Variant3ebcd6479f74a588/BooleanOrdinaryProductAndRegularImage.lean/declarations/regularbitmatrix-inverse--64ed41f9ca443a99784f4109.md) | 163 | `result-track:64ed41f9ca443a99784f41093095287110db1bd4a34c2dc2f7ee645093dd90c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
