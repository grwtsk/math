# Modular checkpoints and persistent search accounting

A packet assigns positive natural `cost` and additive `label` independently to each work identity. `physicalTime` retains the absolute origin and accumulated cost. `postPhases` translates modular partial sums by the initial phase. A certified phase ordering has distinct phases within its packet; it makes no global uniqueness claim across packets.

The [adapter](../../../../GRWTSK/DynamicalSystems/TransitionSystems/ModularCheckpoint.lean) reuses the established batch clock and unique batch coverage. It proves strict physical time growth, terminal cost and phase conservation, and compatibility with the old coverage and no-starvation hypotheses. Intermediate physical completion times can change under a permutation.

`Address` retains `(sourceRevision, epoch, absoluteLift, cumulativeCost, modularPhase)`. `checkpointAt_injective` uses the absolute lift, independently of phase uniqueness. The negative controls show that repeated residues can have distinct complete addresses. The checker bridge binds an accepted certificate to its explicit current revision and epoch; a valid certificate bound to revision 7 is rejected against revision 8.

## Admission and effects

`ExchangeablePacket` separately requires dependency preservation before and after the permutation, identity-preserving permutation, and semantic commutation. `packet_semantics_preserved` proves equality of the completed effect folds. A dependency antichain of increment and doubling operations need not commute, and a reversed dependent pair violates dependency order.

`PacketAdmission` retains current source binding, exchangeability, label contracts, budget feasibility and guards at the actual intermediate controller states. `Executes` invokes the existing `Guard` for every proposal. Checked consequences include safety, immutable prior receipts, preserved source, increased absolute lift and exact consumed-cost accounting. Modular validity supplies no missing mathematical evidence or operational permission.

## Restarts and search

Every `SearchAttempt` retains its explicit candidate, optional seed, revision, epoch and generation and repair expenditure. Accepted status is data and does not admit execution. The append-only search history also records each new allowance as a separate replenishment event.

`TrackedSession.restart` uses the existing revision-ledger factory, retains the previous absolute lift and full ledger, increments the epoch, and appends the supplied allowance. `tracked_restart_expenditure` proves exact preservation of past search cost; `restart_cannot_erase_expenditure` rejects a reset to zero after positive expenditure. Existing `BudgetResetCounterexamples` are imported unchanged. A producer repeatedly choosing a rejected candidate can incur arbitrarily much cost; totality of the checker supplies no randomized termination guarantee.

## Evidence and credit

The selected trust-zero receipt (artifact:gitblob:e01d1ffafea5bb1637c4c890640e68af219b9603) and declaration inventory (artifact:gitblob:08c78be73d92de914ca31935d12afd64993d8626) bind the checked claims and exact hypotheses. The adapter leaves `ControllerState` unchanged. It is a formal compatibility layer, not a deployed runtime or a source of funding and permission.

Human mathematical direction: grwtsk contributors. Lean implementation: OpenAI Codex; existing repository and Mathlib attribution retained. See [partial-sum ordering](../../Combinatorics/Sequences/partial-sum-ordering.md) for the mathematical repair construction.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/DynamicalSystems/TransitionSystems/ModularCheckpoint.lean`](../../../../GRWTSK/DynamicalSystems/TransitionSystems/ModularCheckpoint.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 80 |
| Theorem/lemma commands | 51 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
