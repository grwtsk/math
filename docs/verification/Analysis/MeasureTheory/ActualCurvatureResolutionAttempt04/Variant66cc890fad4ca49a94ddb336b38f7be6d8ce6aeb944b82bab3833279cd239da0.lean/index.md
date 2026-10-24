# Verification target: GRWTSK.Analysis.MeasureTheory.ActualCurvatureResolutionAttempt04.Variant66cc890fad4ca49a94ddb336b38f7be6d8ce6aeb944b82bab3833279cd239da0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65c6873bb46d96b9b32aceec0a01e75fb462595c",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt04/Variant66cc890fad4ca49a94ddb336b38f7be6d8ce6aeb944b82bab3833279cd239da0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt04/Variant66cc890fad4ca49a94ddb336b38f7be6d8ce6aeb944b82bab3833279cd239da0.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt04/Variant66cc890fad4ca49a94ddb336b38f7be6d8ce6aeb944b82bab3833279cd239da0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65c6873bb46d96b9b32aceec0a01e75fb462595c`.

Source path: `GRWTSK/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt04/Variant66cc890fad4ca49a94ddb336b38f7be6d8ce6aeb944b82bab3833279cd239da0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt04/Variant66cc890fad4ca49a94ddb336b38f7be6d8ce6aeb944b82bab3833279cd239da0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualCurvatureBudget` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.Floor` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sampledCurvatureWork](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt04/Variant66cc890fad4ca49a94ddb336b38f7be6d8ce6aeb944b82bab3833279cd239da0.lean/declarations/sampledcurvaturework--81a2c6a7c524532efbd6d30b.md) | 24 | `declaration-track:81a2c6a7c524532efbd6d30bb099aea60ba7a87f2d6a2b30575a1d73d099a6dc` |
| 2 | `theorem` | [sampled_integrand_intervalIntegrable](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt04/Variant66cc890fad4ca49a94ddb336b38f7be6d8ce6aeb944b82bab3833279cd239da0.lean/declarations/sampled-integrand-intervalintegrable--e745064fb504bd49e0a37030.md) | 27 | `result-track:e745064fb504bd49e0a3703008ef514f8d78f1b0dc909c016032063cff42b1ee` |
| 3 | `theorem` | [sampled_work_error](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt04/Variant66cc890fad4ca49a94ddb336b38f7be6d8ce6aeb944b82bab3833279cd239da0.lean/declarations/sampled-work-error--8a889aeb52d3deaee24eb5b0.md) | 47 | `result-track:8a889aeb52d3deaee24eb5b0f7a54f402340ce191ec104b7ff57dc617b72ceb3` |
| 4 | `def` | [leftGridSample](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt04/Variant66cc890fad4ca49a94ddb336b38f7be6d8ce6aeb944b82bab3833279cd239da0.lean/declarations/leftgridsample--98ca3313fc4ce21e1b5249eb.md) | 74 | `declaration-track:98ca3313fc4ce21e1b5249eb80b884e5ef90ba45893c791f7e9c512adcdc6632` |
| 5 | `theorem` | [leftGridSample_measurable](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt04/Variant66cc890fad4ca49a94ddb336b38f7be6d8ce6aeb944b82bab3833279cd239da0.lean/declarations/leftgridsample-measurable--ae0d00895c81f7ca2a83be1e.md) | 77 | `result-track:ae0d00895c81f7ca2a83be1e83316237aa9893df3038b0327236c60ed657a9c2` |
| 6 | `theorem` | [leftGridSample_range_mesh](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt04/Variant66cc890fad4ca49a94ddb336b38f7be6d8ce6aeb944b82bab3833279cd239da0.lean/declarations/leftgridsample-range-mesh--1a8721d63e51c743a07b488c.md) | 81 | `result-track:1a8721d63e51c743a07b488c42f6c22a020f48edecdbe1b4fc5d0883b0ce19bb` |
| 7 | `theorem` | [actual_grid_work_error](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt04/Variant66cc890fad4ca49a94ddb336b38f7be6d8ce6aeb944b82bab3833279cd239da0.lean/declarations/actual-grid-work-error--f4ed4788dbefb2c1465121e0.md) | 103 | `result-track:f4ed4788dbefb2c1465121e097b92640c50feb812dce75b7dbcc6c6929abc501` |
| 8 | `def` | [curvatureResolutionCount](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt04/Variant66cc890fad4ca49a94ddb336b38f7be6d8ce6aeb944b82bab3833279cd239da0.lean/declarations/curvatureresolutioncount--551bc2ccb783082760b8bd61.md) | 120 | `declaration-track:551bc2ccb783082760b8bd61bd8ad82ff890186da8d3667985f88766d937f1c9` |
| 9 | `theorem` | [curvatureResolutionCount_pos](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt04/Variant66cc890fad4ca49a94ddb336b38f7be6d8ce6aeb944b82bab3833279cd239da0.lean/declarations/curvatureresolutioncount-pos--438737e6fa0dc00896e08b40.md) | 122 | `result-track:438737e6fa0dc00896e08b4005cc17ecf9755e4f8b7b8d753140cd6afa2ba36e` |
| 10 | `theorem` | [curvatureResolutionCount_mono](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt04/Variant66cc890fad4ca49a94ddb336b38f7be6d8ce6aeb944b82bab3833279cd239da0.lean/declarations/curvatureresolutioncount-mono--ffbd8733ff70a2701add2340.md) | 126 | `result-track:ffbd8733ff70a2701add23408a8ae0d84f2776463bb036363514fb3d445c3fca` |
| 11 | `theorem` | [actual_joint_grid_work_accuracy](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt04/Variant66cc890fad4ca49a94ddb336b38f7be6d8ce6aeb944b82bab3833279cd239da0.lean/declarations/actual-joint-grid-work-accuracy--3d41757a53407e868937a21e.md) | 133 | `result-track:3d41757a53407e868937a21e048ddfbf68b0db1f656159a3ea33530f7dec1a8d` |
| 12 | `def` | [CurvatureGridTailLowerBound](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt04/Variant66cc890fad4ca49a94ddb336b38f7be6d8ce6aeb944b82bab3833279cd239da0.lean/declarations/curvaturegridtaillowerbound--d70a998213d2369e9927d480.md) | 147 | `declaration-track:d70a998213d2369e9927d4800b0bb244e210e0a2d4bb9248fb13245bb3eb8996` |
| 13 | `theorem` | [actual_tail_iff_grid_tail](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt04/Variant66cc890fad4ca49a94ddb336b38f7be6d8ce6aeb944b82bab3833279cd239da0.lean/declarations/actual-tail-iff-grid-tail--63cd1263aa245bf41a87d217.md) | 152 | `result-track:63cd1263aa245bf41a87d217dad50ce1eab17d2750c77bfebfe1f6e7492b151b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
