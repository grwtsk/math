# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FinalConeDischarge.Variant1099671f7121a93aa56f1d3cba4419621c47f963f034ce0c3d8fea1283936a3a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6aa1de49e38190349d9fe1be390b770e31de4a1e",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinalConeDischarge/Variant1099671f7121a93aa56f1d3cba4419621c47f963f034ce0c3d8fea1283936a3a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinalConeDischarge/Variant1099671f7121a93aa56f1d3cba4419621c47f963f034ce0c3d8fea1283936a3a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinalConeDischarge/Variant1099671f7121a93aa56f1d3cba4419621c47f963f034ce0c3d8fea1283936a3a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6aa1de49e38190349d9fe1be390b770e31de4a1e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinalConeDischarge/Variant1099671f7121a93aa56f1d3cba4419621c47f963f034ce0c3d8fea1283936a3a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinalConeDischarge/Variant1099671f7121a93aa56f1d3cba4419621c47f963f034ce0c3d8fea1283936a3a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.RH.Final` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [FinalConeDischargeGate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinalConeDischarge/Variant1099671f7121a93aa56f1d3cba4419621c47f963f034ce0c3d8fea1283936a3a.lean/declarations/finalconedischargegate--f519419ae6ff240e6c35abc7.md) | 26 | `declaration-track:f519419ae6ff240e6c35abc76b226fe1029adcd79634a934c98ec71b9b4392b7` |
| 2 | `def` | [FinalConeDischargeGate.currentStatus](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinalConeDischarge/Variant1099671f7121a93aa56f1d3cba4419621c47f963f034ce0c3d8fea1283936a3a.lean/declarations/finalconedischargegate-currentstatus--30a5a29e744507da86d55429.md) | 38 | `declaration-track:30a5a29e744507da86d55429c22d55c47a8ecbb1c8f47c32a95221a8e3b278c6` |
| 3 | `def` | [FinalConeDischargeGate.requiredDischarge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinalConeDischarge/Variant1099671f7121a93aa56f1d3cba4419621c47f963f034ce0c3d8fea1283936a3a.lean/declarations/finalconedischargegate-requireddischarge--f05934ae118fa646d47a9069.md) | 50 | `declaration-track:f05934ae118fa646d47a9069b658e16e3fdcff2d92006cc53bff56af425882f3` |
| 4 | `def` | [finalConeDischargeChecklist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinalConeDischarge/Variant1099671f7121a93aa56f1d3cba4419621c47f963f034ce0c3d8fea1283936a3a.lean/declarations/finalconedischargechecklist--c3bae1dcaaf6dbec563678f8.md) | 71 | `declaration-track:c3bae1dcaaf6dbec563678f8ceaf24fdc531b9c4cdd1f2ba16726728df3f4f45` |
| 5 | `theorem` | [exact_zeta_target_in_final_cone_discharge_checklist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinalConeDischarge/Variant1099671f7121a93aa56f1d3cba4419621c47f963f034ce0c3d8fea1283936a3a.lean/declarations/exact-zeta-target-in-final-cone-discharge-checklist--2ac686844ee4da9ddffc04c4.md) | 84 | `result-track:2ac686844ee4da9ddffc04c483d045e8f88e1c7fb5bf30a39d91ef0c63959d74` |
| 6 | `theorem` | [xi_completed_zeta_formula_in_final_cone_discharge_checklist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinalConeDischarge/Variant1099671f7121a93aa56f1d3cba4419621c47f963f034ce0c3d8fea1283936a3a.lean/declarations/xi-completed-zeta-formula-in-final-cone-discharge-checklist--7541e13917294b0f11b76b94.md) | 89 | `result-track:7541e13917294b0f11b76b94038364a50617b7094bd18dd69813866bf09ebec5` |
| 7 | `theorem` | [h0_definition_in_final_cone_discharge_checklist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinalConeDischarge/Variant1099671f7121a93aa56f1d3cba4419621c47f963f034ce0c3d8fea1283936a3a.lean/declarations/h0-definition-in-final-cone-discharge-checklist--b7ba9fabc2dd50916c20bf1f.md) | 94 | `result-track:b7ba9fabc2dd50916c20bf1fac0d1c279a74f28cc129eb8094735eb454091def` |
| 8 | `theorem` | [h0_equivalence_in_final_cone_discharge_checklist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinalConeDischarge/Variant1099671f7121a93aa56f1d3cba4419621c47f963f034ce0c3d8fea1283936a3a.lean/declarations/h0-equivalence-in-final-cone-discharge-checklist--17f3e2277d6260f8f5c985d7.md) | 99 | `result-track:17f3e2277d6260f8f5c985d795f9b083e310b34c9dac08b2479fb3c5ffdc1ca5` |
| 9 | `theorem` | [zero_spectrum_realization_in_final_cone_discharge_checklist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinalConeDischarge/Variant1099671f7121a93aa56f1d3cba4419621c47f963f034ce0c3d8fea1283936a3a.lean/declarations/zero-spectrum-realization-in-final-cone-discharge-checklist--ad9e5fec44e002d32f948dc7.md) | 104 | `result-track:ad9e5fec44e002d32f948dc7a0def9c3e334efb203051d32b7ea5e074fba2e8b` |
| 10 | `theorem` | [trace_comparison_in_final_cone_discharge_checklist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinalConeDischarge/Variant1099671f7121a93aa56f1d3cba4419621c47f963f034ce0c3d8fea1283936a3a.lean/declarations/trace-comparison-in-final-cone-discharge-checklist--43b0af9a2e9ff25bb9d5ca72.md) | 109 | `result-track:43b0af9a2e9ff25bb9d5ca72ad640f5423d83f4d2ca0385952fa9cdaa2004d06` |
| 11 | `theorem` | [positivity_in_final_cone_discharge_checklist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinalConeDischarge/Variant1099671f7121a93aa56f1d3cba4419621c47f963f034ce0c3d8fea1283936a3a.lean/declarations/positivity-in-final-cone-discharge-checklist--587500c35e5f73f1f450eece.md) | 114 | `result-track:587500c35e5f73f1f450eece7ca700b2b1466f3e05c03c57e10bd7e5e5a48eb4` |
| 12 | `theorem` | [boundary_criterion_in_final_cone_discharge_checklist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinalConeDischarge/Variant1099671f7121a93aa56f1d3cba4419621c47f963f034ce0c3d8fea1283936a3a.lean/declarations/boundary-criterion-in-final-cone-discharge-checklist--78eea7e32eb24d2ac69c6fb0.md) | 119 | `result-track:78eea7e32eb24d2ac69c6fb0bdefc3450b400a2d10c9b4d019c9b86bc359e241` |
| 13 | `theorem` | [final_audit_in_final_cone_discharge_checklist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinalConeDischarge/Variant1099671f7121a93aa56f1d3cba4419621c47f963f034ce0c3d8fea1283936a3a.lean/declarations/final-audit-in-final-cone-discharge-checklist--4e2b218299a9ddb16f4969fc.md) | 124 | `result-track:4e2b218299a9ddb16f4969fcb1dda9a2d72ef2ecc8ca451914a3c1808ef99121` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
