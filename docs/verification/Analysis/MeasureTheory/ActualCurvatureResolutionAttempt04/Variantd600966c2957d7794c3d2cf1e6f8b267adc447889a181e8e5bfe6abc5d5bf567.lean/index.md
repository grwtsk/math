# Verification target: GRWTSK.Analysis.MeasureTheory.ActualCurvatureResolutionAttempt04.Variantd600966c2957d7794c3d2cf1e6f8b267adc447889a181e8e5bfe6abc5d5bf567

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6908d28763393c2a04c7836e46a04e0a1820894",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt04/Variantd600966c2957d7794c3d2cf1e6f8b267adc447889a181e8e5bfe6abc5d5bf567.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt04/Variantd600966c2957d7794c3d2cf1e6f8b267adc447889a181e8e5bfe6abc5d5bf567.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt04/Variantd600966c2957d7794c3d2cf1e6f8b267adc447889a181e8e5bfe6abc5d5bf567.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6908d28763393c2a04c7836e46a04e0a1820894`.

Source path: `GRWTSK/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt04/Variantd600966c2957d7794c3d2cf1e6f8b267adc447889a181e8e5bfe6abc5d5bf567.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt04/Variantd600966c2957d7794c3d2cf1e6f8b267adc447889a181e8e5bfe6abc5d5bf567.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualCurvatureBudget` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.Floor` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sampledCurvatureWork](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt04/Variantd600966c2957d7794c3d2cf1e6f8b267adc447889a181e8e5bfe6abc5d5bf567.lean/declarations/sampledcurvaturework--df9f587fff2fb858204bc71e.md) | 16 | `declaration-track:df9f587fff2fb858204bc71e492557a4171a4f1aae1c129e8eb9d329c25a3e85` |
| 2 | `theorem` | [sampled_integrand_intervalIntegrable](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt04/Variantd600966c2957d7794c3d2cf1e6f8b267adc447889a181e8e5bfe6abc5d5bf567.lean/declarations/sampled-integrand-intervalintegrable--f077b00d68d585466771ee15.md) | 19 | `result-track:f077b00d68d585466771ee15a096191f3859b9a8a9a25083e8c278c05c38bd07` |
| 3 | `theorem` | [sampled_work_error](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt04/Variantd600966c2957d7794c3d2cf1e6f8b267adc447889a181e8e5bfe6abc5d5bf567.lean/declarations/sampled-work-error--4ccd0676b8e94da4ea492e8f.md) | 39 | `result-track:4ccd0676b8e94da4ea492e8f27b6032d404a18665ef738319e31f9db36a7ff19` |
| 4 | `def` | [leftGridSample](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt04/Variantd600966c2957d7794c3d2cf1e6f8b267adc447889a181e8e5bfe6abc5d5bf567.lean/declarations/leftgridsample--beb354982d805a1b2c4ed4d4.md) | 66 | `declaration-track:beb354982d805a1b2c4ed4d4e33752123361fd92c7ed93a0b359d42cd8d7eb18` |
| 5 | `theorem` | [leftGridSample_measurable](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt04/Variantd600966c2957d7794c3d2cf1e6f8b267adc447889a181e8e5bfe6abc5d5bf567.lean/declarations/leftgridsample-measurable--96e86d65a671a389c2ab6ae2.md) | 69 | `result-track:96e86d65a671a389c2ab6ae283a60f64ef6b90f48501382982601103edde6ee5` |
| 6 | `theorem` | [leftGridSample_range_mesh](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt04/Variantd600966c2957d7794c3d2cf1e6f8b267adc447889a181e8e5bfe6abc5d5bf567.lean/declarations/leftgridsample-range-mesh--b7a94247004821e2c13839c5.md) | 73 | `result-track:b7a94247004821e2c13839c5fbddf82f70f09ebe04ad0582441ba85d64a1728f` |
| 7 | `theorem` | [actual_grid_work_error](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt04/Variantd600966c2957d7794c3d2cf1e6f8b267adc447889a181e8e5bfe6abc5d5bf567.lean/declarations/actual-grid-work-error--a184d553419934916b5d2b8b.md) | 95 | `result-track:a184d553419934916b5d2b8b2d6ab2c45e2ad5fddb1d7a857d5e618b376f9678` |
| 8 | `def` | [curvatureResolutionCount](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt04/Variantd600966c2957d7794c3d2cf1e6f8b267adc447889a181e8e5bfe6abc5d5bf567.lean/declarations/curvatureresolutioncount--6dfd7f2b040a7df1dd09b207.md) | 112 | `declaration-track:6dfd7f2b040a7df1dd09b2079362677a540437218093e919a192385554a02b8c` |
| 9 | `theorem` | [curvatureResolutionCount_pos](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt04/Variantd600966c2957d7794c3d2cf1e6f8b267adc447889a181e8e5bfe6abc5d5bf567.lean/declarations/curvatureresolutioncount-pos--47543ae3ec436b944c6ab097.md) | 114 | `result-track:47543ae3ec436b944c6ab097eccf4cc1b999e886b85270727a5bc4d843c38760` |
| 10 | `theorem` | [curvatureResolutionCount_mono](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt04/Variantd600966c2957d7794c3d2cf1e6f8b267adc447889a181e8e5bfe6abc5d5bf567.lean/declarations/curvatureresolutioncount-mono--5244aebe09a00900d584186f.md) | 118 | `result-track:5244aebe09a00900d584186f1f717c9b6384fa7949db14cbb9d98c9476d62665` |
| 11 | `theorem` | [actual_joint_grid_work_accuracy](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt04/Variantd600966c2957d7794c3d2cf1e6f8b267adc447889a181e8e5bfe6abc5d5bf567.lean/declarations/actual-joint-grid-work-accuracy--4ba3ea2c5e6c9c44396e7d1e.md) | 125 | `result-track:4ba3ea2c5e6c9c44396e7d1e12ea5008f3a23b835e86a1d308d676b06b1668c1` |
| 12 | `def` | [CurvatureGridTailLowerBound](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt04/Variantd600966c2957d7794c3d2cf1e6f8b267adc447889a181e8e5bfe6abc5d5bf567.lean/declarations/curvaturegridtaillowerbound--30964aec610c0b8279cb8ebd.md) | 139 | `declaration-track:30964aec610c0b8279cb8ebdf2f3a5a284c88d4ae6f3c62a4b663bba6c585584` |
| 13 | `theorem` | [actual_tail_iff_grid_tail](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt04/Variantd600966c2957d7794c3d2cf1e6f8b267adc447889a181e8e5bfe6abc5d5bf567.lean/declarations/actual-tail-iff-grid-tail--708bf1a21de652fb00140f6b.md) | 144 | `result-track:708bf1a21de652fb00140f6b3639a61a056856b7e48f1a625f9915093aed1471` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
