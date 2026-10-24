# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LogarithmicSourceAttempt07.Variant15b345ee2e22e14f2eee375375a13d39d724dfa56ca5878dc33885640bd7b3d8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d13e36e11a021c1c1b44ff39a1717d0f1aa798c",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt07/Variant15b345ee2e22e14f2eee375375a13d39d724dfa56ca5878dc33885640bd7b3d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt07/Variant15b345ee2e22e14f2eee375375a13d39d724dfa56ca5878dc33885640bd7b3d8.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt07/Variant15b345ee2e22e14f2eee375375a13d39d724dfa56ca5878dc33885640bd7b3d8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d13e36e11a021c1c1b44ff39a1717d0f1aa798c`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt07/Variant15b345ee2e22e14f2eee375375a13d39d724dfa56ca5878dc33885640bd7b3d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt07/Variant15b345ee2e22e14f2eee375375a13d39d724dfa56ca5878dc33885640bd7b3d8.lean.json)

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
| 1 | `def` | [positiveLogLift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt07/Variant15b345ee2e22e14f2eee375375a13d39d724dfa56ca5878dc33885640bd7b3d8.lean/declarations/positiveloglift--2381617e617a5105c809638c.md) | 19 | `declaration-track:2381617e617a5105c809638ca060ed5c62fe5baba0591273a7883947345db95d` |
| 2 | `theorem` | [positiveLogLift_exp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt07/Variant15b345ee2e22e14f2eee375375a13d39d724dfa56ca5878dc33885640bd7b3d8.lean/declarations/positiveloglift-exp--ab6446e3b372812633846416.md) | 22 | `result-track:ab6446e3b3728126338464168359389531bc9fced01de48bcefe8d0fae960a21` |
| 3 | `theorem` | [exp_square_weight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt07/Variant15b345ee2e22e14f2eee375375a13d39d724dfa56ca5878dc33885640bd7b3d8.lean/declarations/exp-square-weight--dc510ca394cef1b93f79896d.md) | 26 | `result-track:dc510ca394cef1b93f79896d526c0b6e59bdca6cdbbcdcfe8da5b45520a6cf70` |
| 4 | `theorem` | [lift_square_jacobian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt07/Variant15b345ee2e22e14f2eee375375a13d39d724dfa56ca5878dc33885640bd7b3d8.lean/declarations/lift-square-jacobian--0b652780d29e30882e5ed492.md) | 32 | `result-track:0b652780d29e30882e5ed4927946985472fc85205b02429271527064d01b1400` |
| 5 | `theorem` | [lift_square_integrable_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt07/Variant15b345ee2e22e14f2eee375375a13d39d724dfa56ca5878dc33885640bd7b3d8.lean/declarations/lift-square-integrable-iff--ada54c30a44ab929504d5b09.md) | 39 | `result-track:ada54c30a44ab929504d5b092d1b1a4a672b93ee6ed0ead38a87566a47165b5e` |
| 6 | `theorem` | [lift_square_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt07/Variant15b345ee2e22e14f2eee375375a13d39d724dfa56ca5878dc33885640bd7b3d8.lean/declarations/lift-square-integral--0ac3e705a507416ce9d81ad0.md) | 50 | `result-track:0ac3e705a507416ce9d81ad0e90955d3ebb8e652f5ecc43a1ae73f4e36810375` |
| 7 | `def` | [actualLogSource](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt07/Variant15b345ee2e22e14f2eee375375a13d39d724dfa56ca5878dc33885640bd7b3d8.lean/declarations/actuallogsource--57159ed8f65b76104763c4d3.md) | 61 | `declaration-track:57159ed8f65b76104763c4d3dc7f6f5329317fa8a1d87d888ed6357e37883d6a` |
| 8 | `theorem` | [actualLogSource_square_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt07/Variant15b345ee2e22e14f2eee375375a13d39d724dfa56ca5878dc33885640bd7b3d8.lean/declarations/actuallogsource-square-integrable--63c2899fa37d8002bba77739.md) | 64 | `result-track:63c2899fa37d8002bba777390cd29472c748c4738bff15621fc0f4d9337321c2` |
| 9 | `theorem` | [actualLogSource_square_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt07/Variant15b345ee2e22e14f2eee375375a13d39d724dfa56ca5878dc33885640bd7b3d8.lean/declarations/actuallogsource-square-integral--43440e21605a22a71f06e806.md) | 68 | `result-track:43440e21605a22a71f06e8063902924bd2c14bc03e78089dafb09ad08193799e` |
| 10 | `theorem` | [actualLogSource_zero_outside](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt07/Variant15b345ee2e22e14f2eee375375a13d39d724dfa56ca5878dc33885640bd7b3d8.lean/declarations/actuallogsource-zero-outside--a482d13bca845a8249c29905.md) | 73 | `result-track:a482d13bca845a8249c29905f4a15e8e328660b81a791f5e747202cad7586ca4` |
| 11 | `theorem` | [actualLogSource_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt07/Variant15b345ee2e22e14f2eee375375a13d39d724dfa56ca5878dc33885640bd7b3d8.lean/declarations/actuallogsource-hascompactsupport--0d7e72b49cbef1271b45fbab.md) | 89 | `result-track:0d7e72b49cbef1271b45fbab3c9bf5a14616150ac0edf5553abd9d74fee8b4ec` |
| 12 | `theorem` | [lift_first_jacobian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt07/Variant15b345ee2e22e14f2eee375375a13d39d724dfa56ca5878dc33885640bd7b3d8.lean/declarations/lift-first-jacobian--5b65807d836b0a7c402ea13c.md) | 100 | `result-track:5b65807d836b0a7c402ea13c2995ab7abdff80ec76c8a7f4b65914f4ee02af83` |
| 13 | `theorem` | [actualLogSource_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt07/Variant15b345ee2e22e14f2eee375375a13d39d724dfa56ca5878dc33885640bd7b3d8.lean/declarations/actuallogsource-integrable--ff9a38f00f1fd6155458a247.md) | 106 | `result-track:ff9a38f00f1fd6155458a247ae35bdcf4c6b13887c9dbb3b3ee120d55c6ae231` |
| 14 | `theorem` | [actualLogSource_integral_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt07/Variant15b345ee2e22e14f2eee375375a13d39d724dfa56ca5878dc33885640bd7b3d8.lean/declarations/actuallogsource-integral-zero--d6d74b31b201822309c6f063.md) | 121 | `result-track:d6d74b31b201822309c6f0637ffabac738c2b15d331179186c532062c9fea064` |
| 15 | `theorem` | [positiveLogLift_dilation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt07/Variant15b345ee2e22e14f2eee375375a13d39d724dfa56ca5878dc33885640bd7b3d8.lean/declarations/positiveloglift-dilation--56e7dc411bdf5af8a0ea1d29.md) | 135 | `result-track:56e7dc411bdf5af8a0ea1d29c85a15f1d90ce74234bfab3ba48d7147af2bbbf4` |
| 16 | `theorem` | [actualLogSource_real_dilation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt07/Variant15b345ee2e22e14f2eee375375a13d39d724dfa56ca5878dc33885640bd7b3d8.lean/declarations/actuallogsource-real-dilation--33a6443938baa2f761130842.md) | 144 | `result-track:33a6443938baa2f761130842f24c8424ddeec67dfe81813adb5d1bf548a3819f` |
| 17 | `theorem` | [actualLogSource_integer_dilation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt07/Variant15b345ee2e22e14f2eee375375a13d39d724dfa56ca5878dc33885640bd7b3d8.lean/declarations/actuallogsource-integer-dilation--a30bfd1eccaa62797c8a4c01.md) | 153 | `result-track:a30bfd1eccaa62797c8a4c018fe7b76b3e35f62300914778cc000438ef827a96` |
| 18 | `theorem` | [lift_mellin_jacobian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt07/Variant15b345ee2e22e14f2eee375375a13d39d724dfa56ca5878dc33885640bd7b3d8.lean/declarations/lift-mellin-jacobian--95aa2dc3e76b9f8d533a2453.md) | 158 | `result-track:95aa2dc3e76b9f8d533a24537e7461a6e2d71a202969ae401ac7edbaea75f6d4` |
| 19 | `theorem` | [lift_mellin_eq_bilateral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt07/Variant15b345ee2e22e14f2eee375375a13d39d724dfa56ca5878dc33885640bd7b3d8.lean/declarations/lift-mellin-eq-bilateral--97afe40b78d323eb36da7f33.md) | 172 | `result-track:97afe40b78d323eb36da7f3347a81e44320cfe363d6c5f47e552f2bace9c9fce` |
| 20 | `theorem` | [lift_mellin_integrable_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt07/Variant15b345ee2e22e14f2eee375375a13d39d724dfa56ca5878dc33885640bd7b3d8.lean/declarations/lift-mellin-integrable-iff--ad20eb26cfa5fed720ef452a.md) | 184 | `result-track:ad20eb26cfa5fed720ef452a416fde945f071e7376b593c374dc8e4cdb8a2279` |
| 21 | `theorem` | [actualLogSource_mellin_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt07/Variant15b345ee2e22e14f2eee375375a13d39d724dfa56ca5878dc33885640bd7b3d8.lean/declarations/actuallogsource-mellin-integrable--4e283ff4a3e975a685bbd259.md) | 195 | `result-track:4e283ff4a3e975a685bbd259d50c5174808f98ed67e239f15d04d98f43f2d40b` |
| 22 | `theorem` | [actualLogSource_mellin_critical](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt07/Variant15b345ee2e22e14f2eee375375a13d39d724dfa56ca5878dc33885640bd7b3d8.lean/declarations/actuallogsource-mellin-critical--ffde33d90c5f5c4a1b570a7b.md) | 204 | `result-track:ffde33d90c5f5c4a1b570a7b84be8b04a429f97ff17ff32b9ac28723022d74a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
