# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BoundaryCriterionDischarge.Variantcfe6c292934c9dffb102544173c72405556044c9a2260b3924670e0ba8280608

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0995adfaeca8ac398f9d685a239e13e73a1edf95",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundaryCriterionDischarge/Variantcfe6c292934c9dffb102544173c72405556044c9a2260b3924670e0ba8280608.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundaryCriterionDischarge/Variantcfe6c292934c9dffb102544173c72405556044c9a2260b3924670e0ba8280608.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundaryCriterionDischarge/Variantcfe6c292934c9dffb102544173c72405556044c9a2260b3924670e0ba8280608.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0995adfaeca8ac398f9d685a239e13e73a1edf95`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundaryCriterionDischarge/Variantcfe6c292934c9dffb102544173c72405556044c9a2260b3924670e0ba8280608.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundaryCriterionDischarge/Variantcfe6c292934c9dffb102544173c72405556044c9a2260b3924670e0ba8280608.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.RH.BoundaryCriterion` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [BoundaryCriterionDischargeGate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundaryCriterionDischarge/Variantcfe6c292934c9dffb102544173c72405556044c9a2260b3924670e0ba8280608.lean/declarations/boundarycriteriondischargegate--987d08214dd907dc6f2a07e6.md) | 25 | `declaration-track:987d08214dd907dc6f2a07e685b0979045c907399cb9cbea9383a21edda9e648` |
| 2 | `def` | [BoundaryCriterionDischargeGate.currentStatus](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundaryCriterionDischarge/Variantcfe6c292934c9dffb102544173c72405556044c9a2260b3924670e0ba8280608.lean/declarations/boundarycriteriondischargegate-currentstatus--dd29e25ba687c6de9e04bf39.md) | 34 | `declaration-track:dd29e25ba687c6de9e04bf39f0b3a7ba9eb2cbfb2ac97dafd9e9f4f3d3ea3b88` |
| 3 | `def` | [BoundaryCriterionDischargeGate.requiredDischarge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundaryCriterionDischarge/Variantcfe6c292934c9dffb102544173c72405556044c9a2260b3924670e0ba8280608.lean/declarations/boundarycriteriondischargegate-requireddischarge--e7cfbbe54822980a6fea64a2.md) | 43 | `declaration-track:e7cfbbe54822980a6fea64a2a53db7f3cf6d2803799cdab00f590284d142dbe0` |
| 4 | `def` | [boundaryCriterionDischargeChecklist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundaryCriterionDischarge/Variantcfe6c292934c9dffb102544173c72405556044c9a2260b3924670e0ba8280608.lean/declarations/boundarycriteriondischargechecklist--e01eafc6b1be0f287168a9ab.md) | 58 | `declaration-track:e01eafc6b1be0f287168a9abe2f866ee8841b04a3fc58beb2cce9c1ad5bbd568` |
| 5 | `theorem` | [real_spectrum_input_in_boundary_criterion_discharge_checklist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundaryCriterionDischarge/Variantcfe6c292934c9dffb102544173c72405556044c9a2260b3924670e0ba8280608.lean/declarations/real-spectrum-input-in-boundary-criterion-discharge-checklist--83db5aeb33326579038ec8a4.md) | 69 | `result-track:83db5aeb33326579038ec8a4cf6a287f7cdaecefc2f91d483f80cd457ae31b9c` |
| 6 | `theorem` | [zero_spectrum_compatibility_in_boundary_criterion_discharge_checklist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundaryCriterionDischarge/Variantcfe6c292934c9dffb102544173c72405556044c9a2260b3924670e0ba8280608.lean/declarations/zero-spectrum-compatibility-in-boundary-criterion-discharge-checklist--bdaf244db093b66485c4f45e.md) | 74 | `result-track:bdaf244db093b66485c4f45eef014aa85b65a3f28cf97a87ee805b890a13f43e` |
| 7 | `theorem` | [status_gate_in_boundary_criterion_discharge_checklist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundaryCriterionDischarge/Variantcfe6c292934c9dffb102544173c72405556044c9a2260b3924670e0ba8280608.lean/declarations/status-gate-in-boundary-criterion-discharge-checklist--351ad49054929e9c4e4e3e79.md) | 79 | `result-track:351ad49054929e9c4e4e3e79e8084060568a618baefcd6bf4380c90539e56c19` |
| 8 | `theorem` | [no_pre_boundary_leak_in_boundary_criterion_discharge_checklist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundaryCriterionDischarge/Variantcfe6c292934c9dffb102544173c72405556044c9a2260b3924670e0ba8280608.lean/declarations/no-pre-boundary-leak-in-boundary-criterion-discharge-checklist--2c3a046e86f9f7318b274f46.md) | 84 | `result-track:2c3a046e86f9f7318b274f46f66b283d54aba344426efe3567c54acf0eeb31cf` |
| 9 | `theorem` | [h0_real_zeros_in_boundary_criterion_discharge_checklist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundaryCriterionDischarge/Variantcfe6c292934c9dffb102544173c72405556044c9a2260b3924670e0ba8280608.lean/declarations/h0-real-zeros-in-boundary-criterion-discharge-checklist--55416b848d9ce9bba6970a01.md) | 89 | `result-track:55416b848d9ce9bba6970a01a808261e8f273411b201b02f5815443d19c504a8` |
| 10 | `theorem` | [rh_composition_in_boundary_criterion_discharge_checklist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundaryCriterionDischarge/Variantcfe6c292934c9dffb102544173c72405556044c9a2260b3924670e0ba8280608.lean/declarations/rh-composition-in-boundary-criterion-discharge-checklist--f159f04dfead8e9fde6e766a.md) | 94 | `result-track:f159f04dfead8e9fde6e766a1cb227853fa1e1e311145038d22b6a0ac32c95c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
