# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LogPowerTailAttempt04.Variantd763bc70eb9ea2e4aa093a22a7ca9d626d79613951ca4768a5e35c57bb0bb795

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58a0621214f7122b9acf3f957a828e0eb879b2ad",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogPowerTailAttempt04/Variantd763bc70eb9ea2e4aa093a22a7ca9d626d79613951ca4768a5e35c57bb0bb795.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt04/Variantd763bc70eb9ea2e4aa093a22a7ca9d626d79613951ca4768a5e35c57bb0bb795.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt04/Variantd763bc70eb9ea2e4aa093a22a7ca9d626d79613951ca4768a5e35c57bb0bb795.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58a0621214f7122b9acf3f957a828e0eb879b2ad`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogPowerTailAttempt04/Variantd763bc70eb9ea2e4aa093a22a7ca9d626d79613951ca4768a5e35c57bb0bb795.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogPowerTailAttempt04/Variantd763bc70eb9ea2e4aa093a22a7ca9d626d79613951ca4768a5e35c57bb0bb795.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SumIntegralComparisons` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logPower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt04/Variantd763bc70eb9ea2e4aa093a22a7ca9d626d79613951ca4768a5e35c57bb0bb795.lean/declarations/logpower--827845264dbe5d278e589445.md) | 17 | `declaration-track:827845264dbe5d278e5894457ae0398536349339096ea378621ea1b384e18ffb` |
| 2 | `def` | [logPowerPrimitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt04/Variantd763bc70eb9ea2e4aa093a22a7ca9d626d79613951ca4768a5e35c57bb0bb795.lean/declarations/logpowerprimitive--9dcbfd3f09b799f486d743ba.md) | 18 | `declaration-track:9dcbfd3f09b799f486d743ba9f7e445317ea8d6812eb895d0829940b81006b07` |
| 3 | `theorem` | [logPower_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt04/Variantd763bc70eb9ea2e4aa093a22a7ca9d626d79613951ca4768a5e35c57bb0bb795.lean/declarations/logpower-hasderivat--34294374a4beb13d8ac087ac.md) | 20 | `result-track:34294374a4beb13d8ac087ac78fe5c5578bbb68e696e9ee3acb466919b6c843f` |
| 4 | `theorem` | [primitive_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt04/Variantd763bc70eb9ea2e4aa093a22a7ca9d626d79613951ca4768a5e35c57bb0bb795.lean/declarations/primitive-hasderivat--bd32096a71442c27dc575c80.md) | 31 | `result-track:bd32096a71442c27dc575c8048ef8b9db34cc62e68cc93f9234a467874474438` |
| 5 | `theorem` | [logPower_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt04/Variantd763bc70eb9ea2e4aa093a22a7ca9d626d79613951ca4768a5e35c57bb0bb795.lean/declarations/logpower-nonneg--a08c4ebccd2458e319251287.md) | 45 | `result-track:a08c4ebccd2458e3192512874e418ae41a5597d52831eedefb4db493c6a47c32` |
| 6 | `theorem` | [logPower_antitone](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt04/Variantd763bc70eb9ea2e4aa093a22a7ca9d626d79613951ca4768a5e35c57bb0bb795.lean/declarations/logpower-antitone--5981aeae98b13819fb1df0c2.md) | 49 | `result-track:5981aeae98b13819fb1df0c25b71c63fee6cbe8086a678827a9c234e39caf263` |
| 7 | `theorem` | [primitive_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt04/Variantd763bc70eb9ea2e4aa093a22a7ca9d626d79613951ca4768a5e35c57bb0bb795.lean/declarations/primitive-tendsto-zero--e3c6c6dcc6b269e466f13001.md) | 63 | `result-track:e3c6c6dcc6b269e466f130015009906b4c170db938e4430ad66faa53306bf58e` |
| 8 | `theorem` | [logPower_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt04/Variantd763bc70eb9ea2e4aa093a22a7ca9d626d79613951ca4768a5e35c57bb0bb795.lean/declarations/logpower-integrable--b1c7de8fd19de692766c3520.md) | 80 | `result-track:b1c7de8fd19de692766c352008f45152ca8f4fda29c914e0be5723a99c4c4a97` |
| 9 | `theorem` | [logPower_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt04/Variantd763bc70eb9ea2e4aa093a22a7ca9d626d79613951ca4768a5e35c57bb0bb795.lean/declarations/logpower-integral--6785e1cc7872355ed3c2301c.md) | 85 | `result-track:6785e1cc7872355ed3c2301cf6f2c34616199064ccc12d50bea52e75b434f18f` |
| 10 | `theorem` | [logPower_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt04/Variantd763bc70eb9ea2e4aa093a22a7ca9d626d79613951ca4768a5e35c57bb0bb795.lean/declarations/logpower-summable--fb6ead8fd5554b806707b0db.md) | 95 | `result-track:fb6ead8fd5554b806707b0db6af6f5083097c62997394e85688f056562cefa6c` |
| 11 | `theorem` | [tail_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt04/Variantd763bc70eb9ea2e4aa093a22a7ca9d626d79613951ca4768a5e35c57bb0bb795.lean/declarations/tail-summable--f5d18173061c703d26db05a1.md) | 99 | `result-track:f5d18173061c703d26db05a1096c946f1a139e557548b6082b6ee61bfecb402c` |
| 12 | `theorem` | [tail_le_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt04/Variantd763bc70eb9ea2e4aa093a22a7ca9d626d79613951ca4768a5e35c57bb0bb795.lean/declarations/tail-le-integral--714a785bc508c38729720a3e.md) | 103 | `result-track:714a785bc508c38729720a3e2b2d9a4b2b6ac4bc5005f900422907568fd5c080` |
| 13 | `theorem` | [tail_le_rational](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt04/Variantd763bc70eb9ea2e4aa093a22a7ca9d626d79613951ca4768a5e35c57bb0bb795.lean/declarations/tail-le-rational--0756bb14dd3525f74e33e56e.md) | 115 | `result-track:0756bb14dd3525f74e33e56e45db340ec54282252784bb9b3fc2bdc06da821a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
