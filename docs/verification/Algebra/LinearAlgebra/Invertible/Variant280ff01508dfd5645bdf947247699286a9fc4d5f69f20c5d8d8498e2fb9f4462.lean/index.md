# Verification target: GRWTSK.Algebra.LinearAlgebra.Invertible.Variant280ff01508dfd5645bdf947247699286a9fc4d5f69f20c5d8d8498e2fb9f4462

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c4caad2140f6eebe5c50e00fa870cd1f19f1051",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Invertible/Variant280ff01508dfd5645bdf947247699286a9fc4d5f69f20c5d8d8498e2fb9f4462.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variant280ff01508dfd5645bdf947247699286a9fc4d5f69f20c5d8d8498e2fb9f4462.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variant280ff01508dfd5645bdf947247699286a9fc4d5f69f20c5d8d8498e2fb9f4462.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c4caad2140f6eebe5c50e00fa870cd1f19f1051`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Invertible/Variant280ff01508dfd5645bdf947247699286a9fc4d5f69f20c5d8d8498e2fb9f4462.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Invertible/Variant280ff01508dfd5645bdf947247699286a9fc4d5f69f20c5d8d8498e2fb9f4462.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Invertible` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [invOf_mul_self_assoc](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variant280ff01508dfd5645bdf947247699286a9fc4d5f69f20c5d8d8498e2fb9f4462.lean/declarations/invof-mul-self-assoc--14e822d86554ecc2391a3f91.md) | 42 | `result-track:14e822d86554ecc2391a3f911af6b6e4fbfd9c1708c65f02da6434229953235b` |
| 2 | `theorem` | [mul_invOf_self_assoc](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variant280ff01508dfd5645bdf947247699286a9fc4d5f69f20c5d8d8498e2fb9f4462.lean/declarations/mul-invof-self-assoc--d7fd31516df2ffb4621d9ad7.md) | 47 | `result-track:d7fd31516df2ffb4621d9ad711bf6945926840600076d7bab148e6018e632a54` |
| 3 | `theorem` | [mul_invOf_mul_self_cancel](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variant280ff01508dfd5645bdf947247699286a9fc4d5f69f20c5d8d8498e2fb9f4462.lean/declarations/mul-invof-mul-self-cancel--b6a9391d84501818dbef6e8d.md) | 52 | `result-track:b6a9391d84501818dbef6e8d21638b9cb5119f402740c778243a1f677e4b3243` |
| 4 | `theorem` | [mul_mul_invOf_self_cancel](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variant280ff01508dfd5645bdf947247699286a9fc4d5f69f20c5d8d8498e2fb9f4462.lean/declarations/mul-mul-invof-self-cancel--f06aea011c15635dc4d2ebcc.md) | 57 | `result-track:f06aea011c15635dc4d2ebcc5bc517b913daca28e073df3127139dd987b5d6ca` |
| 5 | `instance` | [invertibleConjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variant280ff01508dfd5645bdf947247699286a9fc4d5f69f20c5d8d8498e2fb9f4462.lean/declarations/invertibleconjtranspose--3513e61bacd4a5dd55347f12.md) | 70 | `declaration-track:3513e61bacd4a5dd55347f121c88414f58f5de11037478c20f236c8f732a7138` |
| 6 | `lemma` | [conjTranspose_invOf](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variant280ff01508dfd5645bdf947247699286a9fc4d5f69f20c5d8d8498e2fb9f4462.lean/declarations/conjtranspose-invof--cb0a290447846fcf49f86487.md) | 72 | `result-track:cb0a290447846fcf49f86487622ad10d61f8e76d35222fbecd088a5dca899795` |
| 7 | `def` | [invertibleOfInvertibleConjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variant280ff01508dfd5645bdf947247699286a9fc4d5f69f20c5d8d8498e2fb9f4462.lean/declarations/invertibleofinvertibleconjtranspose--1e5d6833f370b4a61cc2f201.md) | 75 | `declaration-track:1e5d6833f370b4a61cc2f20188f4130c38198e7412894f5cc01f34d25abbc7d8` |
| 8 | `lemma` | [isUnit_conjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variant280ff01508dfd5645bdf947247699286a9fc4d5f69f20c5d8d8498e2fb9f4462.lean/declarations/isunit-conjtranspose--3d363e7df87fb24ac3980ab6.md) | 80 | `result-track:3d363e7df87fb24ac3980ab62c20a197f308c049dee59a0eb0187984293fb8c8` |
| 9 | `instance` | [invertibleTranspose](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variant280ff01508dfd5645bdf947247699286a9fc4d5f69f20c5d8d8498e2fb9f4462.lean/declarations/invertibletranspose--cc88cdcfa0efad6bfdfffd1b.md) | 91 | `declaration-track:cc88cdcfa0efad6bfdfffd1bb0bf0cf5bfb43e71419d936f59c6e08bb60b101e` |
| 10 | `lemma` | [transpose_invOf](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variant280ff01508dfd5645bdf947247699286a9fc4d5f69f20c5d8d8498e2fb9f4462.lean/declarations/transpose-invof--816e3fcb98c555ecc4fc64a7.md) | 97 | `result-track:816e3fcb98c555ecc4fc64a717d7fb5d98848d6bffd88add4706e9be9a3319a1` |
| 11 | `def` | [invertibleOfInvertibleTranspose](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variant280ff01508dfd5645bdf947247699286a9fc4d5f69f20c5d8d8498e2fb9f4462.lean/declarations/invertibleofinvertibletranspose--b8b77945a14dd672b862216f.md) | 102 | `declaration-track:b8b77945a14dd672b862216fb26ab4b38452035532e93cde1635e4f49a026621` |
| 12 | `def` | [transposeInvertibleEquivInvertible](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variant280ff01508dfd5645bdf947247699286a9fc4d5f69f20c5d8d8498e2fb9f4462.lean/declarations/transposeinvertibleequivinvertible--15978f77ab50af6e21fd4db3.md) | 111 | `declaration-track:15978f77ab50af6e21fd4db3df18dae55c75613441692a2419798d3ba085419a` |
| 13 | `lemma` | [isUnit_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variant280ff01508dfd5645bdf947247699286a9fc4d5f69f20c5d8d8498e2fb9f4462.lean/declarations/isunit-transpose--37730fe4d9b655521235a416.md) | 117 | `result-track:37730fe4d9b655521235a4160705397bed62c0e1432bc06d0faf651de06fab9e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
