# Verification target: GRWTSK.Algebra.LinearAlgebra.Basis.Variant410179d4fbba3b66125aa75b590acbf8f99bd2599bf83eb3e3deea8458e3dd04

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42b50a8def79d33c1755221689992881582b94b2",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variant410179d4fbba3b66125aa75b590acbf8f99bd2599bf83eb3e3deea8458e3dd04.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant410179d4fbba3b66125aa75b590acbf8f99bd2599bf83eb3e3deea8458e3dd04.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant410179d4fbba3b66125aa75b590acbf8f99bd2599bf83eb3e3deea8458e3dd04.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42b50a8def79d33c1755221689992881582b94b2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basis/Variant410179d4fbba3b66125aa75b590acbf8f99bd2599bf83eb3e3deea8458e3dd04.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basis/Variant410179d4fbba3b66125aa75b590acbf8f99bd2599bf83eb3e3deea8458e3dd04.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Trace` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [stdBasisMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant410179d4fbba3b66125aa75b590acbf8f99bd2599bf83eb3e3deea8458e3dd04.lean/declarations/stdbasismatrix--683eb6b3d5dfb7900d5235ec.md) | 36 | `declaration-track:683eb6b3d5dfb7900d5235ec794bfbac9b0776b7da0608631bc58b1201aab895` |
| 2 | `theorem` | [smul_stdBasisMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant410179d4fbba3b66125aa75b590acbf8f99bd2599bf83eb3e3deea8458e3dd04.lean/declarations/smul-stdbasismatrix--bce2098efd7b1af78ce354e9.md) | 41 | `result-track:bce2098efd7b1af78ce354e9cc38abc2d1b038c62dc6783406049e67847d341a` |
| 3 | `theorem` | [stdBasisMatrix_zero](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant410179d4fbba3b66125aa75b590acbf8f99bd2599bf83eb3e3deea8458e3dd04.lean/declarations/stdbasismatrix-zero--d76fa40cd82a8b2baad2b1b2.md) | 49 | `result-track:d76fa40cd82a8b2baad2b1b259a8d572e8c1acf24ece7f31981d00e396c68527` |
| 4 | `theorem` | [stdBasisMatrix_add](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant410179d4fbba3b66125aa75b590acbf8f99bd2599bf83eb3e3deea8458e3dd04.lean/declarations/stdbasismatrix-add--1b63517b9abcbc2c727b2004.md) | 55 | `result-track:1b63517b9abcbc2c727b20047044fefae590333592139b8f6ec53aa09f5500fc` |
| 5 | `theorem` | [matrix_eq_sum_std_basis](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant410179d4fbba3b66125aa75b590acbf8f99bd2599bf83eb3e3deea8458e3dd04.lean/declarations/matrix-eq-sum-std-basis--3218d0fabbecaf25c619ebc0.md) | 61 | `result-track:3218d0fabbecaf25c619ebc0ef169d3a46caa64bea7c33f6c136a0ff96c2b058` |
| 6 | `theorem` | [std_basis_eq_basis_mul_basis](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant410179d4fbba3b66125aa75b590acbf8f99bd2599bf83eb3e3deea8458e3dd04.lean/declarations/std-basis-eq-basis-mul-basis--3682be80768e8a68acd7d6c3.md) | 81 | `result-track:3682be80768e8a68acd7d6c3d91b97d88c1a0512493410b3dfd285c585d493ae` |
| 7 | `theorem` | [induction_on'](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant410179d4fbba3b66125aa75b590acbf8f99bd2599bf83eb3e3deea8458e3dd04.lean/declarations/induction-on--494e224c9cafd353d80c9eab.md) | 94 | `result-track:494e224c9cafd353d80c9eab935fd6b7737c74154aa6969a79e2cdde66ffc6bc` |
| 8 | `theorem` | [induction_on](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant410179d4fbba3b66125aa75b590acbf8f99bd2599bf83eb3e3deea8458e3dd04.lean/declarations/induction-on--0cee8197eda754a10903c5c5.md) | 104 | `result-track:0cee8197eda754a10903c5c5e16d49b07293b8ed816bd0c1236a2ed9c7aea63c` |
| 9 | `theorem` | [apply_same](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant410179d4fbba3b66125aa75b590acbf8f99bd2599bf83eb3e3deea8458e3dd04.lean/declarations/apply-same--804f56b36e8ed6d6ab8af13e.md) | 122 | `result-track:804f56b36e8ed6d6ab8af13e0b22ed3ab8ba0ca002d8170ac957b98adbfe25f9` |
| 10 | `theorem` | [apply_of_ne](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant410179d4fbba3b66125aa75b590acbf8f99bd2599bf83eb3e3deea8458e3dd04.lean/declarations/apply-of-ne--08db140b06205e174c5791c0.md) | 127 | `result-track:08db140b06205e174c5791c07035cc9bf6484880a3248f7140e4baa4430ef68f` |
| 11 | `theorem` | [apply_of_row_ne](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant410179d4fbba3b66125aa75b590acbf8f99bd2599bf83eb3e3deea8458e3dd04.lean/declarations/apply-of-row-ne--1e507a01b911b5f31e6aa069.md) | 133 | `result-track:1e507a01b911b5f31e6aa069c5dad673ff37536f78443c344f5902370949b679` |
| 12 | `theorem` | [apply_of_col_ne](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant410179d4fbba3b66125aa75b590acbf8f99bd2599bf83eb3e3deea8458e3dd04.lean/declarations/apply-of-col-ne--7d6ff61e6146a51145840734.md) | 138 | `result-track:7d6ff61e6146a51145840734301db5b4dc15e82d9f85f2a279a448c24c82aeab` |
| 13 | `theorem` | [diag_zero](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant410179d4fbba3b66125aa75b590acbf8f99bd2599bf83eb3e3deea8458e3dd04.lean/declarations/diag-zero--cf2c304dd369b87fa3c3cbda.md) | 149 | `result-track:cf2c304dd369b87fa3c3cbdab4382a790743a50bd002d5c11eb22d1ea4589fa4` |
| 14 | `theorem` | [diag_same](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant410179d4fbba3b66125aa75b590acbf8f99bd2599bf83eb3e3deea8458e3dd04.lean/declarations/diag-same--8ccfd6abf882d36f443c1351.md) | 154 | `result-track:8ccfd6abf882d36f443c1351fa4b9f68d26c97238a5387531890cb32d739848f` |
| 15 | `theorem` | [trace_zero](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant410179d4fbba3b66125aa75b590acbf8f99bd2599bf83eb3e3deea8458e3dd04.lean/declarations/trace-zero--8b888ed44434a5f510dd841f.md) | 162 | `result-track:8b888ed44434a5f510dd841f1efb301386eba79ce95aa781a2367ce95cec78ed` |
| 16 | `theorem` | [trace_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant410179d4fbba3b66125aa75b590acbf8f99bd2599bf83eb3e3deea8458e3dd04.lean/declarations/trace-eq--5b8bf36d6f6fb2cfc5056d9d.md) | 168 | `result-track:5b8bf36d6f6fb2cfc5056d9ded006b33a0edcbc0f6b34860dde6f51012332af1` |
| 17 | `theorem` | [mul_left_apply_same](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant410179d4fbba3b66125aa75b590acbf8f99bd2599bf83eb3e3deea8458e3dd04.lean/declarations/mul-left-apply-same--89ffe0737049d5b8168b72ec.md) | 174 | `result-track:89ffe0737049d5b8168b72ecb1eb55ecb6e37bf5513c5abfcec46c2e9da189ea` |
| 18 | `theorem` | [mul_right_apply_same](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant410179d4fbba3b66125aa75b590acbf8f99bd2599bf83eb3e3deea8458e3dd04.lean/declarations/mul-right-apply-same--228894355ee30aa6db777c3b.md) | 179 | `result-track:228894355ee30aa6db777c3be3ddbf3ea74e76eaca925d3cc47cdd0de4b66bf9` |
| 19 | `theorem` | [mul_left_apply_of_ne](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant410179d4fbba3b66125aa75b590acbf8f99bd2599bf83eb3e3deea8458e3dd04.lean/declarations/mul-left-apply-of-ne--323c31bfb5da2b07492f0c3c.md) | 184 | `result-track:323c31bfb5da2b07492f0c3c4c4d3bcdbd9fdb12005c150d116a6259234fd521` |
| 20 | `theorem` | [mul_right_apply_of_ne](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant410179d4fbba3b66125aa75b590acbf8f99bd2599bf83eb3e3deea8458e3dd04.lean/declarations/mul-right-apply-of-ne--2afee2fe39046f5eef474105.md) | 189 | `result-track:2afee2fe39046f5eef4741055b265d294a01a5712e70448a84d083ac3409432e` |
| 21 | `theorem` | [mul_same](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant410179d4fbba3b66125aa75b590acbf8f99bd2599bf83eb3e3deea8458e3dd04.lean/declarations/mul-same--4ec2a460cec08d3df2b02fae.md) | 194 | `result-track:4ec2a460cec08d3df2b02fae1cee04f0ab34e1a2e78ac5873f984ddf7a433740` |
| 22 | `theorem` | [mul_of_ne](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant410179d4fbba3b66125aa75b590acbf8f99bd2599bf83eb3e3deea8458e3dd04.lean/declarations/mul-of-ne--2e2ee97ad5031c07212b98a3.md) | 202 | `result-track:2e2ee97ad5031c07212b98a340b3468e7ce8030a2f2c0230402cd461dc048dcd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
