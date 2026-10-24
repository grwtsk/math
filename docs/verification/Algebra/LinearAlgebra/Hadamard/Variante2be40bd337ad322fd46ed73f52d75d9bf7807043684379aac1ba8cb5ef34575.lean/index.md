# Verification target: GRWTSK.Algebra.LinearAlgebra.Hadamard.Variante2be40bd337ad322fd46ed73f52d75d9bf7807043684379aac1ba8cb5ef34575

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab2e8490fa9d0a55d9aad248f81cafa7a3874223",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Hadamard/Variante2be40bd337ad322fd46ed73f52d75d9bf7807043684379aac1ba8cb5ef34575.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Hadamard/Variante2be40bd337ad322fd46ed73f52d75d9bf7807043684379aac1ba8cb5ef34575.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Hadamard/Variante2be40bd337ad322fd46ed73f52d75d9bf7807043684379aac1ba8cb5ef34575.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab2e8490fa9d0a55d9aad248f81cafa7a3874223`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Hadamard/Variante2be40bd337ad322fd46ed73f52d75d9bf7807043684379aac1ba8cb5ef34575.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Hadamard/Variante2be40bd337ad322fd46ed73f52d75d9bf7807043684379aac1ba8cb5ef34575.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Trace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hadamard](../../../../../mathematics/Algebra/LinearAlgebra/Hadamard/Variante2be40bd337ad322fd46ed73f52d75d9bf7807043684379aac1ba8cb5ef34575.lean/declarations/hadamard--9c30d0895390dd89f89b82f0.md) | 40 | `declaration-track:9c30d0895390dd89f89b82f0c03d57b4d7b3ce20b50476edf2ebae580a20e610` |
| 2 | `theorem` | [hadamard_apply](../../../../../mathematics/Algebra/LinearAlgebra/Hadamard/Variante2be40bd337ad322fd46ed73f52d75d9bf7807043684379aac1ba8cb5ef34575.lean/declarations/hadamard-apply--778017305a3c8e8f74c38d96.md) | 45 | `result-track:778017305a3c8e8f74c38d9668de736f316a798db93b09ba7776e874bcc190bf` |
| 3 | `theorem` | [hadamard_comm](../../../../../mathematics/Algebra/LinearAlgebra/Hadamard/Variante2be40bd337ad322fd46ed73f52d75d9bf7807043684379aac1ba8cb5ef34575.lean/declarations/hadamard-comm--13f800e9cac95ba82e75a430.md) | 56 | `result-track:13f800e9cac95ba82e75a430a397be8a845aea50fd5d6915cb9389aeda97de9a` |
| 4 | `theorem` | [hadamard_assoc](../../../../../mathematics/Algebra/LinearAlgebra/Hadamard/Variante2be40bd337ad322fd46ed73f52d75d9bf7807043684379aac1ba8cb5ef34575.lean/declarations/hadamard-assoc--3a389c92595e4b0e5d4b430a.md) | 60 | `result-track:3a389c92595e4b0e5d4b430ac02f2e916ef5ca0b00663736c0efaabbda42d9cb` |
| 5 | `theorem` | [hadamard_add](../../../../../mathematics/Algebra/LinearAlgebra/Hadamard/Variante2be40bd337ad322fd46ed73f52d75d9bf7807043684379aac1ba8cb5ef34575.lean/declarations/hadamard-add--d19b675d7ff996269a221f4e.md) | 64 | `result-track:d19b675d7ff996269a221f4e897585fa4dd7ac788ac895716983dcd405d92782` |
| 6 | `theorem` | [add_hadamard](../../../../../mathematics/Algebra/LinearAlgebra/Hadamard/Variante2be40bd337ad322fd46ed73f52d75d9bf7807043684379aac1ba8cb5ef34575.lean/declarations/add-hadamard--35352067ff893bb26c9d4ebf.md) | 67 | `result-track:35352067ff893bb26c9d4ebf40f15b55004e317bcc864dc103bf97c4547bd8eb` |
| 7 | `theorem` | [smul_hadamard](../../../../../mathematics/Algebra/LinearAlgebra/Hadamard/Variante2be40bd337ad322fd46ed73f52d75d9bf7807043684379aac1ba8cb5ef34575.lean/declarations/smul-hadamard--ffba7353d91f65b3ab13e31d.md) | 74 | `result-track:ffba7353d91f65b3ab13e31d934156769f0ba2f21d0d230528543b0426dba896` |
| 8 | `theorem` | [hadamard_smul](../../../../../mathematics/Algebra/LinearAlgebra/Hadamard/Variante2be40bd337ad322fd46ed73f52d75d9bf7807043684379aac1ba8cb5ef34575.lean/declarations/hadamard-smul--e0651cca7febd7faefe8da3c.md) | 78 | `result-track:e0651cca7febd7faefe8da3c2cfda8498ce68d4a07616ed28dbb7a291eb18dad` |
| 9 | `theorem` | [hadamard_zero](../../../../../mathematics/Algebra/LinearAlgebra/Hadamard/Variante2be40bd337ad322fd46ed73f52d75d9bf7807043684379aac1ba8cb5ef34575.lean/declarations/hadamard-zero--9c7547187fe686035cced22d.md) | 88 | `result-track:9c7547187fe686035cced22d44928b70c5a3af7c830bd02d27b5a5a55e664f2d` |
| 10 | `theorem` | [zero_hadamard](../../../../../mathematics/Algebra/LinearAlgebra/Hadamard/Variante2be40bd337ad322fd46ed73f52d75d9bf7807043684379aac1ba8cb5ef34575.lean/declarations/zero-hadamard--2a25bd458af14cb8219c60c1.md) | 92 | `result-track:2a25bd458af14cb8219c60c17ce940200f232c21bf783f0add1dfb8f2a5b365b` |
| 11 | `theorem` | [hadamard_one](../../../../../mathematics/Algebra/LinearAlgebra/Hadamard/Variante2be40bd337ad322fd46ed73f52d75d9bf7807043684379aac1ba8cb5ef34575.lean/declarations/hadamard-one--f5baf794116d640d9c196cb4.md) | 102 | `result-track:f5baf794116d640d9c196cb4747a9e8a190a066863f2865145c612d8cc0a4d61` |
| 12 | `theorem` | [one_hadamard](../../../../../mathematics/Algebra/LinearAlgebra/Hadamard/Variante2be40bd337ad322fd46ed73f52d75d9bf7807043684379aac1ba8cb5ef34575.lean/declarations/one-hadamard--107215584b4ceced1922d2cb.md) | 106 | `result-track:107215584b4ceced1922d2cbcbaf5f89f9325ec7f8456299047f90823cc2631e` |
| 13 | `theorem` | [single_hadamard_single_eq](../../../../../mathematics/Algebra/LinearAlgebra/Hadamard/Variante2be40bd337ad322fd46ed73f52d75d9bf7807043684379aac1ba8cb5ef34575.lean/declarations/single-hadamard-single-eq--f71fb38f44a4603a2eb0bf2c.md) | 116 | `result-track:f71fb38f44a4603a2eb0bf2caaf09daa9246cc903c7e17a5ccbbc7bf2da3a809` |
| 14 | `theorem` | [single_hadamard_single_of_ne](../../../../../mathematics/Algebra/LinearAlgebra/Hadamard/Variante2be40bd337ad322fd46ed73f52d75d9bf7807043684379aac1ba8cb5ef34575.lean/declarations/single-hadamard-single-of-ne--f65a3016394421f74e16d9ba.md) | 123 | `result-track:f65a3016394421f74e16d9bad509d6cf1f446bc13a4170545aa2c5f4b659df0f` |
| 15 | `theorem` | [diagonal_hadamard_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Hadamard/Variante2be40bd337ad322fd46ed73f52d75d9bf7807043684379aac1ba8cb5ef34575.lean/declarations/diagonal-hadamard-diagonal--21285ecd008e265e160fdc07.md) | 135 | `result-track:21285ecd008e265e160fdc07c36c356f92f5a1e3893e2ca935662d6e8669e725` |
| 16 | `theorem` | [sum_hadamard_eq](../../../../../mathematics/Algebra/LinearAlgebra/Hadamard/Variante2be40bd337ad322fd46ed73f52d75d9bf7807043684379aac1ba8cb5ef34575.lean/declarations/sum-hadamard-eq--1252ae65457d8a79abd19d5b.md) | 146 | `result-track:1252ae65457d8a79abd19d5b6235acb31e24cfda12170e9ae074be38ffc1c8c0` |
| 17 | `theorem` | [dotProduct_vecMul_hadamard](../../../../../mathematics/Algebra/LinearAlgebra/Hadamard/Variante2be40bd337ad322fd46ed73f52d75d9bf7807043684379aac1ba8cb5ef34575.lean/declarations/dotproduct-vecmul-hadamard--249ccc61923bd12dde7785f1.md) | 149 | `result-track:249ccc61923bd12dde7785f1016c3a0875b7115daf6c12afcd1f33f6f2259bde` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
