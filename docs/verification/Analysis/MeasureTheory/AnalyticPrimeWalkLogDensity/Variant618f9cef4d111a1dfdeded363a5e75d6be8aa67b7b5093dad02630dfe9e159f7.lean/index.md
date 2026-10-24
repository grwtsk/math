# Verification target: GRWTSK.Analysis.MeasureTheory.AnalyticPrimeWalkLogDensity.Variant618f9cef4d111a1dfdeded363a5e75d6be8aa67b7b5093dad02630dfe9e159f7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b1c123bff2d7859c4ef6aef166df2bc28c7c475",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant618f9cef4d111a1dfdeded363a5e75d6be8aa67b7b5093dad02630dfe9e159f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant618f9cef4d111a1dfdeded363a5e75d6be8aa67b7b5093dad02630dfe9e159f7.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant618f9cef4d111a1dfdeded363a5e75d6be8aa67b7b5093dad02630dfe9e159f7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b1c123bff2d7859c4ef6aef166df2bc28c7c475`.

Source path: `GRWTSK/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant618f9cef4d111a1dfdeded363a5e75d6be8aa67b7b5093dad02630dfe9e159f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant618f9cef4d111a1dfdeded363a5e75d6be8aa67b7b5093dad02630dfe9e159f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [harmonicWeight](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant618f9cef4d111a1dfdeded363a5e75d6be8aa67b7b5093dad02630dfe9e159f7.lean/declarations/harmonicweight--8008bd9da13cbe3358bf20d9.md) | 49 | `declaration-track:8008bd9da13cbe3358bf20d972c3a3ed52339ea7677fb0853279e72369ec54cd` |
| 2 | `def` | [harmonicNormalizer](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant618f9cef4d111a1dfdeded363a5e75d6be8aa67b7b5093dad02630dfe9e159f7.lean/declarations/harmonicnormalizer--7aadfc8a3318a162762f2723.md) | 54 | `declaration-track:7aadfc8a3318a162762f272351c7760a896d798ad92b2e1ca2d97a0dbae068af` |
| 3 | `def` | [harmonicMass](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant618f9cef4d111a1dfdeded363a5e75d6be8aa67b7b5093dad02630dfe9e159f7.lean/declarations/harmonicmass--dab50c633179e48736258cfb.md) | 59 | `declaration-track:dab50c633179e48736258cfb53faf31057114821de26c9fe9eb8113343ebd9ca` |
| 4 | `def` | [harmonicDensityAt](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant618f9cef4d111a1dfdeded363a5e75d6be8aa67b7b5093dad02630dfe9e159f7.lean/declarations/harmonicdensityat--57c46ccab96861eab241ffca.md) | 66 | `declaration-track:57c46ccab96861eab241ffca379a93557238722dc0c609871497a592fc9f0be2` |
| 5 | `def` | [HasHarmonicDensity](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant618f9cef4d111a1dfdeded363a5e75d6be8aa67b7b5093dad02630dfe9e159f7.lean/declarations/hasharmonicdensity--b5b90c23982186fa0e3a5a2a.md) | 72 | `declaration-track:b5b90c23982186fa0e3a5a2af905bedee6d9129a2990b4d63f8eb04765fa7882` |
| 6 | `def` | [HasHarmonicNegativeBias](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant618f9cef4d111a1dfdeded363a5e75d6be8aa67b7b5093dad02630dfe9e159f7.lean/declarations/hasharmonicnegativebias--c027d2264a7ca697fbd2f0ac.md) | 78 | `declaration-track:c027d2264a7ca697fbd2f0ac8e522d9e57e7d07be7f1b7676eac8a741cdb296a` |
| 7 | `def` | [harmonicMeasure](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant618f9cef4d111a1dfdeded363a5e75d6be8aa67b7b5093dad02630dfe9e159f7.lean/declarations/harmonicmeasure--4394b166c616ce8ff556fdf4.md) | 86 | `declaration-track:4394b166c616ce8ff556fdf499651d62875456716380564631665da57cef36d2` |
| 8 | `theorem` | [harmonicWeight_nonneg](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant618f9cef4d111a1dfdeded363a5e75d6be8aa67b7b5093dad02630dfe9e159f7.lean/declarations/harmonicweight-nonneg--53e78ad521075d82d1428fb7.md) | 92 | `result-track:53e78ad521075d82d1428fb72d4787739461033f39898537f51a7eb456a91ad4` |
| 9 | `theorem` | [harmonicMeasure_singleton](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant618f9cef4d111a1dfdeded363a5e75d6be8aa67b7b5093dad02630dfe9e159f7.lean/declarations/harmonicmeasure-singleton--3dc69985a05e1f56c9270412.md) | 97 | `result-track:3dc69985a05e1f56c9270412be958e28108f0dbdbe9fafb37cd8f382f6cd7dfd` |
| 10 | `theorem` | [harmonicMeasure_finset](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant618f9cef4d111a1dfdeded363a5e75d6be8aa67b7b5093dad02630dfe9e159f7.lean/declarations/harmonicmeasure-finset--59d4f945f93e91aa48cd7c16.md) | 104 | `result-track:59d4f945f93e91aa48cd7c164a44e9bc397508456f6d1d9798df7101b19a453a` |
| 11 | `def` | [harmonicSampleFinset](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant618f9cef4d111a1dfdeded363a5e75d6be8aa67b7b5093dad02630dfe9e159f7.lean/declarations/harmonicsamplefinset--c37aa8e867d01fb28e15b96b.md) | 126 | `declaration-track:c37aa8e867d01fb28e15b96b94d44a0d319ce83a0cf82ca70e48ec09d87b2c94` |
| 12 | `theorem` | [harmonicMeasure_filter_Icc](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant618f9cef4d111a1dfdeded363a5e75d6be8aa67b7b5093dad02630dfe9e159f7.lean/declarations/harmonicmeasure-filter-icc--0b2a6facef76f11a15360104.md) | 133 | `result-track:0b2a6facef76f11a153601042727640bcb3d72add097a9a999f7f2b167eaacc2` |
| 13 | `def` | [negativeObservableBool](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant618f9cef4d111a1dfdeded363a5e75d6be8aa67b7b5093dad02630dfe9e159f7.lean/declarations/negativeobservablebool--b74821de0f83673d170f9261.md) | 157 | `declaration-track:b74821de0f83673d170f92616dd4e7bcb1104548a893c717cb15fec4c24fa9af` |
| 14 | `theorem` | [negativeObservableBool_eq_true_iff](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant618f9cef4d111a1dfdeded363a5e75d6be8aa67b7b5093dad02630dfe9e159f7.lean/declarations/negativeobservablebool-eq-true-iff--f327c66a7c88990d3e08e1db.md) | 163 | `result-track:f327c66a7c88990d3e08e1db382124e59e86f42f1ce8e6ed8cbd6920f393e6ef` |
| 15 | `def` | [negativeObservableIndicator](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant618f9cef4d111a1dfdeded363a5e75d6be8aa67b7b5093dad02630dfe9e159f7.lean/declarations/negativeobservableindicator--63cf81ed8c139c37df667fef.md) | 171 | `declaration-track:63cf81ed8c139c37df667fef39f43cc5a3286d89f4c8fcd8850b661de3daede5` |
| 16 | `def` | [negativeObservableMass](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant618f9cef4d111a1dfdeded363a5e75d6be8aa67b7b5093dad02630dfe9e159f7.lean/declarations/negativeobservablemass--08037bbde541f8cc1aa62c9f.md) | 177 | `declaration-track:08037bbde541f8cc1aa62c9f98669df13a4bbaa042b8e6a4817af9f62ef0a8f4` |
| 17 | `theorem` | [harmonicMeasure_negativeObservableSample](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant618f9cef4d111a1dfdeded363a5e75d6be8aa67b7b5093dad02630dfe9e159f7.lean/declarations/harmonicmeasure-negativeobservablesample--cafddcd49c3e3cbcaa1f31d9.md) | 184 | `result-track:cafddcd49c3e3cbcaa1f31d9e94ca7b0a2a09680ec8ba86f7720ed642912cfdc` |
| 18 | `def` | [negativeObservableDensityAt](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant618f9cef4d111a1dfdeded363a5e75d6be8aa67b7b5093dad02630dfe9e159f7.lean/declarations/negativeobservabledensityat--0a6d13787b97338a664f2f74.md) | 193 | `declaration-track:0a6d13787b97338a664f2f745ac133a57c58bd1b4d34754df3e985a40221dd2b` |
| 19 | `def` | [HasNativeNegativeObservableBias](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant618f9cef4d111a1dfdeded363a5e75d6be8aa67b7b5093dad02630dfe9e159f7.lean/declarations/hasnativenegativeobservablebias--95e75491ef4dfe35176c1fd5.md) | 201 | `declaration-track:95e75491ef4dfe35176c1fd55968e593d2ca81d9c22f08b4958e4d147b39547b` |
| 20 | `theorem` | [negativeObservableMass_eq_indicator_sum](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant618f9cef4d111a1dfdeded363a5e75d6be8aa67b7b5093dad02630dfe9e159f7.lean/declarations/negativeobservablemass-eq-indicator-sum--1441d0a36eb8dc5a1db39141.md) | 207 | `result-track:1441d0a36eb8dc5a1db39141228ef5c4e3adf839af1738eedbac2cb905d17406` |
| 21 | `def` | [nativeLogDensityFunctional](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant618f9cef4d111a1dfdeded363a5e75d6be8aa67b7b5093dad02630dfe9e159f7.lean/declarations/nativelogdensityfunctional--9369c6d39fbbc60e1a91a136.md) | 227 | `declaration-track:9369c6d39fbbc60e1a91a1365d46b00b316b06afd03f8cdc4d4653cd7fd3568b` |
| 22 | `theorem` | [nativeLogDensityFunctional_eq_some_iff](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant618f9cef4d111a1dfdeded363a5e75d6be8aa67b7b5093dad02630dfe9e159f7.lean/declarations/nativelogdensityfunctional-eq-some-iff--3630d6d12f098b28ea181ac7.md) | 238 | `result-track:3630d6d12f098b28ea181ac714dec6c5acd35634618ac8dd8db57c2571dcef2f` |
| 23 | `theorem` | [abstractNegativeBias_native_iff](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant618f9cef4d111a1dfdeded363a5e75d6be8aa67b7b5093dad02630dfe9e159f7.lean/declarations/abstractnegativebias-native-iff--4392306e58d653cc1ba57262.md) | 264 | `result-track:4392306e58d653cc1ba5726251cc51328cd0c08430a959ebd4ae1d3645f6bda6` |
| 24 | `theorem` | [abstractNegativeObservableBias_native_iff](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant618f9cef4d111a1dfdeded363a5e75d6be8aa67b7b5093dad02630dfe9e159f7.lean/declarations/abstractnegativeobservablebias-native-iff--404a8b43d08c645d4509de17.md) | 281 | `result-track:404a8b43d08c645d4509de178f6f13e973428dcc03fdad9ee0e1fecae1d38b07` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
