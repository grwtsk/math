# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.MobiusPrefixTiltStatements.Variant645393b4f010075a8a3681c0ea6a5c3fec7126ccb53efc76469e94356818ad41

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd3e221af587cfa6cf77fdecdce84e1cec31a0f9",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltStatements/Variant645393b4f010075a8a3681c0ea6a5c3fec7126ccb53efc76469e94356818ad41.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltStatements/Variant645393b4f010075a8a3681c0ea6a5c3fec7126ccb53efc76469e94356818ad41.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltStatements/Variant645393b4f010075a8a3681c0ea6a5c3fec7126ccb53efc76469e94356818ad41.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd3e221af587cfa6cf77fdecdce84e1cec31a0f9`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltStatements/Variant645393b4f010075a8a3681c0ea6a5c3fec7126ccb53efc76469e94356818ad41.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltStatements/Variant645393b4f010075a8a3681c0ea6a5c3fec7126ccb53efc76469e94356818ad41.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.AbelSummation` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FiniteMobiusController` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dirichletNumerator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltStatements/Variant645393b4f010075a8a3681c0ea6a5c3fec7126ccb53efc76469e94356818ad41.lean/declarations/dirichletnumerator--ebdd84833df1bd8cf51bf782.md) | 15 | `declaration-track:ebdd84833df1bd8cf51bf78284f64329c77e26737c1ccb6b235c545311c97e86` |
| 2 | `def` | [correctedNumerator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltStatements/Variant645393b4f010075a8a3681c0ea6a5c3fec7126ccb53efc76469e94356818ad41.lean/declarations/correctednumerator--cc1858948f5e422c76af781f.md) | 20 | `declaration-track:cc1858948f5e422c76af781f44d3701854925aafe00821deae9dadf9f499cee2` |
| 3 | `def` | [logNormalization](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltStatements/Variant645393b4f010075a8a3681c0ea6a5c3fec7126ccb53efc76469e94356818ad41.lean/declarations/lognormalization--04905b405f61750198401524.md) | 25 | `declaration-track:04905b405f6175019840152448d9959712a4357c2ce253a905ef1ae94d06a9d5` |
| 4 | `theorem` | [exponential_at_half](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltStatements/Variant645393b4f010075a8a3681c0ea6a5c3fec7126ccb53efc76469e94356818ad41.lean/declarations/exponential-at-half--1ff8bd83d615ec7924b27f1e.md) | 30 | `result-track:1ff8bd83d615ec7924b27f1ea34de656a520e8a917921c4f130816a6d5cb2828` |
| 5 | `theorem` | [dirichletNumerator_half](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltStatements/Variant645393b4f010075a8a3681c0ea6a5c3fec7126ccb53efc76469e94356818ad41.lean/declarations/dirichletnumerator-half--b05fed5509b21fc443af9a94.md) | 40 | `result-track:b05fed5509b21fc443af9a9418e14ecc976ef9c9dfabed5a0568e808562bfa86` |
| 6 | `theorem` | [correctedNumerator_half](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltStatements/Variant645393b4f010075a8a3681c0ea6a5c3fec7126ccb53efc76469e94356818ad41.lean/declarations/correctednumerator-half--1142ef40352238658f8229d0.md) | 51 | `result-track:1142ef40352238658f8229d0bdfef397e699103ee35d900c7f5a361ab91a8145` |
| 7 | `theorem` | [correctedNumerator_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltStatements/Variant645393b4f010075a8a3681c0ea6a5c3fec7126ccb53efc76469e94356818ad41.lean/declarations/correctednumerator-differentiable--2222c53f01e008754dd6825e.md) | 56 | `result-track:2222c53f01e008754dd6825e1471a336b1524d0714c6ef3b314200acb09985bd` |
| 8 | `def` | [reciprocalCoefficient](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltStatements/Variant645393b4f010075a8a3681c0ea6a5c3fec7126ccb53efc76469e94356818ad41.lean/declarations/reciprocalcoefficient--3b333555cdf378f3dff2dd07.md) | 70 | `declaration-track:3b333555cdf378f3dff2dd07ab2794a66d8b2d5b95c5d0c764f8a019a158ef6e` |
| 9 | `theorem` | [reciprocalCoefficient_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltStatements/Variant645393b4f010075a8a3681c0ea6a5c3fec7126ccb53efc76469e94356818ad41.lean/declarations/reciprocalcoefficient-zero--ac9597159a535e1ccac74738.md) | 73 | `result-track:ac9597159a535e1ccac74738dd06713f6b4d448a4531e160ad8540fc925aba56` |
| 10 | `theorem` | [reciprocal_prefix_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltStatements/Variant645393b4f010075a8a3681c0ea6a5c3fec7126ccb53efc76469e94356818ad41.lean/declarations/reciprocal-prefix-eq--bc5df2eda99be377d5801e4d.md) | 76 | `result-track:bc5df2eda99be377d5801e4db249187f20c570674a8f6fe6325bf3cf17e14f81` |
| 11 | `def` | [powerWeight](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltStatements/Variant645393b4f010075a8a3681c0ea6a5c3fec7126ccb53efc76469e94356818ad41.lean/declarations/powerweight--c398dfb634f862fb1466165b.md) | 93 | `declaration-track:c398dfb634f862fb1466165bdb44e0978a76cc4d92fbcca350242f423e6929c6` |
| 12 | `theorem` | [powerWeight_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltStatements/Variant645393b4f010075a8a3681c0ea6a5c3fec7126ccb53efc76469e94356818ad41.lean/declarations/powerweight-hasderivat--d92b95989dc8a879be21a4fc.md) | 96 | `result-track:d92b95989dc8a879be21a4fc627ecdfecec411d932b2967a16888923a1706c88` |
| 13 | `theorem` | [powerWeight_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltStatements/Variant645393b4f010075a8a3681c0ea6a5c3fec7126ccb53efc76469e94356818ad41.lean/declarations/powerweight-deriv--421e395ff99850cd67f5a36e.md) | 105 | `result-track:421e395ff99850cd67f5a36eb4487596615696cb6943e08376ca766e6a25b329` |
| 14 | `theorem` | [weight_deriv_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltStatements/Variant645393b4f010075a8a3681c0ea6a5c3fec7126ccb53efc76469e94356818ad41.lean/declarations/weight-deriv-integrable--d0e7d5d3b953611150703978.md) | 109 | `result-track:d0e7d5d3b953611150703978f0100923902b778e9133c07b11918f9291a33ce5` |
| 15 | `theorem` | [reciprocal_prefix_power_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltStatements/Variant645393b4f010075a8a3681c0ea6a5c3fec7126ccb53efc76469e94356818ad41.lean/declarations/reciprocal-prefix-power-integrable--cf42323e76817148398788c9.md) | 127 | `result-track:cf42323e76817148398788c9fceffb1107a86ff6cc21296b7460d66638c126b4` |
| 16 | `theorem` | [weighted_coefficient_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltStatements/Variant645393b4f010075a8a3681c0ea6a5c3fec7126ccb53efc76469e94356818ad41.lean/declarations/weighted-coefficient-eq--54fe7fc514d555c4332ffa9a.md) | 148 | `result-track:54fe7fc514d555c4332ffa9a282389b766c65f27a1ea0ebc2f2bd8d518af7912` |
| 17 | `theorem` | [correctedNumerator_eq_prefix_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltStatements/Variant645393b4f010075a8a3681c0ea6a5c3fec7126ccb53efc76469e94356818ad41.lean/declarations/correctednumerator-eq-prefix-integral--45984023949e5f253358dffb.md) | 170 | `result-track:45984023949e5f253358dffbde264124ef61b257557873b3adbd937e0b5c7fd9` |
| 18 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltStatements/Variant645393b4f010075a8a3681c0ea6a5c3fec7126ccb53efc76469e94356818ad41.lean/declarations/example--30aa8a3d9cd6a756af969080.md) | 220 | `declaration-track:30aa8a3d9cd6a756af969080c2993a6775f0272ce0a26762379635b5bd6b497f` |
| 19 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltStatements/Variant645393b4f010075a8a3681c0ea6a5c3fec7126ccb53efc76469e94356818ad41.lean/declarations/example--f799f8b6cb7f4353047d7c28.md) | 225 | `declaration-track:f799f8b6cb7f4353047d7c280601c422450dea22e86b186cd3091485a44e3bf4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
