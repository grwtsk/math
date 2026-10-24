# Verification target: GRWTSK.DynamicalSystems.TransitionSystems.AnchoredReinitialization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc6b77b231323dd4c5ca09633474e65fee22073d",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DynamicalSystems/TransitionSystems/AnchoredReinitialization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredReinitialization.lean/index.md) · [Full source](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredReinitialization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc6b77b231323dd4c5ca09633474e65fee22073d`.

Source path: `GRWTSK/DynamicalSystems/TransitionSystems/AnchoredReinitialization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DynamicalSystems/TransitionSystems/AnchoredReinitialization.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Logic.Certificates.AnchoredBatchVerification`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredBatchVerification__SourceOccurrence76b2abe780b70eab9c96ca93.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.StateReinitialization`](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/StateReinitialization.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [replay_fresh_controller_safe](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredReinitialization.lean/declarations/replay-fresh-controller-safe--7e5958634d9d03beb3bede64.md) | 44 | `result-track:7e5958634d9d03beb3bede64f024022ec0fbb89eb2b51e03dc073f785ccca5fe` |
| 2 | `structure` | [ReplaySession](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredReinitialization.lean/declarations/replaysession--bc3a15ebba52379f25bfb700.md) | 61 | `declaration-track:bc3a15ebba52379f25bfb700ea4701b9cdb7483da449578a73a8449c61b1b99d` |
| 3 | `def` | [startReplaySession](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredReinitialization.lean/declarations/startreplaysession--556007506cf7deac87ccd000.md) | 66 | `declaration-track:556007506cf7deac87ccd000727bf9d9cf3d6d6ca547ef74e0e1b2fdc3f16878` |
| 4 | `def` | [ReplaySessionSafe](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredReinitialization.lean/declarations/replaysessionsafe--a8ccdefb1c83356fd8dcc39f.md) | 73 | `declaration-track:a8ccdefb1c83356fd8dcc39fafe817c175af6ebf0e61711a50793a9909b6cdd4` |
| 5 | `theorem` | [start_replay_session_safe](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredReinitialization.lean/declarations/start-replay-session-safe--80e704615572f515ed23a21e.md) | 78 | `result-track:80e704615572f515ed23a21ed7550cb46dad900de5500a33ccc7a9839c79d7fa` |
| 6 | `theorem` | [start_replay_session_history_preserved](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredReinitialization.lean/declarations/start-replay-session-history-preserved--8a5a7dda19200930c41deac5.md) | 85 | `result-track:8a5a7dda19200930c41deac5bc6655e75df9e85931e3404588077c9b8d07121d` |
| 7 | `theorem` | [start_replay_session_active_exact](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredReinitialization.lean/declarations/start-replay-session-active-exact--920e6857b59aef302eb204f2.md) | 90 | `result-track:920e6857b59aef302eb204f286aa57cf9db1c0a89378a71a286564c326ef375f` |
| 8 | `def` | [ReplaySession.advance](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredReinitialization.lean/declarations/replaysession-advance--e6c4aa3b1ea9d75f6fd7a968.md) | 95 | `declaration-track:e6c4aa3b1ea9d75f6fd7a968a3a44c10aeb1d57ef427d38eda3bd51171a08d29` |
| 9 | `theorem` | [admitted_replay_session_advance_safe](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredReinitialization.lean/declarations/admitted-replay-session-advance-safe--784ad55728553862c1bbf53e.md) | 101 | `result-track:784ad55728553862c1bbf53e9af73b3b936cdc3bf001a526939cbd435bd0e8b9` |
| 10 | `theorem` | [replay_session_advance_history_preserved](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredReinitialization.lean/declarations/replay-session-advance-history-preserved--4f464856e83d6da355957564.md) | 109 | `result-track:4f464856e83d6da3559575648fe51006820278083af90925ce49934b47db67ff` |
| 11 | `theorem` | [replay_session_advance_histories](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredReinitialization.lean/declarations/replay-session-advance-histories--7db7bcf26f32c4627139f508.md) | 115 | `result-track:7db7bcf26f32c4627139f5088ca92b2b19c673488410e68ddc592760d70c07cf` |
| 12 | `theorem` | [replay_session_advance_source_fixed](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredReinitialization.lean/declarations/replay-session-advance-source-fixed--c630eb4f2c11088706d3ffd2.md) | 125 | `result-track:c630eb4f2c11088706d3ffd20a0621f70ebde9d01399941fd386ccf366c2bcb3` |
| 13 | `theorem` | [replay_session_advance_current_receipts](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredReinitialization.lean/declarations/replay-session-advance-current-receipts--6cd6f0e58c893232ba2746a5.md) | 131 | `result-track:6cd6f0e58c893232ba2746a590df8a3497a63ecbfc2f6abc94da41a9b936fedd` |
| 14 | `theorem` | [admitted_replay_session_receipts_current](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredReinitialization.lean/declarations/admitted-replay-session-receipts-current--9dccc69dffc42132d999afa8.md) | 136 | `result-track:9dccc69dffc42132d999afa89b5c0924871943b551119f61717d2ce2f487b18c` |
| 15 | `theorem` | [replay_stale_receipt_rejects_guard](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredReinitialization.lean/declarations/replay-stale-receipt-rejects-guard--107ea953bf6243009dbdab50.md) | 148 | `result-track:107ea953bf6243009dbdab50a9bd8edbd4984b0647adab66503c5850539aa65f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
