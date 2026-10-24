# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BoundaryCriterionDischarge.Variantc4b64f260123405f7f5650eab715ecd49ea602bd37d26590f102fb29f85c96ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e09e013a0a9bff3ccbe0f9c6411a08ccaf0fe573",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundaryCriterionDischarge/Variantc4b64f260123405f7f5650eab715ecd49ea602bd37d26590f102fb29f85c96ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundaryCriterionDischarge/Variantc4b64f260123405f7f5650eab715ecd49ea602bd37d26590f102fb29f85c96ac.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundaryCriterionDischarge/Variantc4b64f260123405f7f5650eab715ecd49ea602bd37d26590f102fb29f85c96ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e09e013a0a9bff3ccbe0f9c6411a08ccaf0fe573`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundaryCriterionDischarge/Variantc4b64f260123405f7f5650eab715ecd49ea602bd37d26590f102fb29f85c96ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundaryCriterionDischarge/Variantc4b64f260123405f7f5650eab715ecd49ea602bd37d26590f102fb29f85c96ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.RH.BoundaryCriterion` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [BoundaryCriterionDischargeGate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundaryCriterionDischarge/Variantc4b64f260123405f7f5650eab715ecd49ea602bd37d26590f102fb29f85c96ac.lean/declarations/boundarycriteriondischargegate--f6886db69c20cb51cac8e7d7.md) | 33 | `declaration-track:f6886db69c20cb51cac8e7d79fa1e03feb9adf68b3a58632c6079da3c876e9f6` |
| 2 | `def` | [BoundaryCriterionDischargeGate.currentStatus](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundaryCriterionDischarge/Variantc4b64f260123405f7f5650eab715ecd49ea602bd37d26590f102fb29f85c96ac.lean/declarations/boundarycriteriondischargegate-currentstatus--6e022ec29645e95000f81c69.md) | 42 | `declaration-track:6e022ec29645e95000f81c69b94924cac20c7a9c8b7dc7fee2096efbc00bc998` |
| 3 | `def` | [BoundaryCriterionDischargeGate.requiredDischarge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundaryCriterionDischarge/Variantc4b64f260123405f7f5650eab715ecd49ea602bd37d26590f102fb29f85c96ac.lean/declarations/boundarycriteriondischargegate-requireddischarge--9f184cad3e910cc73c081370.md) | 51 | `declaration-track:9f184cad3e910cc73c081370f3dfa3d65dd215a23ae4a346ae23ddf394f5e8f6` |
| 4 | `def` | [boundaryCriterionDischargeChecklist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundaryCriterionDischarge/Variantc4b64f260123405f7f5650eab715ecd49ea602bd37d26590f102fb29f85c96ac.lean/declarations/boundarycriteriondischargechecklist--84bb413a0efcbe0749c9143c.md) | 66 | `declaration-track:84bb413a0efcbe0749c9143c993d00b3c3854942470070147cf5a878c0d152d6` |
| 5 | `theorem` | [real_spectrum_input_in_boundary_criterion_discharge_checklist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundaryCriterionDischarge/Variantc4b64f260123405f7f5650eab715ecd49ea602bd37d26590f102fb29f85c96ac.lean/declarations/real-spectrum-input-in-boundary-criterion-discharge-checklist--6e21090550ae940ef08706ad.md) | 77 | `result-track:6e21090550ae940ef08706adb8b59976420389f191b600d7b3a45015d392202f` |
| 6 | `theorem` | [zero_spectrum_compatibility_in_boundary_criterion_discharge_checklist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundaryCriterionDischarge/Variantc4b64f260123405f7f5650eab715ecd49ea602bd37d26590f102fb29f85c96ac.lean/declarations/zero-spectrum-compatibility-in-boundary-criterion-discharge-checklist--8ca305347374dd8e624881f5.md) | 82 | `result-track:8ca305347374dd8e624881f5113ba6ac52e05eff1ea84c1db257cb74622bd6c2` |
| 7 | `theorem` | [status_gate_in_boundary_criterion_discharge_checklist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundaryCriterionDischarge/Variantc4b64f260123405f7f5650eab715ecd49ea602bd37d26590f102fb29f85c96ac.lean/declarations/status-gate-in-boundary-criterion-discharge-checklist--ef97e406b08a9969c95d72ed.md) | 87 | `result-track:ef97e406b08a9969c95d72ed066c78c7da2d19f1715b550a280f5bc70fe3172f` |
| 8 | `theorem` | [no_pre_boundary_leak_in_boundary_criterion_discharge_checklist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundaryCriterionDischarge/Variantc4b64f260123405f7f5650eab715ecd49ea602bd37d26590f102fb29f85c96ac.lean/declarations/no-pre-boundary-leak-in-boundary-criterion-discharge-checklist--8cd2c797084291de281cbe9a.md) | 92 | `result-track:8cd2c797084291de281cbe9a65a5deafa6652874ebc6fb57093ac320fd0db741` |
| 9 | `theorem` | [h0_real_zeros_in_boundary_criterion_discharge_checklist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundaryCriterionDischarge/Variantc4b64f260123405f7f5650eab715ecd49ea602bd37d26590f102fb29f85c96ac.lean/declarations/h0-real-zeros-in-boundary-criterion-discharge-checklist--ad9386dedebfca579aa10470.md) | 97 | `result-track:ad9386dedebfca579aa104707aedc38e31b4b97b4dcf48beec41d437a05ea6e3` |
| 10 | `theorem` | [rh_composition_in_boundary_criterion_discharge_checklist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundaryCriterionDischarge/Variantc4b64f260123405f7f5650eab715ecd49ea602bd37d26590f102fb29f85c96ac.lean/declarations/rh-composition-in-boundary-criterion-discharge-checklist--647c1a627e4c805466d11ad6.md) | 102 | `result-track:647c1a627e4c805466d11ad61506c489b54f45cd6b84cae31006f4edc4af6ed5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
