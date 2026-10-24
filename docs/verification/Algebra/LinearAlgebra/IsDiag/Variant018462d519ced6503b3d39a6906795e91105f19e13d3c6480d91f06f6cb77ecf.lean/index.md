# Verification target: GRWTSK.Algebra.LinearAlgebra.IsDiag.Variant018462d519ced6503b3d39a6906795e91105f19e13d3c6480d91f06f6cb77ecf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1650666cad0e0b5ae13050bc3e1e6eabfbdc4d50",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IsDiag/Variant018462d519ced6503b3d39a6906795e91105f19e13d3c6480d91f06f6cb77ecf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant018462d519ced6503b3d39a6906795e91105f19e13d3c6480d91f06f6cb77ecf.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant018462d519ced6503b3d39a6906795e91105f19e13d3c6480d91f06f6cb77ecf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1650666cad0e0b5ae13050bc3e1e6eabfbdc4d50`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IsDiag/Variant018462d519ced6503b3d39a6906795e91105f19e13d3c6480d91f06f6cb77ecf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IsDiag/Variant018462d519ced6503b3d39a6906795e91105f19e13d3c6480d91f06f6cb77ecf.lean.json)

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
| 1 | `def` | [IsDiag](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant018462d519ced6503b3d39a6906795e91105f19e13d3c6480d91f06f6cb77ecf.lean/declarations/isdiag--0c7c0a6968aec57ab6cacf3d.md) | 48 | `declaration-track:0c7c0a6968aec57ab6cacf3dc4b82c1b84382b5f6a6f782fc2c83e10f2083f52` |
| 2 | `theorem` | [isDiag_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant018462d519ced6503b3d39a6906795e91105f19e13d3c6480d91f06f6cb77ecf.lean/declarations/isdiag-diagonal--10cb3e4dafa15929971e679e.md) | 52 | `result-track:10cb3e4dafa15929971e679e7b65eb7aef2a59ba91120157f6c7f11e99ab3910` |
| 3 | `theorem` | [IsDiag.diagonal_diag](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant018462d519ced6503b3d39a6906795e91105f19e13d3c6480d91f06f6cb77ecf.lean/declarations/isdiag-diagonal-diag--d4337e5909e5dc4efdf0bade.md) | 56 | `result-track:d4337e5909e5dc4efdf0badeabe4ba674c859465d76d3058cf50baa945415f0d` |
| 4 | `theorem` | [isDiag_iff_diagonal_diag](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant018462d519ced6503b3d39a6906795e91105f19e13d3c6480d91f06f6cb77ecf.lean/declarations/isdiag-iff-diagonal-diag--f67327b11baa269dfaff88cc.md) | 64 | `result-track:f67327b11baa269dfaff88ccbcd8f1db05e3c6e7777b3deff71e12302b6c98a8` |
| 5 | `theorem` | [isDiag_of_subsingleton](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant018462d519ced6503b3d39a6906795e91105f19e13d3c6480d91f06f6cb77ecf.lean/declarations/isdiag-of-subsingleton--ca4b4d7adbc26b90fd64d759.md) | 69 | `result-track:ca4b4d7adbc26b90fd64d759c288e117a80fb385455762b8dfce6cb93f9a89de` |
| 6 | `theorem` | [isDiag_zero](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant018462d519ced6503b3d39a6906795e91105f19e13d3c6480d91f06f6cb77ecf.lean/declarations/isdiag-zero--c0c3063b71419c683fe36bd1.md) | 74 | `result-track:c0c3063b71419c683fe36bd17ef91442c0518da8167d29cdc28318a431df0a8f` |
| 7 | `theorem` | [isDiag_one](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant018462d519ced6503b3d39a6906795e91105f19e13d3c6480d91f06f6cb77ecf.lean/declarations/isdiag-one--17d23108899d1522e465f56f.md) | 78 | `result-track:17d23108899d1522e465f56f96483d0fbf89c8df5df879469c6baf3352f90dde` |
| 8 | `theorem` | [IsDiag.map](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant018462d519ced6503b3d39a6906795e91105f19e13d3c6480d91f06f6cb77ecf.lean/declarations/isdiag-map--1a5c09c7585fa50e6f2f07cf.md) | 81 | `result-track:1a5c09c7585fa50e6f2f07cfd588971d3913367a2c46fcdb6eca2436356cb1aa` |
| 9 | `theorem` | [IsDiag.neg](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant018462d519ced6503b3d39a6906795e91105f19e13d3c6480d91f06f6cb77ecf.lean/declarations/isdiag-neg--aa5e43809c33c57e0ceb90d3.md) | 86 | `result-track:aa5e43809c33c57e0ceb90d3824e2a07efe321eeefbee833eb9573d217ade2e0` |
| 10 | `theorem` | [isDiag_neg_iff](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant018462d519ced6503b3d39a6906795e91105f19e13d3c6480d91f06f6cb77ecf.lean/declarations/isdiag-neg-iff--3070b6db510855e0b142fd47.md) | 91 | `result-track:3070b6db510855e0b142fd47f7526aeb9169bd313deb39acd5ef148635357819` |
| 11 | `theorem` | [IsDiag.add](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant018462d519ced6503b3d39a6906795e91105f19e13d3c6480d91f06f6cb77ecf.lean/declarations/isdiag-add--13985e021049bf8157c04125.md) | 94 | `result-track:13985e021049bf8157c041250ce56cd78d4c2d74a2d2e66076b80baee9949b1c` |
| 12 | `theorem` | [IsDiag.sub](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant018462d519ced6503b3d39a6906795e91105f19e13d3c6480d91f06f6cb77ecf.lean/declarations/isdiag-sub--0539fa18af1e51f912ea2b22.md) | 99 | `result-track:0539fa18af1e51f912ea2b22ff820e6dfd01532c2c9d1534688ebf4064574d6a` |
| 13 | `theorem` | [IsDiag.smul](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant018462d519ced6503b3d39a6906795e91105f19e13d3c6480d91f06f6cb77ecf.lean/declarations/isdiag-smul--73850c0f496646806fb64baa.md) | 104 | `result-track:73850c0f496646806fb64baa7347d9831d1d422ad1f1f2d73732ead27149a977` |
| 14 | `theorem` | [isDiag_smul_one](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant018462d519ced6503b3d39a6906795e91105f19e13d3c6480d91f06f6cb77ecf.lean/declarations/isdiag-smul-one--d683ab8febdcc440cfdef467.md) | 110 | `result-track:d683ab8febdcc440cfdef467e46f8dcf076868d64ab0c32ab16bf44fa0b14244` |
| 15 | `theorem` | [IsDiag.transpose](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant018462d519ced6503b3d39a6906795e91105f19e13d3c6480d91f06f6cb77ecf.lean/declarations/isdiag-transpose--22b79b049a188cb3b9ac4e19.md) | 114 | `result-track:22b79b049a188cb3b9ac4e19908e6684732389ad1c613163cc99868b63b828d9` |
| 16 | `theorem` | [isDiag_transpose_iff](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant018462d519ced6503b3d39a6906795e91105f19e13d3c6480d91f06f6cb77ecf.lean/declarations/isdiag-transpose-iff--b3b150eb28654cdb717f8c62.md) | 118 | `result-track:b3b150eb28654cdb717f8c62c1197d8c793d31db89e254485c78645f9fd663df` |
| 17 | `theorem` | [IsDiag.conjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant018462d519ced6503b3d39a6906795e91105f19e13d3c6480d91f06f6cb77ecf.lean/declarations/isdiag-conjtranspose--9f4c75e4fd9cf0051b7fa400.md) | 121 | `result-track:9f4c75e4fd9cf0051b7fa4007c3afe8ffa2af44901558d687382360c3448061a` |
| 18 | `theorem` | [isDiag_conjTranspose_iff](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant018462d519ced6503b3d39a6906795e91105f19e13d3c6480d91f06f6cb77ecf.lean/declarations/isdiag-conjtranspose-iff--57da07c6d729783e1d93e353.md) | 126 | `result-track:57da07c6d729783e1d93e35305d9925110a8765c37bf7e3b2f2ced17778ac649` |
| 19 | `theorem` | [IsDiag.submatrix](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant018462d519ced6503b3d39a6906795e91105f19e13d3c6480d91f06f6cb77ecf.lean/declarations/isdiag-submatrix--a071f1c12ab4c24d56494174.md) | 132 | `result-track:a071f1c12ab4c24d56494174b0f39f61f36394ccdbb059d5f5b28f507052ac20` |
| 20 | `theorem` | [IsDiag.kronecker](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant018462d519ced6503b3d39a6906795e91105f19e13d3c6480d91f06f6cb77ecf.lean/declarations/isdiag-kronecker--eae9c39e3bcd680e0f390d83.md) | 136 | `result-track:eae9c39e3bcd680e0f390d838dd8eeea8bc3dc676159faa712b355242ec021df` |
| 21 | `theorem` | [IsDiag.isSymm](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant018462d519ced6503b3d39a6906795e91105f19e13d3c6480d91f06f6cb77ecf.lean/declarations/isdiag-issymm--a0ad3314ba5ea50fb7800513.md) | 144 | `result-track:a0ad3314ba5ea50fb7800513224baaefe1b132afef30f844df1eae41501be512` |
| 22 | `theorem` | [IsDiag.fromBlocks](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant018462d519ced6503b3d39a6906795e91105f19e13d3c6480d91f06f6cb77ecf.lean/declarations/isdiag-fromblocks--6c2767d7792c966b4cf236bf.md) | 150 | `result-track:6c2767d7792c966b4cf236bfe113acdaa2663db24b717946c283ab9ee02ba0f3` |
| 23 | `theorem` | [isDiag_fromBlocks_iff](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant018462d519ced6503b3d39a6906795e91105f19e13d3c6480d91f06f6cb77ecf.lean/declarations/isdiag-fromblocks-iff--8e44a1811dac28e6c6b6da9d.md) | 159 | `result-track:8e44a1811dac28e6c6b6da9dee261e2cc50c5b0be7ea356a7f19adbefc7b3708` |
| 24 | `theorem` | [IsDiag.fromBlocks_of_isSymm](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant018462d519ced6503b3d39a6906795e91105f19e13d3c6480d91f06f6cb77ecf.lean/declarations/isdiag-fromblocks-of-issymm--11d0cb0f2d87600389955c0a.md) | 173 | `result-track:11d0cb0f2d87600389955c0ae3adfa14ad39dce511c54c8833a3742bfc6e3c36` |
| 25 | `theorem` | [mul_transpose_self_isDiag_iff_hasOrthogonalRows](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant018462d519ced6503b3d39a6906795e91105f19e13d3c6480d91f06f6cb77ecf.lean/declarations/mul-transpose-self-isdiag-iff-hasorthogonalrows--faf0c65bbcc3217100091d2f.md) | 179 | `result-track:faf0c65bbcc3217100091d2f40ed782189cf521bfeb0656e1ab94ad448a85208` |
| 26 | `theorem` | [transpose_mul_self_isDiag_iff_hasOrthogonalCols](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant018462d519ced6503b3d39a6906795e91105f19e13d3c6480d91f06f6cb77ecf.lean/declarations/transpose-mul-self-isdiag-iff-hasorthogonalcols--1da41c3ed733a9c7686d8b6b.md) | 183 | `result-track:1da41c3ed733a9c7686d8b6bed899e773d802ff30514be5cdf9c9d53eb2e6a4b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
