# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.ConstructedSourceControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e6d4c5e2da4b87905f73e12dc5704b0f3201684",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/ConstructedSourceControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ConstructedSourceControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ConstructedSourceControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e6d4c5e2da4b87905f73e12dc5704b0f3201684`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/ConstructedSourceControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/ConstructedSourceControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConstructedRectangleCount`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/ConstructedRectangleCount.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.Checks.RectangleMeshControls`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/RectangleMeshControls.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [poleParameters](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ConstructedSourceControls.lean/declarations/poleparameters--da2b2c780ae8edd332c83166.md) | 23 | `declaration-track:da2b2c780ae8edd332c83166b5377f80eea53bb1c59e98531cf8348c28a51f29` |
| 2 | `def` | [coarseParameters](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ConstructedSourceControls.lean/declarations/coarseparameters--4a31d945e54d2ab328672d19.md) | 24 | `declaration-track:4a31d945e54d2ab328672d191c626a8048d1008b9b29ef2105129f84982078b8` |
| 3 | `theorem` | [pole_value_computed](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ConstructedSourceControls.lean/declarations/pole-value-computed--fb3c3acbf89421dd845cddc4.md) | 26 | `result-track:fb3c3acbf89421dd845cddc413b52acaf19b4bfcc411a5abe17af53b6e6f4978` |
| 4 | `theorem` | [pole_value_sound](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ConstructedSourceControls.lean/declarations/pole-value-sound--0d2dbc735bfd06a2880e9234.md) | 30 | `result-track:0d2dbc735bfd06a2880e9234c1145c0a68a6c50c9d0847095a12bbffd2ac7f57` |
| 5 | `theorem` | [pole_precision_zero](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ConstructedSourceControls.lean/declarations/pole-precision-zero--07d28ff956f9ffc6a93a777b.md) | 33 | `result-track:07d28ff956f9ffc6a93a777bbd9426cef6fa1a139ab96af4702915ddcb23b024` |
| 6 | `theorem` | [validity_not_precision](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ConstructedSourceControls.lean/declarations/validity-not-precision--2995e160d50b1f676adaa8b8.md) | 36 | `result-track:2995e160d50b1f676adaa8b8f9d03cb640aebb94856e3bdf441bd99a08f5ccc5` |
| 7 | `theorem` | [invalid_source_domain](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ConstructedSourceControls.lean/declarations/invalid-source-domain--cfe643a620869edc4c212d17.md) | 41 | `result-track:cfe643a620869edc4c212d17bcca2d86bf39f8f3f26843f676485b7445b60abd` |
| 8 | `theorem` | [negative_tolerance_rejected](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ConstructedSourceControls.lean/declarations/negative-tolerance-rejected--6c5b255ae673e6cfd01fd21d.md) | 46 | `result-track:6c5b255ae673e6cfd01fd21db83722c3438fd90a8efa978f25efb430b7de3adc` |
| 9 | `theorem` | [wrong_scale_and_base_rejected](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ConstructedSourceControls.lean/declarations/wrong-scale-and-base-rejected--9930c654263804735257b446.md) | 50 | `result-track:9930c654263804735257b446998b44b2ab15306d422e5f8a44ebbed75687ad10` |
| 10 | `theorem` | [coarse_log_error_retained](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ConstructedSourceControls.lean/declarations/coarse-log-error-retained--eae74243480b9d4b74aa7a24.md) | 56 | `result-track:eae74243480b9d4b74aa7a24cb9f614a408840ea09f39cd68dc4ca0c100ec6fc` |
| 11 | `def` | [polePlan](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ConstructedSourceControls.lean/declarations/poleplan--1e28f0167f4a86abfe797c4e.md) | 60 | `declaration-track:1e28f0167f4a86abfe797c4eba11b4bb5d8bdc195ee78343ce612b70180ff910` |
| 12 | `def` | [plans](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ConstructedSourceControls.lean/declarations/plans--d7782c3ac8b1c75193bfcb02.md) | 61 | `declaration-track:d7782c3ac8b1c75193bfcb0224be96f18217bfd3a4d98d2f3f3f419fc67275a9` |
| 13 | `theorem` | [generated_records](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ConstructedSourceControls.lean/declarations/generated-records--f90c97f7c532f1bc01c86dee.md) | 64 | `result-track:f90c97f7c532f1bc01c86dee45b5eb96bad4c2b09f643306aa74655d7179e33a` |
| 14 | `theorem` | [all_plans_checked](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ConstructedSourceControls.lean/declarations/all-plans-checked--e92f0f52400e5a4b2b3f2084.md) | 67 | `result-track:e92f0f52400e5a4b2b3f2084d6842fb6a9d9480139851d56e5a0e33ec87af0ec` |
| 15 | `theorem` | [generated_enclosures](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ConstructedSourceControls.lean/declarations/generated-enclosures--9bcdc1c160ff4047837cb2dd.md) | 69 | `result-track:9bcdc1c160ff4047837cb2dd6d28009e51632706fb70144e586b7f26c3530629` |
| 16 | `theorem` | [small_box_computed](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ConstructedSourceControls.lean/declarations/small-box-computed--78868d986627a247a5904dab.md) | 73 | `result-track:78868d986627a247a5904dab42cdffb62ecaeeae3e451ead4a8f020ab1e28abf` |
| 17 | `theorem` | [complete_plan_inventory_required](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ConstructedSourceControls.lean/declarations/complete-plan-inventory-required--e0bd0d513d26d19436046e29.md) | 78 | `result-track:e0bd0d513d26d19436046e291130bd811ef6ba46f28bf86e78acec93e42277bd` |
| 18 | `theorem` | [changed_source_center_rejected](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ConstructedSourceControls.lean/declarations/changed-source-center-rejected--3909ae6750159bd63e006aa3.md) | 83 | `result-track:3909ae6750159bd63e006aa367b9a4baf526409871b8f3f1324e9cc4683640ce` |
| 19 | `theorem` | [coarse_values_do_not_certify_tubes](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ConstructedSourceControls.lean/declarations/coarse-values-do-not-certify-tubes--11ae7ee764d3ca59b2f5ba69.md) | 87 | `result-track:11ae7ee764d3ca59b2f5ba69dc52a629dfc49e2e062a1a21f2c2a8d3dc89f199` |
| 20 | `theorem` | [target_geometry_not_supplied](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ConstructedSourceControls.lean/declarations/target-geometry-not-supplied--46827869d00c8a356fb3a338.md) | 94 | `result-track:46827869d00c8a356fb3a33850b54b791ac86ab647c8deb6ed9d376d533c87c3` |
| 21 | `def` | [pilotCenter](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ConstructedSourceControls.lean/declarations/pilotcenter--718505092967a5737dc84baa.md) | 100 | `declaration-track:718505092967a5737dc84baab5f16d59a0c2de310a2dace6fd36a53105271754` |
| 22 | `def` | [pilotParameters](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ConstructedSourceControls.lean/declarations/pilotparameters--45b7cc8e4936cf71ea65e8fd.md) | 101 | `declaration-track:45b7cc8e4936cf71ea65e8fd89aa6c0c2e96392c97f224fcc92e0a384e8a4912` |
| 23 | `theorem` | [pilot_source_checked](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ConstructedSourceControls.lean/declarations/pilot-source-checked--99662b615c4624e9bca7835c.md) | 103 | `result-track:99662b615c4624e9bca7835c6858765e042625e1411f4c92fbb3c68a3d803aed` |
| 24 | `theorem` | [pilot_precision_checked](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ConstructedSourceControls.lean/declarations/pilot-precision-checked--be40c712aff1485cf5921804.md) | 106 | `result-track:be40c712aff1485cf5921804d1a78196989f0fb3b1cba3c871e83a5fd1844a47` |
| 25 | `theorem` | [pilot_patch_checked](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ConstructedSourceControls.lean/declarations/pilot-patch-checked--3b1630b31f1f6faddddcb3d4.md) | 110 | `result-track:3b1630b31f1f6faddddcb3d4d9b2c8841f9b8b5ed39263f785e7ed90aba6f8a5` |
| 26 | `theorem` | [pilot_disk_nonzero](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ConstructedSourceControls.lean/declarations/pilot-disk-nonzero--04c51e54792d50cdd7689ac0.md) | 118 | `result-track:04c51e54792d50cdd7689ac0c3f2d185a9b1b1dc82e8a6cd83851e9ea203f3e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
