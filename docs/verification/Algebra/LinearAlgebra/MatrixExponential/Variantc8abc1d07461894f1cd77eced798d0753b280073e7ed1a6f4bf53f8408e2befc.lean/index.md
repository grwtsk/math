# Verification target: GRWTSK.Algebra.LinearAlgebra.MatrixExponential.Variantc8abc1d07461894f1cd77eced798d0753b280073e7ed1a6f4bf53f8408e2befc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da7368d06598452e0436b2bcba0b31bb2400e878",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixExponential/Variantc8abc1d07461894f1cd77eced798d0753b280073e7ed1a6f4bf53f8408e2befc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variantc8abc1d07461894f1cd77eced798d0753b280073e7ed1a6f4bf53f8408e2befc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variantc8abc1d07461894f1cd77eced798d0753b280073e7ed1a6f4bf53f8408e2befc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da7368d06598452e0436b2bcba0b31bb2400e878`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixExponential/Variantc8abc1d07461894f1cd77eced798d0753b280073e7ed1a6f4bf53f8408e2befc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixExponential/Variantc8abc1d07461894f1cd77eced798d0753b280073e7ed1a6f4bf53f8408e2befc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exp_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variantc8abc1d07461894f1cd77eced798d0753b280073e7ed1a6f4bf53f8408e2befc.lean/declarations/exp-diagonal--c33822adf137680aa0cda250.md) | 92 | `result-track:c33822adf137680aa0cda2506bc15ab886404b7dca171c53e446b4a1de41dd3c` |
| 2 | `theorem` | [exp_blockDiagonal](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variantc8abc1d07461894f1cd77eced798d0753b280073e7ed1a6f4bf53f8408e2befc.lean/declarations/exp-blockdiagonal--1dc98accc7aa3376d0ac7e5d.md) | 95 | `result-track:1dc98accc7aa3376d0ac7e5de8bf3eb1c1d39b0ccfe2ecc448b32af251623b66` |
| 3 | `theorem` | [exp_blockDiagonal'](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variantc8abc1d07461894f1cd77eced798d0753b280073e7ed1a6f4bf53f8408e2befc.lean/declarations/exp-blockdiagonal--34385237cd6c6098f873b0fe.md) | 99 | `result-track:34385237cd6c6098f873b0fe3236cfdebaa0089f14ee5152c825fcf2de197fc5` |
| 4 | `theorem` | [exp_conjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variantc8abc1d07461894f1cd77eced798d0753b280073e7ed1a6f4bf53f8408e2befc.lean/declarations/exp-conjtranspose--93b3d2b81be9d178b76ab56a.md) | 103 | `result-track:93b3d2b81be9d178b76ab56a1c4417e65008a033c87f991499b02b32bef8d19b` |
| 5 | `theorem` | [IsHermitian.exp](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variantc8abc1d07461894f1cd77eced798d0753b280073e7ed1a6f4bf53f8408e2befc.lean/declarations/ishermitian-exp--044aadc3a0c6d46ce3066165.md) | 107 | `result-track:044aadc3a0c6d46ce3066165a0d9af66a9b6efb65b5ab1abebe41d92da7e1035` |
| 6 | `theorem` | [BlockTriangular.exp](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variantc8abc1d07461894f1cd77eced798d0753b280073e7ed1a6f4bf53f8408e2befc.lean/declarations/blocktriangular-exp--32b3a70303e7dec36d7048d8.md) | 111 | `result-track:32b3a70303e7dec36d7048d8a8b70d5af9d7cd0d824539ad38057fae1af86c21` |
| 7 | `theorem` | [exp_transpose](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variantc8abc1d07461894f1cd77eced798d0753b280073e7ed1a6f4bf53f8408e2befc.lean/declarations/exp-transpose--6de31e4968e93ba90ace1a88.md) | 123 | `result-track:6de31e4968e93ba90ace1a88d0c7b06c9a5cef8ad61584b2dcfedc8fb64f00c2` |
| 8 | `theorem` | [IsSymm.exp](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variantc8abc1d07461894f1cd77eced798d0753b280073e7ed1a6f4bf53f8408e2befc.lean/declarations/issymm-exp--20897c2f9435f98e004b260d.md) | 126 | `result-track:20897c2f9435f98e004b260defaf9f9dc2150ccd9430ea98868bfb058b2f22b5` |
| 9 | `theorem` | [exp_add_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variantc8abc1d07461894f1cd77eced798d0753b280073e7ed1a6f4bf53f8408e2befc.lean/declarations/exp-add-of-commute--8c3220197b5b8c5e0c12b68b.md) | 138 | `result-track:8c3220197b5b8c5e0c12b68b1298d8bfbb2236da50b77e62221e72cbe27bd7f8` |
| 10 | `theorem` | [exp_sum_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variantc8abc1d07461894f1cd77eced798d0753b280073e7ed1a6f4bf53f8408e2befc.lean/declarations/exp-sum-of-commute--6f7fff9f7a610dd9af7730c0.md) | 144 | `result-track:6f7fff9f7a610dd9af7730c0011408c5a3b2975b06fde0cf5f78230c124d11a6` |
| 11 | `theorem` | [exp_nsmul](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variantc8abc1d07461894f1cd77eced798d0753b280073e7ed1a6f4bf53f8408e2befc.lean/declarations/exp-nsmul--26646edfa8a420c8e248bcd5.md) | 151 | `result-track:26646edfa8a420c8e248bcd517cc03d062cb061ff0e95e8cdd913519e056b011` |
| 12 | `theorem` | [isUnit_exp](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variantc8abc1d07461894f1cd77eced798d0753b280073e7ed1a6f4bf53f8408e2befc.lean/declarations/isunit-exp--5c44fea3c46a7a1a79d084a7.md) | 155 | `result-track:5c44fea3c46a7a1a79d084a7a3581f9ca5bd635dd61ff2b4e10cf24faa9ccfbb` |
| 13 | `theorem` | [exp_units_conj](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variantc8abc1d07461894f1cd77eced798d0753b280073e7ed1a6f4bf53f8408e2befc.lean/declarations/exp-units-conj--f841a611e425e4031d0bad9b.md) | 164 | `result-track:f841a611e425e4031d0bad9b4c243541e0d0a9e9d41948d436ff3296d3731f55` |
| 14 | `theorem` | [exp_units_conj'](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variantc8abc1d07461894f1cd77eced798d0753b280073e7ed1a6f4bf53f8408e2befc.lean/declarations/exp-units-conj--3e322738afad095a2e243abc.md) | 173 | `result-track:3e322738afad095a2e243abcfb363ab0f6ccfd7114ed7f88fa0ae48651b94f85` |
| 15 | `theorem` | [exp_neg](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variantc8abc1d07461894f1cd77eced798d0753b280073e7ed1a6f4bf53f8408e2befc.lean/declarations/exp-neg--ae2729453dd56e434407c4a5.md) | 185 | `result-track:ae2729453dd56e434407c4a5721705c37d9f46086fc7d7ac536f7cf6c5406f6c` |
| 16 | `theorem` | [exp_zsmul](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variantc8abc1d07461894f1cd77eced798d0753b280073e7ed1a6f4bf53f8408e2befc.lean/declarations/exp-zsmul--c26156ab825df351814fabd5.md) | 189 | `result-track:c26156ab825df351814fabd5b092baea5b57ab34520949d891c1ce277b652eec` |
| 17 | `theorem` | [exp_conj](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variantc8abc1d07461894f1cd77eced798d0753b280073e7ed1a6f4bf53f8408e2befc.lean/declarations/exp-conj--35e6fd0588e33edc0e46808b.md) | 195 | `result-track:35e6fd0588e33edc0e46808bf8e3ae24a540f87564867bc2c39945b1a1f27e0c` |
| 18 | `theorem` | [exp_conj'](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variantc8abc1d07461894f1cd77eced798d0753b280073e7ed1a6f4bf53f8408e2befc.lean/declarations/exp-conj--e03272127c91358c43ce7ca7.md) | 200 | `result-track:e03272127c91358c43ce7ca7763fabd8685246e3b76dbee5820e3e030130a612` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
