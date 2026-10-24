# Verification target: GRWTSK.Analysis.MeasureTheory.Differentiation.Variantdc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8cc0b0d6f3e14289a7a145ef32564803b339a108",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Differentiation/Variantdc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8cc0b0d6f3e14289a7a145ef32564803b339a108`.

Source path: `GRWTSK/Analysis/MeasureTheory/Differentiation/Variantdc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Differentiation/Variantdc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Covering.VitaliFamily` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Regular` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.AEMeasurableOrder` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Lebesgue` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Average` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Decomposition.Lebesgue` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean/declarations/macro-rules--c0003dddacd531416a3bc64e.md) | 80 | `declaration-track:c0003dddacd531416a3bc64e0a670643a73291d5f60369d66dd5425c7a028ca2` |
| 2 | `def` | [limRatio](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean/declarations/limratio--9830bd4242c7b8c2deea3199.md) | 94 | `declaration-track:9830bd4242c7b8c2deea3199a9a52180802b7bb1b7d8dc6f72b461cca8fb9053` |
| 3 | `theorem` | [ae_eventually_measure_pos](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean/declarations/ae-eventually-measure-pos--6ac939cd7ba7cdc57846a466.md) | 100 | `result-track:6ac939cd7ba7cdc57846a4661591bffb1f39234a35fe528dc7abf004be3c8a2c` |
| 4 | `theorem` | [eventually_measure_lt_top](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean/declarations/eventually-measure-lt-top--6fa3df761d51d71f9e66b97f.md) | 121 | `result-track:6fa3df761d51d71f9e66b97fc2c8f64dc2b835685d9862225c038eac9cfd6e9f` |
| 5 | `theorem` | [measure_le_of_frequently_le](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean/declarations/measure-le-of-frequently-le--99212d06f6f54d0e9a60c4f2.md) | 130 | `result-track:99212d06f6f54d0e9a60c4f287d32306b00be97655778076b8b0f3054095b36e` |
| 6 | `theorem` | [ae_eventually_measure_zero_of_singular](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean/declarations/ae-eventually-measure-zero-of-singular--94e916d703a01f2426152834.md) | 165 | `result-track:94e916d703a01f242615283495e5ddfc1c19ef602e119a93f1af067c0a0d8d02` |
| 7 | `theorem` | [null_of_frequently_le_of_frequently_ge](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean/declarations/null-of-frequently-le-of-frequently-ge--7f6b5b77c4b6356adc041eb8.md) | 215 | `result-track:7f6b5b77c4b6356adc041eb8ef5e7968f1daa8f7469430b075a76b401fbeb758` |
| 8 | `theorem` | [ae_tendsto_div](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean/declarations/ae-tendsto-div--e833ea779e069b4c137de423.md) | 237 | `result-track:e833ea779e069b4c137de4238c4fdb66b3063f77dc17f75c8b6a8606037af550` |
| 9 | `theorem` | [ae_tendsto_limRatio](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean/declarations/ae-tendsto-limratio--f1866823e9055202370d5bea.md) | 267 | `result-track:f1866823e9055202370d5beaa0530d902ce3bb255b048390ef55438c7d00cadd` |
| 10 | `theorem` | [exists_measurable_supersets_limRatio](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean/declarations/exists-measurable-supersets-limratio--dd996aaae67359f6c68da8c3.md) | 278 | `result-track:dd996aaae67359f6c68da8c3a11432fda0093553b474aad8ee9d95a60132d3bf` |
| 11 | `theorem` | [aemeasurable_limRatio](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean/declarations/aemeasurable-limratio--96fa6dfc3729675504a7b11d.md) | 420 | `result-track:96fa6dfc3729675504a7b11d4ddadee4a67e0c11033aca9ebd18e35d4d55f49e` |
| 12 | `def` | [limRatioMeas](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean/declarations/limratiomeas--b2e6b476a6de08dc3b138216.md) | 427 | `declaration-track:b2e6b476a6de08dc3b138216c1ae4150f564b3c1eeb7fb8cf7a6faecb56f8b31` |
| 13 | `theorem` | [limRatioMeas_measurable](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean/declarations/limratiomeas-measurable--e96a8eee4357d99080c9529f.md) | 431 | `result-track:e96a8eee4357d99080c9529f8eca0841c80dfa3c6766f24b2f29da71bba0a92d` |
| 14 | `theorem` | [ae_tendsto_limRatioMeas](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean/declarations/ae-tendsto-limratiomeas--f11c949324db5638fc4197a5.md) | 435 | `result-track:f11c949324db5638fc4197a50ea569590bcbd077bce035fc9ac31414e3d42954` |
| 15 | `theorem` | [measure_le_mul_of_subset_limRatioMeas_lt](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean/declarations/measure-le-mul-of-subset-limratiomeas-lt--70e1e80cf27c8e7adff0c363.md) | 445 | `result-track:70e1e80cf27c8e7adff0c3630dd329a0027dbac670497dccbc5e9a192d590fce` |
| 16 | `theorem` | [mul_measure_le_of_subset_lt_limRatioMeas](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean/declarations/mul-measure-le-of-subset-lt-limratiomeas--eaae4a24904ff96b61372d24.md) | 469 | `result-track:eaae4a24904ff96b61372d24a2f83b51543bffdc1b87b54e14205f14bd9635fd` |
| 17 | `theorem` | [measure_limRatioMeas_top](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean/declarations/measure-limratiomeas-top--c8744530862c2729a4000b13.md) | 493 | `result-track:c8744530862c2729a4000b13138db54c9b342ff9117b5ed11d81887586189a56` |
| 18 | `theorem` | [measure_limRatioMeas_zero](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean/declarations/measure-limratiomeas-zero--01ca71cffef4340842ec5634.md) | 518 | `result-track:01ca71cffef4340842ec56344dd1232f31a01b2781df0b5cf5bae47078fdae0e` |
| 19 | `theorem` | [withDensity_le_mul](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean/declarations/withdensity-le-mul--93a17cac0511d6926ef503ce.md) | 542 | `result-track:93a17cac0511d6926ef503ce022fa079b182ec6fb26bec6c9b7f8a87489dacea` |
| 20 | `theorem` | [le_mul_withDensity](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean/declarations/le-mul-withdensity--288810a8ee4aabc008f1dbba.md) | 610 | `result-track:288810a8ee4aabc008f1dbbaaaa48078714879a9a91b14a2c6cbad61d20bf2ae` |
| 21 | `theorem` | [withDensity_limRatioMeas_eq](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean/declarations/withdensity-limratiomeas-eq--6eed0e84729ed14a99090c73.md) | 665 | `result-track:6eed0e84729ed14a99090c73a0b6a3a60d3a24c1e0891b3c7ccc7dc06462c698` |
| 22 | `theorem` | [ae_tendsto_rnDeriv_of_absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean/declarations/ae-tendsto-rnderiv-of-absolutelycontinuous--36c27b2a3f5243f2964d51e8.md) | 697 | `result-track:36c27b2a3f5243f2964d51e81b286b62c3f5893a8863051fbd41efe0860d1e4d` |
| 23 | `theorem` | [ae_tendsto_rnDeriv](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean/declarations/ae-tendsto-rnderiv--22fe59f52d040ecdede6b6bc.md) | 714 | `result-track:22fe59f52d040ecdede6b6bc0cf011646ed92ec44ce74e6e34d347b6630f530d` |
| 24 | `theorem` | [ae_tendsto_measure_inter_div_of_measurableSet](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean/declarations/ae-tendsto-measure-inter-div-of-measurableset--5626a171efefdd122f035263.md) | 739 | `result-track:5626a171efefdd122f0352638cda1f6c9e2f96987e9cc0a283ef612b4070e351` |
| 25 | `theorem` | [ae_tendsto_measure_inter_div](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean/declarations/ae-tendsto-measure-inter-div--cb43ff4cfed6926557581a14.md) | 752 | `result-track:cb43ff4cfed6926557581a14961184b1ae6797c252883e8f0ab715fa3f7f2bbe` |
| 26 | `theorem` | [ae_tendsto_lintegral_div'](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean/declarations/ae-tendsto-lintegral-div--3b3ab0469fc1635c824783eb.md) | 775 | `result-track:3b3ab0469fc1635c824783eb332671134c5a85468c2e1756f203b5cc869e7ec9` |
| 27 | `theorem` | [ae_tendsto_lintegral_div](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean/declarations/ae-tendsto-lintegral-div--aa0aca9d9dabeca381e3404f.md) | 786 | `result-track:aa0aca9d9dabeca381e3404fed93a461fb0b94106b792d756e6629758c3f11a8` |
| 28 | `theorem` | [ae_tendsto_lintegral_nnnorm_sub_div'_of_integrable](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean/declarations/ae-tendsto-lintegral-nnnorm-sub-div-of-integrable--66776693d91bc781905fbb03.md) | 801 | `result-track:66776693d91bc781905fbb0329a3bae831601511b29997bb1f319cd305b4d6cb` |
| 29 | `theorem` | [ae_tendsto_lintegral_nnnorm_sub_div_of_integrable](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean/declarations/ae-tendsto-lintegral-nnnorm-sub-div-of-integrable--89dc884f684d5c5a271728a9.md) | 877 | `result-track:89dc884f684d5c5a271728a9860d39d1f6096c007f57ca37f929a2d9b1d2e9ab` |
| 30 | `theorem` | [ae_tendsto_lintegral_nnnorm_sub_div](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean/declarations/ae-tendsto-lintegral-nnnorm-sub-div--dc4075d65e087338425be071.md) | 891 | `result-track:dc4075d65e087338425be0717ef37127980dcb21c0654f674205ece56b968778` |
| 31 | `theorem` | [eventually_filterAt_integrableOn](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean/declarations/eventually-filterat-integrableon--c7bb532fc1a8e708db01880f.md) | 909 | `result-track:c7bb532fc1a8e708db01880f33c3a9e40911795548fa194f32c3034c1e2eaab2` |
| 32 | `theorem` | [ae_tendsto_average_norm_sub](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean/declarations/ae-tendsto-average-norm-sub--99dc15d48d5f67284e8add6b.md) | 917 | `result-track:99dc15d48d5f67284e8add6b8821efb6cf5a40209e7e3fc88d672399cf10c136` |
| 33 | `theorem` | [ae_tendsto_average](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean/declarations/ae-tendsto-average--30fdb273d6682776fe9a44d7.md) | 938 | `result-track:30fdb273d6682776fe9a44d741f6bbc1af7933bd614f643da7c1f6cf01f6bfa1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
