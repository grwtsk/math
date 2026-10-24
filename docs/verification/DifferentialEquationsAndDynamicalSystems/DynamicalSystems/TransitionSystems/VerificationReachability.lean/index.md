# Verification target: GRWTSK.DynamicalSystems.TransitionSystems.VerificationReachability

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5976f4baa47f737c1ec69793c51054cb35c57601",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DynamicalSystems/TransitionSystems/VerificationReachability.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/VerificationReachability.lean/index.md) · [Full source](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/VerificationReachability.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5976f4baa47f737c1ec69793c51054cb35c57601`.

Source path: `GRWTSK/DynamicalSystems/TransitionSystems/VerificationReachability.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DynamicalSystems/TransitionSystems/VerificationReachability.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.DynamicalSystems.TransitionSystems.RevisionReachability`](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/RevisionReachability.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Logic.Certificates.BatchVerification`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerification__SourceOccurrence44634b1ebfeef97814016311.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [RevisionWorkflow](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/VerificationReachability.lean/declarations/revisionworkflow--4b0d61b807de1dc41f55922a.md) | 40 | `declaration-track:4b0d61b807de1dc41f55922ad652c7b8259b4d3141b3836bf9a9cb17c272c6f2` |
| 2 | `theorem` | [workflow_safe](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/VerificationReachability.lean/declarations/workflow-safe--4fe660e701c8a2f8f13e58b7.md) | 54 | `result-track:4fe660e701c8a2f8f13e58b7615208197b69f1c947637555296c8decd194c604` |
| 3 | `theorem` | [workflow_issued_preserved](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/VerificationReachability.lean/declarations/workflow-issued-preserved--f16b966455950a114cb0d5eb.md) | 64 | `result-track:f16b966455950a114cb0d5ebe9342c1737350c4003bda9b8a0d5f86a461705a6` |
| 4 | `theorem` | [workflow_archive_prefix](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/VerificationReachability.lean/declarations/workflow-archive-prefix--961955497518100b96be1717.md) | 75 | `result-track:961955497518100b96be1717ac7409c912cfd8cc37d5a5994ebcb8d3b5ed022f` |
| 5 | `theorem` | [workflow_receipts_preserved](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/VerificationReachability.lean/declarations/workflow-receipts-preserved--c07544e9369dc89294f0c4bb.md) | 87 | `result-track:c07544e9369dc89294f0c4bb2454d04f4ee5cb8da2e89160a437305445da1078` |
| 6 | `theorem` | [workflow_correction_prefix](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/VerificationReachability.lean/declarations/workflow-correction-prefix--11149b3be8ff540f76b9c23d.md) | 98 | `result-track:11149b3be8ff540f76b9c23d6f531216f91eff4f47ab16cbb12a03717c4cd9bb` |
| 7 | `theorem` | [workflow_obligation_retained](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/VerificationReachability.lean/declarations/workflow-obligation-retained--cf907734edd69d0095995a35.md) | 115 | `result-track:cf907734edd69d0095995a351785dc778a5e858b94429e84b341ab9d3419d42f` |
| 8 | `theorem` | [workflow_verified_target](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/VerificationReachability.lean/declarations/workflow-verified-target--8073249671e4bc83b75fc04e.md) | 125 | `result-track:8073249671e4bc83b75fc04e4d4c948ba39967cf14bb264f2ad7eb35df882efa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
