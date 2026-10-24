# Verification target: GRWTSK.Analysis.MeasureTheory.AnalyticPrimeWalkLogDensity.Variant75aab7dbf36f8050b917cbeda1a6a3a2f4f4713ff8595692834e9322eabc5a23

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bfa2cbd98f30b3729886d0cc257e41fd29ffd4c0",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant75aab7dbf36f8050b917cbeda1a6a3a2f4f4713ff8595692834e9322eabc5a23.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant75aab7dbf36f8050b917cbeda1a6a3a2f4f4713ff8595692834e9322eabc5a23.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant75aab7dbf36f8050b917cbeda1a6a3a2f4f4713ff8595692834e9322eabc5a23.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bfa2cbd98f30b3729886d0cc257e41fd29ffd4c0`.

Source path: `GRWTSK/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant75aab7dbf36f8050b917cbeda1a6a3a2f4f4713ff8595692834e9322eabc5a23.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant75aab7dbf36f8050b917cbeda1a6a3a2f4f4713ff8595692834e9322eabc5a23.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [harmonicWeight](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant75aab7dbf36f8050b917cbeda1a6a3a2f4f4713ff8595692834e9322eabc5a23.lean/declarations/harmonicweight--86f4e2a83a728ebc8961fc55.md) | 41 | `declaration-track:86f4e2a83a728ebc8961fc55f9dc7cfe93fba97f0d84634fc97be358f775c349` |
| 2 | `def` | [harmonicNormalizer](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant75aab7dbf36f8050b917cbeda1a6a3a2f4f4713ff8595692834e9322eabc5a23.lean/declarations/harmonicnormalizer--3db4954168fbacb637ec772d.md) | 46 | `declaration-track:3db4954168fbacb637ec772d879d3641d7d0bd518ad261a07130c25f7a5c6f41` |
| 3 | `def` | [harmonicMass](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant75aab7dbf36f8050b917cbeda1a6a3a2f4f4713ff8595692834e9322eabc5a23.lean/declarations/harmonicmass--6cab4d198d86fa5f4d15f27c.md) | 51 | `declaration-track:6cab4d198d86fa5f4d15f27c79f559adfd29a216900adf5baf10128e3c47b32e` |
| 4 | `def` | [harmonicDensityAt](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant75aab7dbf36f8050b917cbeda1a6a3a2f4f4713ff8595692834e9322eabc5a23.lean/declarations/harmonicdensityat--33a667c8a931d21d2d027113.md) | 58 | `declaration-track:33a667c8a931d21d2d027113275845be8f7bdb7ebacc2955105b734afe8ce7de` |
| 5 | `def` | [HasHarmonicDensity](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant75aab7dbf36f8050b917cbeda1a6a3a2f4f4713ff8595692834e9322eabc5a23.lean/declarations/hasharmonicdensity--4ba1e84ee047fe9aa87f57e8.md) | 64 | `declaration-track:4ba1e84ee047fe9aa87f57e81b4e46f3acdd52274b9f38ad1ddcbbf0f7c1b624` |
| 6 | `def` | [HasHarmonicNegativeBias](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant75aab7dbf36f8050b917cbeda1a6a3a2f4f4713ff8595692834e9322eabc5a23.lean/declarations/hasharmonicnegativebias--4cc916bfde650f2b920b6608.md) | 70 | `declaration-track:4cc916bfde650f2b920b660838ab039de67ae5c14b7b8b2d0a61d7b490a573b5` |
| 7 | `def` | [harmonicMeasure](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant75aab7dbf36f8050b917cbeda1a6a3a2f4f4713ff8595692834e9322eabc5a23.lean/declarations/harmonicmeasure--36a6123f23ecae5588824aca.md) | 78 | `declaration-track:36a6123f23ecae5588824acaa06ced2b96ac4b79c0723a0b1e0edd084e9eaeac` |
| 8 | `theorem` | [harmonicWeight_nonneg](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant75aab7dbf36f8050b917cbeda1a6a3a2f4f4713ff8595692834e9322eabc5a23.lean/declarations/harmonicweight-nonneg--280619c7aff7a728b242d28b.md) | 84 | `result-track:280619c7aff7a728b242d28b053ec97d3b53c8ede18cbb045450f190fd668b14` |
| 9 | `theorem` | [harmonicMeasure_singleton](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant75aab7dbf36f8050b917cbeda1a6a3a2f4f4713ff8595692834e9322eabc5a23.lean/declarations/harmonicmeasure-singleton--d02d40efd190f479f6a829e5.md) | 89 | `result-track:d02d40efd190f479f6a829e54239dde69b4cdcb0fc3c82d1ef892c0a80ba54e5` |
| 10 | `theorem` | [harmonicMeasure_finset](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant75aab7dbf36f8050b917cbeda1a6a3a2f4f4713ff8595692834e9322eabc5a23.lean/declarations/harmonicmeasure-finset--ade2e197e4b58051dc9c4f87.md) | 96 | `result-track:ade2e197e4b58051dc9c4f871aedcba563b1480caeb4b304ac73cc95cfba0b6a` |
| 11 | `def` | [harmonicSampleFinset](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant75aab7dbf36f8050b917cbeda1a6a3a2f4f4713ff8595692834e9322eabc5a23.lean/declarations/harmonicsamplefinset--8fc7b15e0474176b560c65b3.md) | 118 | `declaration-track:8fc7b15e0474176b560c65b3ebb7e1f84e7e1d4273b87547edd5848bb0345ef0` |
| 12 | `theorem` | [harmonicMeasure_filter_Icc](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant75aab7dbf36f8050b917cbeda1a6a3a2f4f4713ff8595692834e9322eabc5a23.lean/declarations/harmonicmeasure-filter-icc--f4bcdb28d1e586621768504b.md) | 125 | `result-track:f4bcdb28d1e586621768504b2531d8b1a8e3891e39d76c886bac19b49cf1a44d` |
| 13 | `def` | [negativeObservableBool](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant75aab7dbf36f8050b917cbeda1a6a3a2f4f4713ff8595692834e9322eabc5a23.lean/declarations/negativeobservablebool--b78e589e7666234c484e5a86.md) | 149 | `declaration-track:b78e589e7666234c484e5a868c766754374d131d76be434d59937aca3ae35f75` |
| 14 | `theorem` | [negativeObservableBool_eq_true_iff](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant75aab7dbf36f8050b917cbeda1a6a3a2f4f4713ff8595692834e9322eabc5a23.lean/declarations/negativeobservablebool-eq-true-iff--87c619063661104469db249b.md) | 155 | `result-track:87c619063661104469db249b82b68a0a85261c29da04ed835238760fe3c5f3bb` |
| 15 | `def` | [negativeObservableIndicator](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant75aab7dbf36f8050b917cbeda1a6a3a2f4f4713ff8595692834e9322eabc5a23.lean/declarations/negativeobservableindicator--463f9def047970f78002c1d0.md) | 163 | `declaration-track:463f9def047970f78002c1d0c0657dc8dfc48e2ec591b3e2dcf40ab14df94b1d` |
| 16 | `def` | [negativeObservableMass](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant75aab7dbf36f8050b917cbeda1a6a3a2f4f4713ff8595692834e9322eabc5a23.lean/declarations/negativeobservablemass--6147097a8ddf490fc0691d87.md) | 169 | `declaration-track:6147097a8ddf490fc0691d87d7e13c38a10f5ecb8cdbfa4aafeeeb3d1d7f220d` |
| 17 | `theorem` | [harmonicMeasure_negativeObservableSample](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant75aab7dbf36f8050b917cbeda1a6a3a2f4f4713ff8595692834e9322eabc5a23.lean/declarations/harmonicmeasure-negativeobservablesample--2a3d557c49bedae1ef4de195.md) | 176 | `result-track:2a3d557c49bedae1ef4de1956f77f106c01f012ee437f135d32cbe49fe7b60f5` |
| 18 | `def` | [negativeObservableDensityAt](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant75aab7dbf36f8050b917cbeda1a6a3a2f4f4713ff8595692834e9322eabc5a23.lean/declarations/negativeobservabledensityat--4072cd8559191bbbb15e6d32.md) | 185 | `declaration-track:4072cd8559191bbbb15e6d32a1f4d1e4609a9c1cc2638e5fdb0042535d2e7aba` |
| 19 | `def` | [HasNativeNegativeObservableBias](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant75aab7dbf36f8050b917cbeda1a6a3a2f4f4713ff8595692834e9322eabc5a23.lean/declarations/hasnativenegativeobservablebias--998cb1f09e5a2d6cf2b6e26a.md) | 193 | `declaration-track:998cb1f09e5a2d6cf2b6e26af493a692714c751084119f09a2485f3b25c6fde9` |
| 20 | `theorem` | [negativeObservableMass_eq_indicator_sum](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant75aab7dbf36f8050b917cbeda1a6a3a2f4f4713ff8595692834e9322eabc5a23.lean/declarations/negativeobservablemass-eq-indicator-sum--11c6ee1ab83b4c229bf64d07.md) | 199 | `result-track:11c6ee1ab83b4c229bf64d075c64ddf9bc8638b0bb285209149f1933468459d8` |
| 21 | `def` | [nativeLogDensityFunctional](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant75aab7dbf36f8050b917cbeda1a6a3a2f4f4713ff8595692834e9322eabc5a23.lean/declarations/nativelogdensityfunctional--8647b5a6ab16e49060d9f40f.md) | 219 | `declaration-track:8647b5a6ab16e49060d9f40f61b4730270b761f0d2332b51db34d0aa0c6c9471` |
| 22 | `theorem` | [nativeLogDensityFunctional_eq_some_iff](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant75aab7dbf36f8050b917cbeda1a6a3a2f4f4713ff8595692834e9322eabc5a23.lean/declarations/nativelogdensityfunctional-eq-some-iff--af4424b778a832d6e1efc900.md) | 230 | `result-track:af4424b778a832d6e1efc90036d0d740e13066d1e5daaf84ce063e2f21b91af6` |
| 23 | `theorem` | [abstractNegativeBias_native_iff](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant75aab7dbf36f8050b917cbeda1a6a3a2f4f4713ff8595692834e9322eabc5a23.lean/declarations/abstractnegativebias-native-iff--e33dbb203c7298d9ae2ec92d.md) | 256 | `result-track:e33dbb203c7298d9ae2ec92d5005e1bf946850883e608f4b448f639c13931594` |
| 24 | `theorem` | [abstractNegativeObservableBias_native_iff](../../../../../mathematics/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant75aab7dbf36f8050b917cbeda1a6a3a2f4f4713ff8595692834e9322eabc5a23.lean/declarations/abstractnegativeobservablebias-native-iff--b57a7a61de6d7e2f1dd02902.md) | 273 | `result-track:b57a7a61de6d7e2f1dd02902001b5d1cabc1cce95960c864d548768ecc339dbb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
