# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ActualMuntzInventoryAttempt03.Variant7fbf85bb603c4092cbfa1ce4d7029051f40cdfa1d4b2987b661f613eaf39b8e9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e3c61dd0e95b1a26cccf154bfa923bc7fa6c2855",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variant7fbf85bb603c4092cbfa1ce4d7029051f40cdfa1d4b2987b661f613eaf39b8e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variant7fbf85bb603c4092cbfa1ce4d7029051f40cdfa1d4b2987b661f613eaf39b8e9.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variant7fbf85bb603c4092cbfa1ce4d7029051f40cdfa1d4b2987b661f613eaf39b8e9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e3c61dd0e95b1a26cccf154bfa923bc7fa6c2855`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variant7fbf85bb603c4092cbfa1ce4d7029051f40cdfa1d4b2987b661f613eaf39b8e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variant7fbf85bb603c4092cbfa1ce4d7029051f40cdfa1d4b2987b661f613eaf39b8e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualGoodKernel` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.NatInt` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveSamples](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variant7fbf85bb603c4092cbfa1ce4d7029051f40cdfa1d4b2987b661f613eaf39b8e9.lean/declarations/positivesamples--798ac8bfa18359918ce7348e.md) | 23 | `declaration-track:798ac8bfa18359918ce7348e575d2844ea72f975215eee26163bcd411e93994f` |
| 2 | `def` | [actualMuntz](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variant7fbf85bb603c4092cbfa1ce4d7029051f40cdfa1d4b2987b661f613eaf39b8e9.lean/declarations/actualmuntz--7117c30277af843f420b5b80.md) | 27 | `declaration-track:7117c30277af843f420b5b80015fc07922699f25f101456d913d60ea1e5b79ae` |
| 3 | `def` | [upperInventory](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variant7fbf85bb603c4092cbfa1ce4d7029051f40cdfa1d4b2987b661f613eaf39b8e9.lean/declarations/upperinventory--a18871b45cac99503c4a4015.md) | 31 | `declaration-track:a18871b45cac99503c4a4015c2cc0062f4eca7f71fad554b6df3112e641632ff` |
| 4 | `theorem` | [actualLogSource_zero_nonpos](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variant7fbf85bb603c4092cbfa1ce4d7029051f40cdfa1d4b2987b661f613eaf39b8e9.lean/declarations/actuallogsource-zero-nonpos--67ce3499e2402fe6216b77cf.md) | 33 | `result-track:67ce3499e2402fe6216b77cf20d2dcce0f4ac8170d474dbff620b0af3c2c99fa` |
| 5 | `theorem` | [actualLogSource_zero_at_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variant7fbf85bb603c4092cbfa1ce4d7029051f40cdfa1d4b2987b661f613eaf39b8e9.lean/declarations/actuallogsource-zero-at-zero--df3138af7048fe535ad8d143.md) | 37 | `result-track:df3138af7048fe535ad8d143191e6ffd55fc803bd4b644b1aebf3a3c6987985c` |
| 6 | `theorem` | [sample_zero_above_inventory](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variant7fbf85bb603c4092cbfa1ce4d7029051f40cdfa1d4b2987b661f613eaf39b8e9.lean/declarations/sample-zero-above-inventory--a9f9cd5661be4665054355f8.md) | 40 | `result-track:a9f9cd5661be4665054355f88d3ec1dcb8546fb08d396df102083bedac2352f1` |
| 7 | `theorem` | [allSamples_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variant7fbf85bb603c4092cbfa1ce4d7029051f40cdfa1d4b2987b661f613eaf39b8e9.lean/declarations/allsamples-summable--3c818652539c13ba1f42d99a.md) | 46 | `result-track:3c818652539c13ba1f42d99a6012bdffe102d8fd95c4b629cb8e8bb006685da8` |
| 8 | `theorem` | [positiveSamples_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variant7fbf85bb603c4092cbfa1ce4d7029051f40cdfa1d4b2987b661f613eaf39b8e9.lean/declarations/positivesamples-summable--63b812ade3dc503a7de67fed.md) | 53 | `result-track:63b812ade3dc503a7de67feddbffd76ec26a9b0b0958d757a2c558921d968126` |
| 9 | `theorem` | [positiveSamples_eq_allSamples](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variant7fbf85bb603c4092cbfa1ce4d7029051f40cdfa1d4b2987b661f613eaf39b8e9.lean/declarations/positivesamples-eq-allsamples--08371dd877ee979116ffba30.md) | 57 | `result-track:08371dd877ee979116ffba30f45184a94b040f2561850b7ba858083184619fb1` |
| 10 | `theorem` | [allSamples_eq_closed_inventory](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variant7fbf85bb603c4092cbfa1ce4d7029051f40cdfa1d4b2987b661f613eaf39b8e9.lean/declarations/allsamples-eq-closed-inventory--e114da90f4d791416fd393b8.md) | 62 | `result-track:e114da90f4d791416fd393b8b2f957a36cd057b382f4e0c1fec09af2fb475214` |
| 11 | `theorem` | [positiveSamples_eq_closed_inventory](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variant7fbf85bb603c4092cbfa1ce4d7029051f40cdfa1d4b2987b661f613eaf39b8e9.lean/declarations/positivesamples-eq-closed-inventory--34e7bb78b8db10147fdb2f4c.md) | 70 | `result-track:34e7bb78b8db10147fdb2f4c0242b35d4ca129e7d8059eb13bad284d37bb0eff` |
| 12 | `theorem` | [actualMuntz_eq_positiveSamples](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variant7fbf85bb603c4092cbfa1ce4d7029051f40cdfa1d4b2987b661f613eaf39b8e9.lean/declarations/actualmuntz-eq-positivesamples--7f56f4ba80d71d70d2a18f6a.md) | 79 | `result-track:7f56f4ba80d71d70d2a18f6abd6b3f77a3ea60e5eeba7c3413f44d422ea21e1f` |
| 13 | `theorem` | [actualMuntz_eq_closed_inventory](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variant7fbf85bb603c4092cbfa1ce4d7029051f40cdfa1d4b2987b661f613eaf39b8e9.lean/declarations/actualmuntz-eq-closed-inventory--a4628c1e79b5a8ff0d6e610d.md) | 83 | `result-track:a4628c1e79b5a8ff0d6e610dda938f14415912c7cc228ef6c93b92fcddd6513c` |
| 14 | `theorem` | [touching_sample_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variant7fbf85bb603c4092cbfa1ce4d7029051f40cdfa1d4b2987b661f613eaf39b8e9.lean/declarations/touching-sample-zero--f4531171cdb51b312303cb27.md) | 88 | `result-track:f4531171cdb51b312303cb27f826b228603ec1968ec807f948792c2bb28ad7ee` |
| 15 | `theorem` | [positiveSamples_zero_nonpos](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variant7fbf85bb603c4092cbfa1ce4d7029051f40cdfa1d4b2987b661f613eaf39b8e9.lean/declarations/positivesamples-zero-nonpos--abea4915e1c015d262c05941.md) | 93 | `result-track:abea4915e1c015d262c0594176dcf8d5745d862030283ab15fc2a7f32ca96b9f` |
| 16 | `theorem` | [positiveSamples_zero_above](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variant7fbf85bb603c4092cbfa1ce4d7029051f40cdfa1d4b2987b661f613eaf39b8e9.lean/declarations/positivesamples-zero-above--4ee061e519df74cff89beb27.md) | 100 | `result-track:4ee061e519df74cff89beb275c51d5c0df7ec7618929d5a746a86c542f14fa18` |
| 17 | `theorem` | [actualMuntz_zero_outside](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variant7fbf85bb603c4092cbfa1ce4d7029051f40cdfa1d4b2987b661f613eaf39b8e9.lean/declarations/actualmuntz-zero-outside--62f6164a253d1ae40a27c27b.md) | 114 | `result-track:62f6164a253d1ae40a27c27b10ef89e00a1148598fadfd9bceed2124de811902` |
| 18 | `theorem` | [positiveSamples_measurable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variant7fbf85bb603c4092cbfa1ce4d7029051f40cdfa1d4b2987b661f613eaf39b8e9.lean/declarations/positivesamples-measurable--b8cfee70273fbce9a1135ee9.md) | 121 | `result-track:b8cfee70273fbce9a1135ee94d9795d72f9a51ab64222564d4b934abc84d1700` |
| 19 | `theorem` | [actualMuntz_measurable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variant7fbf85bb603c4092cbfa1ce4d7029051f40cdfa1d4b2987b661f613eaf39b8e9.lean/declarations/actualmuntz-measurable--e434c1ad06ce59760525d680.md) | 125 | `result-track:e434c1ad06ce59760525d6803a9f46c4d25551f4532a76d29040c55cf76e172b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
