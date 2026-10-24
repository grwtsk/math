# Verification target: GRWTSK.Algebra.LinearAlgebra.DotProduct.Variante4b2faa4472a189191ad3a3b425726a940196cc28db4ef4830478bef74f12b04

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d0b64a9e17b0bfc84fa0b6930cefa13a2a51f52",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/DotProduct/Variante4b2faa4472a189191ad3a3b425726a940196cc28db4ef4830478bef74f12b04.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variante4b2faa4472a189191ad3a3b425726a940196cc28db4ef4830478bef74f12b04.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variante4b2faa4472a189191ad3a3b425726a940196cc28db4ef4830478bef74f12b04.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d0b64a9e17b0bfc84fa0b6930cefa13a2a51f52`.

Source path: `GRWTSK/Algebra/LinearAlgebra/DotProduct/Variante4b2faa4472a189191ad3a3b425726a940196cc28db4ef4830478bef74f12b04.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/DotProduct/Variante4b2faa4472a189191ad3a3b425726a940196cc28db4ef4830478bef74f12b04.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Star.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.RowCol` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dotProduct_eq](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variante4b2faa4472a189191ad3a3b425726a940196cc28db4ef4830478bef74f12b04.lean/declarations/dotproduct-eq--23c32f040844987f1c270fcf.md) | 43 | `result-track:23c32f040844987f1c270fcf8f20a96a2ff3a9090a8e8f4dbf699f3f9f91c366` |
| 2 | `theorem` | [dotProduct_eq_iff](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variante4b2faa4472a189191ad3a3b425726a940196cc28db4ef4830478bef74f12b04.lean/declarations/dotproduct-eq-iff--1ba4524ce88e116742dde992.md) | 49 | `result-track:1ba4524ce88e116742dde9929e100b6124e37b8d6adaeddc8b6064805dba3aa1` |
| 3 | `theorem` | [dotProduct_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variante4b2faa4472a189191ad3a3b425726a940196cc28db4ef4830478bef74f12b04.lean/declarations/dotproduct-eq-zero--5319b0e6efba702948426238.md) | 54 | `result-track:5319b0e6efba702948426238de37ea925ea9f016f0264469e8315735269330c4` |
| 4 | `theorem` | [dotProduct_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variante4b2faa4472a189191ad3a3b425726a940196cc28db4ef4830478bef74f12b04.lean/declarations/dotproduct-eq-zero-iff--01c6f70c9850b2d079db9a21.md) | 60 | `result-track:01c6f70c9850b2d079db9a2148c35eb201a1af7b66a01b6f64f52cfd7dea9e5b` |
| 5 | `lemma` | [dotProduct_nonneg_of_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variante4b2faa4472a189191ad3a3b425726a940196cc28db4ef4830478bef74f12b04.lean/declarations/dotproduct-nonneg-of-nonneg--ccf10a3409fb1b5a1bb546b8.md) | 72 | `result-track:ccf10a3409fb1b5a1bb546b853c2753ce075bcc9260c25966b6a8a313f28f693` |
| 6 | `lemma` | [dotProduct_le_dotProduct_of_nonneg_right](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variante4b2faa4472a189191ad3a3b425726a940196cc28db4ef4830478bef74f12b04.lean/declarations/dotproduct-le-dotproduct-of-nonneg-right--a5a9477ce17f21c1ad528f8d.md) | 78 | `result-track:a5a9477ce17f21c1ad528f8d0e08d5f7a07d9ecf43c894d81e44529f134bc343` |
| 7 | `lemma` | [dotProduct_le_dotProduct_of_nonneg_left](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variante4b2faa4472a189191ad3a3b425726a940196cc28db4ef4830478bef74f12b04.lean/declarations/dotproduct-le-dotproduct-of-nonneg-left--4e2dff05276c1d9750c546f5.md) | 86 | `result-track:4e2dff05276c1d9750c546f5ad49f53b4a4f211dcdf8a1671fd7fede640719a3` |
| 8 | `theorem` | [dotProduct_self_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variante4b2faa4472a189191ad3a3b425726a940196cc28db4ef4830478bef74f12b04.lean/declarations/dotproduct-self-eq-zero--b0df2d1a876d563b8d218b80.md) | 101 | `result-track:b0df2d1a876d563b8d218b80fed3bc19c68795c17dd6b06721650909010d74f3` |
| 9 | `theorem` | [dotProduct_star_self_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variante4b2faa4472a189191ad3a3b425726a940196cc28db4ef4830478bef74f12b04.lean/declarations/dotproduct-star-self-nonneg--c76c0578d5fd6debded0b350.md) | 115 | `result-track:c76c0578d5fd6debded0b35047fed89d4a52c3e4693e5060dcb844b200ecc059` |
| 10 | `theorem` | [dotProduct_self_star_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variante4b2faa4472a189191ad3a3b425726a940196cc28db4ef4830478bef74f12b04.lean/declarations/dotproduct-self-star-nonneg--4a5d7968d5a6167f12018e7f.md) | 123 | `result-track:4a5d7968d5a6167f12018e7f650e6c620d9754928a1c2f8bc86317c1c675e3b0` |
| 11 | `theorem` | [dotProduct_star_self_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variante4b2faa4472a189191ad3a3b425726a940196cc28db4ef4830478bef74f12b04.lean/declarations/dotproduct-star-self-eq-zero--20a306e1de147f012f24a95c.md) | 133 | `result-track:20a306e1de147f012f24a95cca4d30a9ef572fddd2162a641fdb690823b62bd0` |
| 12 | `theorem` | [dotProduct_self_star_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variante4b2faa4472a189191ad3a3b425726a940196cc28db4ef4830478bef74f12b04.lean/declarations/dotproduct-self-star-eq-zero--56b121c9f4e50a67fea140e2.md) | 142 | `result-track:56b121c9f4e50a67fea140e276f65c4c9801df6abf80866ad4936b5e803e0e5b` |
| 13 | `lemma` | [conjTranspose_mul_self_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variante4b2faa4472a189191ad3a3b425726a940196cc28db4ef4830478bef74f12b04.lean/declarations/conjtranspose-mul-self-eq-zero--3c130a1a6bf774d3b9748f6c.md) | 152 | `result-track:3c130a1a6bf774d3b9748f6c58b188345ff6a3bcb1d17c1eb8bc9cacb3fd2dd5` |
| 14 | `lemma` | [self_mul_conjTranspose_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variante4b2faa4472a189191ad3a3b425726a940196cc28db4ef4830478bef74f12b04.lean/declarations/self-mul-conjtranspose-eq-zero--5cd0160984ac4f3878d75abe.md) | 158 | `result-track:5cd0160984ac4f3878d75abea00bb869a2af67299f043780a5f1969954a047d8` |
| 15 | `lemma` | [conjTranspose_mul_self_mul_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variante4b2faa4472a189191ad3a3b425726a940196cc28db4ef4830478bef74f12b04.lean/declarations/conjtranspose-mul-self-mul-eq-zero--4ebbbb14d740c3fc0accd36c.md) | 163 | `result-track:4ebbbb14d740c3fc0accd36c2732a62146e9ab5e7fc09f894e86a3ea60a648eb` |
| 16 | `lemma` | [self_mul_conjTranspose_mul_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variante4b2faa4472a189191ad3a3b425726a940196cc28db4ef4830478bef74f12b04.lean/declarations/self-mul-conjtranspose-mul-eq-zero--812432a6a26c92622333d314.md) | 170 | `result-track:812432a6a26c92622333d314b7f57017c1e1e86790967b14f89ad896b6cc1d19` |
| 17 | `lemma` | [mul_self_mul_conjTranspose_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variante4b2faa4472a189191ad3a3b425726a940196cc28db4ef4830478bef74f12b04.lean/declarations/mul-self-mul-conjtranspose-eq-zero--f487fb5dba74ecebd8b1dc35.md) | 174 | `result-track:f487fb5dba74ecebd8b1dc35374f3c8d24c70b80d0c792700af1c8fb0e098e48` |
| 18 | `lemma` | [mul_conjTranspose_mul_self_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variante4b2faa4472a189191ad3a3b425726a940196cc28db4ef4830478bef74f12b04.lean/declarations/mul-conjtranspose-mul-self-eq-zero--ac4fb02c971d650977be461d.md) | 179 | `result-track:ac4fb02c971d650977be461d2dcd237df41538722b9e34cd3237b2bac7a479db` |
| 19 | `lemma` | [conjTranspose_mul_self_mulVec_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variante4b2faa4472a189191ad3a3b425726a940196cc28db4ef4830478bef74f12b04.lean/declarations/conjtranspose-mul-self-mulvec-eq-zero--be0d448b593e759159f53268.md) | 183 | `result-track:be0d448b593e759159f5326850936bfec1bc230b7d1aed661c0a29d806077257` |
| 20 | `lemma` | [self_mul_conjTranspose_mulVec_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variante4b2faa4472a189191ad3a3b425726a940196cc28db4ef4830478bef74f12b04.lean/declarations/self-mul-conjtranspose-mulvec-eq-zero--1ff6f30e28ef4e2a1fe49473.md) | 188 | `result-track:1ff6f30e28ef4e2a1fe49473d075467ac6dd7d880644031e9a13a9df12f7ef1f` |
| 21 | `lemma` | [vecMul_conjTranspose_mul_self_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variante4b2faa4472a189191ad3a3b425726a940196cc28db4ef4830478bef74f12b04.lean/declarations/vecmul-conjtranspose-mul-self-eq-zero--b4780824feaab3e1ae029d6a.md) | 192 | `result-track:b4780824feaab3e1ae029d6a2cd04d00e7de4e5430497401d6f35f96e2a91544` |
| 22 | `lemma` | [vecMul_self_mul_conjTranspose_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variante4b2faa4472a189191ad3a3b425726a940196cc28db4ef4830478bef74f12b04.lean/declarations/vecmul-self-mul-conjtranspose-eq-zero--c1ee60f0bf522221b60e234b.md) | 197 | `result-track:c1ee60f0bf522221b60e234bb581dc978213ed3d3091034bf94ba99408ebdee4` |
| 23 | `theorem` | [dotProduct_star_self_pos_iff](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variante4b2faa4472a189191ad3a3b425726a940196cc28db4ef4830478bef74f12b04.lean/declarations/dotproduct-star-self-pos-iff--fc62cbaf120bf4f9fefa43c6.md) | 203 | `result-track:fc62cbaf120bf4f9fefa43c62bbc0fd313d572b1025bb836b2f7a7451ad1b8b9` |
| 24 | `theorem` | [dotProduct_self_star_pos_iff](../../../../../mathematics/Algebra/LinearAlgebra/DotProduct/Variante4b2faa4472a189191ad3a3b425726a940196cc28db4ef4830478bef74f12b04.lean/declarations/dotproduct-self-star-pos-iff--84a0954b6ad6fdccffdf68af.md) | 216 | `result-track:84a0954b6ad6fdccffdf68af98bfd64610c1a29cf2c5db77afeba43983942f1e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
