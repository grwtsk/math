# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LogarithmicSourceAttemptrebuild01.Variantd0f8e47bff782922f84ddce42136553ab510708510546ca6c084c6e7497a13cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "afc96ae354161924074c51ccb38ff9acb312b3fd",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttemptrebuild01/Variantd0f8e47bff782922f84ddce42136553ab510708510546ca6c084c6e7497a13cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttemptrebuild01/Variantd0f8e47bff782922f84ddce42136553ab510708510546ca6c084c6e7497a13cb.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttemptrebuild01/Variantd0f8e47bff782922f84ddce42136553ab510708510546ca6c084c6e7497a13cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `afc96ae354161924074c51ccb38ff9acb312b3fd`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttemptrebuild01/Variantd0f8e47bff782922f84ddce42136553ab510708510546ca6c084c6e7497a13cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogarithmicSourceAttemptrebuild01/Variantd0f8e47bff782922f84ddce42136553ab510708510546ca6c084c6e7497a13cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationMoment` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MellinTransform` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.JacobianOneDim` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveLogLift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttemptrebuild01/Variantd0f8e47bff782922f84ddce42136553ab510708510546ca6c084c6e7497a13cb.lean/declarations/positiveloglift--54ec7a1e02045af6b51e4e5f.md) | 19 | `declaration-track:54ec7a1e02045af6b51e4e5f207a516559d9634e1eac03a780b3558ce13320bc` |
| 2 | `theorem` | [positiveLogLift_exp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttemptrebuild01/Variantd0f8e47bff782922f84ddce42136553ab510708510546ca6c084c6e7497a13cb.lean/declarations/positiveloglift-exp--c5af67caf4520209d9ebe587.md) | 22 | `result-track:c5af67caf4520209d9ebe587b163e835cffa3acd6d9ababfaa5371947d91652e` |
| 3 | `theorem` | [exp_square_weight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttemptrebuild01/Variantd0f8e47bff782922f84ddce42136553ab510708510546ca6c084c6e7497a13cb.lean/declarations/exp-square-weight--748349a9c3faf9bcde0c9fb2.md) | 26 | `result-track:748349a9c3faf9bcde0c9fb26a6ae052633d998de3381c246f6607a2afae6926` |
| 4 | `theorem` | [lift_square_jacobian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttemptrebuild01/Variantd0f8e47bff782922f84ddce42136553ab510708510546ca6c084c6e7497a13cb.lean/declarations/lift-square-jacobian--b7890f81559712420ba7115f.md) | 32 | `result-track:b7890f81559712420ba7115f43d1f2b433578a5c62673c161f02d4a1e469ff64` |
| 5 | `theorem` | [lift_square_integrable_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttemptrebuild01/Variantd0f8e47bff782922f84ddce42136553ab510708510546ca6c084c6e7497a13cb.lean/declarations/lift-square-integrable-iff--8b5a2344ce68e22e01107751.md) | 39 | `result-track:8b5a2344ce68e22e011077511459dfd0ff0274ab9412203551fde292bcc93672` |
| 6 | `theorem` | [lift_square_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttemptrebuild01/Variantd0f8e47bff782922f84ddce42136553ab510708510546ca6c084c6e7497a13cb.lean/declarations/lift-square-integral--1eda2355c621932e1b2ff55b.md) | 50 | `result-track:1eda2355c621932e1b2ff55b3918dfb222ffc61068f96663f9c547bc77a0c1ce` |
| 7 | `def` | [actualLogSource](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttemptrebuild01/Variantd0f8e47bff782922f84ddce42136553ab510708510546ca6c084c6e7497a13cb.lean/declarations/actuallogsource--21198562e3936ee5b055a51b.md) | 61 | `declaration-track:21198562e3936ee5b055a51bd0b9a8b0c102ef6077aeb2c31b34c57f5fc23694` |
| 8 | `theorem` | [actualLogSource_square_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttemptrebuild01/Variantd0f8e47bff782922f84ddce42136553ab510708510546ca6c084c6e7497a13cb.lean/declarations/actuallogsource-square-integrable--e86a0e29ec94608b00e4a60c.md) | 64 | `result-track:e86a0e29ec94608b00e4a60cc6608059182bad39af3a01efd7cf0e7e2597afa8` |
| 9 | `theorem` | [actualLogSource_square_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttemptrebuild01/Variantd0f8e47bff782922f84ddce42136553ab510708510546ca6c084c6e7497a13cb.lean/declarations/actuallogsource-square-integral--de7cc404cd2b20ff588a5a62.md) | 68 | `result-track:de7cc404cd2b20ff588a5a622a4fb458f1912d64284c6aed3f719950b4b6d7ab` |
| 10 | `theorem` | [actualLogSource_zero_outside](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttemptrebuild01/Variantd0f8e47bff782922f84ddce42136553ab510708510546ca6c084c6e7497a13cb.lean/declarations/actuallogsource-zero-outside--89dc0351d6af87498ebe4a06.md) | 73 | `result-track:89dc0351d6af87498ebe4a06785fde910489d6394d714172141089be0c88da4a` |
| 11 | `theorem` | [actualLogSource_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttemptrebuild01/Variantd0f8e47bff782922f84ddce42136553ab510708510546ca6c084c6e7497a13cb.lean/declarations/actuallogsource-hascompactsupport--367d2d58d02174e459d64058.md) | 89 | `result-track:367d2d58d02174e459d6405850899cbf5ced8d2312c1f47a55cc95693f5e8e0d` |
| 12 | `theorem` | [lift_first_jacobian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttemptrebuild01/Variantd0f8e47bff782922f84ddce42136553ab510708510546ca6c084c6e7497a13cb.lean/declarations/lift-first-jacobian--2f386d6687c5ec76c8ee9dd3.md) | 100 | `result-track:2f386d6687c5ec76c8ee9dd30e8869884b38c84523139022b17578c477092e7e` |
| 13 | `theorem` | [actualLogSource_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttemptrebuild01/Variantd0f8e47bff782922f84ddce42136553ab510708510546ca6c084c6e7497a13cb.lean/declarations/actuallogsource-integrable--94f367375b98c66f4b17b5ce.md) | 106 | `result-track:94f367375b98c66f4b17b5cee8a690ee938747c789161632187529d5af94b3db` |
| 14 | `theorem` | [actualLogSource_integral_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttemptrebuild01/Variantd0f8e47bff782922f84ddce42136553ab510708510546ca6c084c6e7497a13cb.lean/declarations/actuallogsource-integral-zero--9ed8e25249d908305c0c4a81.md) | 121 | `result-track:9ed8e25249d908305c0c4a81d2bcd302ddb0f6f71f2efa54ae4402711c90f731` |
| 15 | `theorem` | [positiveLogLift_dilation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttemptrebuild01/Variantd0f8e47bff782922f84ddce42136553ab510708510546ca6c084c6e7497a13cb.lean/declarations/positiveloglift-dilation--f88fda2f4023e8b2864881b5.md) | 135 | `result-track:f88fda2f4023e8b2864881b5d3dfa8e27d73f93f8a1fe2bc1adc0a7739ee608e` |
| 16 | `theorem` | [actualLogSource_real_dilation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttemptrebuild01/Variantd0f8e47bff782922f84ddce42136553ab510708510546ca6c084c6e7497a13cb.lean/declarations/actuallogsource-real-dilation--21ace7d7a91693400eef4fc5.md) | 144 | `result-track:21ace7d7a91693400eef4fc5e5b9c4d25290f6d5fe0b1f045943a0299280cfe6` |
| 17 | `theorem` | [actualLogSource_integer_dilation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttemptrebuild01/Variantd0f8e47bff782922f84ddce42136553ab510708510546ca6c084c6e7497a13cb.lean/declarations/actuallogsource-integer-dilation--8cdf6a1cf3facc4baa575313.md) | 153 | `result-track:8cdf6a1cf3facc4baa575313378a4b72a6d22c92f39f113496695e22e0234105` |
| 18 | `theorem` | [lift_mellin_jacobian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttemptrebuild01/Variantd0f8e47bff782922f84ddce42136553ab510708510546ca6c084c6e7497a13cb.lean/declarations/lift-mellin-jacobian--b24edee66df0a388322048b8.md) | 158 | `result-track:b24edee66df0a388322048b823a3796121d97bf6ba6a0dd0383cbac9e59dd80a` |
| 19 | `theorem` | [lift_mellin_eq_bilateral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttemptrebuild01/Variantd0f8e47bff782922f84ddce42136553ab510708510546ca6c084c6e7497a13cb.lean/declarations/lift-mellin-eq-bilateral--d167ba2116cf0aa2e6dc0eed.md) | 172 | `result-track:d167ba2116cf0aa2e6dc0eed431eb66f418940725a22aab7173d332e0ee24c4c` |
| 20 | `theorem` | [lift_mellin_integrable_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttemptrebuild01/Variantd0f8e47bff782922f84ddce42136553ab510708510546ca6c084c6e7497a13cb.lean/declarations/lift-mellin-integrable-iff--055da2e78bd9dbe6af85afb5.md) | 184 | `result-track:055da2e78bd9dbe6af85afb5a746e99a5b325979490fb57a4118b0ede72467fc` |
| 21 | `theorem` | [actualLogSource_mellin_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttemptrebuild01/Variantd0f8e47bff782922f84ddce42136553ab510708510546ca6c084c6e7497a13cb.lean/declarations/actuallogsource-mellin-integrable--c81680cacb75548cce4160b9.md) | 195 | `result-track:c81680cacb75548cce4160b9abc3f73f3f6817b5c0492c8729bd2494ca05dc6b` |
| 22 | `theorem` | [actualLogSource_mellin_critical](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttemptrebuild01/Variantd0f8e47bff782922f84ddce42136553ab510708510546ca6c084c6e7497a13cb.lean/declarations/actuallogsource-mellin-critical--69712ab1e6953dba73832276.md) | 204 | `result-track:69712ab1e6953dba7383227681c54d2955bcf549b45af91180313a9af4ae6bcf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
