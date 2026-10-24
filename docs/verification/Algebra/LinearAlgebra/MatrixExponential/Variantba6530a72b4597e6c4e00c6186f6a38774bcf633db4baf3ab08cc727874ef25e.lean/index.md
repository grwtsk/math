# Verification target: GRWTSK.Algebra.LinearAlgebra.MatrixExponential.Variantba6530a72b4597e6c4e00c6186f6a38774bcf633db4baf3ab08cc727874ef25e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8663de3891d055b5a5f5252d8d2a9d1bda33580",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixExponential/Variantba6530a72b4597e6c4e00c6186f6a38774bcf633db4baf3ab08cc727874ef25e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variantba6530a72b4597e6c4e00c6186f6a38774bcf633db4baf3ab08cc727874ef25e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variantba6530a72b4597e6c4e00c6186f6a38774bcf633db4baf3ab08cc727874ef25e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8663de3891d055b5a5f5252d8d2a9d1bda33580`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixExponential/Variantba6530a72b4597e6c4e00c6186f6a38774bcf633db4baf3ab08cc727874ef25e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixExponential/Variantba6530a72b4597e6c4e00c6186f6a38774bcf633db4baf3ab08cc727874ef25e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.Exponential` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Matrix` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ZPow` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Hermitian` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Symmetric` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Matrix` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exp_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variantba6530a72b4597e6c4e00c6186f6a38774bcf633db4baf3ab08cc727874ef25e.lean/declarations/exp-diagonal--3751513fee8b2773ce64fc8f.md) | 85 | `result-track:3751513fee8b2773ce64fc8fad75ce11f0127a42397c2d45715b02b3613da60d` |
| 2 | `theorem` | [exp_blockDiagonal](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variantba6530a72b4597e6c4e00c6186f6a38774bcf633db4baf3ab08cc727874ef25e.lean/declarations/exp-blockdiagonal--3c9bda8e5bbf3eeb0c77cbb9.md) | 89 | `result-track:3c9bda8e5bbf3eeb0c77cbb93579c49b881df2c0209d8ba0ebaf51cfb50b2885` |
| 3 | `theorem` | [exp_blockDiagonal'](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variantba6530a72b4597e6c4e00c6186f6a38774bcf633db4baf3ab08cc727874ef25e.lean/declarations/exp-blockdiagonal--59ddb1917e64b1ed42c27a5e.md) | 94 | `result-track:59ddb1917e64b1ed42c27a5e0e2febc63ed104724dde44165d329131a0db7f85` |
| 4 | `theorem` | [exp_conjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variantba6530a72b4597e6c4e00c6186f6a38774bcf633db4baf3ab08cc727874ef25e.lean/declarations/exp-conjtranspose--cd8bcd19ce4291e927adfd3d.md) | 99 | `result-track:cd8bcd19ce4291e927adfd3d1025356ca9bf2f24a94d4d6ef27e48a3c3e3efbf` |
| 5 | `theorem` | [IsHermitian.exp](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variantba6530a72b4597e6c4e00c6186f6a38774bcf633db4baf3ab08cc727874ef25e.lean/declarations/ishermitian-exp--bd77bd05b8421adb58dc9cc9.md) | 104 | `result-track:bd77bd05b8421adb58dc9cc994ced01605892c65daf9175876b750b363c94198` |
| 6 | `theorem` | [exp_transpose](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variantba6530a72b4597e6c4e00c6186f6a38774bcf633db4baf3ab08cc727874ef25e.lean/declarations/exp-transpose--85a8101bdda31abd4965e394.md) | 116 | `result-track:85a8101bdda31abd4965e39445c25fcfc604393dddbc9da7a4c75a9ba4047865` |
| 7 | `theorem` | [IsSymm.exp](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variantba6530a72b4597e6c4e00c6186f6a38774bcf633db4baf3ab08cc727874ef25e.lean/declarations/issymm-exp--f4d243cda61c71c799739719.md) | 120 | `result-track:f4d243cda61c71c7997397198e6c1609c64db7b009d08e66b0ec60cdf24ea014` |
| 8 | `theorem` | [exp_add_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variantba6530a72b4597e6c4e00c6186f6a38774bcf633db4baf3ab08cc727874ef25e.lean/declarations/exp-add-of-commute--992a129f6a2f294f49152b96.md) | 133 | `result-track:992a129f6a2f294f49152b9679074cbc73c1119e267e23abac28a43c6c226849` |
| 9 | `theorem` | [exp_sum_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variantba6530a72b4597e6c4e00c6186f6a38774bcf633db4baf3ab08cc727874ef25e.lean/declarations/exp-sum-of-commute--d22bd68e2dee047ff5a3fda2.md) | 141 | `result-track:d22bd68e2dee047ff5a3fda260a881d174bde9904aca025ff0397a5a3a4dfbaa` |
| 10 | `theorem` | [exp_nsmul](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variantba6530a72b4597e6c4e00c6186f6a38774bcf633db4baf3ab08cc727874ef25e.lean/declarations/exp-nsmul--733d71c635e195c5c1d56066.md) | 151 | `result-track:733d71c635e195c5c1d5606607ad8e59d2781e53adf0ea37f1c10bd0793a2893` |
| 11 | `theorem` | [isUnit_exp](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variantba6530a72b4597e6c4e00c6186f6a38774bcf633db4baf3ab08cc727874ef25e.lean/declarations/isunit-exp--9c623423b854ba5c3f9b43cf.md) | 158 | `result-track:9c623423b854ba5c3f9b43cf4e58cdbeece17dcdf33960b7599cecf985c03ab0` |
| 12 | `theorem` | [exp_units_conj](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variantba6530a72b4597e6c4e00c6186f6a38774bcf633db4baf3ab08cc727874ef25e.lean/declarations/exp-units-conj--f890f2482c753b86ef3f1c68.md) | 166 | `result-track:f890f2482c753b86ef3f1c68d299da9e59fdf5c85c67d759eb2a7e9fa769b47f` |
| 13 | `theorem` | [exp_units_conj'](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variantba6530a72b4597e6c4e00c6186f6a38774bcf633db4baf3ab08cc727874ef25e.lean/declarations/exp-units-conj--c40d1b0a476832536eff481a.md) | 175 | `result-track:c40d1b0a476832536eff481afffb11f77d7e802d54ebd69172b8b08b55806493` |
| 14 | `theorem` | [exp_neg](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variantba6530a72b4597e6c4e00c6186f6a38774bcf633db4baf3ab08cc727874ef25e.lean/declarations/exp-neg--d7aa9860fb2aed2e7d9d8933.md) | 187 | `result-track:d7aa9860fb2aed2e7d9d8933ef59fe309206c348040a8afbd357c6ec399a7bba` |
| 15 | `theorem` | [exp_zsmul](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variantba6530a72b4597e6c4e00c6186f6a38774bcf633db4baf3ab08cc727874ef25e.lean/declarations/exp-zsmul--b1f6ce36a30e81286882e187.md) | 195 | `result-track:b1f6ce36a30e81286882e1873cb5a648ed38496c9835350e5872ff2051b0b4d5` |
| 16 | `theorem` | [exp_conj](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variantba6530a72b4597e6c4e00c6186f6a38774bcf633db4baf3ab08cc727874ef25e.lean/declarations/exp-conj--92361ee69729b44f50feddba.md) | 202 | `result-track:92361ee69729b44f50feddba2c8dabd8756248215ccf951907db3431d192a7e7` |
| 17 | `theorem` | [exp_conj'](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variantba6530a72b4597e6c4e00c6186f6a38774bcf633db4baf3ab08cc727874ef25e.lean/declarations/exp-conj--bb4f40999bdb6aac3450c563.md) | 208 | `result-track:bb4f40999bdb6aac3450c563f10dc3d45f64226214be8428c91b73bb9e5c5232` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
