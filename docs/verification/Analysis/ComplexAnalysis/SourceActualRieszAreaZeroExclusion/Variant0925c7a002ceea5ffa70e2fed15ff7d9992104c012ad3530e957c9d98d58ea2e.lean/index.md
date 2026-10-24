# Verification target: GRWTSK.Analysis.ComplexAnalysis.SourceActualRieszAreaZeroExclusion.Variant0925c7a002ceea5ffa70e2fed15ff7d9992104c012ad3530e957c9d98d58ea2e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af2f30cde56cc6e5166ec508556400d16e7b7224",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant0925c7a002ceea5ffa70e2fed15ff7d9992104c012ad3530e957c9d98d58ea2e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant0925c7a002ceea5ffa70e2fed15ff7d9992104c012ad3530e957c9d98d58ea2e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant0925c7a002ceea5ffa70e2fed15ff7d9992104c012ad3530e957c9d98d58ea2e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af2f30cde56cc6e5166ec508556400d16e7b7224`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant0925c7a002ceea5ffa70e2fed15ff7d9992104c012ad3530e957c9d98d58ea2e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant0925c7a002ceea5ffa70e2fed15ff7d9992104c012ad3530e957c9d98d58ea2e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualRieszQuadraticHolomorphy` — import line 6; external provider; requires a separately pinned dependency.
- `SourceActualRieszZeroPole` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Uniqueness` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Convex` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [extensionNumerator](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant0925c7a002ceea5ffa70e2fed15ff7d9992104c012ad3530e957c9d98d58ea2e.lean/declarations/extensionnumerator--9b5826695db78bdfaf8ea144.md) | 31 | `declaration-track:9b5826695db78bdfaf8ea144de4798cec456a382d6a1516a88b31b2db3173afe` |
| 2 | `theorem` | [poleCleared_analyticAt](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant0925c7a002ceea5ffa70e2fed15ff7d9992104c012ad3530e957c9d98d58ea2e.lean/declarations/polecleared-analyticat--cd444c9389db4d0276c5d62f.md) | 36 | `result-track:cd444c9389db4d0276c5d62ff8936756716d3cb3f9a4fa25a0ed1aa9b322c55c` |
| 3 | `theorem` | [poleCleared_deriv](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant0925c7a002ceea5ffa70e2fed15ff7d9992104c012ad3530e957c9d98d58ea2e.lean/declarations/polecleared-deriv--29e8fdd5517f4d0298e0c881.md) | 45 | `result-track:29e8fdd5517f4d0298e0c881cc573372b62dfd729b8aa0223e75bde1e61410d4` |
| 4 | `theorem` | [extension_initial](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant0925c7a002ceea5ffa70e2fed15ff7d9992104c012ad3530e957c9d98d58ea2e.lean/declarations/extension-initial--41d2297fb80d136a060ca3ed.md) | 55 | `result-track:41d2297fb80d136a060ca3ed1ece6fab566d64c6f2c75b37bb9f13e8ee6f5704` |
| 5 | `theorem` | [extension_analytic](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant0925c7a002ceea5ffa70e2fed15ff7d9992104c012ad3530e957c9d98d58ea2e.lean/declarations/extension-analytic--a5b7e652c69ae2da0727611f.md) | 74 | `result-track:a5b7e652c69ae2da0727611f3e8c3b0b9ca02cea24d4c4c4c610b2a2752db289` |
| 6 | `theorem` | [actualFixedCenteredRieszLaplace_poleCleared_identity](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant0925c7a002ceea5ffa70e2fed15ff7d9992104c012ad3530e957c9d98d58ea2e.lean/declarations/actualfixedcenteredrieszlaplace-polecleared-identity--6f60f8ed28c8914feb63811f.md) | 86 | `result-track:6f60f8ed28c8914feb63811fb30a35332c0321a04a3efe4b422e00a7af384917` |
| 7 | `theorem` | [actualRiesz_quadratic_area_excludes_actual_right_zero](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant0925c7a002ceea5ffa70e2fed15ff7d9992104c012ad3530e957c9d98d58ea2e.lean/declarations/actualriesz-quadratic-area-excludes-actual-right-zero--28a69caff4fce0b91a40b151.md) | 115 | `result-track:28a69caff4fce0b91a40b151c834f66532bff07c6c1a714c9567d35ad54845fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
