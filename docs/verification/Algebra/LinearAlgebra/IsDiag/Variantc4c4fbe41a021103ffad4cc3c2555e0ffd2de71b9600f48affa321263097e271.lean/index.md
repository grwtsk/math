# Verification target: GRWTSK.Algebra.LinearAlgebra.IsDiag.Variantc4c4fbe41a021103ffad4cc3c2555e0ffd2de71b9600f48affa321263097e271

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "337e6a2f4eb87ac15f7be6b3430189db95a24dff",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IsDiag/Variantc4c4fbe41a021103ffad4cc3c2555e0ffd2de71b9600f48affa321263097e271.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variantc4c4fbe41a021103ffad4cc3c2555e0ffd2de71b9600f48affa321263097e271.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variantc4c4fbe41a021103ffad4cc3c2555e0ffd2de71b9600f48affa321263097e271.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `337e6a2f4eb87ac15f7be6b3430189db95a24dff`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IsDiag/Variantc4c4fbe41a021103ffad4cc3c2555e0ffd2de71b9600f48affa321263097e271.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IsDiag/Variantc4c4fbe41a021103ffad4cc3c2555e0ffd2de71b9600f48affa321263097e271.lean.json)

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
| 1 | `def` | [IsDiag](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variantc4c4fbe41a021103ffad4cc3c2555e0ffd2de71b9600f48affa321263097e271.lean/declarations/isdiag--5212a6730f9158e3719d70c2.md) | 40 | `declaration-track:5212a6730f9158e3719d70c2afade816f2902db74b7b161e8df6c4612c1ef371` |
| 2 | `theorem` | [isDiag_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variantc4c4fbe41a021103ffad4cc3c2555e0ffd2de71b9600f48affa321263097e271.lean/declarations/isdiag-diagonal--f9a9c662ff116507cca1a3d6.md) | 44 | `result-track:f9a9c662ff116507cca1a3d628d4d9f1a0a782d8d8a531fa305b7bf313aed993` |
| 3 | `theorem` | [IsDiag.diagonal_diag](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variantc4c4fbe41a021103ffad4cc3c2555e0ffd2de71b9600f48affa321263097e271.lean/declarations/isdiag-diagonal-diag--b7d1c7bae633be834a188b1a.md) | 48 | `result-track:b7d1c7bae633be834a188b1a34bfa18599faa1765effb0727922a147725c4a94` |
| 4 | `theorem` | [isDiag_iff_diagonal_diag](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variantc4c4fbe41a021103ffad4cc3c2555e0ffd2de71b9600f48affa321263097e271.lean/declarations/isdiag-iff-diagonal-diag--30580d4b2c2415a98af91916.md) | 56 | `result-track:30580d4b2c2415a98af91916ddd18b48f22131f9e990f68dbb7feec91602b193` |
| 5 | `theorem` | [isDiag_of_subsingleton](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variantc4c4fbe41a021103ffad4cc3c2555e0ffd2de71b9600f48affa321263097e271.lean/declarations/isdiag-of-subsingleton--d44bdc970a9e5d745a2bea7b.md) | 61 | `result-track:d44bdc970a9e5d745a2bea7b6b987fe185c8f485b91b153ab952f5a5291cb3c1` |
| 6 | `theorem` | [isDiag_zero](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variantc4c4fbe41a021103ffad4cc3c2555e0ffd2de71b9600f48affa321263097e271.lean/declarations/isdiag-zero--d15426636e6ecd84f2a09054.md) | 66 | `result-track:d15426636e6ecd84f2a09054f31f2a0453052bb9e073353152b8388d1d66ad94` |
| 7 | `theorem` | [isDiag_one](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variantc4c4fbe41a021103ffad4cc3c2555e0ffd2de71b9600f48affa321263097e271.lean/declarations/isdiag-one--6521347b139ec7edf501c91c.md) | 70 | `result-track:6521347b139ec7edf501c91caef3e21ffe7ad202fe6052d0dba864b5ae3c2b12` |
| 8 | `theorem` | [IsDiag.map](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variantc4c4fbe41a021103ffad4cc3c2555e0ffd2de71b9600f48affa321263097e271.lean/declarations/isdiag-map--51062949c3658f539d7d911c.md) | 73 | `result-track:51062949c3658f539d7d911cc36e2273ddc2e02ba0a9e0d42a46c0fe99853e83` |
| 9 | `theorem` | [IsDiag.neg](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variantc4c4fbe41a021103ffad4cc3c2555e0ffd2de71b9600f48affa321263097e271.lean/declarations/isdiag-neg--d834342b8eb2425f128cf741.md) | 78 | `result-track:d834342b8eb2425f128cf7411e494f4b814303f4ae8c675c232cdca18d3b4f5c` |
| 10 | `theorem` | [isDiag_neg_iff](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variantc4c4fbe41a021103ffad4cc3c2555e0ffd2de71b9600f48affa321263097e271.lean/declarations/isdiag-neg-iff--96866c695cc0c8faae289a6c.md) | 83 | `result-track:96866c695cc0c8faae289a6cbf8324b67eb1ec98852d77688a354d5c564fba97` |
| 11 | `theorem` | [IsDiag.add](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variantc4c4fbe41a021103ffad4cc3c2555e0ffd2de71b9600f48affa321263097e271.lean/declarations/isdiag-add--aa7d3cd1dfa99d46567337ed.md) | 86 | `result-track:aa7d3cd1dfa99d46567337ed56227be250b92f5d87dafbfda12269a527bc8ba6` |
| 12 | `theorem` | [IsDiag.sub](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variantc4c4fbe41a021103ffad4cc3c2555e0ffd2de71b9600f48affa321263097e271.lean/declarations/isdiag-sub--326c3d56d48a437afc26728a.md) | 91 | `result-track:326c3d56d48a437afc26728adb501c13643770c33693eae8e2563665bae1ec71` |
| 13 | `theorem` | [IsDiag.smul](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variantc4c4fbe41a021103ffad4cc3c2555e0ffd2de71b9600f48affa321263097e271.lean/declarations/isdiag-smul--c5b38af808828e674612e96e.md) | 96 | `result-track:c5b38af808828e674612e96eca9951dd8d201e0b04e7d3ce6c5c161185eeac7d` |
| 14 | `theorem` | [isDiag_smul_one](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variantc4c4fbe41a021103ffad4cc3c2555e0ffd2de71b9600f48affa321263097e271.lean/declarations/isdiag-smul-one--03ae5992ccee59af6e5f0ae8.md) | 102 | `result-track:03ae5992ccee59af6e5f0ae86c38dfb4d3eef62e9865181f3608a63dbd056f35` |
| 15 | `theorem` | [IsDiag.transpose](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variantc4c4fbe41a021103ffad4cc3c2555e0ffd2de71b9600f48affa321263097e271.lean/declarations/isdiag-transpose--b912e29be7fed114096a60b5.md) | 106 | `result-track:b912e29be7fed114096a60b5ec87a2f5d0427024cd6ba0329c8a038ea775a3f6` |
| 16 | `theorem` | [isDiag_transpose_iff](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variantc4c4fbe41a021103ffad4cc3c2555e0ffd2de71b9600f48affa321263097e271.lean/declarations/isdiag-transpose-iff--aabc4d7651559e7803a5770c.md) | 110 | `result-track:aabc4d7651559e7803a5770c6fd20fb3c3b9cea824aab63a632929949f9ff975` |
| 17 | `theorem` | [IsDiag.conjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variantc4c4fbe41a021103ffad4cc3c2555e0ffd2de71b9600f48affa321263097e271.lean/declarations/isdiag-conjtranspose--172a3a186696b03c19245920.md) | 113 | `result-track:172a3a186696b03c192459209f6079636951ef5aefd9e529b16b99c656278078` |
| 18 | `theorem` | [isDiag_conjTranspose_iff](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variantc4c4fbe41a021103ffad4cc3c2555e0ffd2de71b9600f48affa321263097e271.lean/declarations/isdiag-conjtranspose-iff--14dbe63bb44abd50712fab23.md) | 118 | `result-track:14dbe63bb44abd50712fab23464689f1e6050d80cfd347e7536dd2b353eb59a6` |
| 19 | `theorem` | [IsDiag.submatrix](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variantc4c4fbe41a021103ffad4cc3c2555e0ffd2de71b9600f48affa321263097e271.lean/declarations/isdiag-submatrix--a0f14868440768d227e5a18a.md) | 124 | `result-track:a0f14868440768d227e5a18a744842ca5d46ef70327320f5618430eb277cae16` |
| 20 | `theorem` | [IsDiag.kronecker](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variantc4c4fbe41a021103ffad4cc3c2555e0ffd2de71b9600f48affa321263097e271.lean/declarations/isdiag-kronecker--3a6faeddb822f834a18ade4c.md) | 128 | `result-track:3a6faeddb822f834a18ade4cd820fcbfe9ed305e9e3af356b734e7096fe834ea` |
| 21 | `theorem` | [IsDiag.isSymm](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variantc4c4fbe41a021103ffad4cc3c2555e0ffd2de71b9600f48affa321263097e271.lean/declarations/isdiag-issymm--5378867d17a9d230b6d0cd8a.md) | 136 | `result-track:5378867d17a9d230b6d0cd8a454b7c460c541a3814188f7c0ac07c178280e3be` |
| 22 | `theorem` | [IsDiag.fromBlocks](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variantc4c4fbe41a021103ffad4cc3c2555e0ffd2de71b9600f48affa321263097e271.lean/declarations/isdiag-fromblocks--ed0c84133775efd1a21c30c5.md) | 142 | `result-track:ed0c84133775efd1a21c30c5baf9c3407a4296b30b90dfd06fc5f48f4efbea93` |
| 23 | `theorem` | [isDiag_fromBlocks_iff](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variantc4c4fbe41a021103ffad4cc3c2555e0ffd2de71b9600f48affa321263097e271.lean/declarations/isdiag-fromblocks-iff--ca9ce046da0c737f5c42f7bf.md) | 151 | `result-track:ca9ce046da0c737f5c42f7bf4aa95784b6922418abb244353dca302f15a55657` |
| 24 | `theorem` | [IsDiag.fromBlocks_of_isSymm](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variantc4c4fbe41a021103ffad4cc3c2555e0ffd2de71b9600f48affa321263097e271.lean/declarations/isdiag-fromblocks-of-issymm--cc707b43b7265d9eb8e847bc.md) | 165 | `result-track:cc707b43b7265d9eb8e847bc5b675b35b3f45eb0457f99bb4ab57c18ba93dce1` |
| 25 | `theorem` | [mul_transpose_self_isDiag_iff_hasOrthogonalRows](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variantc4c4fbe41a021103ffad4cc3c2555e0ffd2de71b9600f48affa321263097e271.lean/declarations/mul-transpose-self-isdiag-iff-hasorthogonalrows--8890740ad2b38d3c2dfb1924.md) | 171 | `result-track:8890740ad2b38d3c2dfb19249ffc4b6e0eded8c7ad355e0bf75bc978c81cc0bf` |
| 26 | `theorem` | [transpose_mul_self_isDiag_iff_hasOrthogonalCols](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variantc4c4fbe41a021103ffad4cc3c2555e0ffd2de71b9600f48affa321263097e271.lean/declarations/transpose-mul-self-isdiag-iff-hasorthogonalcols--eadbafdb00f2941babf72614.md) | 175 | `result-track:eadbafdb00f2941babf726147f6d45791fd75e61f7d658c9d8cbe2fadc7ab3da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
