# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PositivityDischarge.Variant2c5b90e30fdccf0ab1430d87f4f37f5a3f679f26fb2c3ae756443657dfcb8e7f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9922835df95ca853910335da2746869f2a718a4d",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PositivityDischarge/Variant2c5b90e30fdccf0ab1430d87f4f37f5a3f679f26fb2c3ae756443657dfcb8e7f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PositivityDischarge/Variant2c5b90e30fdccf0ab1430d87f4f37f5a3f679f26fb2c3ae756443657dfcb8e7f.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PositivityDischarge/Variant2c5b90e30fdccf0ab1430d87f4f37f5a3f679f26fb2c3ae756443657dfcb8e7f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9922835df95ca853910335da2746869f2a718a4d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PositivityDischarge/Variant2c5b90e30fdccf0ab1430d87f4f37f5a3f679f26fb2c3ae756443657dfcb8e7f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PositivityDischarge/Variant2c5b90e30fdccf0ab1430d87f4f37f5a3f679f26fb2c3ae756443657dfcb8e7f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.RH.Positivity` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [PositivityDischargeGate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PositivityDischarge/Variant2c5b90e30fdccf0ab1430d87f4f37f5a3f679f26fb2c3ae756443657dfcb8e7f.lean/declarations/positivitydischargegate--acc3796d2c7fb165a9544540.md) | 35 | `declaration-track:acc3796d2c7fb165a9544540b3aa1dbfecc7903f349aaa844e6848a5617054c1` |
| 2 | `def` | [PositivityDischargeGate.currentStatus](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PositivityDischarge/Variant2c5b90e30fdccf0ab1430d87f4f37f5a3f679f26fb2c3ae756443657dfcb8e7f.lean/declarations/positivitydischargegate-currentstatus--e1f3e1fafe35a6ba0e85cdf3.md) | 44 | `declaration-track:e1f3e1fafe35a6ba0e85cdf352fe780946fcabb837ade95e63a32e4c65200000` |
| 3 | `def` | [PositivityDischargeGate.requiredDischarge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PositivityDischarge/Variant2c5b90e30fdccf0ab1430d87f4f37f5a3f679f26fb2c3ae756443657dfcb8e7f.lean/declarations/positivitydischargegate-requireddischarge--477454949aac6a4bec0ec977.md) | 53 | `declaration-track:477454949aac6a4bec0ec9778bfb5146becd970addb84a61d6853bab82b5b27b` |
| 4 | `def` | [positivityDischargeChecklist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PositivityDischarge/Variant2c5b90e30fdccf0ab1430d87f4f37f5a3f679f26fb2c3ae756443657dfcb8e7f.lean/declarations/positivitydischargechecklist--306ed9467627de6322b3153a.md) | 68 | `declaration-track:306ed9467627de6322b3153a42688fa2ef173ebe67683f64ecff17f45bd06e81` |
| 5 | `theorem` | [dense_domain_in_positivity_discharge_checklist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PositivityDischarge/Variant2c5b90e30fdccf0ab1430d87f4f37f5a3f679f26fb2c3ae756443657dfcb8e7f.lean/declarations/dense-domain-in-positivity-discharge-checklist--9af6ce2ac6a524695e508e4d.md) | 78 | `result-track:9af6ce2ac6a524695e508e4d8b2d213f66fd4bc9d4537803fcac3585769985c1` |
| 6 | `theorem` | [self_adjointness_in_positivity_discharge_checklist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PositivityDischarge/Variant2c5b90e30fdccf0ab1430d87f4f37f5a3f679f26fb2c3ae756443657dfcb8e7f.lean/declarations/self-adjointness-in-positivity-discharge-checklist--a46523d22aeaa030c6013633.md) | 83 | `result-track:a46523d22aeaa030c6013633d919a7917bd45b8525d506cb08395629481282e0` |
| 7 | `theorem` | [compact_resolvent_in_positivity_discharge_checklist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PositivityDischarge/Variant2c5b90e30fdccf0ab1430d87f4f37f5a3f679f26fb2c3ae756443657dfcb8e7f.lean/declarations/compact-resolvent-in-positivity-discharge-checklist--bb2c808760b5a3a24b3accb7.md) | 88 | `result-track:bb2c808760b5a3a24b3accb7468ddb24f77c3414c60089cb3c66b1a9079406bd` |
| 8 | `theorem` | [trace_regularization_in_positivity_discharge_checklist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PositivityDischarge/Variant2c5b90e30fdccf0ab1430d87f4f37f5a3f679f26fb2c3ae756443657dfcb8e7f.lean/declarations/trace-regularization-in-positivity-discharge-checklist--e7cddd167c165c6aac0fd280.md) | 93 | `result-track:e7cddd167c165c6aac0fd280173e44f60ddf9646a041fb2381b36788b59af400` |
| 9 | `theorem` | [functional_calculus_in_positivity_discharge_checklist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PositivityDischarge/Variant2c5b90e30fdccf0ab1430d87f4f37f5a3f679f26fb2c3ae756443657dfcb8e7f.lean/declarations/functional-calculus-in-positivity-discharge-checklist--24dbf61298583f9d38451aca.md) | 98 | `result-track:24dbf61298583f9d38451aca87913df966657cd24cc2f101cc99762c8860df35` |
| 10 | `theorem` | [real_spectrum_theorem_in_positivity_discharge_checklist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PositivityDischarge/Variant2c5b90e30fdccf0ab1430d87f4f37f5a3f679f26fb2c3ae756443657dfcb8e7f.lean/declarations/real-spectrum-theorem-in-positivity-discharge-checklist--dffa0f2949197c8523e06da3.md) | 103 | `result-track:dffa0f2949197c8523e06da369e59630da6761cfbc4a847b91ccd651231e2ac4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
