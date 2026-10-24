# Verification target: GRWTSK.Analysis.MeasureTheory.ActualCurvatureResolutionAttempt02.Variant49e956029b617158d8f8fbccd564fea4f518bff2c9fc4339e5f57f2918d29dd9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df28628fd85ff8bfa88b501544ddc1421c565cea",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt02/Variant49e956029b617158d8f8fbccd564fea4f518bff2c9fc4339e5f57f2918d29dd9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt02/Variant49e956029b617158d8f8fbccd564fea4f518bff2c9fc4339e5f57f2918d29dd9.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt02/Variant49e956029b617158d8f8fbccd564fea4f518bff2c9fc4339e5f57f2918d29dd9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df28628fd85ff8bfa88b501544ddc1421c565cea`.

Source path: `GRWTSK/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt02/Variant49e956029b617158d8f8fbccd564fea4f518bff2c9fc4339e5f57f2918d29dd9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt02/Variant49e956029b617158d8f8fbccd564fea4f518bff2c9fc4339e5f57f2918d29dd9.lean.json)

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
| 1 | `def` | [sampledCurvatureWork](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt02/Variant49e956029b617158d8f8fbccd564fea4f518bff2c9fc4339e5f57f2918d29dd9.lean/declarations/sampledcurvaturework--5a4862384b984f82367585c2.md) | 24 | `declaration-track:5a4862384b984f82367585c288026779530eb78d02f747d90d009aa62ca69778` |
| 2 | `theorem` | [sampled_integrand_intervalIntegrable](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt02/Variant49e956029b617158d8f8fbccd564fea4f518bff2c9fc4339e5f57f2918d29dd9.lean/declarations/sampled-integrand-intervalintegrable--48bbdb950633f42e3e86b43f.md) | 27 | `result-track:48bbdb950633f42e3e86b43fcfdf762006ffbf01b77597b0ba64b2d883339b05` |
| 3 | `theorem` | [sampled_work_error](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt02/Variant49e956029b617158d8f8fbccd564fea4f518bff2c9fc4339e5f57f2918d29dd9.lean/declarations/sampled-work-error--ba74e3714cd5b35937278c9e.md) | 47 | `result-track:ba74e3714cd5b35937278c9e5f2bf622ccc234c06bad65fa6355b264bc496882` |
| 4 | `def` | [leftGridSample](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt02/Variant49e956029b617158d8f8fbccd564fea4f518bff2c9fc4339e5f57f2918d29dd9.lean/declarations/leftgridsample--bb570e9744a1ede6221e5b92.md) | 74 | `declaration-track:bb570e9744a1ede6221e5b923abe3111bf4f994ab2b1956c31216721c9a45cd0` |
| 5 | `theorem` | [leftGridSample_measurable](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt02/Variant49e956029b617158d8f8fbccd564fea4f518bff2c9fc4339e5f57f2918d29dd9.lean/declarations/leftgridsample-measurable--e18e990d9f573a57c46aa2c0.md) | 77 | `result-track:e18e990d9f573a57c46aa2c04ff424c67d733896f6e58748bb2c526a4d06ec5c` |
| 6 | `theorem` | [leftGridSample_range_mesh](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt02/Variant49e956029b617158d8f8fbccd564fea4f518bff2c9fc4339e5f57f2918d29dd9.lean/declarations/leftgridsample-range-mesh--ee5be7ca20e505cfe7304c48.md) | 81 | `result-track:ee5be7ca20e505cfe7304c48e332d08846125d32a21b76886d27a2e9d60ada48` |
| 7 | `theorem` | [actual_grid_work_error](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt02/Variant49e956029b617158d8f8fbccd564fea4f518bff2c9fc4339e5f57f2918d29dd9.lean/declarations/actual-grid-work-error--d2834409d42f477a8c232e68.md) | 103 | `result-track:d2834409d42f477a8c232e685c7cd0a6ac0bacc379348b028595ee78394f287c` |
| 8 | `def` | [curvatureResolutionCount](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt02/Variant49e956029b617158d8f8fbccd564fea4f518bff2c9fc4339e5f57f2918d29dd9.lean/declarations/curvatureresolutioncount--01e315833882995f38cdb6e0.md) | 120 | `declaration-track:01e315833882995f38cdb6e0305c199f33b82ac1888a6525129feb920c4b97fe` |
| 9 | `theorem` | [curvatureResolutionCount_pos](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt02/Variant49e956029b617158d8f8fbccd564fea4f518bff2c9fc4339e5f57f2918d29dd9.lean/declarations/curvatureresolutioncount-pos--c470c6aece30387ebfd58a87.md) | 122 | `result-track:c470c6aece30387ebfd58a878f77ed3a204f98adb395bc685aab8752a7d0028c` |
| 10 | `theorem` | [actual_joint_grid_work_accuracy](../../../../../mathematics/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt02/Variant49e956029b617158d8f8fbccd564fea4f518bff2c9fc4339e5f57f2918d29dd9.lean/declarations/actual-joint-grid-work-accuracy--d5e010d1d760866e450999ce.md) | 126 | `result-track:d5e010d1d760866e450999ce0c9fb65af186ea6089c949f8f16a06acca357744` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
