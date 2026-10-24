# Verification target: GRWTSK.Algebra.LinearAlgebra.CausalContactSeparation.Variant3c4cce45822bdf97e29e61da73a21201fa2924fa0e4188a237cccfd32c4b43b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2d5c5c85f91756bf84d7167ba273afb7e6654b5",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CausalContactSeparation/Variant3c4cce45822bdf97e29e61da73a21201fa2924fa0e4188a237cccfd32c4b43b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/CausalContactSeparation/Variant3c4cce45822bdf97e29e61da73a21201fa2924fa0e4188a237cccfd32c4b43b1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/CausalContactSeparation/Variant3c4cce45822bdf97e29e61da73a21201fa2924fa0e4188a237cccfd32c4b43b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2d5c5c85f91756bf84d7167ba273afb7e6654b5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CausalContactSeparation/Variant3c4cce45822bdf97e29e61da73a21201fa2924fa0e4188a237cccfd32c4b43b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CausalContactSeparation/Variant3c4cce45822bdf97e29e61da73a21201fa2924fa0e4188a237cccfd32c4b43b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.LinearAlgebra.BilinearAndQuadraticForms.ZeroCoordinateObstruction`](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/ZeroCoordinateObstruction.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.CausalResponseGram`](../../../../../mathematics/Analysis/InnerProductSpace/CausalResponseGram.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.DilationResponseSeparation`](../../../../../mathematics/Analysis/InnerProductSpace/DilationResponseSeparation.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.LinearAlgebra.Pi` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [windowResponse](../../../../../mathematics/Algebra/LinearAlgebra/CausalContactSeparation/Variant3c4cce45822bdf97e29e61da73a21201fa2924fa0e4188a237cccfd32c4b43b1.lean/declarations/windowresponse--54735fa6082b146dd3303086.md) | 44 | `declaration-track:54735fa6082b146dd3303086f35a8a91fc631d6fd2b4f802fcf1fe4db9d2e4fd` |
| 2 | `theorem` | [response_zero_before_or_at_contact](../../../../../mathematics/Algebra/LinearAlgebra/CausalContactSeparation/Variant3c4cce45822bdf97e29e61da73a21201fa2924fa0e4188a237cccfd32c4b43b1.lean/declarations/response-zero-before-or-at-contact--d892ab2fe68511aa5d1731e0.md) | 47 | `result-track:d892ab2fe68511aa5d1731e0a50b8b8a47ffa9afb4dd6520879b8bc21cde8fdd` |
| 3 | `theorem` | [window_response_eq_zero_of_before_contact](../../../../../mathematics/Algebra/LinearAlgebra/CausalContactSeparation/Variant3c4cce45822bdf97e29e61da73a21201fa2924fa0e4188a237cccfd32c4b43b1.lean/declarations/window-response-eq-zero-of-before-contact--2e1dffad40fd064aef45a31f.md) | 57 | `result-track:2e1dffad40fd064aef45a31ff5786def7d4de5905aa0fdc74e06ad06cd8d7e94` |
| 4 | `theorem` | [touching_window_response_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/CausalContactSeparation/Variant3c4cce45822bdf97e29e61da73a21201fa2924fa0e4188a237cccfd32c4b43b1.lean/declarations/touching-window-response-eq-zero--3c3e14db81476a2504d63faf.md) | 66 | `result-track:3c3e14db81476a2504d63faf1107ffe8566ce925fd36c79edd1768de5522c2bc` |
| 5 | `theorem` | [native_before_contact_row_zero](../../../../../mathematics/Algebra/LinearAlgebra/CausalContactSeparation/Variant3c4cce45822bdf97e29e61da73a21201fa2924fa0e4188a237cccfd32c4b43b1.lean/declarations/native-before-contact-row-zero--225438acdcf35d9c6d922b02.md) | 71 | `result-track:225438acdcf35d9c6d922b0256e5ed11adab41f511e4845006adc98bd0e50bf7` |
| 6 | `theorem` | [prescribed_source_vector_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/CausalContactSeparation/Variant3c4cce45822bdf97e29e61da73a21201fa2924fa0e4188a237cccfd32c4b43b1.lean/declarations/prescribed-source-vector-ne-zero--70ea75205c2f0de0148121c1.md) | 84 | `result-track:70ea75205c2f0de0148121c1eee6587ed000e564e632fb82b937c0b6f8951804` |
| 7 | `theorem` | [zero_preserving_contact_map_ne_source](../../../../../mathematics/Algebra/LinearAlgebra/CausalContactSeparation/Variant3c4cce45822bdf97e29e61da73a21201fa2924fa0e4188a237cccfd32c4b43b1.lean/declarations/zero-preserving-contact-map-ne-source--bcc9c1625f5b5608b5e73bc6.md) | 93 | `result-track:bcc9c1625f5b5608b5e73bc60bf6962c737cde96df70a5a36371643ce1d286d6` |
| 8 | `theorem` | [linear_contact_map_ne_source](../../../../../mathematics/Algebra/LinearAlgebra/CausalContactSeparation/Variant3c4cce45822bdf97e29e61da73a21201fa2924fa0e4188a237cccfd32c4b43b1.lean/declarations/linear-contact-map-ne-source--e8b780360d96b94034f6e8be.md) | 99 | `result-track:e8b780360d96b94034f6e8beeffafa21939ec61834f7441f590774c05926dd27` |
| 9 | `theorem` | [diagonal_scaled_native_ne_source](../../../../../mathematics/Algebra/LinearAlgebra/CausalContactSeparation/Variant3c4cce45822bdf97e29e61da73a21201fa2924fa0e4188a237cccfd32c4b43b1.lean/declarations/diagonal-scaled-native-ne-source--d8a61c6f7da04f7007133039.md) | 104 | `result-track:d8a61c6f7da04f7007133039b8d273161c3a948d15bc322cdd19475efb1f6a88` |
| 10 | `theorem` | [native_contact_no_source_quadratic_domination](../../../../../mathematics/Algebra/LinearAlgebra/CausalContactSeparation/Variant3c4cce45822bdf97e29e61da73a21201fa2924fa0e4188a237cccfd32c4b43b1.lean/declarations/native-contact-no-source-quadratic-domination--3e404513eca21193a795744a.md) | 114 | `result-track:3e404513eca21193a795744aaf5833b5f811200baa9f6b41e065af05e6fc9687` |
| 11 | `theorem` | [prescribed_horizon_restricted_obstructions](../../../../../mathematics/Algebra/LinearAlgebra/CausalContactSeparation/Variant3c4cce45822bdf97e29e61da73a21201fa2924fa0e4188a237cccfd32c4b43b1.lean/declarations/prescribed-horizon-restricted-obstructions--3b993f2b9d2a6bb6ba629bde.md) | 133 | `result-track:3b993f2b9d2a6bb6ba629bdeeeac00a7cf1f72a85cf05a19838858edb0e78662` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
