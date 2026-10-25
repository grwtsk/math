# Verification target: GRWTSK.Logic.InformationLoss.KernelRestrictedDetection

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "242fdd63d842b1fe7b14efb1727f1f198656324e",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/InformationLoss/KernelRestrictedDetection.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/KernelRestrictedDetection.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/KernelRestrictedDetection.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `242fdd63d842b1fe7b14efb1727f1f198656324e`.

Source path: `GRWTSK/Logic/InformationLoss/KernelRestrictedDetection.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/InformationLoss/KernelRestrictedDetection.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Logic.InformationLoss.JointLinearIdentifiability`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/JointLinearIdentifiability.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pairedLinear_injective_iff_extra_detects_old_kernel](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/KernelRestrictedDetection.lean/declarations/pairedlinear-injective-iff-extra-detects-old-kernel--162358931adfef44b5a6f77c.md) | 31 | `result-track:162358931adfef44b5a6f77c0aaf0508ff904d4f0265e0bac33c3cf24e8eb861` |
| 2 | `theorem` | [pairedLinear_injective_of_kernel_restriction](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/KernelRestrictedDetection.lean/declarations/pairedlinear-injective-of-kernel-restriction--6565fba5418ef349c9b59981.md) | 39 | `result-track:6565fba5418ef349c9b5998190a76e427dc337a71b7dd976c10ed5df64322904` |
| 3 | `theorem` | [readout_recoverable_of_kernel_restriction](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/KernelRestrictedDetection.lean/declarations/readout-recoverable-of-kernel-restriction--7e2a1899aa4e62ab450b5a7b.md) | 51 | `result-track:7e2a1899aa4e62ab450b5a7b28210c6edcd5dca9c87b267ba3af1d85c9fd727f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
