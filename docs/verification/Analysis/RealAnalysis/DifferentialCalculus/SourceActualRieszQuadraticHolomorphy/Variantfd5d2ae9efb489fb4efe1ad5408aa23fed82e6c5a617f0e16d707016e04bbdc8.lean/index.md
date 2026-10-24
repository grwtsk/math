# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceActualRieszQuadraticHolomorphy.Variantfd5d2ae9efb489fb4efe1ad5408aa23fed82e6c5a617f0e16d707016e04bbdc8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4dc0ba7055dcc977414522c836caee5f7e6afd27",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variantfd5d2ae9efb489fb4efe1ad5408aa23fed82e6c5a617f0e16d707016e04bbdc8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variantfd5d2ae9efb489fb4efe1ad5408aa23fed82e6c5a617f0e16d707016e04bbdc8.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variantfd5d2ae9efb489fb4efe1ad5408aa23fed82e6c5a617f0e16d707016e04bbdc8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4dc0ba7055dcc977414522c836caee5f7e6afd27`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variantfd5d2ae9efb489fb4efe1ad5408aa23fed82e6c5a617f0e16d707016e04bbdc8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variantfd5d2ae9efb489fb4efe1ad5408aa23fed82e6c5a617f0e16d707016e04bbdc8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualRieszQuadraticLaplace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [profile](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variantfd5d2ae9efb489fb4efe1ad5408aa23fed82e6c5a617f0e16d707016e04bbdc8.lean/declarations/profile--0c2e56bf3b0ca0ceb05bccd1.md) | 30 | `declaration-track:0c2e56bf3b0ca0ceb05bccd1e0afe35066629682562adb9669fdcec710e4a147` |
| 2 | `theorem` | [time_exp_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variantfd5d2ae9efb489fb4efe1ad5408aa23fed82e6c5a617f0e16d707016e04bbdc8.lean/declarations/time-exp-bound--e20a4fccebebdd180cfa82ee.md) | 34 | `result-track:e20a4fccebebdd180cfa82ee8211d46781beeadabfc1df30e82124113313ee8f` |
| 3 | `theorem` | [derivative_norm_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variantfd5d2ae9efb489fb4efe1ad5408aa23fed82e6c5a617f0e16d707016e04bbdc8.lean/declarations/derivative-norm-bound--8db18ea655a92097c284b07a.md) | 41 | `result-track:8db18ea655a92097c284b07a95fbb0e9f7dceb26b0014334c14fa44098274f8b` |
| 4 | `theorem` | [kernel_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variantfd5d2ae9efb489fb4efe1ad5408aa23fed82e6c5a617f0e16d707016e04bbdc8.lean/declarations/kernel-hasderivat--4152f9b2bc382affa41b0598.md) | 64 | `result-track:4152f9b2bc382affa41b059874783bba583dec36d3e8ac6382fe3e5b48731af2` |
| 5 | `theorem` | [actualFixedCenteredRieszLaplace_hasDerivAt_of_quadratic_area](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variantfd5d2ae9efb489fb4efe1ad5408aa23fed82e6c5a617f0e16d707016e04bbdc8.lean/declarations/actualfixedcenteredrieszlaplace-hasderivat-of-quadratic-area--386afe0d841661d5a0ed7c48.md) | 74 | `result-track:386afe0d841661d5a0ed7c4817801c0ee2dc523cc733a391b2816cebeb844e21` |
| 6 | `theorem` | [actualFixedCenteredRieszLaplace_analyticOnNhd_of_quadratic_area](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variantfd5d2ae9efb489fb4efe1ad5408aa23fed82e6c5a617f0e16d707016e04bbdc8.lean/declarations/actualfixedcenteredrieszlaplace-analyticonnhd-of-quadratic-area--93702c4418079949eb404daa.md) | 133 | `result-track:93702c4418079949eb404daae51f144298dcf827ed93293fbe579cb76143650b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
