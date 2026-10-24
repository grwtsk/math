# Verification target: GRWTSK.Analysis.MeasureTheory.Differentiation.Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4306b546065d2c8e4816f30f3507973d6ace6a16",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4306b546065d2c8e4816f30f3507973d6ace6a16`.

Source path: `GRWTSK/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Covering.VitaliFamily` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.AEMeasurableOrder` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Average` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Decomposition.Lebesgue` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Regular` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [limRatio](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean/declarations/limratio--df88c35da1d23f4a819926c2.md) | 89 | `declaration-track:df88c35da1d23f4a819926c25c755428163e5b16a1d306bd79912468fff5f55a` |
| 2 | `theorem` | [ae_eventually_measure_pos](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean/declarations/ae-eventually-measure-pos--c7459a24d065db2a9701c83b.md) | 94 | `result-track:c7459a24d065db2a9701c83b98108da4edccb91ce75a52a9453300dba3f38aef` |
| 3 | `theorem` | [eventually_measure_lt_top](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean/declarations/eventually-measure-lt-top--34281b6324ad7ccbabb6c369.md) | 114 | `result-track:34281b6324ad7ccbabb6c36908f8418d2515d4908630b8ee5321486dab3c3e86` |
| 4 | `theorem` | [measure_le_of_frequently_le](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean/declarations/measure-le-of-frequently-le--764c1dce53feeea86f237e50.md) | 120 | `result-track:764c1dce53feeea86f237e50f515807e301b87663c62a15a602688944bcad6f7` |
| 5 | `theorem` | [eventually_filterAt_integrableOn](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean/declarations/eventually-filterat-integrableon--6f8fdb2267c3453f14ddef6f.md) | 146 | `result-track:6f8fdb2267c3453f14ddef6fe86510e6c7cb0d83287d9a88700e133aeeff6129` |
| 6 | `theorem` | [ae_eventually_measure_zero_of_singular](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean/declarations/ae-eventually-measure-zero-of-singular--d8046f9f03a9995ca2fc0fd8.md) | 160 | `result-track:d8046f9f03a9995ca2fc0fd8fe47988c4d3e0f35ed7fe786787713ffba50fc73` |
| 7 | `theorem` | [null_of_frequently_le_of_frequently_ge](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean/declarations/null-of-frequently-le-of-frequently-ge--d7523d39cd6934c91ac8350a.md) | 211 | `result-track:d7523d39cd6934c91ac8350adb7a0ac90873931360ed69f2170f688c5566f97d` |
| 8 | `theorem` | [ae_tendsto_div](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean/declarations/ae-tendsto-div--1d7db2a5947cdcaf7f5fde71.md) | 230 | `result-track:1d7db2a5947cdcaf7f5fde714f9e0dd1dd19c1282a7ee6eaf80ce2dfa0072096` |
| 9 | `theorem` | [ae_tendsto_limRatio](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean/declarations/ae-tendsto-limratio--62054d30f93e310cfd803f09.md) | 262 | `result-track:62054d30f93e310cfd803f098da64506ed049c3cfa66bb3d4d8d2188b7ed8436` |
| 10 | `theorem` | [exists_measurable_supersets_limRatio](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean/declarations/exists-measurable-supersets-limratio--8731e8f0861e0af719f3bf2c.md) | 272 | `result-track:8731e8f0861e0af719f3bf2cb27c80ce0588b56c0db2c31104aa31b27ec8a0a5` |
| 11 | `theorem` | [aemeasurable_limRatio](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean/declarations/aemeasurable-limratio--7bf8075ff32e08d1038dee24.md) | 413 | `result-track:7bf8075ff32e08d1038dee247aceb11c7893da0748066b772b25aeef7ec0b4d9` |
| 12 | `def` | [limRatioMeas](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean/declarations/limratiomeas--436eb4d8bf16b9ed1843c530.md) | 419 | `declaration-track:436eb4d8bf16b9ed1843c53099782bd677b81e5b1acf4e4f35ece707fd07bde3` |
| 13 | `theorem` | [limRatioMeas_measurable](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean/declarations/limratiomeas-measurable--3a0157d2f54ccb83d6fd9abb.md) | 422 | `result-track:3a0157d2f54ccb83d6fd9abbda4173a34047c4ccc9610cceb9917f83a8f502ec` |
| 14 | `theorem` | [ae_tendsto_limRatioMeas](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean/declarations/ae-tendsto-limratiomeas--b54ad465f6bd9d8464b63a46.md) | 425 | `result-track:b54ad465f6bd9d8464b63a4664a75f75a006513f345ad78aa9e60b7be400df26` |
| 15 | `theorem` | [measure_le_mul_of_subset_limRatioMeas_lt](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean/declarations/measure-le-mul-of-subset-limratiomeas-lt--23a58f7d39e39856aab4f511.md) | 434 | `result-track:23a58f7d39e39856aab4f5110490aa1de359b23282caa3a818ef1b59fac626cb` |
| 16 | `theorem` | [mul_measure_le_of_subset_lt_limRatioMeas](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean/declarations/mul-measure-le-of-subset-lt-limratiomeas--a9cd169626188c35546db045.md) | 454 | `result-track:a9cd169626188c35546db0452131128df602ad3450916d8d96cbe70495f6120e` |
| 17 | `theorem` | [measure_limRatioMeas_top](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean/declarations/measure-limratiomeas-top--48b4a4ea6e0d851edcbae712.md) | 472 | `result-track:48b4a4ea6e0d851edcbae712b4607cb295a0a437a7a5dfa17ccf7b6c42b6f42c` |
| 18 | `theorem` | [measure_limRatioMeas_zero](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean/declarations/measure-limratiomeas-zero--8fa8bbec808a71e30159e41c.md) | 496 | `result-track:8fa8bbec808a71e30159e41c716f1387dfae49410de0bfa14169c48332cdce02` |
| 19 | `theorem` | [withDensity_le_mul](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean/declarations/withdensity-le-mul--7bfd350e1e85a97ef2274782.md) | 519 | `result-track:7bfd350e1e85a97ef2274782b068501fc36e62696581d88eee46b620e4452f3e` |
| 20 | `theorem` | [le_mul_withDensity](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean/declarations/le-mul-withdensity--6791bdbe41d75f816b6d6b23.md) | 589 | `result-track:6791bdbe41d75f816b6d6b23774f1733897610236a1281ee27630f86810cfee1` |
| 21 | `theorem` | [withDensity_limRatioMeas_eq](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean/declarations/withdensity-limratiomeas-eq--0694998af7f7b7fff22197e8.md) | 643 | `result-track:0694998af7f7b7fff22197e89f2a44d14f9b7da798c2e3738783371f99262d6b` |
| 22 | `theorem` | [ae_tendsto_rnDeriv_of_absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean/declarations/ae-tendsto-rnderiv-of-absolutelycontinuous--09c674b775f71c71a6f57e59.md) | 674 | `result-track:09c674b775f71c71a6f57e59843fded39a89044bfe6314e109b40b93777dc54c` |
| 23 | `theorem` | [ae_tendsto_rnDeriv](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean/declarations/ae-tendsto-rnderiv--6497cf2c33013bd8e9eaa136.md) | 690 | `result-track:6497cf2c33013bd8e9eaa13630b21307915f7a2686829c65011bec3a51445b0f` |
| 24 | `theorem` | [ae_tendsto_measure_inter_div_of_measurableSet](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean/declarations/ae-tendsto-measure-inter-div-of-measurableset--f158c1b54074b752f1af8668.md) | 714 | `result-track:f158c1b54074b752f1af8668228a12027bfdde262e7b80528489b795ceb9d158` |
| 25 | `theorem` | [ae_tendsto_measure_inter_div](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean/declarations/ae-tendsto-measure-inter-div--70726b6dd292763afb1989a7.md) | 726 | `result-track:70726b6dd292763afb1989a7fab5d7a694bf58c0f4b6307110936b1e16eeff3b` |
| 26 | `theorem` | [ae_tendsto_lintegral_div'](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean/declarations/ae-tendsto-lintegral-div--2e46d48ffd251597e9a4afbd.md) | 748 | `result-track:2e46d48ffd251597e9a4afbd84d61e4546b5974928f457c5509c20affd8d4956` |
| 27 | `theorem` | [ae_tendsto_lintegral_div](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean/declarations/ae-tendsto-lintegral-div--1cffbb7393f106ce1e89524d.md) | 758 | `result-track:1cffbb7393f106ce1e89524d2a9fa55f816115e5f7a8d3e69068afdc8e5807c7` |
| 28 | `theorem` | [ae_tendsto_lintegral_enorm_sub_div'_of_integrable](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean/declarations/ae-tendsto-lintegral-enorm-sub-div-of-integrable--639c1d63efcfa66b67c02f19.md) | 772 | `result-track:639c1d63efcfa66b67c02f1955f80592b8e71d8fc0811dd98c9c7d85b2879ef6` |
| 29 | `theorem` | [ae_tendsto_lintegral_enorm_sub_div_of_integrable](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean/declarations/ae-tendsto-lintegral-enorm-sub-div-of-integrable--6db1376104a87767853ac91b.md) | 846 | `result-track:6db1376104a87767853ac91b618642ab1a460d81999dd88db51ac41c59fa3aea` |
| 30 | `theorem` | [ae_tendsto_lintegral_enorm_sub_div](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean/declarations/ae-tendsto-lintegral-enorm-sub-div--93f739e553d409b42b516731.md) | 863 | `result-track:93f739e553d409b42b51673179fb076cee41138ba07724438a45f077b87920f1` |
| 31 | `theorem` | [ae_tendsto_average_norm_sub](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean/declarations/ae-tendsto-average-norm-sub--16bce7f6a8b73b067bb921ec.md) | 886 | `result-track:16bce7f6a8b73b067bb921ec869e8bc4fa57cdebdb73cb2d57225d107d7af7b3` |
| 32 | `theorem` | [ae_tendsto_average](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean/declarations/ae-tendsto-average--fd475a1e64e1c0b23ace939d.md) | 904 | `result-track:fd475a1e64e1c0b23ace939db6c225f22fea871c9952c45b3bb326e75decf274` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
