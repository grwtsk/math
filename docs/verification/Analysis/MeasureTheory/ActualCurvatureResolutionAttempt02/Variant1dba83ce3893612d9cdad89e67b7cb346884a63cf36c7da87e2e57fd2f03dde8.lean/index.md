# Verification target: GRWTSK.Analysis.MeasureTheory.ActualCurvatureResolutionAttempt02.Variant1dba83ce3893612d9cdad89e67b7cb346884a63cf36c7da87e2e57fd2f03dde8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5f98547956f127a97508a74ba09476347994ebb",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt02/Variant1dba83ce3893612d9cdad89e67b7cb346884a63cf36c7da87e2e57fd2f03dde8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt02/Variant1dba83ce3893612d9cdad89e67b7cb346884a63cf36c7da87e2e57fd2f03dde8.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt02/Variant1dba83ce3893612d9cdad89e67b7cb346884a63cf36c7da87e2e57fd2f03dde8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5f98547956f127a97508a74ba09476347994ebb`.

Source path: `GRWTSK/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt02/Variant1dba83ce3893612d9cdad89e67b7cb346884a63cf36c7da87e2e57fd2f03dde8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt02/Variant1dba83ce3893612d9cdad89e67b7cb346884a63cf36c7da87e2e57fd2f03dde8.lean.json)

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
| 1 | `def` | [sampledCurvatureWork](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt02/Variant1dba83ce3893612d9cdad89e67b7cb346884a63cf36c7da87e2e57fd2f03dde8.lean/declarations/sampledcurvaturework--2b21e2f6c9bb527932d65f74.md) | 16 | `declaration-track:2b21e2f6c9bb527932d65f74a6ed4043a44284ae8580c065ff329fd94b8cd96d` |
| 2 | `theorem` | [sampled_integrand_intervalIntegrable](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt02/Variant1dba83ce3893612d9cdad89e67b7cb346884a63cf36c7da87e2e57fd2f03dde8.lean/declarations/sampled-integrand-intervalintegrable--546ca9bf002ebaad8167adb6.md) | 19 | `result-track:546ca9bf002ebaad8167adb600bb8b46f1b906fe35db3e1a27c087db76850f35` |
| 3 | `theorem` | [sampled_work_error](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt02/Variant1dba83ce3893612d9cdad89e67b7cb346884a63cf36c7da87e2e57fd2f03dde8.lean/declarations/sampled-work-error--ed5b4d4a56a6e5aaa2d163ea.md) | 39 | `result-track:ed5b4d4a56a6e5aaa2d163ea77398620afc82a03741ea535b11e9537c22a8af5` |
| 4 | `def` | [leftGridSample](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt02/Variant1dba83ce3893612d9cdad89e67b7cb346884a63cf36c7da87e2e57fd2f03dde8.lean/declarations/leftgridsample--8c5b85e4e92369ae4e347bbe.md) | 66 | `declaration-track:8c5b85e4e92369ae4e347bbea2109a6176f4eff5d7f24d2849acd0ff9497b98a` |
| 5 | `theorem` | [leftGridSample_measurable](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt02/Variant1dba83ce3893612d9cdad89e67b7cb346884a63cf36c7da87e2e57fd2f03dde8.lean/declarations/leftgridsample-measurable--3dd447552ba8a35648eb1ba9.md) | 69 | `result-track:3dd447552ba8a35648eb1ba9cdf3f9f7e995b1ac99f9663163fa69c939b5a348` |
| 6 | `theorem` | [leftGridSample_range_mesh](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt02/Variant1dba83ce3893612d9cdad89e67b7cb346884a63cf36c7da87e2e57fd2f03dde8.lean/declarations/leftgridsample-range-mesh--cfdce59da884f139ab58844a.md) | 73 | `result-track:cfdce59da884f139ab58844a7da7c9af0fff374699f2448a14dc2691d3e4ac29` |
| 7 | `theorem` | [actual_grid_work_error](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt02/Variant1dba83ce3893612d9cdad89e67b7cb346884a63cf36c7da87e2e57fd2f03dde8.lean/declarations/actual-grid-work-error--bbebead2388a7a12d5c60b8d.md) | 95 | `result-track:bbebead2388a7a12d5c60b8de1a90976895ec085d0443a3a1a7480e86e1c41b7` |
| 8 | `def` | [curvatureResolutionCount](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt02/Variant1dba83ce3893612d9cdad89e67b7cb346884a63cf36c7da87e2e57fd2f03dde8.lean/declarations/curvatureresolutioncount--20d8c97a6e4cdf4592f5fc8a.md) | 112 | `declaration-track:20d8c97a6e4cdf4592f5fc8ac4d3ecf6cb2759ef0e26d42cd977d2ee75dedf9e` |
| 9 | `theorem` | [curvatureResolutionCount_pos](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt02/Variant1dba83ce3893612d9cdad89e67b7cb346884a63cf36c7da87e2e57fd2f03dde8.lean/declarations/curvatureresolutioncount-pos--8b3101f26081c732b3751065.md) | 114 | `result-track:8b3101f26081c732b3751065e85a27019e3f30e95fea260ca45f88030397eb54` |
| 10 | `theorem` | [actual_joint_grid_work_accuracy](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt02/Variant1dba83ce3893612d9cdad89e67b7cb346884a63cf36c7da87e2e57fd2f03dde8.lean/declarations/actual-joint-grid-work-accuracy--d35182ab4131be96c96b7103.md) | 118 | `result-track:d35182ab4131be96c96b7103c77d97aa4c3b95c92b1f7f6ddde15202d10c5c82` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
