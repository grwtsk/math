# Verification target: GRWTSK.DynamicalSystems.TransitionSystems.StateReinitialization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9be14bdfc0b35f3de1f591320ca37d51035dfbbe",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DynamicalSystems/TransitionSystems/StateReinitialization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/StateReinitialization.lean/index.md) · [Full source](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/StateReinitialization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9be14bdfc0b35f3de1f591320ca37d51035dfbbe`.

Source path: `GRWTSK/DynamicalSystems/TransitionSystems/StateReinitialization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DynamicalSystems/TransitionSystems/StateReinitialization.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Logic.Certificates.DependencyRevision`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/DependencyRevision__SourceOccurrence5c20a6fa003b232dbee150f3.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ControllerStartConfig](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/StateReinitialization.lean/declarations/controllerstartconfig--a3e43ee008b9263c909f1959.md) | 30 | `declaration-track:a3e43ee008b9263c909f1959d767b385c3a5e4609b42e1027618a9b4e6d17818` |
| 2 | `def` | [RevisionLedger.freshController](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/StateReinitialization.lean/declarations/revisionledger-freshcontroller--418e544f190d42ffc408505c.md) | 49 | `declaration-track:418e544f190d42ffc408505ca808b2b6e228b10fb41a67897cb7d3627025f55c` |
| 3 | `theorem` | [fresh_controller_safe](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/StateReinitialization.lean/declarations/fresh-controller-safe--9551968481ce26ed3d2889a9.md) | 63 | `result-track:9551968481ce26ed3d2889a9705a1ae474b17268d2e15bfa03462f24eb6731c6` |
| 4 | `theorem` | [fresh_controller_exact_fields](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/StateReinitialization.lean/declarations/fresh-controller-exact-fields--282d92e21a3b5062085f4ef8.md) | 80 | `result-track:282d92e21a3b5062085f4ef8b5891931d0bcc6f07c9741126dc397cec515e25c` |
| 5 | `structure` | [RevisionSession](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/StateReinitialization.lean/declarations/revisionsession--4c46f24c8a0ce8db049864e6.md) | 93 | `declaration-track:4c46f24c8a0ce8db049864e65eeb9ade0978dd71a642fb4770f8ba30fccba4fe` |
| 6 | `def` | [RevisionLedger.startSession](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/StateReinitialization.lean/declarations/revisionledger-startsession--e2aacaaf63cd705653f1d0c3.md) | 99 | `declaration-track:e2aacaaf63cd705653f1d0c3fcea1e6cfb6f2b6c2783ea6f0a0e90bc4f20a39f` |
| 7 | `def` | [SessionSafe](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/StateReinitialization.lean/declarations/sessionsafe--cf2848e33779c3dc55aaff7f.md) | 106 | `declaration-track:cf2848e33779c3dc55aaff7f8bafd025ac759693b26534609ab247654a62dd97` |
| 8 | `theorem` | [start_session_safe](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/StateReinitialization.lean/declarations/start-session-safe--cf9d530b7839335641f4a9ce.md) | 111 | `result-track:cf9d530b7839335641f4a9ce2f7ea29e60b7cc76fba9da15124b511f95359293` |
| 9 | `theorem` | [start_session_history_preserved](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/StateReinitialization.lean/declarations/start-session-history-preserved--046083b39a7cff5e3ad8145b.md) | 118 | `result-track:046083b39a7cff5e3ad8145b7144d89a0883a2c617eec1cedee6eaf54cbc869d` |
| 10 | `def` | [RevisionSession.advance](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/StateReinitialization.lean/declarations/revisionsession-advance--4d42f79e711556a307dc447a.md) | 124 | `declaration-track:4d42f79e711556a307dc447a18f467ea435b7ae9e2a492f73ebff7945b69714c` |
| 11 | `theorem` | [admitted_session_advance_safe](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/StateReinitialization.lean/declarations/admitted-session-advance-safe--1dfd5cb81b652852f39b2389.md) | 130 | `result-track:1dfd5cb81b652852f39b23891ffe62bea54b4576e5678c33e5449a8a7e523082` |
| 12 | `theorem` | [session_advance_history_preserved](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/StateReinitialization.lean/declarations/session-advance-history-preserved--011ac6a7dbf5ccb2363bada7.md) | 138 | `result-track:011ac6a7dbf5ccb2363bada7f906efb63cd9a644fbac5254d359908b35d3a4c4` |
| 13 | `theorem` | [session_advance_current_receipts](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/StateReinitialization.lean/declarations/session-advance-current-receipts--8a4ec0e317fd4ec066a2c7d1.md) | 142 | `result-track:8a4ec0e317fd4ec066a2c7d178de01bd512edbd3614bc01a26a7556839ebc34f` |
| 14 | `theorem` | [admitted_session_receipts_current](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/StateReinitialization.lean/declarations/admitted-session-receipts-current--6b472b179c377ea9b1bbe1cc.md) | 148 | `result-track:6b472b179c377ea9b1bbe1cc686b63798c62cac62eff7ddcf1801a02343e1c3e` |
| 15 | `theorem` | [stale_receipt_rejects_current_guard](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/StateReinitialization.lean/declarations/stale-receipt-rejects-current-guard--5bd3e917a9580bfb57008061.md) | 159 | `result-track:5bd3e917a9580bfb57008061aa9b3ce71f6ef4cb4e6b80a494cc8b3f02e9490d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
