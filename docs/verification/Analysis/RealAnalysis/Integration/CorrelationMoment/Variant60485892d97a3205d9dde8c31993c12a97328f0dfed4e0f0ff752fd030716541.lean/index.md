# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.CorrelationMoment.Variant60485892d97a3205d9dde8c31993c12a97328f0dfed4e0f0ff752fd030716541

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37fa3bd5de1a7a19e39a9bafe00e49b823aaa9c6",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant60485892d97a3205d9dde8c31993c12a97328f0dfed4e0f0ff752fd030716541.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant60485892d97a3205d9dde8c31993c12a97328f0dfed4e0f0ff752fd030716541.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant60485892d97a3205d9dde8c31993c12a97328f0dfed4e0f0ff752fd030716541.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37fa3bd5de1a7a19e39a9bafe00e49b823aaa9c6`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant60485892d97a3205d9dde8c31993c12a97328f0dfed4e0f0ff752fd030716541.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant60485892d97a3205d9dde8c31993c12a97328f0dfed4e0f0ff752fd030716541.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SUCAS.Realization` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SUCAS.CorrelationRegularity` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convolution` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [polePrimitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant60485892d97a3205d9dde8c31993c12a97328f0dfed4e0f0ff752fd030716541.lean/declarations/poleprimitive--b9be0a20cfec91f9c60c40fd.md) | 32 | `declaration-track:b9be0a20cfec91f9c60c40fd8ccfb51850d63ad05e50ebab1076c4fea8b03f82` |
| 2 | `theorem` | [polePrimitive_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant60485892d97a3205d9dde8c31993c12a97328f0dfed4e0f0ff752fd030716541.lean/declarations/poleprimitive-hasderivat--fe152dbfd1bbd661623a720a.md) | 36 | `result-track:fe152dbfd1bbd661623a720ac4e6f6331d05c4ba3cd9948c52dbc43c51c61fb9` |
| 3 | `theorem` | [polePrimitive_endpoints](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant60485892d97a3205d9dde8c31993c12a97328f0dfed4e0f0ff752fd030716541.lean/declarations/poleprimitive-endpoints--a37a5174f024efd53ae6d8ea.md) | 48 | `result-track:a37a5174f024efd53ae6d8ea04570caa95ed23743c32147f8ff0ceb2b77ca383` |
| 4 | `theorem` | [weighted_dilationTest_eq_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant60485892d97a3205d9dde8c31993c12a97328f0dfed4e0f0ff752fd030716541.lean/declarations/weighted-dilationtest-eq-indicator--25f0f52aea8faf49c2eb16fa.md) | 55 | `result-track:25f0f52aea8faf49c2eb16fa93043a4fa503fb041e0722e55473f84861dc29ab` |
| 5 | `theorem` | [weighted_dilationTest_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant60485892d97a3205d9dde8c31993c12a97328f0dfed4e0f0ff752fd030716541.lean/declarations/weighted-dilationtest-integrable--1c2d3dd127cf0f2a163e6263.md) | 65 | `result-track:1c2d3dd127cf0f2a163e62631c79e458d88569bee31923771ee92cb4475b4ee4` |
| 6 | `theorem` | [weighted_dilationTest_integral_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant60485892d97a3205d9dde8c31993c12a97328f0dfed4e0f0ff752fd030716541.lean/declarations/weighted-dilationtest-integral-zero--2a9e1321314bcef383a486d1.md) | 74 | `result-track:2a9e1321314bcef383a486d1e118413f1188f98c0438b8572dd561b377fad67d` |
| 7 | `theorem` | [weighted_normalizedTest_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant60485892d97a3205d9dde8c31993c12a97328f0dfed4e0f0ff752fd030716541.lean/declarations/weighted-normalizedtest-integrable--69c081577f5fd05a1c83937a.md) | 92 | `result-track:69c081577f5fd05a1c83937a341df224fcf0a8c3d69853a237138e4991ecb4d2` |
| 8 | `theorem` | [weighted_normalizedTest_integral_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant60485892d97a3205d9dde8c31993c12a97328f0dfed4e0f0ff752fd030716541.lean/declarations/weighted-normalizedtest-integral-zero--6fbc64fb4ff5bd5efc9f43d3.md) | 98 | `result-track:6fbc64fb4ff5bd5efc9f43d3915e5d46c59ed8e9a17c8c548472d42a2f573340` |
| 9 | `def` | [correlation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant60485892d97a3205d9dde8c31993c12a97328f0dfed4e0f0ff752fd030716541.lean/declarations/correlation--d8dc59a61d66e2c78041b03b.md) | 105 | `declaration-track:d8dc59a61d66e2c78041b03b7f55ef7e4f8c028761c9a8553fb1858f462c618f` |
| 10 | `theorem` | [weighted_correlation_eq_convolution](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant60485892d97a3205d9dde8c31993c12a97328f0dfed4e0f0ff752fd030716541.lean/declarations/weighted-correlation-eq-convolution--f9ac94236a624f36c832d84e.md) | 108 | `result-track:f9ac94236a624f36c832d84e03f02ce68b176e63fd51bf99a6b9e66177b5c4df` |
| 11 | `theorem` | [reflected_weight_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant60485892d97a3205d9dde8c31993c12a97328f0dfed4e0f0ff752fd030716541.lean/declarations/reflected-weight-integrable--387361dedb70bf8f195a623d.md) | 126 | `result-track:387361dedb70bf8f195a623d5a91231f5d1aaf6566612d5bb4f744d4d6e5bbf7` |
| 12 | `theorem` | [weighted_correlation_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant60485892d97a3205d9dde8c31993c12a97328f0dfed4e0f0ff752fd030716541.lean/declarations/weighted-correlation-integrable--e8a2518883ead3fd18873856.md) | 133 | `result-track:e8a2518883ead3fd188738561573c88a331ab2d836dc7e1a5c8072168a5e7a73` |
| 13 | `theorem` | [weighted_correlation_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant60485892d97a3205d9dde8c31993c12a97328f0dfed4e0f0ff752fd030716541.lean/declarations/weighted-correlation-integral--b479dd6f06cdd9a983cb4fc8.md) | 148 | `result-track:b479dd6f06cdd9a983cb4fc8999a90eaf805d06eb05bf2badfec5f86c0a4ab89` |
| 14 | `theorem` | [half_interval_moment_of_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant60485892d97a3205d9dde8c31993c12a97328f0dfed4e0f0ff752fd030716541.lean/declarations/half-interval-moment-of-even--5bb1ed7ee164045eda4e42a2.md) | 163 | `result-track:5bb1ed7ee164045eda4e42a2b6fcde3a4ab61bca2066314d1f81d9473614aad3` |
| 15 | `theorem` | [positive_pole_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant60485892d97a3205d9dde8c31993c12a97328f0dfed4e0f0ff752fd030716541.lean/declarations/positive-pole-integrable--43f9c363488f83074bfcecc0.md) | 199 | `result-track:43f9c363488f83074bfcecc0f4aa72e961698b1e4890e60e5846e0847f96c966` |
| 16 | `theorem` | [negative_pole_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant60485892d97a3205d9dde8c31993c12a97328f0dfed4e0f0ff752fd030716541.lean/declarations/negative-pole-integrable--834c0233ec7cc6c04d895277.md) | 205 | `result-track:834c0233ec7cc6c04d895277ff2ca9df97cbd111718fa6e4eba946aea242a39e` |
| 17 | `theorem` | [positive_pole_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant60485892d97a3205d9dde8c31993c12a97328f0dfed4e0f0ff752fd030716541.lean/declarations/positive-pole-zero--d4d79f09425cbb2b6b1b058b.md) | 212 | `result-track:d4d79f09425cbb2b6b1b058b3260d6c84c51b06f1e7a9ab32d54abd0a4c6fd6c` |
| 18 | `theorem` | [negative_pole_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant60485892d97a3205d9dde8c31993c12a97328f0dfed4e0f0ff752fd030716541.lean/declarations/negative-pole-zero--ea42e9b8a8fa76028cb5d0d2.md) | 218 | `result-track:ea42e9b8a8fa76028cb5d0d29b5d0f9a5fefbf16c4f4f4c3586811a79cf3980d` |
| 19 | `theorem` | [full_correlation_moment_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant60485892d97a3205d9dde8c31993c12a97328f0dfed4e0f0ff752fd030716541.lean/declarations/full-correlation-moment-zero--ee48571a8c2c3807a1e3fae1.md) | 224 | `result-track:ee48571a8c2c3807a1e3fae17ededa0ce4f6a5a5006d30dbd8b9529bf78c22b5` |
| 20 | `theorem` | [pole_correlation_certificate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant60485892d97a3205d9dde8c31993c12a97328f0dfed4e0f0ff752fd030716541.lean/declarations/pole-correlation-certificate--4afda64d20399627caf195b9.md) | 236 | `result-track:4afda64d20399627caf195b9e934b38147fadf8e522520859aa30d204048d4da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
