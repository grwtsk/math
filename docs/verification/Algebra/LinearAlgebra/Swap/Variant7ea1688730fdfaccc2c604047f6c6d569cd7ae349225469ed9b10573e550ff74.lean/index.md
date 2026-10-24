# Verification target: GRWTSK.Algebra.LinearAlgebra.Swap.Variant7ea1688730fdfaccc2c604047f6c6d569cd7ae349225469ed9b10573e550ff74

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34550b777f4eead8dc929255d8c8dd8ed7735c23",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Swap/Variant7ea1688730fdfaccc2c604047f6c6d569cd7ae349225469ed9b10573e550ff74.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Swap/Variant7ea1688730fdfaccc2c604047f6c6d569cd7ae349225469ed9b10573e550ff74.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Swap/Variant7ea1688730fdfaccc2c604047f6c6d569cd7ae349225469ed9b10573e550ff74.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34550b777f4eead8dc929255d8c8dd8ed7735c23`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Swap/Variant7ea1688730fdfaccc2c604047f6c6d569cd7ae349225469ed9b10573e550ff74.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Swap/Variant7ea1688730fdfaccc2c604047f6c6d569cd7ae349225469ed9b10573e550ff74.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Permutation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.PEquiv` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [swap](../../../../../mathematics/Algebra/LinearAlgebra/Swap/Variant7ea1688730fdfaccc2c604047f6c6d569cd7ae349225469ed9b10573e550ff74.lean/declarations/swap--dccfcfe7e1c1b3e0b60d89ac.md) | 34 | `declaration-track:dccfcfe7e1c1b3e0b60d89acae1cc5ffac2d64bc2712e7521d66621dd60652fd` |
| 2 | `lemma` | [swap_comm](../../../../../mathematics/Algebra/LinearAlgebra/Swap/Variant7ea1688730fdfaccc2c604047f6c6d569cd7ae349225469ed9b10573e550ff74.lean/declarations/swap-comm--dd462bf62470008c44a3d73c.md) | 37 | `result-track:dd462bf62470008c44a3d73c8683ebb588ea04588dee3e9d044a56e935218e9b` |
| 3 | `lemma` | [transpose_swap](../../../../../mathematics/Algebra/LinearAlgebra/Swap/Variant7ea1688730fdfaccc2c604047f6c6d569cd7ae349225469ed9b10573e550ff74.lean/declarations/transpose-swap--671cf780e2a1216a7cd43957.md) | 42 | `result-track:671cf780e2a1216a7cd43957109dfb040df062e21643f5ee75532088a7f3fc14` |
| 4 | `lemma` | [conjTranspose_swap](../../../../../mathematics/Algebra/LinearAlgebra/Swap/Variant7ea1688730fdfaccc2c604047f6c6d569cd7ae349225469ed9b10573e550ff74.lean/declarations/conjtranspose-swap--f2e3d5aa8543bd661686db69.md) | 46 | `result-track:f2e3d5aa8543bd661686db69618cfb6fc5fcbb1697604493380fd2361c57c5e8` |
| 5 | `lemma` | [map_swap](../../../../../mathematics/Algebra/LinearAlgebra/Swap/Variant7ea1688730fdfaccc2c604047f6c6d569cd7ae349225469ed9b10573e550ff74.lean/declarations/map-swap--e85d43a86cdf84a490d90699.md) | 56 | `result-track:e85d43a86cdf84a490d90699212316934a28c44cab52e13757407d188c6648f3` |
| 6 | `lemma` | [swap_mulVec](../../../../../mathematics/Algebra/LinearAlgebra/Swap/Variant7ea1688730fdfaccc2c604047f6c6d569cd7ae349225469ed9b10573e550ff74.lean/declarations/swap-mulvec--348c59b5ce0765273e93b0fc.md) | 62 | `result-track:348c59b5ce0765273e93b0fc5d429444355a3bbf0747ed0a9007462590251aac` |
| 7 | `lemma` | [vecMul_swap](../../../../../mathematics/Algebra/LinearAlgebra/Swap/Variant7ea1688730fdfaccc2c604047f6c6d569cd7ae349225469ed9b10573e550ff74.lean/declarations/vecmul-swap--496a9126f77d185606530301.md) | 66 | `result-track:496a9126f77d1856065303012447761ac190455265d21421554dba9d4ba9731e` |
| 8 | `lemma` | [swap_mulVec_apply](../../../../../mathematics/Algebra/LinearAlgebra/Swap/Variant7ea1688730fdfaccc2c604047f6c6d569cd7ae349225469ed9b10573e550ff74.lean/declarations/swap-mulvec-apply--adb21346f22ca51fbb1bbbac.md) | 71 | `result-track:adb21346f22ca51fbb1bbbace8e1ecd0bbc9fef60aade1896f14b78deac8a0e5` |
| 9 | `lemma` | [vecMul_swap_apply](../../../../../mathematics/Algebra/LinearAlgebra/Swap/Variant7ea1688730fdfaccc2c604047f6c6d569cd7ae349225469ed9b10573e550ff74.lean/declarations/vecmul-swap-apply--4610d6eb3b8d9b4317d98b26.md) | 76 | `result-track:4610d6eb3b8d9b4317d98b265cce8c56eea98b3bcadff2bda9a552211d3859e8` |
| 10 | `lemma` | [swap_mul_apply_left](../../../../../mathematics/Algebra/LinearAlgebra/Swap/Variant7ea1688730fdfaccc2c604047f6c6d569cd7ae349225469ed9b10573e550ff74.lean/declarations/swap-mul-apply-left--74f602bd16b0743ce83d2d34.md) | 82 | `result-track:74f602bd16b0743ce83d2d34cb278cae0fda065c7d0d22211db4539b3ad77db0` |
| 11 | `lemma` | [swap_mul_apply_right](../../../../../mathematics/Algebra/LinearAlgebra/Swap/Variant7ea1688730fdfaccc2c604047f6c6d569cd7ae349225469ed9b10573e550ff74.lean/declarations/swap-mul-apply-right--578763baa9eed5d6a7b7521d.md) | 88 | `result-track:578763baa9eed5d6a7b7521d4ced7a13c83699edc2d20c4752b8a5a962f45832` |
| 12 | `lemma` | [swap_mul_of_ne](../../../../../mathematics/Algebra/LinearAlgebra/Swap/Variant7ea1688730fdfaccc2c604047f6c6d569cd7ae349225469ed9b10573e550ff74.lean/declarations/swap-mul-of-ne--4ee62de2299c58793dec7b3c.md) | 92 | `result-track:4ee62de2299c58793dec7b3cbb28163c5c2b9f3168fe8892ccddc4430809cf67` |
| 13 | `lemma` | [mul_swap_apply_left](../../../../../mathematics/Algebra/LinearAlgebra/Swap/Variant7ea1688730fdfaccc2c604047f6c6d569cd7ae349225469ed9b10573e550ff74.lean/declarations/mul-swap-apply-left--4b74f60be36fed0ea4f32bcc.md) | 98 | `result-track:4b74f60be36fed0ea4f32bcc209c60a2d19403ea315140efb4fd9adbb5d89041` |
| 14 | `lemma` | [mul_swap_apply_right](../../../../../mathematics/Algebra/LinearAlgebra/Swap/Variant7ea1688730fdfaccc2c604047f6c6d569cd7ae349225469ed9b10573e550ff74.lean/declarations/mul-swap-apply-right--28e9b0d26aa0b785898a6bfa.md) | 104 | `result-track:28e9b0d26aa0b785898a6bfa55c4201523c469f372a89f056b9250527065a7d3` |
| 15 | `lemma` | [mul_swap_of_ne](../../../../../mathematics/Algebra/LinearAlgebra/Swap/Variant7ea1688730fdfaccc2c604047f6c6d569cd7ae349225469ed9b10573e550ff74.lean/declarations/mul-swap-of-ne--e6af29a58c6dff10b2666dcc.md) | 108 | `result-track:e6af29a58c6dff10b2666dcc11294638de1090403ebfaabaf6a25b35405fad17` |
| 16 | `lemma` | [swap_mul_self](../../../../../mathematics/Algebra/LinearAlgebra/Swap/Variant7ea1688730fdfaccc2c604047f6c6d569cd7ae349225469ed9b10573e550ff74.lean/declarations/swap-mul-self--1ee69a160d672e242a22c542.md) | 113 | `result-track:1ee69a160d672e242a22c542fb48cb472fab01444ddf4e5cf9e879e3d3bbd79a` |
| 17 | `def` | [swap](../../../../../mathematics/Algebra/LinearAlgebra/Swap/Variant7ea1688730fdfaccc2c604047f6c6d569cd7ae349225469ed9b10573e550ff74.lean/declarations/swap--5372817be6bb9bbb9a487902.md) | 125 | `declaration-track:5372817be6bb9bbb9a4879025b5630a2dd24d5c91208b9942c4625d55cca27b2` |
| 18 | `lemma` | [map_swap](../../../../../mathematics/Algebra/LinearAlgebra/Swap/Variant7ea1688730fdfaccc2c604047f6c6d569cd7ae349225469ed9b10573e550ff74.lean/declarations/map-swap--f41b422fedfb4a6ba93183b4.md) | 134 | `result-track:f41b422fedfb4a6ba93183b4c4d4af91653d98d2174939bf84d6ca76f61c3971` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
