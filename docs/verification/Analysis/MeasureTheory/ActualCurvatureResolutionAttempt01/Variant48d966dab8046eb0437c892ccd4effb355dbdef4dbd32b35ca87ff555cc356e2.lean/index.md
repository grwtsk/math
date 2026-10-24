# Verification target: GRWTSK.Analysis.MeasureTheory.ActualCurvatureResolutionAttempt01.Variant48d966dab8046eb0437c892ccd4effb355dbdef4dbd32b35ca87ff555cc356e2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ec1a647367b0027c9ea78a58363445acf5ad257",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt01/Variant48d966dab8046eb0437c892ccd4effb355dbdef4dbd32b35ca87ff555cc356e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt01/Variant48d966dab8046eb0437c892ccd4effb355dbdef4dbd32b35ca87ff555cc356e2.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt01/Variant48d966dab8046eb0437c892ccd4effb355dbdef4dbd32b35ca87ff555cc356e2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ec1a647367b0027c9ea78a58363445acf5ad257`.

Source path: `GRWTSK/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt01/Variant48d966dab8046eb0437c892ccd4effb355dbdef4dbd32b35ca87ff555cc356e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt01/Variant48d966dab8046eb0437c892ccd4effb355dbdef4dbd32b35ca87ff555cc356e2.lean.json)

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
| 1 | `def` | [sampledCurvatureWork](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt01/Variant48d966dab8046eb0437c892ccd4effb355dbdef4dbd32b35ca87ff555cc356e2.lean/declarations/sampledcurvaturework--ee0059f8b42df55e29158b45.md) | 24 | `declaration-track:ee0059f8b42df55e29158b453e7273c97442c7405f7b4961fcb27033da96f548` |
| 2 | `theorem` | [sampled_integrand_intervalIntegrable](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt01/Variant48d966dab8046eb0437c892ccd4effb355dbdef4dbd32b35ca87ff555cc356e2.lean/declarations/sampled-integrand-intervalintegrable--5ef3778294d80251f11d463c.md) | 27 | `result-track:5ef3778294d80251f11d463c0cb4e81a4b9eae7281396b02ac0a5b4bc39de14f` |
| 3 | `theorem` | [sampled_work_error](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt01/Variant48d966dab8046eb0437c892ccd4effb355dbdef4dbd32b35ca87ff555cc356e2.lean/declarations/sampled-work-error--a772a38362ab779b7b4c1ce0.md) | 46 | `result-track:a772a38362ab779b7b4c1ce0f92a52a5837def1e539cc80c16169ab81a810932` |
| 4 | `def` | [leftGridSample](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt01/Variant48d966dab8046eb0437c892ccd4effb355dbdef4dbd32b35ca87ff555cc356e2.lean/declarations/leftgridsample--2d9144bce53809a8b60834cd.md) | 73 | `declaration-track:2d9144bce53809a8b60834cdba0b457010b24ebbebb3f0c0fde52c487c29d9d3` |
| 5 | `theorem` | [leftGridSample_measurable](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt01/Variant48d966dab8046eb0437c892ccd4effb355dbdef4dbd32b35ca87ff555cc356e2.lean/declarations/leftgridsample-measurable--f2a9072c03bf4c65be41341d.md) | 76 | `result-track:f2a9072c03bf4c65be41341ddbc3e3734e35611f3a37ea9be127d3df9d946593` |
| 6 | `theorem` | [leftGridSample_range_mesh](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt01/Variant48d966dab8046eb0437c892ccd4effb355dbdef4dbd32b35ca87ff555cc356e2.lean/declarations/leftgridsample-range-mesh--9936c952490d3ec423043193.md) | 80 | `result-track:9936c952490d3ec42304319375e873bf30b75cd6814b70ae6a92da9412d313e3` |
| 7 | `theorem` | [actual_grid_work_error](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt01/Variant48d966dab8046eb0437c892ccd4effb355dbdef4dbd32b35ca87ff555cc356e2.lean/declarations/actual-grid-work-error--967821df8a85f43dd6aabdd9.md) | 102 | `result-track:967821df8a85f43dd6aabdd91ca040111e8ce766cff8c7c2a0ced983772e41c7` |
| 8 | `def` | [curvatureResolutionCount](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt01/Variant48d966dab8046eb0437c892ccd4effb355dbdef4dbd32b35ca87ff555cc356e2.lean/declarations/curvatureresolutioncount--d58cea2a48b2a7e103446e30.md) | 119 | `declaration-track:d58cea2a48b2a7e103446e30f5a7e977fc173438b9d7df92aea6d05a3062c43d` |
| 9 | `theorem` | [curvatureResolutionCount_pos](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt01/Variant48d966dab8046eb0437c892ccd4effb355dbdef4dbd32b35ca87ff555cc356e2.lean/declarations/curvatureresolutioncount-pos--3b85907848a3da4a7ff8e051.md) | 121 | `result-track:3b85907848a3da4a7ff8e0514280e8dbb11b19f3a58650e07c16ff00c738f28c` |
| 10 | `theorem` | [actual_joint_grid_work_accuracy](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt01/Variant48d966dab8046eb0437c892ccd4effb355dbdef4dbd32b35ca87ff555cc356e2.lean/declarations/actual-joint-grid-work-accuracy--7b2f0328e820d4fefcd8e7c8.md) | 125 | `result-track:7b2f0328e820d4fefcd8e7c8104337f51ad57fb6e14fca74de94e70794f93366` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
