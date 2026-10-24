# Verification target: GRWTSK.Algebra.LinearAlgebra.Invertible.Variantaa6d0e045a4797ed9b0f1353454ce9ae92d548de130be2e830761ecc84e85623

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1115a6be946672135f50dec4946dc6a548caecb0",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Invertible/Variantaa6d0e045a4797ed9b0f1353454ce9ae92d548de130be2e830761ecc84e85623.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variantaa6d0e045a4797ed9b0f1353454ce9ae92d548de130be2e830761ecc84e85623.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variantaa6d0e045a4797ed9b0f1353454ce9ae92d548de130be2e830761ecc84e85623.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1115a6be946672135f50dec4946dc6a548caecb0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Invertible/Variantaa6d0e045a4797ed9b0f1353454ce9ae92d548de130be2e830761ecc84e85623.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Invertible/Variantaa6d0e045a4797ed9b0f1353454ce9ae92d548de130be2e830761ecc84e85623.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.ConjTranspose` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [invOf_mul_cancel_left](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variantaa6d0e045a4797ed9b0f1353454ce9ae92d548de130be2e830761ecc84e85623.lean/declarations/invof-mul-cancel-left--45d52e9a71bac347f732cf24.md) | 36 | `result-track:45d52e9a71bac347f732cf243c2a56ff7902a996a2693b0ea51c0dec99af6160` |
| 2 | `theorem` | [mul_invOf_cancel_left](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variantaa6d0e045a4797ed9b0f1353454ce9ae92d548de130be2e830761ecc84e85623.lean/declarations/mul-invof-cancel-left--0f54239891643e515ad894fa.md) | 40 | `result-track:0f54239891643e515ad894fa6b7aa7e6c9e0b5d0b8307f51964a64e2382c3609` |
| 3 | `theorem` | [invOf_mul_cancel_right](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variantaa6d0e045a4797ed9b0f1353454ce9ae92d548de130be2e830761ecc84e85623.lean/declarations/invof-mul-cancel-right--3f2a292ada0159c222e74e49.md) | 44 | `result-track:3f2a292ada0159c222e74e49c752eb6ad96c4197a84b5f18fa8922f04fb6ff6c` |
| 4 | `theorem` | [mul_invOf_cancel_right](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variantaa6d0e045a4797ed9b0f1353454ce9ae92d548de130be2e830761ecc84e85623.lean/declarations/mul-invof-cancel-right--fcf73fb60377d43e3e2a393d.md) | 48 | `result-track:fcf73fb60377d43e3e2a393d52441f59618a12898ffb8efae28100e7ef3067fb` |
| 5 | `instance` | [invertibleConjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variantaa6d0e045a4797ed9b0f1353454ce9ae92d548de130be2e830761ecc84e85623.lean/declarations/invertibleconjtranspose--3aaf6e2a8bf3b2b7d37c9c74.md) | 55 | `declaration-track:3aaf6e2a8bf3b2b7d37c9c748e07c7255c01a20241047ce60e4803a97ace8c7b` |
| 6 | `lemma` | [conjTranspose_invOf](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variantaa6d0e045a4797ed9b0f1353454ce9ae92d548de130be2e830761ecc84e85623.lean/declarations/conjtranspose-invof--2636b79433b4073c6656134f.md) | 57 | `result-track:2636b79433b4073c6656134f73681e03f71d871c591a46febf19bcdeb2ce2c9c` |
| 7 | `def` | [invertibleOfInvertibleConjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variantaa6d0e045a4797ed9b0f1353454ce9ae92d548de130be2e830761ecc84e85623.lean/declarations/invertibleofinvertibleconjtranspose--038389832b3868310558c36c.md) | 60 | `declaration-track:038389832b3868310558c36c517a41aa6551dbdc641db415fc691bb3ec738974` |
| 8 | `lemma` | [isUnit_conjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variantaa6d0e045a4797ed9b0f1353454ce9ae92d548de130be2e830761ecc84e85623.lean/declarations/isunit-conjtranspose--e2df503a2dd0cc16d9f6d1cd.md) | 64 | `result-track:e2df503a2dd0cc16d9f6d1cd57f2b5765dab7fd24a09fc48edb3f2262bef7e0e` |
| 9 | `instance` | [invertibleTranspose](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variantaa6d0e045a4797ed9b0f1353454ce9ae92d548de130be2e830761ecc84e85623.lean/declarations/invertibletranspose--08fce075e1024a9c3dced9d7.md) | 75 | `declaration-track:08fce075e1024a9c3dced9d76b2c57ee6a95217c91047aac24f2b20354c5456c` |
| 10 | `lemma` | [transpose_invOf](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variantaa6d0e045a4797ed9b0f1353454ce9ae92d548de130be2e830761ecc84e85623.lean/declarations/transpose-invof--50b0bbdbabb18e22f84c1474.md) | 80 | `result-track:50b0bbdbabb18e22f84c147401dce34ac7c5aa5c5f0c6987903513d3bb3f8a6f` |
| 11 | `def` | [invertibleOfInvertibleTranspose](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variantaa6d0e045a4797ed9b0f1353454ce9ae92d548de130be2e830761ecc84e85623.lean/declarations/invertibleofinvertibletranspose--35907c46e39a104526e2d872.md) | 85 | `declaration-track:35907c46e39a104526e2d872daa7e1805e599c7bbde601103756251992233516` |
| 12 | `def` | [transposeInvertibleEquivInvertible](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variantaa6d0e045a4797ed9b0f1353454ce9ae92d548de130be2e830761ecc84e85623.lean/declarations/transposeinvertibleequivinvertible--663ab25b66470a8a0232a2dd.md) | 93 | `declaration-track:663ab25b66470a8a0232a2ddf48f4e4c3649c9b09624eb82ca65975a0a78dbab` |
| 13 | `lemma` | [isUnit_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variantaa6d0e045a4797ed9b0f1353454ce9ae92d548de130be2e830761ecc84e85623.lean/declarations/isunit-transpose--54c29cc5b5834cf75de17df6.md) | 99 | `result-track:54c29cc5b5834cf75de17df69658ef8b66dd76c318ba9e988b074f2b779c8005` |
| 14 | `lemma` | [add_mul_mul_invOf_mul_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variantaa6d0e045a4797ed9b0f1353454ce9ae92d548de130be2e830761ecc84e85623.lean/declarations/add-mul-mul-invof-mul-eq-one--d563cec95f25837980ee8466.md) | 114 | `result-track:d563cec95f25837980ee846694330cc079af6df09145b4df0048d5c0e3bb03d9` |
| 15 | `lemma` | [add_mul_mul_invOf_mul_eq_one'](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variantaa6d0e045a4797ed9b0f1353454ce9ae92d548de130be2e830761ecc84e85623.lean/declarations/add-mul-mul-invof-mul-eq-one--d805be8a1985e7e594feb64a.md) | 133 | `result-track:d805be8a1985e7e594feb64a56b52ecd0a8808d2d7a6a36c977f2a22896ef037` |
| 16 | `def` | [invertibleAddMulMul](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variantaa6d0e045a4797ed9b0f1353454ce9ae92d548de130be2e830761ecc84e85623.lean/declarations/invertibleaddmulmul--2bf6a223cbca8efe42fae98b.md) | 154 | `declaration-track:2bf6a223cbca8efe42fae98b88536dc6f6238647c59686813b3b52f2881205d1` |
| 17 | `theorem` | [invOf_add_mul_mul](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variantaa6d0e045a4797ed9b0f1353454ce9ae92d548de130be2e830761ecc84e85623.lean/declarations/invof-add-mul-mul--1c22100abbeaab7d940798bc.md) | 160 | `result-track:1c22100abbeaab7d940798bcc7f447947ed322ad147af2d776bb224153283771` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
