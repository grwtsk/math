# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LogPowerTailAttempt01.Variantfb6065eb31988bfc19d13f62985aa85ceae9608755ac7a6a3d2a67439f9380c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a92b1f41f401b857a9e38b3c6b24a984282d78a7",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogPowerTailAttempt01/Variantfb6065eb31988bfc19d13f62985aa85ceae9608755ac7a6a3d2a67439f9380c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt01/Variantfb6065eb31988bfc19d13f62985aa85ceae9608755ac7a6a3d2a67439f9380c7.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt01/Variantfb6065eb31988bfc19d13f62985aa85ceae9608755ac7a6a3d2a67439f9380c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a92b1f41f401b857a9e38b3c6b24a984282d78a7`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogPowerTailAttempt01/Variantfb6065eb31988bfc19d13f62985aa85ceae9608755ac7a6a3d2a67439f9380c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogPowerTailAttempt01/Variantfb6065eb31988bfc19d13f62985aa85ceae9608755ac7a6a3d2a67439f9380c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SumIntegralComparisons` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logPower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt01/Variantfb6065eb31988bfc19d13f62985aa85ceae9608755ac7a6a3d2a67439f9380c7.lean/declarations/logpower--7b3cfe094066bfcad6e77b0c.md) | 25 | `declaration-track:7b3cfe094066bfcad6e77b0c2832acd690e2973271a747f87227b0727f04f1d4` |
| 2 | `def` | [logPowerPrimitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt01/Variantfb6065eb31988bfc19d13f62985aa85ceae9608755ac7a6a3d2a67439f9380c7.lean/declarations/logpowerprimitive--5689ac88825d0e4095996215.md) | 26 | `declaration-track:5689ac88825d0e409599621547ff7b16de9498ab897fbe56eaa5343047ca475d` |
| 3 | `theorem` | [logPower_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt01/Variantfb6065eb31988bfc19d13f62985aa85ceae9608755ac7a6a3d2a67439f9380c7.lean/declarations/logpower-hasderivat--56cdce6d7ff1cacd9beb5daf.md) | 28 | `result-track:56cdce6d7ff1cacd9beb5daf157c398bbf9706730c0e70eb66629c6314f5dfab` |
| 4 | `theorem` | [primitive_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt01/Variantfb6065eb31988bfc19d13f62985aa85ceae9608755ac7a6a3d2a67439f9380c7.lean/declarations/primitive-hasderivat--2246ccedf407fccc7ae981cf.md) | 41 | `result-track:2246ccedf407fccc7ae981cf3a1f7bb9c670a76557a52908a23bbfb0218f8746` |
| 5 | `theorem` | [logPower_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt01/Variantfb6065eb31988bfc19d13f62985aa85ceae9608755ac7a6a3d2a67439f9380c7.lean/declarations/logpower-nonneg--65478860c8469fa696edd10f.md) | 55 | `result-track:65478860c8469fa696edd10f7af3385c241196214b1b2f5bfb717ce517111721` |
| 6 | `theorem` | [logPower_antitone](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt01/Variantfb6065eb31988bfc19d13f62985aa85ceae9608755ac7a6a3d2a67439f9380c7.lean/declarations/logpower-antitone--bb915e6a27127dc2a3d71c32.md) | 59 | `result-track:bb915e6a27127dc2a3d71c32ccbf6682b49aaf6b62bd08aaaaa6a09648164eeb` |
| 7 | `theorem` | [primitive_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt01/Variantfb6065eb31988bfc19d13f62985aa85ceae9608755ac7a6a3d2a67439f9380c7.lean/declarations/primitive-tendsto-zero--3175784b4e2f528cb2f63291.md) | 72 | `result-track:3175784b4e2f528cb2f632913b45bd0f84be0cb348426a0b899deb90537597b6` |
| 8 | `theorem` | [logPower_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt01/Variantfb6065eb31988bfc19d13f62985aa85ceae9608755ac7a6a3d2a67439f9380c7.lean/declarations/logpower-integrable--176e161d1b7a0faab2cae1d0.md) | 86 | `result-track:176e161d1b7a0faab2cae1d0066b474b14cf1e3d04bb99ec14c17b905bd94af3` |
| 9 | `theorem` | [logPower_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt01/Variantfb6065eb31988bfc19d13f62985aa85ceae9608755ac7a6a3d2a67439f9380c7.lean/declarations/logpower-integral--ecc87a3fc560b02dacab794c.md) | 91 | `result-track:ecc87a3fc560b02dacab794c126e2062e089a9d5cbd0c8d854242fb3dc3ee45a` |
| 10 | `theorem` | [logPower_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt01/Variantfb6065eb31988bfc19d13f62985aa85ceae9608755ac7a6a3d2a67439f9380c7.lean/declarations/logpower-summable--f93e0c80e5c7e47df5104e6e.md) | 100 | `result-track:f93e0c80e5c7e47df5104e6ef000e55e4fe0ee625c226f6ac547eb59677e9297` |
| 11 | `theorem` | [tail_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt01/Variantfb6065eb31988bfc19d13f62985aa85ceae9608755ac7a6a3d2a67439f9380c7.lean/declarations/tail-summable--dbe535eb242019c84a10eda2.md) | 104 | `result-track:dbe535eb242019c84a10eda2f94ddb7cad8fea681a89ce3bf8d097c2c50b5ca9` |
| 12 | `theorem` | [tail_le_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt01/Variantfb6065eb31988bfc19d13f62985aa85ceae9608755ac7a6a3d2a67439f9380c7.lean/declarations/tail-le-integral--26df0fa636bece21864107b3.md) | 108 | `result-track:26df0fa636bece21864107b3cc3014188c076931348a741f1587c1223cff79c7` |
| 13 | `theorem` | [tail_le_rational](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt01/Variantfb6065eb31988bfc19d13f62985aa85ceae9608755ac7a6a3d2a67439f9380c7.lean/declarations/tail-le-rational--178dd276d61032cff9bfb077.md) | 119 | `result-track:178dd276d61032cff9bfb077db6bcf838122ae34f55d17a695f7a1a0702e711b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
