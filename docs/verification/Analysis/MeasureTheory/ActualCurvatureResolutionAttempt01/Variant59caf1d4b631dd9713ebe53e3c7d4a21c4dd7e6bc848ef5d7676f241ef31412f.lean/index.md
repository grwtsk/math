# Verification target: GRWTSK.Analysis.MeasureTheory.ActualCurvatureResolutionAttempt01.Variant59caf1d4b631dd9713ebe53e3c7d4a21c4dd7e6bc848ef5d7676f241ef31412f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63fa5d0a3ea008f3d09be3044eade9791b5b4311",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt01/Variant59caf1d4b631dd9713ebe53e3c7d4a21c4dd7e6bc848ef5d7676f241ef31412f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt01/Variant59caf1d4b631dd9713ebe53e3c7d4a21c4dd7e6bc848ef5d7676f241ef31412f.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt01/Variant59caf1d4b631dd9713ebe53e3c7d4a21c4dd7e6bc848ef5d7676f241ef31412f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63fa5d0a3ea008f3d09be3044eade9791b5b4311`.

Source path: `GRWTSK/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt01/Variant59caf1d4b631dd9713ebe53e3c7d4a21c4dd7e6bc848ef5d7676f241ef31412f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt01/Variant59caf1d4b631dd9713ebe53e3c7d4a21c4dd7e6bc848ef5d7676f241ef31412f.lean.json)

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
| 1 | `def` | [sampledCurvatureWork](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt01/Variant59caf1d4b631dd9713ebe53e3c7d4a21c4dd7e6bc848ef5d7676f241ef31412f.lean/declarations/sampledcurvaturework--57bb3688d36ee0241c49b3af.md) | 16 | `declaration-track:57bb3688d36ee0241c49b3af199e4f507310308561d484f05dfd26742dff88c2` |
| 2 | `theorem` | [sampled_integrand_intervalIntegrable](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt01/Variant59caf1d4b631dd9713ebe53e3c7d4a21c4dd7e6bc848ef5d7676f241ef31412f.lean/declarations/sampled-integrand-intervalintegrable--dd2e0a21f964385d9eeaa91b.md) | 19 | `result-track:dd2e0a21f964385d9eeaa91beeab5d72c0bb0303748a97987316e7f0ba01d613` |
| 3 | `theorem` | [sampled_work_error](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt01/Variant59caf1d4b631dd9713ebe53e3c7d4a21c4dd7e6bc848ef5d7676f241ef31412f.lean/declarations/sampled-work-error--3a13bb942b2955ef30be2a01.md) | 38 | `result-track:3a13bb942b2955ef30be2a013d9843734ee8d5b831e5f1f03e9e06ddfe5fdf2b` |
| 4 | `def` | [leftGridSample](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt01/Variant59caf1d4b631dd9713ebe53e3c7d4a21c4dd7e6bc848ef5d7676f241ef31412f.lean/declarations/leftgridsample--1137882e5bb7ee1c43a5ce61.md) | 65 | `declaration-track:1137882e5bb7ee1c43a5ce61b3bf4a9254055f9457d38cb7eae8ef254414f38c` |
| 5 | `theorem` | [leftGridSample_measurable](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt01/Variant59caf1d4b631dd9713ebe53e3c7d4a21c4dd7e6bc848ef5d7676f241ef31412f.lean/declarations/leftgridsample-measurable--3a2f5727e035b286d43eadbb.md) | 68 | `result-track:3a2f5727e035b286d43eadbbb4919dbc80258dda871adbbc1cefac300abf9a72` |
| 6 | `theorem` | [leftGridSample_range_mesh](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt01/Variant59caf1d4b631dd9713ebe53e3c7d4a21c4dd7e6bc848ef5d7676f241ef31412f.lean/declarations/leftgridsample-range-mesh--a964d82c15faa4907e16a638.md) | 72 | `result-track:a964d82c15faa4907e16a6380c89a5548fa8a697f6d96dc5520b9326ffe39442` |
| 7 | `theorem` | [actual_grid_work_error](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt01/Variant59caf1d4b631dd9713ebe53e3c7d4a21c4dd7e6bc848ef5d7676f241ef31412f.lean/declarations/actual-grid-work-error--053939641b0587e4033a2690.md) | 94 | `result-track:053939641b0587e4033a2690119bcb04df3d86e64e4141abb127e45df05c2a80` |
| 8 | `def` | [curvatureResolutionCount](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt01/Variant59caf1d4b631dd9713ebe53e3c7d4a21c4dd7e6bc848ef5d7676f241ef31412f.lean/declarations/curvatureresolutioncount--bb6ce3392e6b24621e5573ee.md) | 111 | `declaration-track:bb6ce3392e6b24621e5573eebe3a7a1143f73863123e923936888239cc876189` |
| 9 | `theorem` | [curvatureResolutionCount_pos](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt01/Variant59caf1d4b631dd9713ebe53e3c7d4a21c4dd7e6bc848ef5d7676f241ef31412f.lean/declarations/curvatureresolutioncount-pos--6b0a85dc915afe26893d0270.md) | 113 | `result-track:6b0a85dc915afe26893d0270d633e31b40ef95727cba96a92cefe0a6576ffddf` |
| 10 | `theorem` | [actual_joint_grid_work_accuracy](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt01/Variant59caf1d4b631dd9713ebe53e3c7d4a21c4dd7e6bc848ef5d7676f241ef31412f.lean/declarations/actual-joint-grid-work-accuracy--d5092c44c50989235794ab51.md) | 117 | `result-track:d5092c44c50989235794ab517dd1a8a192bc14ff3c979c55bdb525cec4489372` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
