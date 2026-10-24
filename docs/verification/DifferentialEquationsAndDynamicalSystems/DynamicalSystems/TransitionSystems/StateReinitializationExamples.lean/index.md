# Verification target: GRWTSK.DynamicalSystems.TransitionSystems.StateReinitializationExamples

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "772d679b3806c374a6ca85144baac60fdc7fd0f7",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DynamicalSystems/TransitionSystems/StateReinitializationExamples.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/StateReinitializationExamples.lean/index.md) · [Full source](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/StateReinitializationExamples.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `772d679b3806c374a6ca85144baac60fdc7fd0f7`.

Source path: `GRWTSK/DynamicalSystems/TransitionSystems/StateReinitializationExamples.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DynamicalSystems/TransitionSystems/StateReinitializationExamples.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.DynamicalSystems.TransitionSystems.StateReinitialization`](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/StateReinitialization.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Logic.Certificates.DependencyRevisionExamples`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/DependencyRevisionExamples__SourceOccurrence6f77f1437de0b2aed58aaf9e.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [config](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/StateReinitializationExamples.lean/declarations/config--d3344339da82667d01f83f90.md) | 23 | `declaration-track:d3344339da82667d01f83f905f14c10026f35c9c57e83cf32723cede0b9cfdae` |
| 2 | `def` | [session](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/StateReinitializationExamples.lean/declarations/session--adc0bc322ef8a8f1fbd2d8cf.md) | 27 | `declaration-track:adc0bc322ef8a8f1fbd2d8cf7532385a39592e6df66f7923a8901c8cf587b570` |
| 3 | `theorem` | [restarted_session_safe](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/StateReinitializationExamples.lean/declarations/restarted-session-safe--defb15e29d34883b987ff9a1.md) | 30 | `result-track:defb15e29d34883b987ff9a1bf55edd9bf541d090a7a34f164fbf65f3eed4fba` |
| 4 | `theorem` | [restart_separates_history_and_active_receipts](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/StateReinitializationExamples.lean/declarations/restart-separates-history-and-active-receipts--fc84e402dd7632117ff4c255.md) | 36 | `result-track:fc84e402dd7632117ff4c25503d5574dd9d88809ac83ff27b1d22cbfbb2054f2` |
| 5 | `theorem` | [restart_retains_current_status_and_lift](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/StateReinitializationExamples.lean/declarations/restart-retains-current-status-and-lift--e927ba883ac0d7c56d3bedfd.md) | 41 | `result-track:e927ba883ac0d7c56d3bedfdf659cd28773d5b1f86258e5ac8a2391eac0fd82e` |
| 6 | `def` | [currentReceipt](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/StateReinitializationExamples.lean/declarations/currentreceipt--9f46cb963539a4947ce7c9d4.md) | 48 | `declaration-track:9f46cb963539a4947ce7c9d443984422f2309562522503756cc23e2d9860c299` |
| 7 | `def` | [currentProposal](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/StateReinitializationExamples.lean/declarations/currentproposal--c68da2005df45805bfaa7378.md) | 54 | `declaration-track:c68da2005df45805bfaa737809c672babd74e62a53efec15906e0cf84965ffd4` |
| 8 | `theorem` | [current_proposal_guard](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/StateReinitializationExamples.lean/declarations/current-proposal-guard--8f5343675c8534367688ae50.md) | 62 | `result-track:8f5343675c8534367688ae50d39ddebaf7cefd6aea472004ca56f9b2c2144bbb` |
| 9 | `theorem` | [admitted_restart_step_safe](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/StateReinitializationExamples.lean/declarations/admitted-restart-step-safe--a65721270952c274dc643658.md) | 80 | `result-track:a65721270952c274dc6436588ebf89978cbcb61c525df10fdf6aec3ec2bd4a47` |
| 10 | `theorem` | [admitted_step_preserves_history_and_appends_current_receipt](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/StateReinitializationExamples.lean/declarations/admitted-step-preserves-history-and-appends-current-receipt--a00d947753c7a533b38ed6d8.md) | 87 | `result-track:a00d947753c7a533b38ed6d84175a77cc002ad1e05d30f75326644b59637cbd7` |
| 11 | `def` | [staleProposal](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/StateReinitializationExamples.lean/declarations/staleproposal--21383a5d83aa0fba0673d01f.md) | 97 | `declaration-track:21383a5d83aa0fba0673d01fc615184e31d3f9000ecaf8bc776f1a86c1e94a13` |
| 12 | `theorem` | [stale_historical_receipt_rejected](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/StateReinitializationExamples.lean/declarations/stale-historical-receipt-rejected--3ce771b4d5b4abb0d1ae0d3f.md) | 106 | `result-track:3ce771b4d5b4abb0d1ae0d3fc381b1397cc0ef8aaba170ec13f7c575961f3562` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
