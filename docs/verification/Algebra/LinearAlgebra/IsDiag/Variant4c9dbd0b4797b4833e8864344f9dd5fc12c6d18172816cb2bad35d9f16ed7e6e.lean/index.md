# Verification target: GRWTSK.Algebra.LinearAlgebra.IsDiag.Variant4c9dbd0b4797b4833e8864344f9dd5fc12c6d18172816cb2bad35d9f16ed7e6e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9fe600688dfbb04c4c0dbd7703d7a4f88d75e1a",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IsDiag/Variant4c9dbd0b4797b4833e8864344f9dd5fc12c6d18172816cb2bad35d9f16ed7e6e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant4c9dbd0b4797b4833e8864344f9dd5fc12c6d18172816cb2bad35d9f16ed7e6e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant4c9dbd0b4797b4833e8864344f9dd5fc12c6d18172816cb2bad35d9f16ed7e6e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9fe600688dfbb04c4c0dbd7703d7a4f88d75e1a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IsDiag/Variant4c9dbd0b4797b4833e8864344f9dd5fc12c6d18172816cb2bad35d9f16ed7e6e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IsDiag/Variant4c9dbd0b4797b4833e8864344f9dd5fc12c6d18172816cb2bad35d9f16ed7e6e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Symmetric` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Orthogonal` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Kronecker` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsDiag](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant4c9dbd0b4797b4833e8864344f9dd5fc12c6d18172816cb2bad35d9f16ed7e6e.lean/declarations/isdiag--329653431a922c58fd6b58c2.md) | 42 | `declaration-track:329653431a922c58fd6b58c2322c950545cab5cb3c8aa5ced53b9435224f18ef` |
| 2 | `theorem` | [isDiag_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant4c9dbd0b4797b4833e8864344f9dd5fc12c6d18172816cb2bad35d9f16ed7e6e.lean/declarations/isdiag-diagonal--d2b53f8ee271a6e5fe9b55f5.md) | 46 | `result-track:d2b53f8ee271a6e5fe9b55f503d859f1bc8bf24d4027b15c7a921820d3b26a6d` |
| 3 | `theorem` | [IsDiag.diagonal_diag](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant4c9dbd0b4797b4833e8864344f9dd5fc12c6d18172816cb2bad35d9f16ed7e6e.lean/declarations/isdiag-diagonal-diag--09694580545443b7b045ee1e.md) | 50 | `result-track:09694580545443b7b045ee1e3a22d7a0e159303c5a4c6cb1990063f0ca7b7177` |
| 4 | `theorem` | [isDiag_iff_diagonal_diag](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant4c9dbd0b4797b4833e8864344f9dd5fc12c6d18172816cb2bad35d9f16ed7e6e.lean/declarations/isdiag-iff-diagonal-diag--57e0cb36d1516f9ee0f7be67.md) | 58 | `result-track:57e0cb36d1516f9ee0f7be674a761b66c41250817f643136016a961201360b05` |
| 5 | `theorem` | [isDiag_of_subsingleton](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant4c9dbd0b4797b4833e8864344f9dd5fc12c6d18172816cb2bad35d9f16ed7e6e.lean/declarations/isdiag-of-subsingleton--256a22b64b7c439c674fbbf7.md) | 63 | `result-track:256a22b64b7c439c674fbbf7f489720a669f83053d0574c21a2a06f3640cc092` |
| 6 | `theorem` | [isDiag_zero](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant4c9dbd0b4797b4833e8864344f9dd5fc12c6d18172816cb2bad35d9f16ed7e6e.lean/declarations/isdiag-zero--76904936de87607036359de6.md) | 68 | `result-track:76904936de87607036359de64a38bca1f300ca51bf397a9d0c18f95c8c949d90` |
| 7 | `theorem` | [isDiag_one](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant4c9dbd0b4797b4833e8864344f9dd5fc12c6d18172816cb2bad35d9f16ed7e6e.lean/declarations/isdiag-one--6491e36ba415cba6a3188270.md) | 72 | `result-track:6491e36ba415cba6a3188270743dbf07861a9f0ce57679474fdd2096469571bc` |
| 8 | `theorem` | [IsDiag.map](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant4c9dbd0b4797b4833e8864344f9dd5fc12c6d18172816cb2bad35d9f16ed7e6e.lean/declarations/isdiag-map--50cca02c96b7c450cb80b3de.md) | 75 | `result-track:50cca02c96b7c450cb80b3de5e2306f5162954df4c65f950e41d05d0fbc1bbfc` |
| 9 | `theorem` | [IsDiag.neg](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant4c9dbd0b4797b4833e8864344f9dd5fc12c6d18172816cb2bad35d9f16ed7e6e.lean/declarations/isdiag-neg--ced1321415d0268cdbb92bc6.md) | 80 | `result-track:ced1321415d0268cdbb92bc6e0349d1b89c21fb3cb84bec8816cbb12448dc2f0` |
| 10 | `theorem` | [isDiag_neg_iff](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant4c9dbd0b4797b4833e8864344f9dd5fc12c6d18172816cb2bad35d9f16ed7e6e.lean/declarations/isdiag-neg-iff--1708b98f5bc1edace065ade1.md) | 85 | `result-track:1708b98f5bc1edace065ade170986f6ecbed075465e706a7a6b37d2eefadc585` |
| 11 | `theorem` | [IsDiag.add](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant4c9dbd0b4797b4833e8864344f9dd5fc12c6d18172816cb2bad35d9f16ed7e6e.lean/declarations/isdiag-add--78e88396e382e44d06bc81d3.md) | 88 | `result-track:78e88396e382e44d06bc81d39ff1c208876b2373f51eab6039552a2dbd9b473a` |
| 12 | `theorem` | [IsDiag.sub](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant4c9dbd0b4797b4833e8864344f9dd5fc12c6d18172816cb2bad35d9f16ed7e6e.lean/declarations/isdiag-sub--133d8fbf2d99d4672edce373.md) | 93 | `result-track:133d8fbf2d99d4672edce3737f352c2b1a0af268030f2bb16d1036f4cbe9e2b2` |
| 13 | `theorem` | [IsDiag.smul](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant4c9dbd0b4797b4833e8864344f9dd5fc12c6d18172816cb2bad35d9f16ed7e6e.lean/declarations/isdiag-smul--a3e36c56d9d0e65538be92b9.md) | 98 | `result-track:a3e36c56d9d0e65538be92b90a73a6b84b1b3c872387ea507d134320bd3fcc84` |
| 14 | `theorem` | [isDiag_smul_one](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant4c9dbd0b4797b4833e8864344f9dd5fc12c6d18172816cb2bad35d9f16ed7e6e.lean/declarations/isdiag-smul-one--aa9963e6290686e56b7e2598.md) | 104 | `result-track:aa9963e6290686e56b7e259826618a012d2d6d55b5bac04b49a72ddefaa95e15` |
| 15 | `theorem` | [IsDiag.transpose](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant4c9dbd0b4797b4833e8864344f9dd5fc12c6d18172816cb2bad35d9f16ed7e6e.lean/declarations/isdiag-transpose--598e2b1baa2b4226fb24a79a.md) | 108 | `result-track:598e2b1baa2b4226fb24a79a86896f284ec325410382f536338fac96bbac4c01` |
| 16 | `theorem` | [isDiag_transpose_iff](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant4c9dbd0b4797b4833e8864344f9dd5fc12c6d18172816cb2bad35d9f16ed7e6e.lean/declarations/isdiag-transpose-iff--6172eb21b756ad665d90b41b.md) | 112 | `result-track:6172eb21b756ad665d90b41b76d030edf30538fdd44a51c55e835287f415f562` |
| 17 | `theorem` | [IsDiag.conjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant4c9dbd0b4797b4833e8864344f9dd5fc12c6d18172816cb2bad35d9f16ed7e6e.lean/declarations/isdiag-conjtranspose--c7fe9b8c8dbb11e3c7764c73.md) | 115 | `result-track:c7fe9b8c8dbb11e3c7764c7314a9205970491daec7acab9331492bbde14efe04` |
| 18 | `theorem` | [isDiag_conjTranspose_iff](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant4c9dbd0b4797b4833e8864344f9dd5fc12c6d18172816cb2bad35d9f16ed7e6e.lean/declarations/isdiag-conjtranspose-iff--f18b1851b5d50843391e9739.md) | 120 | `result-track:f18b1851b5d50843391e97399a5275c35ffb6c8575a9e59513016e7ed870e403` |
| 19 | `theorem` | [IsDiag.submatrix](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant4c9dbd0b4797b4833e8864344f9dd5fc12c6d18172816cb2bad35d9f16ed7e6e.lean/declarations/isdiag-submatrix--d5798ea037ededa14d95deac.md) | 126 | `result-track:d5798ea037ededa14d95deac361fa691fdeeffdb25724c87ad45c68cbd948975` |
| 20 | `theorem` | [IsDiag.kronecker](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant4c9dbd0b4797b4833e8864344f9dd5fc12c6d18172816cb2bad35d9f16ed7e6e.lean/declarations/isdiag-kronecker--a224a10045b05f65c5a72354.md) | 130 | `result-track:a224a10045b05f65c5a72354f81c78ff68a035a7d3ee70cf89bea0fbaf045b48` |
| 21 | `theorem` | [IsDiag.isSymm](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant4c9dbd0b4797b4833e8864344f9dd5fc12c6d18172816cb2bad35d9f16ed7e6e.lean/declarations/isdiag-issymm--2e0acb599559769c433f4a0d.md) | 138 | `result-track:2e0acb599559769c433f4a0dd8cd9ee35aeed422439d4d1c8a3709fb7dc4f67d` |
| 22 | `theorem` | [IsDiag.fromBlocks](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant4c9dbd0b4797b4833e8864344f9dd5fc12c6d18172816cb2bad35d9f16ed7e6e.lean/declarations/isdiag-fromblocks--3c6dbae87816bbd6bac170ba.md) | 144 | `result-track:3c6dbae87816bbd6bac170ba1fd0346a892668b18d91a79541bbc5acb83a092a` |
| 23 | `theorem` | [isDiag_fromBlocks_iff](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant4c9dbd0b4797b4833e8864344f9dd5fc12c6d18172816cb2bad35d9f16ed7e6e.lean/declarations/isdiag-fromblocks-iff--56398940b50f6f6cf26594c2.md) | 153 | `result-track:56398940b50f6f6cf26594c2188c512223c95bbba4a4cd72d1e9ea5efe92a4d8` |
| 24 | `theorem` | [IsDiag.fromBlocks_of_isSymm](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant4c9dbd0b4797b4833e8864344f9dd5fc12c6d18172816cb2bad35d9f16ed7e6e.lean/declarations/isdiag-fromblocks-of-issymm--f6cc2a8839e50a445859d26c.md) | 167 | `result-track:f6cc2a8839e50a445859d26cbd544940f91405f3592334cb0c07dbb7d90b8cd8` |
| 25 | `theorem` | [mul_transpose_self_isDiag_iff_hasOrthogonalRows](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant4c9dbd0b4797b4833e8864344f9dd5fc12c6d18172816cb2bad35d9f16ed7e6e.lean/declarations/mul-transpose-self-isdiag-iff-hasorthogonalrows--0c37436bf992b490a5ceea92.md) | 173 | `result-track:0c37436bf992b490a5ceea92ec7876e39f5c10d635320ef5f99b3db99a1bdf0a` |
| 26 | `theorem` | [transpose_mul_self_isDiag_iff_hasOrthogonalCols](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant4c9dbd0b4797b4833e8864344f9dd5fc12c6d18172816cb2bad35d9f16ed7e6e.lean/declarations/transpose-mul-self-isdiag-iff-hasorthogonalcols--f0b1942d922104e1f77fcc63.md) | 177 | `result-track:f0b1942d922104e1f77fcc638bef7be3fbafabfb918cc8bc887f6e402f123d48` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
