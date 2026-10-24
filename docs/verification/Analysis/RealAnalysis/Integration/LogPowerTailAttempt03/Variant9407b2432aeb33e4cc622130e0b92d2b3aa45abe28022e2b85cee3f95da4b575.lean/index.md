# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LogPowerTailAttempt03.Variant9407b2432aeb33e4cc622130e0b92d2b3aa45abe28022e2b85cee3f95da4b575

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "277095cf155f69d6cb73e7b68b5cc89c03cdde9a",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogPowerTailAttempt03/Variant9407b2432aeb33e4cc622130e0b92d2b3aa45abe28022e2b85cee3f95da4b575.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt03/Variant9407b2432aeb33e4cc622130e0b92d2b3aa45abe28022e2b85cee3f95da4b575.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt03/Variant9407b2432aeb33e4cc622130e0b92d2b3aa45abe28022e2b85cee3f95da4b575.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `277095cf155f69d6cb73e7b68b5cc89c03cdde9a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogPowerTailAttempt03/Variant9407b2432aeb33e4cc622130e0b92d2b3aa45abe28022e2b85cee3f95da4b575.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogPowerTailAttempt03/Variant9407b2432aeb33e4cc622130e0b92d2b3aa45abe28022e2b85cee3f95da4b575.lean.json)

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
| 1 | `def` | [logPower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt03/Variant9407b2432aeb33e4cc622130e0b92d2b3aa45abe28022e2b85cee3f95da4b575.lean/declarations/logpower--962bbe3044d354b0d204b5bb.md) | 25 | `declaration-track:962bbe3044d354b0d204b5bbf0e9bfb38b2a97797c9ecc56d305729216d97e4d` |
| 2 | `def` | [logPowerPrimitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt03/Variant9407b2432aeb33e4cc622130e0b92d2b3aa45abe28022e2b85cee3f95da4b575.lean/declarations/logpowerprimitive--2274c2dfececad6df16e475c.md) | 26 | `declaration-track:2274c2dfececad6df16e475c33253ad6485e68c4977544b3d396bf9fee6ecfce` |
| 3 | `theorem` | [logPower_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt03/Variant9407b2432aeb33e4cc622130e0b92d2b3aa45abe28022e2b85cee3f95da4b575.lean/declarations/logpower-hasderivat--50ad7942481cfee8a8d8e4e7.md) | 28 | `result-track:50ad7942481cfee8a8d8e4e7702b3aeccb10025f90b600f70d5a2dea166234de` |
| 4 | `theorem` | [primitive_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt03/Variant9407b2432aeb33e4cc622130e0b92d2b3aa45abe28022e2b85cee3f95da4b575.lean/declarations/primitive-hasderivat--893684693e56bb4b6f7ad29c.md) | 39 | `result-track:893684693e56bb4b6f7ad29ce5d76331438f9f3c26affcda0ce089c93be38a70` |
| 5 | `theorem` | [logPower_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt03/Variant9407b2432aeb33e4cc622130e0b92d2b3aa45abe28022e2b85cee3f95da4b575.lean/declarations/logpower-nonneg--2a6498edf21be19343e374ac.md) | 53 | `result-track:2a6498edf21be19343e374acdd7c0eab8057263a0b70195f325dd32408542cf0` |
| 6 | `theorem` | [logPower_antitone](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt03/Variant9407b2432aeb33e4cc622130e0b92d2b3aa45abe28022e2b85cee3f95da4b575.lean/declarations/logpower-antitone--af919d1e2e370d6f3dad3f7d.md) | 57 | `result-track:af919d1e2e370d6f3dad3f7d54badaf66c5166bcd0df1d6b10ddba6a84574f7d` |
| 7 | `theorem` | [primitive_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt03/Variant9407b2432aeb33e4cc622130e0b92d2b3aa45abe28022e2b85cee3f95da4b575.lean/declarations/primitive-tendsto-zero--76be154da28a70529e0ca447.md) | 71 | `result-track:76be154da28a70529e0ca447212f7eecbea1ba7fc3e50402b81651e064a77d77` |
| 8 | `theorem` | [logPower_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt03/Variant9407b2432aeb33e4cc622130e0b92d2b3aa45abe28022e2b85cee3f95da4b575.lean/declarations/logpower-integrable--c2b8c8c72afbbd6cb58f98c3.md) | 85 | `result-track:c2b8c8c72afbbd6cb58f98c371fbe7b9b7360becbe180d70d7dafb43a7dff3c2` |
| 9 | `theorem` | [logPower_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt03/Variant9407b2432aeb33e4cc622130e0b92d2b3aa45abe28022e2b85cee3f95da4b575.lean/declarations/logpower-integral--f2f8f4873d37e73fbb933bd5.md) | 90 | `result-track:f2f8f4873d37e73fbb933bd5c6300c81ab341496c77eb5203c986a5d4dc01b8b` |
| 10 | `theorem` | [logPower_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt03/Variant9407b2432aeb33e4cc622130e0b92d2b3aa45abe28022e2b85cee3f95da4b575.lean/declarations/logpower-summable--bbd643c9fd286f9e09db0764.md) | 100 | `result-track:bbd643c9fd286f9e09db07648ba8add4382396f52879d926526e4c3968ac1257` |
| 11 | `theorem` | [tail_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt03/Variant9407b2432aeb33e4cc622130e0b92d2b3aa45abe28022e2b85cee3f95da4b575.lean/declarations/tail-summable--0b7e42ad3689eb4ba9d96cd4.md) | 104 | `result-track:0b7e42ad3689eb4ba9d96cd4abc6ef1115c662fb6c428526dd5eb1abda44b5c0` |
| 12 | `theorem` | [tail_le_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt03/Variant9407b2432aeb33e4cc622130e0b92d2b3aa45abe28022e2b85cee3f95da4b575.lean/declarations/tail-le-integral--ad05f3941457abd00db47860.md) | 108 | `result-track:ad05f3941457abd00db47860a369649976ba866e1ef519e4020a9df30a0f7e2d` |
| 13 | `theorem` | [tail_le_rational](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt03/Variant9407b2432aeb33e4cc622130e0b92d2b3aa45abe28022e2b85cee3f95da4b575.lean/declarations/tail-le-rational--b17c1490845db873ecf518f9.md) | 120 | `result-track:b17c1490845db873ecf518f9e64d6621007c9de0cb8c9dfeb9a6734489547bd5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
