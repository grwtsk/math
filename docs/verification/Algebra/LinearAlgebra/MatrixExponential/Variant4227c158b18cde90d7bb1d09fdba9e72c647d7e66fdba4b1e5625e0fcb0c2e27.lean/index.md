# Verification target: GRWTSK.Algebra.LinearAlgebra.MatrixExponential.Variant4227c158b18cde90d7bb1d09fdba9e72c647d7e66fdba4b1e5625e0fcb0c2e27

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a9c641b8a0847a3002e58fc5e184b4944f29a20",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixExponential/Variant4227c158b18cde90d7bb1d09fdba9e72c647d7e66fdba4b1e5625e0fcb0c2e27.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant4227c158b18cde90d7bb1d09fdba9e72c647d7e66fdba4b1e5625e0fcb0c2e27.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant4227c158b18cde90d7bb1d09fdba9e72c647d7e66fdba4b1e5625e0fcb0c2e27.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a9c641b8a0847a3002e58fc5e184b4944f29a20`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixExponential/Variant4227c158b18cde90d7bb1d09fdba9e72c647d7e66fdba4b1e5625e0fcb0c2e27.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixExponential/Variant4227c158b18cde90d7bb1d09fdba9e72c647d7e66fdba4b1e5625e0fcb0c2e27.lean.json)

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
| 1 | `theorem` | [exp_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant4227c158b18cde90d7bb1d09fdba9e72c647d7e66fdba4b1e5625e0fcb0c2e27.lean/declarations/exp-diagonal--43f0aaa0ed4c2159f8076772.md) | 84 | `result-track:43f0aaa0ed4c2159f80767726d10aacca49c269578cc7733d0d3ba0ede2d08eb` |
| 2 | `theorem` | [exp_blockDiagonal](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant4227c158b18cde90d7bb1d09fdba9e72c647d7e66fdba4b1e5625e0fcb0c2e27.lean/declarations/exp-blockdiagonal--07155edfa78e0b54d8922396.md) | 87 | `result-track:07155edfa78e0b54d892239601bf0400777eca1e728dc45afe5b88ab41e8e26b` |
| 3 | `theorem` | [exp_blockDiagonal'](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant4227c158b18cde90d7bb1d09fdba9e72c647d7e66fdba4b1e5625e0fcb0c2e27.lean/declarations/exp-blockdiagonal--91ad81c0181412f16964ddfb.md) | 91 | `result-track:91ad81c0181412f16964ddfbcf335ef23c888e3519cb704e5dea060d426c97fc` |
| 4 | `theorem` | [exp_conjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant4227c158b18cde90d7bb1d09fdba9e72c647d7e66fdba4b1e5625e0fcb0c2e27.lean/declarations/exp-conjtranspose--296d850769c32d5eeecec51c.md) | 95 | `result-track:296d850769c32d5eeecec51c88c367c8d402ad1c0d4461333d7f14212c6f6c10` |
| 5 | `theorem` | [IsHermitian.exp](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant4227c158b18cde90d7bb1d09fdba9e72c647d7e66fdba4b1e5625e0fcb0c2e27.lean/declarations/ishermitian-exp--08659945b058d682759e2675.md) | 99 | `result-track:08659945b058d682759e2675c33b9905d5c480d756d29dcb0bc6c7572c7e033f` |
| 6 | `theorem` | [BlockTriangular.exp](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant4227c158b18cde90d7bb1d09fdba9e72c647d7e66fdba4b1e5625e0fcb0c2e27.lean/declarations/blocktriangular-exp--12f3408dc411f6267c8a8983.md) | 103 | `result-track:12f3408dc411f6267c8a8983599986b5415bc661b2dd34f5d00a683dfff7599f` |
| 7 | `theorem` | [exp_transpose](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant4227c158b18cde90d7bb1d09fdba9e72c647d7e66fdba4b1e5625e0fcb0c2e27.lean/declarations/exp-transpose--4a940b776e034bbedf6a28a1.md) | 115 | `result-track:4a940b776e034bbedf6a28a143d18ae5dba4c94b7a0af97c47cafabea04d3920` |
| 8 | `theorem` | [IsSymm.exp](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant4227c158b18cde90d7bb1d09fdba9e72c647d7e66fdba4b1e5625e0fcb0c2e27.lean/declarations/issymm-exp--e3262d4febd89c22dd4b7533.md) | 118 | `result-track:e3262d4febd89c22dd4b7533c1a508c628db2d83303502846508062efda8ac74` |
| 9 | `theorem` | [exp_add_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant4227c158b18cde90d7bb1d09fdba9e72c647d7e66fdba4b1e5625e0fcb0c2e27.lean/declarations/exp-add-of-commute--9fbdf7709d6838220a7bf187.md) | 130 | `result-track:9fbdf7709d6838220a7bf187a23f2828fd77aea374e597270755a640ab83a795` |
| 10 | `theorem` | [exp_sum_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant4227c158b18cde90d7bb1d09fdba9e72c647d7e66fdba4b1e5625e0fcb0c2e27.lean/declarations/exp-sum-of-commute--b02fb00c198c79307a4c6b61.md) | 136 | `result-track:b02fb00c198c79307a4c6b6123a1102572f5a2098912c090878c0d541605b782` |
| 11 | `theorem` | [exp_nsmul](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant4227c158b18cde90d7bb1d09fdba9e72c647d7e66fdba4b1e5625e0fcb0c2e27.lean/declarations/exp-nsmul--51181ce510359fa28a1f8a42.md) | 143 | `result-track:51181ce510359fa28a1f8a42ff19fe64dbb6a59e3fd43c651364cabfaeaaeb20` |
| 12 | `theorem` | [isUnit_exp](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant4227c158b18cde90d7bb1d09fdba9e72c647d7e66fdba4b1e5625e0fcb0c2e27.lean/declarations/isunit-exp--860982b2d9a9399c67c33f67.md) | 147 | `result-track:860982b2d9a9399c67c33f670c64b947ca2620b31d371b9dae019bed6b7252cb` |
| 13 | `theorem` | [exp_units_conj](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant4227c158b18cde90d7bb1d09fdba9e72c647d7e66fdba4b1e5625e0fcb0c2e27.lean/declarations/exp-units-conj--d81822c0e11952fde9ed427e.md) | 156 | `result-track:d81822c0e11952fde9ed427e9de1957d6f1f41fd27f9df7578148263e38e3642` |
| 14 | `theorem` | [exp_units_conj'](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant4227c158b18cde90d7bb1d09fdba9e72c647d7e66fdba4b1e5625e0fcb0c2e27.lean/declarations/exp-units-conj--2f20bc96d78fd4d98e36367c.md) | 165 | `result-track:2f20bc96d78fd4d98e36367c8bdf1f4651bee7c5ae76b67a43ce5cba8aa5b69e` |
| 15 | `theorem` | [exp_neg](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant4227c158b18cde90d7bb1d09fdba9e72c647d7e66fdba4b1e5625e0fcb0c2e27.lean/declarations/exp-neg--21c0dfadececa3a7f9622e2b.md) | 177 | `result-track:21c0dfadececa3a7f9622e2b004177747b35e73a8eb532a6cfa70ac31cda0300` |
| 16 | `theorem` | [exp_zsmul](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant4227c158b18cde90d7bb1d09fdba9e72c647d7e66fdba4b1e5625e0fcb0c2e27.lean/declarations/exp-zsmul--d1fc3f418ec85b4c56c40af9.md) | 181 | `result-track:d1fc3f418ec85b4c56c40af9d2301631bba9cb22f607b9a6f478ad6588d6f24c` |
| 17 | `theorem` | [exp_conj](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant4227c158b18cde90d7bb1d09fdba9e72c647d7e66fdba4b1e5625e0fcb0c2e27.lean/declarations/exp-conj--3c83b91214e75ef7302c3d7e.md) | 187 | `result-track:3c83b91214e75ef7302c3d7e592b33997b18b754262dde5e83ccbdd8caedda1a` |
| 18 | `theorem` | [exp_conj'](../../../../../mathematics/Algebra/LinearAlgebra/MatrixExponential/Variant4227c158b18cde90d7bb1d09fdba9e72c647d7e66fdba4b1e5625e0fcb0c2e27.lean/declarations/exp-conj--4b2e047f8015e88a07d4a4b0.md) | 192 | `result-track:4b2e047f8015e88a07d4a4b01e8be25594fc3a4d3f3a9710b3eefbbaa613b557` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
