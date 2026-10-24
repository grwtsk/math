# Verification target: GRWTSK.Algebra.Symm.Variant6b57bd0630e0d09ba8d532f16d8308fa1e56bc5dcb85cb82f5f774610eff6850

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ae3ef96355bc340e053beb605dfb3cd602afae1",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Symm/Variant6b57bd0630e0d09ba8d532f16d8308fa1e56bc5dcb85cb82f5f774610eff6850.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Symm/Variant6b57bd0630e0d09ba8d532f16d8308fa1e56bc5dcb85cb82f5f774610eff6850.lean/index.md) · [Full source](../../../../mathematics/Algebra/Symm/Variant6b57bd0630e0d09ba8d532f16d8308fa1e56bc5dcb85cb82f5f774610eff6850.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ae3ef96355bc340e053beb605dfb3cd602afae1`.

Source path: `GRWTSK/Algebra/Symm/Variant6b57bd0630e0d09ba8d532f16d8308fa1e56bc5dcb85cb82f5f774610eff6850.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Symm/Variant6b57bd0630e0d09ba8d532f16d8308fa1e56bc5dcb85cb82f5f774610eff6850.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Hom.Defs` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eq_symm](../../../../mathematics/Algebra/Symm/Variant6b57bd0630e0d09ba8d532f16d8308fa1e56bc5dcb85cb82f5f774610eff6850.lean/declarations/eq-symm--31c15b96bbffee5a59dbf713.md) | 6 | `declaration-track:31c15b96bbffee5a59dbf713e777632bd3c01e358647295be8b5aeb2e8a65b55` |
| 2 | `example` | [(anonymous)](../../../../mathematics/Algebra/Symm/Variant6b57bd0630e0d09ba8d532f16d8308fa1e56bc5dcb85cb82f5f774610eff6850.lean/declarations/example--4734405134b797d564087b05.md) | 8 | `declaration-track:4734405134b797d564087b05da867ff83315b838e90859cb4047f7ad363989cb` |
| 3 | `example` | [(anonymous)](../../../../mathematics/Algebra/Symm/Variant6b57bd0630e0d09ba8d532f16d8308fa1e56bc5dcb85cb82f5f774610eff6850.lean/declarations/example--6b8ccc6adaf3541558682df8.md) | 9 | `declaration-track:6b8ccc6adaf3541558682df84966fc55988ee590d5c3966ce35a15924b1d3ddd` |
| 4 | `def` | [sameParity](../../../../mathematics/Algebra/Symm/Variant6b57bd0630e0d09ba8d532f16d8308fa1e56bc5dcb85cb82f5f774610eff6850.lean/declarations/sameparity--84614d3497236e6cc28cfd39.md) | 11 | `declaration-track:84614d3497236e6cc28cfd3974134587261b721cad41bae9a017850d4bade996` |
| 5 | `def` | [sameParity_symm](../../../../mathematics/Algebra/Symm/Variant6b57bd0630e0d09ba8d532f16d8308fa1e56bc5dcb85cb82f5f774610eff6850.lean/declarations/sameparity-symm--be74959c6cdd759a665c637b.md) | 14 | `declaration-track:be74959c6cdd759a665c637bae6e5cfc4dab24f3379a7508751a021a3927fc85` |
| 6 | `example` | [(anonymous)](../../../../mathematics/Algebra/Symm/Variant6b57bd0630e0d09ba8d532f16d8308fa1e56bc5dcb85cb82f5f774610eff6850.lean/declarations/example--98c6f09b3267f9aa4ff4f6c8.md) | 16 | `declaration-track:98c6f09b3267f9aa4ff4f6c8b7518fba38683aae016c74526e602157feff363f` |
| 7 | `example` | [(anonymous)](../../../../mathematics/Algebra/Symm/Variant6b57bd0630e0d09ba8d532f16d8308fa1e56bc5dcb85cb82f5f774610eff6850.lean/declarations/example--213090fbe01e7ec5a1206314.md) | 19 | `declaration-track:213090fbe01e7ec5a120631455c16b93f140aec50af7ac2348c5f07557768549` |
| 8 | `structure` | [MulEquiv](../../../../mathematics/Algebra/Symm/Variant6b57bd0630e0d09ba8d532f16d8308fa1e56bc5dcb85cb82f5f774610eff6850.lean/declarations/mulequiv--84b020c7186421258ca31851.md) | 26 | `declaration-track:84b020c7186421258ca31851e20d1d17f692a95d9598a45f67426e1d2a45479b` |
| 9 | `def` | [foo_symm](../../../../mathematics/Algebra/Symm/Variant6b57bd0630e0d09ba8d532f16d8308fa1e56bc5dcb85cb82f5f774610eff6850.lean/declarations/foo-symm--07b56b174115d548eefb4854.md) | 35 | `declaration-track:07b56b174115d548eefb48545c25ebaabaf35147d164959d548c71eb1b5c0430` |
| 10 | `def` | [MyEq](../../../../mathematics/Algebra/Symm/Variant6b57bd0630e0d09ba8d532f16d8308fa1e56bc5dcb85cb82f5f774610eff6850.lean/declarations/myeq--913bb7c5fcb746919e031fd4.md) | 39 | `declaration-track:913bb7c5fcb746919e031fd4d0bb1269cf9107852c650c6a7a805995ab61979d` |
| 11 | `lemma` | [MyEq.symm](../../../../mathematics/Algebra/Symm/Variant6b57bd0630e0d09ba8d532f16d8308fa1e56bc5dcb85cb82f5f774610eff6850.lean/declarations/myeq-symm--3fc6a9587b06b6c0347bfb31.md) | 41 | `result-track:3fc6a9587b06b6c0347bfb31bc444f2a5fe3b8105e0d89a432928d4b18ae725a` |
| 12 | `example` | [(anonymous)](../../../../mathematics/Algebra/Symm/Variant6b57bd0630e0d09ba8d532f16d8308fa1e56bc5dcb85cb82f5f774610eff6850.lean/declarations/example--68dbbad950368293e29aecb4.md) | 45 | `declaration-track:68dbbad950368293e29aecb42cd7ce9ca8d4176c14379bdb0796156d9e5dbde1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
