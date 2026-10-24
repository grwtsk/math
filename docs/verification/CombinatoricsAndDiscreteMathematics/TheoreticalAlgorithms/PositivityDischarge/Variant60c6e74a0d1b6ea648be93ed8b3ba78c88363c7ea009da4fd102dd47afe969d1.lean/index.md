# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PositivityDischarge.Variant60c6e74a0d1b6ea648be93ed8b3ba78c88363c7ea009da4fd102dd47afe969d1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9354c4a8aee8aef489cd4788dc4bf95e7245bd8a",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PositivityDischarge/Variant60c6e74a0d1b6ea648be93ed8b3ba78c88363c7ea009da4fd102dd47afe969d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PositivityDischarge/Variant60c6e74a0d1b6ea648be93ed8b3ba78c88363c7ea009da4fd102dd47afe969d1.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PositivityDischarge/Variant60c6e74a0d1b6ea648be93ed8b3ba78c88363c7ea009da4fd102dd47afe969d1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9354c4a8aee8aef489cd4788dc4bf95e7245bd8a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PositivityDischarge/Variant60c6e74a0d1b6ea648be93ed8b3ba78c88363c7ea009da4fd102dd47afe969d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PositivityDischarge/Variant60c6e74a0d1b6ea648be93ed8b3ba78c88363c7ea009da4fd102dd47afe969d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.RH.Positivity` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [PositivityDischargeGate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PositivityDischarge/Variant60c6e74a0d1b6ea648be93ed8b3ba78c88363c7ea009da4fd102dd47afe969d1.lean/declarations/positivitydischargegate--806fe443ce080d4eb790b336.md) | 27 | `declaration-track:806fe443ce080d4eb790b336e17c44d81d789cd7f726f1751f78ad93566cd38f` |
| 2 | `def` | [PositivityDischargeGate.currentStatus](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PositivityDischarge/Variant60c6e74a0d1b6ea648be93ed8b3ba78c88363c7ea009da4fd102dd47afe969d1.lean/declarations/positivitydischargegate-currentstatus--8350f701834c6d0e368cacd2.md) | 36 | `declaration-track:8350f701834c6d0e368cacd248333a212007f77e9ed3c68a65979113199b758a` |
| 3 | `def` | [PositivityDischargeGate.requiredDischarge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PositivityDischarge/Variant60c6e74a0d1b6ea648be93ed8b3ba78c88363c7ea009da4fd102dd47afe969d1.lean/declarations/positivitydischargegate-requireddischarge--4211371c63356188657e8b8f.md) | 45 | `declaration-track:4211371c63356188657e8b8f3af64681be81b1596adcdc51d8bd8281664e9f37` |
| 4 | `def` | [positivityDischargeChecklist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PositivityDischarge/Variant60c6e74a0d1b6ea648be93ed8b3ba78c88363c7ea009da4fd102dd47afe969d1.lean/declarations/positivitydischargechecklist--9285da861c1b41bbf4ee65b4.md) | 60 | `declaration-track:9285da861c1b41bbf4ee65b465a1ceb1fb8405cc49d10f6ab6c53b71e83f12cb` |
| 5 | `theorem` | [dense_domain_in_positivity_discharge_checklist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PositivityDischarge/Variant60c6e74a0d1b6ea648be93ed8b3ba78c88363c7ea009da4fd102dd47afe969d1.lean/declarations/dense-domain-in-positivity-discharge-checklist--868ac2086733e60e0f20e09a.md) | 70 | `result-track:868ac2086733e60e0f20e09a41d46962985aa85902e708ea7925f294552f11d3` |
| 6 | `theorem` | [self_adjointness_in_positivity_discharge_checklist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PositivityDischarge/Variant60c6e74a0d1b6ea648be93ed8b3ba78c88363c7ea009da4fd102dd47afe969d1.lean/declarations/self-adjointness-in-positivity-discharge-checklist--3216717805b6446e358aaa22.md) | 75 | `result-track:3216717805b6446e358aaa2220c5219744d5643414e49b7f2980c25c519ddf73` |
| 7 | `theorem` | [compact_resolvent_in_positivity_discharge_checklist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PositivityDischarge/Variant60c6e74a0d1b6ea648be93ed8b3ba78c88363c7ea009da4fd102dd47afe969d1.lean/declarations/compact-resolvent-in-positivity-discharge-checklist--24283163f7b58b79791358e8.md) | 80 | `result-track:24283163f7b58b79791358e879b6557f83337736d4a2bfe4bfc654e1bf3b81d5` |
| 8 | `theorem` | [trace_regularization_in_positivity_discharge_checklist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PositivityDischarge/Variant60c6e74a0d1b6ea648be93ed8b3ba78c88363c7ea009da4fd102dd47afe969d1.lean/declarations/trace-regularization-in-positivity-discharge-checklist--56fc6a96ae7f08a5de44df25.md) | 85 | `result-track:56fc6a96ae7f08a5de44df256319fc539cf57e9a5f621b9629204e34f99f612a` |
| 9 | `theorem` | [functional_calculus_in_positivity_discharge_checklist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PositivityDischarge/Variant60c6e74a0d1b6ea648be93ed8b3ba78c88363c7ea009da4fd102dd47afe969d1.lean/declarations/functional-calculus-in-positivity-discharge-checklist--6caba80c9ccfb9b9cb4dce88.md) | 90 | `result-track:6caba80c9ccfb9b9cb4dce88383fb2e6425ade88f1db6b7190879f422db75659` |
| 10 | `theorem` | [real_spectrum_theorem_in_positivity_discharge_checklist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PositivityDischarge/Variant60c6e74a0d1b6ea648be93ed8b3ba78c88363c7ea009da4fd102dd47afe969d1.lean/declarations/real-spectrum-theorem-in-positivity-discharge-checklist--12038dbf4570a78bc88264c0.md) | 95 | `result-track:12038dbf4570a78bc88264c0227c68da2673ce49df9c3ce9769f5cc589e744ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
