# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Inductions.Variante80a4c33709d6fba6ebf246f620213a6d0fbe76983df7c035f4d47ead12ac5ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bff6299bba56167809cafdb346453e2584b8f3c4",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Inductions/Variante80a4c33709d6fba6ebf246f620213a6d0fbe76983df7c035f4d47ead12ac5ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variante80a4c33709d6fba6ebf246f620213a6d0fbe76983df7c035f4d47ead12ac5ac.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variante80a4c33709d6fba6ebf246f620213a6d0fbe76983df7c035f4d47ead12ac5ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bff6299bba56167809cafdb346453e2584b8f3c4`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Inductions/Variante80a4c33709d6fba6ebf246f620213a6d0fbe76983df7c035f4d47ead12ac5ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Inductions/Variante80a4c33709d6fba6ebf246f620213a6d0fbe76983df7c035f4d47ead12ac5ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MonoidAlgebra.Division` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Interval` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Degree.Definitions` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Induction` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [divX](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variante80a4c33709d6fba6ebf246f620213a6d0fbe76983df7c035f4d47ead12ac5ac.lean/declarations/divx--3c8afdd31b208ac96bede155.md) | 38 | `declaration-track:3c8afdd31b208ac96bede155c07607a7618a0c07722718e9d278ad923428ce5b` |
| 2 | `theorem` | [coeff_divX](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variante80a4c33709d6fba6ebf246f620213a6d0fbe76983df7c035f4d47ead12ac5ac.lean/declarations/coeff-divx--c5a89a27fa3784fa31b2fa1a.md) | 44 | `result-track:c5a89a27fa3784fa31b2fa1a028ad47b0dc0572c9ea9f6ce0a1346a973ad536e` |
| 3 | `theorem` | [divX_mul_X_add](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variante80a4c33709d6fba6ebf246f620213a6d0fbe76983df7c035f4d47ead12ac5ac.lean/declarations/divx-mul-x-add--b3d2ad14b352251dfdb726c8.md) | 49 | `result-track:b3d2ad14b352251dfdb726c8a2c0911a28e0306b8d751046afb41c18ae50f683` |
| 4 | `theorem` | [divX_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variante80a4c33709d6fba6ebf246f620213a6d0fbe76983df7c035f4d47ead12ac5ac.lean/declarations/divx-c--47e825fa693cf09b0b02c2a2.md) | 55 | `result-track:47e825fa693cf09b0b02c2a26ff47c6f9c1f19b141ec5c545cdfc8020e6c6334` |
| 5 | `theorem` | [divX_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variante80a4c33709d6fba6ebf246f620213a6d0fbe76983df7c035f4d47ead12ac5ac.lean/declarations/divx-eq-zero-iff--4d176c617acea2b50bfcbd09.md) | 60 | `result-track:4d176c617acea2b50bfcbd090f48a431a36384f7753359f5f3f9e6a6a1bf2940` |
| 6 | `theorem` | [divX_add](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variante80a4c33709d6fba6ebf246f620213a6d0fbe76983df7c035f4d47ead12ac5ac.lean/declarations/divx-add--8730422beb7b895e1f16c457.md) | 65 | `result-track:8730422beb7b895e1f16c45731aaa9d33d54bb1b684c76b0c56a4fa8965c7204` |
| 7 | `theorem` | [degree_divX_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variante80a4c33709d6fba6ebf246f620213a6d0fbe76983df7c035f4d47ead12ac5ac.lean/declarations/degree-divx-lt--b150cab3ae8d03d05d94efc2.md) | 70 | `result-track:b150cab3ae8d03d05d94efc241de1544b01b16de745006d61f049e2c288aeb27` |
| 8 | `def` | [recOnHorner](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variante80a4c33709d6fba6ebf246f620213a6d0fbe76983df7c035f4d47ead12ac5ac.lean/declarations/reconhorner--dede7c5a4024cdc218e7f01e.md) | 100 | `declaration-track:dede7c5a4024cdc218e7f01e3fdcfb5ae9b04cb38f3de9b6451bed86272ba076` |
| 9 | `theorem` | [degree_pos_induction_on](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variante80a4c33709d6fba6ebf246f620213a6d0fbe76983df7c035f4d47ead12ac5ac.lean/declarations/degree-pos-induction-on--1dcaf82ecb1273e88fe01956.md) | 129 | `result-track:1dcaf82ecb1273e88fe01956534539ed034976fb4e4081e61740089b8e1391f3` |
| 10 | `theorem` | [natDegree_ne_zero_induction_on](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variante80a4c33709d6fba6ebf246f620213a6d0fbe76983df7c035f4d47ead12ac5ac.lean/declarations/natdegree-ne-zero-induction-on--cd93e71b6e711b9c8184fb0f.md) | 157 | `result-track:cd93e71b6e711b9c8184fb0faa3cc94957135e24dbe22b9068a087e441a5aa4f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
