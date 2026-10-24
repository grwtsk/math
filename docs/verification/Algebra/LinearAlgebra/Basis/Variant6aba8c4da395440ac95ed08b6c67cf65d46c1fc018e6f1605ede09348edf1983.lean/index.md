# Verification target: GRWTSK.Algebra.LinearAlgebra.Basis.Variant6aba8c4da395440ac95ed08b6c67cf65d46c1fc018e6f1605ede09348edf1983

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b0f55338e643d4fea6a8c5cd02a5edf0edadeac",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variant6aba8c4da395440ac95ed08b6c67cf65d46c1fc018e6f1605ede09348edf1983.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant6aba8c4da395440ac95ed08b6c67cf65d46c1fc018e6f1605ede09348edf1983.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant6aba8c4da395440ac95ed08b6c67cf65d46c1fc018e6f1605ede09348edf1983.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b0f55338e643d4fea6a8c5cd02a5edf0edadeac`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basis/Variant6aba8c4da395440ac95ed08b6c67cf65d46c1fc018e6f1605ede09348edf1983.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basis/Variant6aba8c4da395440ac95ed08b6c67cf65d46c1fc018e6f1605ede09348edf1983.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Trace` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [stdBasisMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant6aba8c4da395440ac95ed08b6c67cf65d46c1fc018e6f1605ede09348edf1983.lean/declarations/stdbasismatrix--07d360381a0914e0763ccbdf.md) | 44 | `declaration-track:07d360381a0914e0763ccbdf88eddb198b1c30a6f25c453a2b77c2af9be771ad` |
| 2 | `theorem` | [smul_stdBasisMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant6aba8c4da395440ac95ed08b6c67cf65d46c1fc018e6f1605ede09348edf1983.lean/declarations/smul-stdbasismatrix--a3337b4601aeb0aa3e0832ed.md) | 49 | `result-track:a3337b4601aeb0aa3e0832ed20399cade823d45209a3d3070b5d3cc407d071cf` |
| 3 | `theorem` | [stdBasisMatrix_zero](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant6aba8c4da395440ac95ed08b6c67cf65d46c1fc018e6f1605ede09348edf1983.lean/declarations/stdbasismatrix-zero--4167d4eae657bbdfecb5273e.md) | 57 | `result-track:4167d4eae657bbdfecb5273eaf579cc8a9146ae8c860624ecacbf45f99a6360b` |
| 4 | `theorem` | [stdBasisMatrix_add](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant6aba8c4da395440ac95ed08b6c67cf65d46c1fc018e6f1605ede09348edf1983.lean/declarations/stdbasismatrix-add--444654fb439df59d1f979609.md) | 63 | `result-track:444654fb439df59d1f979609df7dbf902b7fd46c7e70673a49c281f0a4b7f398` |
| 5 | `theorem` | [matrix_eq_sum_std_basis](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant6aba8c4da395440ac95ed08b6c67cf65d46c1fc018e6f1605ede09348edf1983.lean/declarations/matrix-eq-sum-std-basis--e51684499bc0d44ed0d8f8bd.md) | 69 | `result-track:e51684499bc0d44ed0d8f8bd1dab7f48815221379ca74ab22583dd1c59b56d21` |
| 6 | `theorem` | [std_basis_eq_basis_mul_basis](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant6aba8c4da395440ac95ed08b6c67cf65d46c1fc018e6f1605ede09348edf1983.lean/declarations/std-basis-eq-basis-mul-basis--5eda7779766e62e5728e0481.md) | 89 | `result-track:5eda7779766e62e5728e04815f3b3d449d46a3bbe3f4880e2c2c37c7c5dcccb7` |
| 7 | `theorem` | [induction_on'](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant6aba8c4da395440ac95ed08b6c67cf65d46c1fc018e6f1605ede09348edf1983.lean/declarations/induction-on--7ca1a40a8d2970130a744a12.md) | 102 | `result-track:7ca1a40a8d2970130a744a12f4a30e77165a0fe5809b353cd19fa5f7a966a929` |
| 8 | `theorem` | [induction_on](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant6aba8c4da395440ac95ed08b6c67cf65d46c1fc018e6f1605ede09348edf1983.lean/declarations/induction-on--db3d876f8b54299185b1e7d9.md) | 112 | `result-track:db3d876f8b54299185b1e7d9346802ead39d23f41b2a17ecca3915cadd3226b9` |
| 9 | `theorem` | [apply_same](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant6aba8c4da395440ac95ed08b6c67cf65d46c1fc018e6f1605ede09348edf1983.lean/declarations/apply-same--ba79aaae249464dfc263ca70.md) | 130 | `result-track:ba79aaae249464dfc263ca7080952975ef3659496d50a2db1311f29b0839ed8f` |
| 10 | `theorem` | [apply_of_ne](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant6aba8c4da395440ac95ed08b6c67cf65d46c1fc018e6f1605ede09348edf1983.lean/declarations/apply-of-ne--1a0d6ef4051c71d2a5d094cd.md) | 135 | `result-track:1a0d6ef4051c71d2a5d094cdd5fc9b5747d49c41b16c11e3ab79ad549d036e47` |
| 11 | `theorem` | [apply_of_row_ne](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant6aba8c4da395440ac95ed08b6c67cf65d46c1fc018e6f1605ede09348edf1983.lean/declarations/apply-of-row-ne--3e7504160dc6636879ffc1df.md) | 141 | `result-track:3e7504160dc6636879ffc1df3f8acf2d5c3a47f89230f8011bf4ef8d23894f85` |
| 12 | `theorem` | [apply_of_col_ne](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant6aba8c4da395440ac95ed08b6c67cf65d46c1fc018e6f1605ede09348edf1983.lean/declarations/apply-of-col-ne--053f0e4202f7a991dd9e1e28.md) | 146 | `result-track:053f0e4202f7a991dd9e1e28721454de72d896b15683283bc94fb58a73a5a999` |
| 13 | `theorem` | [diag_zero](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant6aba8c4da395440ac95ed08b6c67cf65d46c1fc018e6f1605ede09348edf1983.lean/declarations/diag-zero--605a72620c70f9fb8115a94c.md) | 157 | `result-track:605a72620c70f9fb8115a94c5e99e6d11440f77169d0cca21b54c4554b5f0f76` |
| 14 | `theorem` | [diag_same](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant6aba8c4da395440ac95ed08b6c67cf65d46c1fc018e6f1605ede09348edf1983.lean/declarations/diag-same--a1c2dd8b89e0c66b65360704.md) | 162 | `result-track:a1c2dd8b89e0c66b65360704b0f81e82e83043015a0030e9663effef58fb2c80` |
| 15 | `theorem` | [trace_zero](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant6aba8c4da395440ac95ed08b6c67cf65d46c1fc018e6f1605ede09348edf1983.lean/declarations/trace-zero--9a753d06dc086468066663eb.md) | 170 | `result-track:9a753d06dc086468066663eb59ae0a891387e1986e1c47ba87e62198d062f2e1` |
| 16 | `theorem` | [trace_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant6aba8c4da395440ac95ed08b6c67cf65d46c1fc018e6f1605ede09348edf1983.lean/declarations/trace-eq--4511c15da3202713be4ead7d.md) | 176 | `result-track:4511c15da3202713be4ead7d2a5dad822e52d3b9084cd77f45352734db58a7f9` |
| 17 | `theorem` | [mul_left_apply_same](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant6aba8c4da395440ac95ed08b6c67cf65d46c1fc018e6f1605ede09348edf1983.lean/declarations/mul-left-apply-same--537616185b84bbadf1ae9180.md) | 182 | `result-track:537616185b84bbadf1ae91800e65801c729ee1b7b3e8f37d2f04f5189ff97486` |
| 18 | `theorem` | [mul_right_apply_same](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant6aba8c4da395440ac95ed08b6c67cf65d46c1fc018e6f1605ede09348edf1983.lean/declarations/mul-right-apply-same--859688880f69c7278258624c.md) | 187 | `result-track:859688880f69c7278258624c8bb32db38dcc687684bf29aa798c96e1222f8438` |
| 19 | `theorem` | [mul_left_apply_of_ne](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant6aba8c4da395440ac95ed08b6c67cf65d46c1fc018e6f1605ede09348edf1983.lean/declarations/mul-left-apply-of-ne--b436f22f215568245ae4dd00.md) | 192 | `result-track:b436f22f215568245ae4dd0088bde6812cc5bc94fae3ba2e5c4f207d1cdad043` |
| 20 | `theorem` | [mul_right_apply_of_ne](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant6aba8c4da395440ac95ed08b6c67cf65d46c1fc018e6f1605ede09348edf1983.lean/declarations/mul-right-apply-of-ne--55658601dfa8c414361830ca.md) | 197 | `result-track:55658601dfa8c414361830ca78ecdf9003ef148ae349f8ab2e8e7ba572eae245` |
| 21 | `theorem` | [mul_same](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant6aba8c4da395440ac95ed08b6c67cf65d46c1fc018e6f1605ede09348edf1983.lean/declarations/mul-same--e4fd1ebb65521593dad959f6.md) | 202 | `result-track:e4fd1ebb65521593dad959f6170754b22696038ca92a022c78899e16277ea0ba` |
| 22 | `theorem` | [mul_of_ne](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant6aba8c4da395440ac95ed08b6c67cf65d46c1fc018e6f1605ede09348edf1983.lean/declarations/mul-of-ne--bd0077392a7fae0e77690714.md) | 210 | `result-track:bd0077392a7fae0e776907145ad8172b860504561d2781a3974d0597ba6935d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
