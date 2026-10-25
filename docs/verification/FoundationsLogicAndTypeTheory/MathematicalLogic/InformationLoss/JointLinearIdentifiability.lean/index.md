# Verification target: GRWTSK.Logic.InformationLoss.JointLinearIdentifiability

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d1540260dcf60e40dbee26cfd70357551bdaf86",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/InformationLoss/JointLinearIdentifiability.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/JointLinearIdentifiability.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/JointLinearIdentifiability.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d1540260dcf60e40dbee26cfd70357551bdaf86`.

Source path: `GRWTSK/Logic/InformationLoss/JointLinearIdentifiability.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/InformationLoss/JointLinearIdentifiability.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Logic.InformationLoss.LinearMeasurementNecessity`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/LinearMeasurementNecessity.lean/index.md) — import line 7; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pairedLinear_injective_iff_common_kernel_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/JointLinearIdentifiability.lean/declarations/pairedlinear-injective-iff-common-kernel-zero--763102e1808c1beebd306060.md) | 28 | `result-track:763102e1808c1beebd306060ec2c378f17091880ae521dc8186147b26ee830ba` |
| 2 | `theorem` | [pairedLinear_not_injective_of_common_kernel](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/JointLinearIdentifiability.lean/declarations/pairedlinear-not-injective-of-common-kernel--1c2fb986fd7a54b09edbdfc8.md) | 49 | `result-track:1c2fb986fd7a54b09edbdfc8ca63cd0c4f8b6729031f2798efefa0b3024a5d2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
