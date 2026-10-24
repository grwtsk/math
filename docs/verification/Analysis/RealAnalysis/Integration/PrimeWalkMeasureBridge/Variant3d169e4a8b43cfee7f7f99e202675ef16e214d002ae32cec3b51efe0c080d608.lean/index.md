# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PrimeWalkMeasureBridge.Variant3d169e4a8b43cfee7f7f99e202675ef16e214d002ae32cec3b51efe0c080d608

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "928a2ed5e3a7bc660741ca4efb64cb452e5bc12b",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant3d169e4a8b43cfee7f7f99e202675ef16e214d002ae32cec3b51efe0c080d608.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant3d169e4a8b43cfee7f7f99e202675ef16e214d002ae32cec3b51efe0c080d608.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant3d169e4a8b43cfee7f7f99e202675ef16e214d002ae32cec3b51efe0c080d608.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `928a2ed5e3a7bc660741ca4efb64cb452e5bc12b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant3d169e4a8b43cfee7f7f99e202675ef16e214d002ae32cec3b51efe0c080d608.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant3d169e4a8b43cfee7f7f99e202675ef16e214d002ae32cec3b51efe0c080d608.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AgreesOnNat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant3d169e4a8b43cfee7f7f99e202675ef16e214d002ae32cec3b51efe0c080d608.lean/declarations/agreesonnat--949913fa5ccffba73f1b7854.md) | 57 | `declaration-track:949913fa5ccffba73f1b78548d3111b1ec350ed1ef670daf76dfcb030327dbb6` |
| 2 | `structure` | [MeasureBridgeData](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant3d169e4a8b43cfee7f7f99e202675ef16e214d002ae32cec3b51efe0c080d608.lean/declarations/measurebridgedata--d4ea343fcf65c6d932092822.md) | 64 | `declaration-track:d4ea343fcf65c6d93209282219485ca1883587a7d9bb7ae007a24de0069ebaa5` |
| 3 | `theorem` | [trajectory_natCast_eq_discrete](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant3d169e4a8b43cfee7f7f99e202675ef16e214d002ae32cec3b51efe0c080d608.lean/declarations/trajectory-natcast-eq-discrete--bf6e034e3064552ade46e2af.md) | 73 | `result-track:bf6e034e3064552ade46e2af4f411a4726c188ea2509e053e088576fcfe9a505` |
| 4 | `def` | [continuousSourceMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant3d169e4a8b43cfee7f7f99e202675ef16e214d002ae32cec3b51efe0c080d608.lean/declarations/continuoussourcemeasure--236dea3ef886e79b8bfea807.md) | 84 | `declaration-track:236dea3ef886e79b8bfea807b1bee463535952249fb0f8bdec841f0a11236bd3` |
| 5 | `def` | [discreteWindowSourceMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant3d169e4a8b43cfee7f7f99e202675ef16e214d002ae32cec3b51efe0c080d608.lean/declarations/discretewindowsourcemeasure--f5a38d8f131248eb11b0e407.md) | 89 | `declaration-track:f5a38d8f131248eb11b0e407bffe885ddbfeac10d358dddb00bb3a8a069d17fb` |
| 6 | `def` | [discreteWalkMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant3d169e4a8b43cfee7f7f99e202675ef16e214d002ae32cec3b51efe0c080d608.lean/declarations/discretewalkmeasure--9f89bf05ad30a8178fd0c10c.md) | 95 | `declaration-track:9f89bf05ad30a8178fd0c10ce58dfaceb077d81d92c9f30c775013ad46dd936e` |
| 7 | `def` | [discreteWindowMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant3d169e4a8b43cfee7f7f99e202675ef16e214d002ae32cec3b51efe0c080d608.lean/declarations/discretewindowmeasure--d25a25ff6f90661fd2db22f2.md) | 101 | `declaration-track:d25a25ff6f90661fd2db22f2f21b7f44ac4adeba37a1139d74a3e25819f835ad` |
| 8 | `def` | [continuousWalkMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant3d169e4a8b43cfee7f7f99e202675ef16e214d002ae32cec3b51efe0c080d608.lean/declarations/continuouswalkmeasure--d7ebca587a66228d0162fdba.md) | 108 | `declaration-track:d7ebca587a66228d0162fdbafe291de9341cda2975db467fe0a9aaba9d658706` |
| 9 | `theorem` | [discreteWalkMeasure_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant3d169e4a8b43cfee7f7f99e202675ef16e214d002ae32cec3b51efe0c080d608.lean/declarations/discretewalkmeasure-apply--e05d2dfe900b370832e6d44c.md) | 118 | `result-track:e05d2dfe900b370832e6d44c7f734cfb55883d50d4cb4f284bfe740359e638db` |
| 10 | `theorem` | [discreteWindowMeasure_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant3d169e4a8b43cfee7f7f99e202675ef16e214d002ae32cec3b51efe0c080d608.lean/declarations/discretewindowmeasure-apply--f9142bb247d1a0f24249b032.md) | 128 | `result-track:f9142bb247d1a0f24249b032378768e1ee1a8c5a137c1d22fb511bb12632049e` |
| 11 | `theorem` | [continuousWalkMeasure_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant3d169e4a8b43cfee7f7f99e202675ef16e214d002ae32cec3b51efe0c080d608.lean/declarations/continuouswalkmeasure-apply--4697b6266eb1cc4b25f70965.md) | 143 | `result-track:4697b6266eb1cc4b25f7096545fe0043acaca76cf160b024a65ba3479f47743e` |
| 12 | `theorem` | [continuousWalkMeasure_univ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant3d169e4a8b43cfee7f7f99e202675ef16e214d002ae32cec3b51efe0c080d608.lean/declarations/continuouswalkmeasure-univ--938e152e68dc19755d903583.md) | 154 | `result-track:938e152e68dc19755d903583629de77d9d227479e2e05da8a3563428923dce16` |
| 13 | `theorem` | [discreteWindowMeasure_univ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant3d169e4a8b43cfee7f7f99e202675ef16e214d002ae32cec3b51efe0c080d608.lean/declarations/discretewindowmeasure-univ--541426ce62ecc6d1ac871204.md) | 163 | `result-track:541426ce62ecc6d1ac8712040dbda60d47f9d10a28ce998b446b4a05fd0711db` |
| 14 | `theorem` | [continuousWalkMeasure_isFinite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant3d169e4a8b43cfee7f7f99e202675ef16e214d002ae32cec3b51efe0c080d608.lean/declarations/continuouswalkmeasure-isfinite--458dc4fe933a2bc77974f549.md) | 175 | `result-track:458dc4fe933a2bc77974f549a3418fbc8621e66137c2e5cf2ed877e3a74917cf` |
| 15 | `theorem` | [discreteWindowMeasure_isFinite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant3d169e4a8b43cfee7f7f99e202675ef16e214d002ae32cec3b51efe0c080d608.lean/declarations/discretewindowmeasure-isfinite--ea236151c6b1904c23e4ee0d.md) | 185 | `result-track:ea236151c6b1904c23e4ee0de70002d2e8d8cbcd46a6d21d2e60e5e3998d8c2d` |
| 16 | `def` | [discreteFiberFinset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant3d169e4a8b43cfee7f7f99e202675ef16e214d002ae32cec3b51efe0c080d608.lean/declarations/discretefiberfinset--a0babd10126e1ecb37d94cb6.md) | 196 | `declaration-track:a0babd10126e1ecb37d94cb697331a969b40f1fa8b5387233a961f5242762868` |
| 17 | `theorem` | [discreteWindowMeasure_singleton](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant3d169e4a8b43cfee7f7f99e202675ef16e214d002ae32cec3b51efe0c080d608.lean/declarations/discretewindowmeasure-singleton--71a84a8f68e0a8387e538e7b.md) | 205 | `result-track:71a84a8f68e0a8387e538e7b962d137075fcb41e79ec1028b9a26e446a165afd` |
| 18 | `theorem` | [continuousWalkMeasure_eq_zero_of_avoids](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant3d169e4a8b43cfee7f7f99e202675ef16e214d002ae32cec3b51efe0c080d608.lean/declarations/continuouswalkmeasure-eq-zero-of-avoids--4d738e2a9b221173559a58d4.md) | 221 | `result-track:4d738e2a9b221173559a58d4305c96762cfac181b950a31e820b3163d6a763f9` |
| 19 | `theorem` | [lintegral_continuousWalkMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant3d169e4a8b43cfee7f7f99e202675ef16e214d002ae32cec3b51efe0c080d608.lean/declarations/lintegral-continuouswalkmeasure--8bd230d9d656e75113d5bc92.md) | 239 | `result-track:8bd230d9d656e75113d5bc921ed3a030cb7a1a1980fa06302f48176323d41ed7` |
| 20 | `theorem` | [lintegral_discreteWindowMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant3d169e4a8b43cfee7f7f99e202675ef16e214d002ae32cec3b51efe0c080d608.lean/declarations/lintegral-discretewindowmeasure--2e86b2807d38d7f5a7aa2ab6.md) | 252 | `result-track:2e86b2807d38d7f5a7aa2ab633e65402c2b1872b0378102ddf9eda1593031a66` |
| 21 | `theorem` | [source_sample_atom_contrast](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant3d169e4a8b43cfee7f7f99e202675ef16e214d002ae32cec3b51efe0c080d608.lean/declarations/source-sample-atom-contrast--8aa5bcba4150b16955e23d78.md) | 270 | `result-track:8aa5bcba4150b16955e23d78950c0fce0fadc1c6cd3ef8c10047727848974dab` |
| 22 | `def` | [normTailSet](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant3d169e4a8b43cfee7f7f99e202675ef16e214d002ae32cec3b51efe0c080d608.lean/declarations/normtailset--e3dfecdfd2d6a8106a23b9d9.md) | 285 | `declaration-track:e3dfecdfd2d6a8106a23b9d9a5045fb84067e93b5d4c69aef734da2c51e4be23` |
| 23 | `theorem` | [measurableSet_normTailSet](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant3d169e4a8b43cfee7f7f99e202675ef16e214d002ae32cec3b51efe0c080d608.lean/declarations/measurableset-normtailset--2297fe7f693af363ec79de53.md) | 290 | `result-track:2297fe7f693af363ec79de5372e54ca8aea0a19ad340ac86eaf911b8e54814ac` |
| 24 | `def` | [HasWeakL2TailBound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant3d169e4a8b43cfee7f7f99e202675ef16e214d002ae32cec3b51efe0c080d608.lean/declarations/hasweakl2tailbound--dc6e6f7325bab81effbfd748.md) | 298 | `declaration-track:dc6e6f7325bab81effbfd74852f859acbb9ae47dccfd6dcebdf99335c9576e50` |
| 25 | `theorem` | [continuousWalkMeasure_normTail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant3d169e4a8b43cfee7f7f99e202675ef16e214d002ae32cec3b51efe0c080d608.lean/declarations/continuouswalkmeasure-normtail--77f9a9d676c4e50de20f6d98.md) | 305 | `result-track:77f9a9d676c4e50de20f6d98525306470ba08e6a5bfdf1d05dcfe24b6eab5b77` |
| 26 | `theorem` | [hasWeakL2TailBound_continuous_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeWalkMeasureBridge/Variant3d169e4a8b43cfee7f7f99e202675ef16e214d002ae32cec3b51efe0c080d608.lean/declarations/hasweakl2tailbound-continuous-iff--03323eb225812d39873e8974.md) | 316 | `result-track:03323eb225812d39873e89741b02b9d78907ebb55c3d0e3f33aee0c6615afc7f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
