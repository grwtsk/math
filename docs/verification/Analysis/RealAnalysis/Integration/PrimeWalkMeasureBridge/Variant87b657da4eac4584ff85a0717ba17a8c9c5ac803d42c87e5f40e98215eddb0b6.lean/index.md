# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PrimeWalkMeasureBridge.Variant87b657da4eac4584ff85a0717ba17a8c9c5ac803d42c87e5f40e98215eddb0b6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cdce3e204f16dafa1200127c5b3e9b96e03e1021",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant87b657da4eac4584ff85a0717ba17a8c9c5ac803d42c87e5f40e98215eddb0b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant87b657da4eac4584ff85a0717ba17a8c9c5ac803d42c87e5f40e98215eddb0b6.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant87b657da4eac4584ff85a0717ba17a8c9c5ac803d42c87e5f40e98215eddb0b6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cdce3e204f16dafa1200127c5b3e9b96e03e1021`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant87b657da4eac4584ff85a0717ba17a8c9c5ac803d42c87e5f40e98215eddb0b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant87b657da4eac4584ff85a0717ba17a8c9c5ac803d42c87e5f40e98215eddb0b6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AgreesOnNat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant87b657da4eac4584ff85a0717ba17a8c9c5ac803d42c87e5f40e98215eddb0b6.lean/declarations/agreesonnat--13102e3d7632b6a6cac1a466.md) | 49 | `declaration-track:13102e3d7632b6a6cac1a4661e7b3627d588e6e63e5cada4a9128b8f95f34c45` |
| 2 | `structure` | [MeasureBridgeData](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant87b657da4eac4584ff85a0717ba17a8c9c5ac803d42c87e5f40e98215eddb0b6.lean/declarations/measurebridgedata--8db36508d99c98023bbcc704.md) | 56 | `declaration-track:8db36508d99c98023bbcc704796788fa7f17835b201d5b0bc217016ce6787b1f` |
| 3 | `theorem` | [trajectory_natCast_eq_discrete](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant87b657da4eac4584ff85a0717ba17a8c9c5ac803d42c87e5f40e98215eddb0b6.lean/declarations/trajectory-natcast-eq-discrete--4cad829f8f02ef72474593f3.md) | 65 | `result-track:4cad829f8f02ef72474593f34f979f520d9a1cf5e856b7bfbe3e56840ac5f7d4` |
| 4 | `def` | [continuousSourceMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant87b657da4eac4584ff85a0717ba17a8c9c5ac803d42c87e5f40e98215eddb0b6.lean/declarations/continuoussourcemeasure--510fbc832bd4e616be6d916a.md) | 76 | `declaration-track:510fbc832bd4e616be6d916aa74dbf368b210e9150fa4054f7271c318d93d2e4` |
| 5 | `def` | [discreteWindowSourceMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant87b657da4eac4584ff85a0717ba17a8c9c5ac803d42c87e5f40e98215eddb0b6.lean/declarations/discretewindowsourcemeasure--a3145a3379d7ba6afe3d5b62.md) | 81 | `declaration-track:a3145a3379d7ba6afe3d5b621927ac926756f2f86b43f05e0a6e432c8f145acb` |
| 6 | `def` | [discreteWalkMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant87b657da4eac4584ff85a0717ba17a8c9c5ac803d42c87e5f40e98215eddb0b6.lean/declarations/discretewalkmeasure--639c46be5e82a97744034e58.md) | 87 | `declaration-track:639c46be5e82a97744034e58630032782b6687ed7f4a416485473e7d48c61143` |
| 7 | `def` | [discreteWindowMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant87b657da4eac4584ff85a0717ba17a8c9c5ac803d42c87e5f40e98215eddb0b6.lean/declarations/discretewindowmeasure--d0b765a0119490d73f6f547a.md) | 93 | `declaration-track:d0b765a0119490d73f6f547ac025ec0e4d694cd5435aeb2e36b7975545edfc3b` |
| 8 | `def` | [continuousWalkMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant87b657da4eac4584ff85a0717ba17a8c9c5ac803d42c87e5f40e98215eddb0b6.lean/declarations/continuouswalkmeasure--d7656ef93013b4d2340fa1bb.md) | 100 | `declaration-track:d7656ef93013b4d2340fa1bb03b86408eac82237041c9f770584820e41adc3a1` |
| 9 | `theorem` | [discreteWalkMeasure_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant87b657da4eac4584ff85a0717ba17a8c9c5ac803d42c87e5f40e98215eddb0b6.lean/declarations/discretewalkmeasure-apply--4db7d4249df49f5deb6f58d7.md) | 110 | `result-track:4db7d4249df49f5deb6f58d7403b2ab584e37da0847353bf1e90e05b4d376f51` |
| 10 | `theorem` | [discreteWindowMeasure_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant87b657da4eac4584ff85a0717ba17a8c9c5ac803d42c87e5f40e98215eddb0b6.lean/declarations/discretewindowmeasure-apply--06693ad569e40061ac25f6cf.md) | 120 | `result-track:06693ad569e40061ac25f6cf41e19653d7d3687d52cbb5588f751c47660e8689` |
| 11 | `theorem` | [continuousWalkMeasure_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant87b657da4eac4584ff85a0717ba17a8c9c5ac803d42c87e5f40e98215eddb0b6.lean/declarations/continuouswalkmeasure-apply--fd57dd243d709253010c4410.md) | 135 | `result-track:fd57dd243d709253010c44104a7273ff82cbd41925bb13a6728caad45a62e6d0` |
| 12 | `theorem` | [continuousWalkMeasure_univ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant87b657da4eac4584ff85a0717ba17a8c9c5ac803d42c87e5f40e98215eddb0b6.lean/declarations/continuouswalkmeasure-univ--245425188ba911e49fccae3e.md) | 146 | `result-track:245425188ba911e49fccae3e8afe05b055b5b596da9f8552a6c6149c3592c31e` |
| 13 | `theorem` | [discreteWindowMeasure_univ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant87b657da4eac4584ff85a0717ba17a8c9c5ac803d42c87e5f40e98215eddb0b6.lean/declarations/discretewindowmeasure-univ--7dbe23e0f0e9a607c32ceb1d.md) | 155 | `result-track:7dbe23e0f0e9a607c32ceb1d49ff1760fd6390a835021708732329f6e63cd61f` |
| 14 | `theorem` | [continuousWalkMeasure_isFinite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant87b657da4eac4584ff85a0717ba17a8c9c5ac803d42c87e5f40e98215eddb0b6.lean/declarations/continuouswalkmeasure-isfinite--1e3f84a7bd43e08bb566ac3d.md) | 167 | `result-track:1e3f84a7bd43e08bb566ac3db6b1635fda7ddbc797bb90912874de2bc6642fa7` |
| 15 | `theorem` | [discreteWindowMeasure_isFinite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant87b657da4eac4584ff85a0717ba17a8c9c5ac803d42c87e5f40e98215eddb0b6.lean/declarations/discretewindowmeasure-isfinite--17f667c9b0aaa372a7d8e707.md) | 177 | `result-track:17f667c9b0aaa372a7d8e707470dce307cab75f38f43ba985422806776a94629` |
| 16 | `def` | [discreteFiberFinset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant87b657da4eac4584ff85a0717ba17a8c9c5ac803d42c87e5f40e98215eddb0b6.lean/declarations/discretefiberfinset--d1d5a76cf0b005659c12a00d.md) | 188 | `declaration-track:d1d5a76cf0b005659c12a00da9b8374a54602d60e4ed185cccdfe6f34f7a5f0e` |
| 17 | `theorem` | [discreteWindowMeasure_singleton](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant87b657da4eac4584ff85a0717ba17a8c9c5ac803d42c87e5f40e98215eddb0b6.lean/declarations/discretewindowmeasure-singleton--33698b4014f066e4636fe7c0.md) | 197 | `result-track:33698b4014f066e4636fe7c0b66ffd4679ac3478e155642f358c7073037cf5b9` |
| 18 | `theorem` | [continuousWalkMeasure_eq_zero_of_avoids](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant87b657da4eac4584ff85a0717ba17a8c9c5ac803d42c87e5f40e98215eddb0b6.lean/declarations/continuouswalkmeasure-eq-zero-of-avoids--12f11584163382b82befa406.md) | 213 | `result-track:12f11584163382b82befa406ef24bc10d46633f2696b1e7857c6249d0ae3a336` |
| 19 | `theorem` | [lintegral_continuousWalkMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant87b657da4eac4584ff85a0717ba17a8c9c5ac803d42c87e5f40e98215eddb0b6.lean/declarations/lintegral-continuouswalkmeasure--270166a912bcdd43c87ed31e.md) | 231 | `result-track:270166a912bcdd43c87ed31e8a28abbe8687569a1e0c531628148524a8ff580b` |
| 20 | `theorem` | [lintegral_discreteWindowMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant87b657da4eac4584ff85a0717ba17a8c9c5ac803d42c87e5f40e98215eddb0b6.lean/declarations/lintegral-discretewindowmeasure--2e05e3f57ec1ff1b72543d81.md) | 244 | `result-track:2e05e3f57ec1ff1b72543d81db19ac3cb95608c358d8b588edf1743a7dd7711a` |
| 21 | `theorem` | [source_sample_atom_contrast](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant87b657da4eac4584ff85a0717ba17a8c9c5ac803d42c87e5f40e98215eddb0b6.lean/declarations/source-sample-atom-contrast--bd0523c2d284c8d2b6aeb49d.md) | 262 | `result-track:bd0523c2d284c8d2b6aeb49d7f1a5699764002cac56e8073ead5d4d483f53bd8` |
| 22 | `def` | [normTailSet](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant87b657da4eac4584ff85a0717ba17a8c9c5ac803d42c87e5f40e98215eddb0b6.lean/declarations/normtailset--99f5aa86f38a6d90b99790f1.md) | 277 | `declaration-track:99f5aa86f38a6d90b99790f1fb224a4dd12bec4d47d66094fb7c7a1ced869e0e` |
| 23 | `theorem` | [measurableSet_normTailSet](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant87b657da4eac4584ff85a0717ba17a8c9c5ac803d42c87e5f40e98215eddb0b6.lean/declarations/measurableset-normtailset--ca8b49c474b30ccf4e4b8afc.md) | 282 | `result-track:ca8b49c474b30ccf4e4b8afc06dd2867f1609e503ffff63961a3f67a44d213e2` |
| 24 | `def` | [HasWeakL2TailBound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant87b657da4eac4584ff85a0717ba17a8c9c5ac803d42c87e5f40e98215eddb0b6.lean/declarations/hasweakl2tailbound--650a570585c15343c935a3dc.md) | 290 | `declaration-track:650a570585c15343c935a3dc1d71772cc62a87c994e4526d0ea30e5eaad93910` |
| 25 | `theorem` | [continuousWalkMeasure_normTail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant87b657da4eac4584ff85a0717ba17a8c9c5ac803d42c87e5f40e98215eddb0b6.lean/declarations/continuouswalkmeasure-normtail--ed3e468fd15d70200ef6dceb.md) | 297 | `result-track:ed3e468fd15d70200ef6dcebf8e648b0e81a7138929fbc7cce67619d79f9b8fa` |
| 26 | `theorem` | [hasWeakL2TailBound_continuous_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant87b657da4eac4584ff85a0717ba17a8c9c5ac803d42c87e5f40e98215eddb0b6.lean/declarations/hasweakl2tailbound-continuous-iff--67af703e5ff0a84ba11c687a.md) | 308 | `result-track:67af703e5ff0a84ba11c687ae7a2ca86e38cd1a26777b20641a28d20776d8c73` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
