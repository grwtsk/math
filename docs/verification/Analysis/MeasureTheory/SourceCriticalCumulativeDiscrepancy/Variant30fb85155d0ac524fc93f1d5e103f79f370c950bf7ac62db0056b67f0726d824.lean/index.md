# Verification target: GRWTSK.Analysis.MeasureTheory.SourceCriticalCumulativeDiscrepancy.Variant30fb85155d0ac524fc93f1d5e103f79f370c950bf7ac62db0056b67f0726d824

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2437031b8f988fa84fb1d22910b017738e5e015e",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant30fb85155d0ac524fc93f1d5e103f79f370c950bf7ac62db0056b67f0726d824.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant30fb85155d0ac524fc93f1d5e103f79f370c950bf7ac62db0056b67f0726d824.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant30fb85155d0ac524fc93f1d5e103f79f370c950bf7ac62db0056b67f0726d824.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2437031b8f988fa84fb1d22910b017738e5e015e`.

Source path: `GRWTSK/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant30fb85155d0ac524fc93f1d5e103f79f370c950bf7ac62db0056b67f0726d824.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant30fb85155d0ac524fc93f1d5e103f79f370c950bf7ac62db0056b67f0726d824.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceCriticalDensityQuadrature` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.LebesgueDifferentiationThm` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.AbsolutelyContinuousFun` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [criticalCumulativeDiscrepancy](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant30fb85155d0ac524fc93f1d5e103f79f370c950bf7ac62db0056b67f0726d824.lean/declarations/criticalcumulativediscrepancy--ea9d5a064866371765f9d377.md) | 30 | `declaration-track:ea9d5a064866371765f9d377ce99da00bb6bceb3736a41865ca23961c6ccb92b` |
| 2 | `def` | [criticalDiscrepancyPrimitive](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant30fb85155d0ac524fc93f1d5e103f79f370c950bf7ac62db0056b67f0726d824.lean/declarations/criticaldiscrepancyprimitive--624b1ba9c4d4ce37d76f6734.md) | 34 | `declaration-track:624b1ba9c4d4ce37d76f6734493affa561c45855cb75a0c885939831cbee80b6` |
| 3 | `def` | [criticalDiscrepancyBridge](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant30fb85155d0ac524fc93f1d5e103f79f370c950bf7ac62db0056b67f0726d824.lean/declarations/criticaldiscrepancybridge--b5b55d4f7a79e363adcf4d27.md) | 38 | `declaration-track:b5b55d4f7a79e363adcf4d27499adbe70f4c5592c9c0260f82bbf052a25e064b` |
| 4 | `theorem` | [decay_continuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant30fb85155d0ac524fc93f1d5e103f79f370c950bf7ac62db0056b67f0726d824.lean/declarations/decay-continuous--edfa98d2e35473fcd7305c59.md) | 42 | `result-track:edfa98d2e35473fcd7305c59fd76eb1ce4de72f64258a8daa16ffdad3cb4bef8` |
| 5 | `theorem` | [decay_hasDerivAt](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant30fb85155d0ac524fc93f1d5e103f79f370c950bf7ac62db0056b67f0726d824.lean/declarations/decay-hasderivat--8c621f86d10e0f9a4d85497c.md) | 46 | `result-track:8c621f86d10e0f9a4d85497ca0aafea6e20a67751ebad5b31f2b6e7724329bf6` |
| 6 | `theorem` | [density_mass](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant30fb85155d0ac524fc93f1d5e103f79f370c950bf7ac62db0056b67f0726d824.lean/declarations/density-mass--1483940b0fcefff27eb2e557.md) | 56 | `result-track:1483940b0fcefff27eb2e557e2bcdb928834ac76c83c04256d0166e6a845074d` |
| 7 | `theorem` | [density_mass_continuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant30fb85155d0ac524fc93f1d5e103f79f370c950bf7ac62db0056b67f0726d824.lean/declarations/density-mass-continuous--af2793d6544b69008a057034.md) | 62 | `result-track:af2793d6544b69008a0570347890c1cd6adb6b354255fca30aacb6437e8a5fcc` |
| 8 | `theorem` | [prime_prefix_intervalIntegrable](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant30fb85155d0ac524fc93f1d5e103f79f370c950bf7ac62db0056b67f0726d824.lean/declarations/prime-prefix-intervalintegrable--9838aa310ac53d4e6cc5511f.md) | 69 | `result-track:9838aa310ac53d4e6cc5511f57547e8afd756372715193fb357d1188ab6c40ef` |
| 9 | `theorem` | [criticalCumulativeDiscrepancy_eq](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant30fb85155d0ac524fc93f1d5e103f79f370c950bf7ac62db0056b67f0726d824.lean/declarations/criticalcumulativediscrepancy-eq--854d4f4924c99aa72a440d6c.md) | 82 | `result-track:854d4f4924c99aa72a440d6c9fd576cb5aea7595e9916465e2d0b20ebb6bbbbe` |
| 10 | `theorem` | [criticalCumulativeDiscrepancy_at_upper](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant30fb85155d0ac524fc93f1d5e103f79f370c950bf7ac62db0056b67f0726d824.lean/declarations/criticalcumulativediscrepancy-at-upper--e4f98abb2276d458bc141ae9.md) | 89 | `result-track:e4f98abb2276d458bc141ae927de25f018fbc0d4a3019dea09e40c5382b687c8` |
| 11 | `theorem` | [criticalCumulativeDiscrepancy_at_zero](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant30fb85155d0ac524fc93f1d5e103f79f370c950bf7ac62db0056b67f0726d824.lean/declarations/criticalcumulativediscrepancy-at-zero--9b80dea9c3101d12e2cf94a6.md) | 93 | `result-track:9b80dea9c3101d12e2cf94a646191536dd0c78c7e084152200b1b4b55414df05` |
| 12 | `theorem` | [criticalCumulativeDiscrepancy_intervalIntegrable](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant30fb85155d0ac524fc93f1d5e103f79f370c950bf7ac62db0056b67f0726d824.lean/declarations/criticalcumulativediscrepancy-intervalintegrable--6d483e61a8c702d50b024dff.md) | 97 | `result-track:6d483e61a8c702d50b024dffbfd974b8faf6301fb155875bc70f157cce365f95` |
| 13 | `theorem` | [criticalDiscrepancyPrimitive_at_zero](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant30fb85155d0ac524fc93f1d5e103f79f370c950bf7ac62db0056b67f0726d824.lean/declarations/criticaldiscrepancyprimitive-at-zero--c152275b3346ed1e4fa30c06.md) | 103 | `result-track:c152275b3346ed1e4fa30c06fc76a89457014765332d0f7c22b1cc40ec03efa7` |
| 14 | `theorem` | [criticalDiscrepancyPrimitive_continuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant30fb85155d0ac524fc93f1d5e103f79f370c950bf7ac62db0056b67f0726d824.lean/declarations/criticaldiscrepancyprimitive-continuous--017b18427bee62d5f5a5442e.md) | 107 | `result-track:017b18427bee62d5f5a5442e8a4d2ef2cf92cf6a884d5b48b34423267df81b87` |
| 15 | `theorem` | [criticalDiscrepancyPrimitive_absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant30fb85155d0ac524fc93f1d5e103f79f370c950bf7ac62db0056b67f0726d824.lean/declarations/criticaldiscrepancyprimitive-absolutelycontinuous--410ded7b3ed96013ae1b90b2.md) | 111 | `result-track:410ded7b3ed96013ae1b90b2ffa895ddb92284b1bf9fd8cfc65948b05f43e80f` |
| 16 | `theorem` | [criticalDiscrepancyPrimitive_ae_hasDerivAt](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant30fb85155d0ac524fc93f1d5e103f79f370c950bf7ac62db0056b67f0726d824.lean/declarations/criticaldiscrepancyprimitive-ae-hasderivat--3ba199de7456eb99247fec16.md) | 117 | `result-track:3ba199de7456eb99247fec16875057466a78a687de4f1e3f334fbf298a1f1666` |
| 17 | `theorem` | [criticalDiscrepancyPrimitive_sub](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant30fb85155d0ac524fc93f1d5e103f79f370c950bf7ac62db0056b67f0726d824.lean/declarations/criticaldiscrepancyprimitive-sub--170bff427d71973d2d74490f.md) | 126 | `result-track:170bff427d71973d2d74490f28b9877211961bb61e516d47032af32ca3830985` |
| 18 | `theorem` | [density_mass_integral](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant30fb85155d0ac524fc93f1d5e103f79f370c950bf7ac62db0056b67f0726d824.lean/declarations/density-mass-integral--e534af165a8f09b7df1cdb01.md) | 133 | `result-track:e534af165a8f09b7df1cdb013e6fae7af1f40ab00d9a7f397ac303cd22d8b9d8` |
| 19 | `theorem` | [criticalDiscrepancyPrimitive_eq_primeLogSum](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant30fb85155d0ac524fc93f1d5e103f79f370c950bf7ac62db0056b67f0726d824.lean/declarations/criticaldiscrepancyprimitive-eq-primelogsum--90580116e35b02ce144ff0d1.md) | 154 | `result-track:90580116e35b02ce144ff0d16e1fcd6b21a2adea57939e938e535092471b9deb` |
| 20 | `theorem` | [criticalDiscrepancyBridge_at_zero](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant30fb85155d0ac524fc93f1d5e103f79f370c950bf7ac62db0056b67f0726d824.lean/declarations/criticaldiscrepancybridge-at-zero--954a7a8381fb141eb6ab7b20.md) | 176 | `result-track:954a7a8381fb141eb6ab7b20c2c19607031c5a5aefff4b17303846a730e00bce` |
| 21 | `theorem` | [criticalDiscrepancyBridge_at_upper](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant30fb85155d0ac524fc93f1d5e103f79f370c950bf7ac62db0056b67f0726d824.lean/declarations/criticaldiscrepancybridge-at-upper--2dd036a13955850d37e1c335.md) | 181 | `result-track:2dd036a13955850d37e1c335956256ace86352ddbae6163aa5d0993905c10ae3` |
| 22 | `theorem` | [criticalDiscrepancyBridge_continuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant30fb85155d0ac524fc93f1d5e103f79f370c950bf7ac62db0056b67f0726d824.lean/declarations/criticaldiscrepancybridge-continuous--9b59126e8fdf631f63b4149f.md) | 187 | `result-track:9b59126e8fdf631f63b4149f3ad9c883746284b57606f98881c64b4d90b18e1b` |
| 23 | `theorem` | [criticalDiscrepancyBridge_absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant30fb85155d0ac524fc93f1d5e103f79f370c950bf7ac62db0056b67f0726d824.lean/declarations/criticaldiscrepancybridge-absolutelycontinuous--ef10fbb66feefefb55d84626.md) | 193 | `result-track:ef10fbb66feefefb55d84626305eb7c7449ae083517ce6bf54a7e2d45db21e5d` |
| 24 | `theorem` | [criticalDiscrepancyBridge_ae_hasDerivAt](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant30fb85155d0ac524fc93f1d5e103f79f370c950bf7ac62db0056b67f0726d824.lean/declarations/criticaldiscrepancybridge-ae-hasderivat--a8872b580fa6aeb1dc9c8874.md) | 201 | `result-track:a8872b580fa6aeb1dc9c887478ff606f190a62dd84b31d2c1015d8d56c49241b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
