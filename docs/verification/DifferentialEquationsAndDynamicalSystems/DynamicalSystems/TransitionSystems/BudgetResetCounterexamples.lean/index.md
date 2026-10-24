# Verification target: GRWTSK.DynamicalSystems.TransitionSystems.BudgetResetCounterexamples

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "983ddc5175d02fd27b302bc7985b853ed946e63e",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DynamicalSystems/TransitionSystems/BudgetResetCounterexamples.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/BudgetResetCounterexamples.lean/index.md) · [Full source](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/BudgetResetCounterexamples.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `983ddc5175d02fd27b302bc7985b853ed946e63e`.

Source path: `GRWTSK/DynamicalSystems/TransitionSystems/BudgetResetCounterexamples.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DynamicalSystems/TransitionSystems/BudgetResetCounterexamples.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.DynamicalSystems.TransitionSystems.StateReinitializationExamples`](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/StateReinitializationExamples.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Session](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/BudgetResetCounterexamples.lean/declarations/session--5ae1fc5aedb6477dd41223ef.md) | 24 | `declaration-track:5ae1fc5aedb6477dd41223efe790836646b1df454dbff050bfb5b442b64e260b` |
| 2 | `abbrev` | [State](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/BudgetResetCounterexamples.lean/declarations/state--61f8fc65e53a87c426f0711b.md) | 26 | `declaration-track:61f8fc65e53a87c426f0711bbeb8cf9049741f5789e0017aa439113e6a4b9d97` |
| 3 | `def` | [roundProposal](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/BudgetResetCounterexamples.lean/declarations/roundproposal--b6f3769b5fb3ccaf0624de92.md) | 29 | `declaration-track:b6f3769b5fb3ccaf0624de92e7ec8f86e8eae6ba56469ee2092c9910d20252cf` |
| 4 | `def` | [nextConfig](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/BudgetResetCounterexamples.lean/declarations/nextconfig--b20addd2192e1b080cbd8788.md) | 36 | `declaration-track:b20addd2192e1b080cbd8788d0dbc1eb53fa8b8aeb95449911fb6d5381463f46` |
| 5 | `def` | [sessionRun](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/BudgetResetCounterexamples.lean/declarations/sessionrun--98f50677b3b98159e0d7d8f7.md) | 40 | `declaration-track:98f50677b3b98159e0d7d8f7e092ed73529774c2ea846da2b67a8af5c99625e4` |
| 6 | `theorem` | [sessionRun_zero](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/BudgetResetCounterexamples.lean/declarations/sessionrun-zero--611f07e1c0cc2aa36a06c393.md) | 44 | `result-track:611f07e1c0cc2aa36a06c393ddab0e7a9df043ca0aef62bfb549bdf121902695` |
| 7 | `theorem` | [sessionRun_succ](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/BudgetResetCounterexamples.lean/declarations/sessionrun-succ--ea1eeb20040d5fa5fd632a53.md) | 45 | `result-track:ea1eeb20040d5fa5fd632a537cd35bcb169dadb8907947614a2f2524ac2b0ebe` |
| 8 | `def` | [restartedSession](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/BudgetResetCounterexamples.lean/declarations/restartedsession--47042d8edd094e97f3452e46.md) | 48 | `declaration-track:47042d8edd094e97f3452e461c0c5db9046e3200c6267fe15aca729562326f7c` |
| 9 | `theorem` | [next_round_exact](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/BudgetResetCounterexamples.lean/declarations/next-round-exact--1f0f5954f59e54cccb0c11ec.md) | 51 | `result-track:1f0f5954f59e54cccb0c11ec6662f015507aec1f30b4a228e098f1d8c893ebfb` |
| 10 | `theorem` | [session_history_exact](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/BudgetResetCounterexamples.lean/declarations/session-history-exact--29ae1b3d59c993c9d71ac878.md) | 54 | `result-track:29ae1b3d59c993c9d71ac8787ab4ec01760c65ab06e1ff17a2b65e19a96051d7` |
| 11 | `theorem` | [restarted_session_history_exact](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/BudgetResetCounterexamples.lean/declarations/restarted-session-history-exact--fed79067504eda6f309f274f.md) | 60 | `result-track:fed79067504eda6f309f274fd1418546ef1aa5b77ef905cd15186dcbbc2ad9aa` |
| 12 | `theorem` | [restarted_session_budget_exact](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/BudgetResetCounterexamples.lean/declarations/restarted-session-budget-exact--641f27fb6398b691970f138f.md) | 63 | `result-track:641f27fb6398b691970f138fdb502928811dd284900c1fc0608a49ea51beff50` |
| 13 | `theorem` | [restarted_session_safe](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/BudgetResetCounterexamples.lean/declarations/restarted-session-safe--c425eedf1665227bd89746d3.md) | 67 | `result-track:c425eedf1665227bd89746d39ab544a3e02d553b1a990ffa152452370e2dba8d` |
| 14 | `theorem` | [round_proposal_guard](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/BudgetResetCounterexamples.lean/declarations/round-proposal-guard--a26ca6d1b51c8e2ccdc4a4fc.md) | 73 | `result-track:a26ca6d1b51c8e2ccdc4a4fc57d1693111d4116c5362e74851ab5691c9371d95` |
| 15 | `theorem` | [session_run_safe](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/BudgetResetCounterexamples.lean/declarations/session-run-safe--bf23550d390ed3e630a83dd4.md) | 88 | `result-track:bf23550d390ed3e630a83dd4790dc1f71066328db59a1181b98df3b2906b97dd` |
| 16 | `theorem` | [each_restarted_round_guarded](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/BudgetResetCounterexamples.lean/declarations/each-restarted-round-guarded--2786e275bf41f033a052133a.md) | 99 | `result-track:2786e275bf41f033a052133a059fc0d37c1d2b5ee5f9e46479cd5574a4c85eae` |
| 17 | `theorem` | [completed_round_budget_exact](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/BudgetResetCounterexamples.lean/declarations/completed-round-budget-exact--0136b8cc3b958d4d61a5849b.md) | 104 | `result-track:0136b8cc3b958d4d61a5849b4da5fab33cb45e21d3c7a8b900c042211a5d0b16` |
| 18 | `theorem` | [session_run_lift_exact](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/BudgetResetCounterexamples.lean/declarations/session-run-lift-exact--508029ef869e42325a007a84.md) | 108 | `result-track:508029ef869e42325a007a840f75ad9d0cba91bc0ba6e54b0d6b50a7cf6c3ea1` |
| 19 | `def` | [totalRoundCost](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/BudgetResetCounterexamples.lean/declarations/totalroundcost--c93b870194ff61712a00488d.md) | 116 | `declaration-track:c93b870194ff61712a00488db4ec1417abd4f7dcbe412b660cd097da894f885e` |
| 20 | `theorem` | [totalRoundCost_zero](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/BudgetResetCounterexamples.lean/declarations/totalroundcost-zero--d65a3f22a77d44dc618d30b8.md) | 119 | `result-track:d65a3f22a77d44dc618d30b840f1c8e016b12617bd66fa67e55dff3ae3c5f80d` |
| 21 | `theorem` | [totalRoundCost_succ](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/BudgetResetCounterexamples.lean/declarations/totalroundcost-succ--aff8eb43d3ecac9af57a9977.md) | 120 | `result-track:aff8eb43d3ecac9af57a9977fd6d3ccc13a9c62a3e272201ab52a45745bb5486` |
| 22 | `theorem` | [total_round_cost_exact](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/BudgetResetCounterexamples.lean/declarations/total-round-cost-exact--5fe419a2fe6907f86627b52c.md) | 123 | `result-track:5fe419a2fe6907f86627b52c0006ce12c90739c20a02365c4ed4bbc0d0cd4a4d` |
| 23 | `theorem` | [arbitrarily_many_safe_positive_cost_rounds](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/BudgetResetCounterexamples.lean/declarations/arbitrarily-many-safe-positive-cost-rounds--230770f1884bbfda38c61037.md) | 131 | `result-track:230770f1884bbfda38c6103774f405500fa3dc766d672b87141d66cc292e04ad` |
| 24 | `theorem` | [completed_rounds_are_not_guarded_steps](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/BudgetResetCounterexamples.lean/declarations/completed-rounds-are-not-guarded-steps--ccc64a48e3d6bb14c2d90516.md) | 141 | `result-track:ccc64a48e3d6bb14c2d90516091d42acf8c96010f323002541a04b5aed2e20e9` |
| 25 | `theorem` | [immutable_session_termination_still_holds](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/BudgetResetCounterexamples.lean/declarations/immutable-session-termination-still-holds--6bda358f11a1373b24d915df.md) | 148 | `result-track:6bda358f11a1373b24d915dffe5d1590752097840976898e15959c86e96b6ccb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
