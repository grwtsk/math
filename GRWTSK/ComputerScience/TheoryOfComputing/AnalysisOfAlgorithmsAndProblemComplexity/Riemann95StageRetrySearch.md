# Executable retry search for native Riemann95 stage receipts

Local source attribution is grwtsk contributors. The maintained source is
[Riemann95StageRetrySearch.lean](Riemann95StageRetrySearch.lean) in the
namespace `GRWTSK.ComputerScience.Riemann95StageRetrySearch`.

The module uses Google DeepMind Cryptids at
`3647718b5df22e1a61462dec0376bd204526285a`, Google LLC, Apache-2.0,
on Lean 4.35.0-rc4 and Mathlib `1f414401f69059aa7eead47b53ee40bd38455eeb`.
Every trial runs the original finite instruction evaluator on the original
physical tape and checks the original Shunia test at argument `stage+2`.
[Native stage specification](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/ReductionSupport/Riemann95/Stage95.lean#L26-L34)

## Exact configuration comparison

`normalizeHalf` defines a computable key for the native quotient of
finite half-tapes by trailing blanks. The upstream `trimZeros` function
is unchanged by appending zeros. Reversing the leading-zero decomposition
shows that an input list is an extension of its trimmed representative.
`mk_normalizeHalf` states that quotienting this representative returns
the original half-tape. Applying it to both halves makes `key` injective
on full configurations, with the original control and scanned bit included.
This supplies a local decidable equality for the proposed and actual
destination tapes. Relevant Git blobs are `345a59a2133776d937507536b4a07667c11e299b`
for the tape and machine definitions, `0802b364dc5f0cb23d369776fdde01a96fee811a`
for the trimming definition, and `16d583f574881bcc560a4903e109da4fcd577a16`
for its trailing-zero theorem.
[Native half-tapes](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Machines.lean#L87-L104) ·
[Trimming definition](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Semantics/Riemann120/Backend.lean#L2050-L2055) ·
[Trimming invariance](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Semantics/Riemann120/Program.lean#L447-L448)

## Finite trials and source preservation

A valid `Root` at stage `M` has padding at least `M+21`, extra
register data, its exact native configuration, and window and slot
`M / 95` and `M % 95`. A candidate stores a natural step count,
proposed next padding and finite list of extra registers. `verify`
checks these data and returns a typed `Receipt root` on success.

- A completed receipt stores arithmetic safety, positive step count,
  stage increment, padding increase and exact trace to the next root.
- A counterexample receipt stores the true original predicate and an
  exact trace to a configuration with no next native instruction.
- A trial with no verifying candidate returns retry. The root is fixed
  in the result type and `retry_bound` proves that only the search
  bound changes, from `bound` to `bound+1`.

`bootstrap_to_firstRoot` anchors the first root in the real blank-tape
run at step 3,634. For any other certified blank-start prefix,
`Receipt.from_blank` appends the actual trace using the native
`nSteps_composition`, preserving the exact successor or terminal
configuration. The direct dependencies have blobs
`3c6eae70196edf6d1beb66c06d7b481e2acdf387` for the bootstrap,
`11f5f2b5b3357a5239666de395ff41dfafafe1d6` for the physical root and
`7a88be04a79f45f2fec0b366652deeb7399f404c` for trace composition.
[Bootstrap](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/ReductionSupport/Riemann95/Bootstrap95.lean#L72-L77) ·
[Physical root](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/ReductionSupport/Riemann95/Physical95.lean#L22-L25) ·
[Composition](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/ReductionSupport/Riemann95/ArithmeticDispatch95.lean#L16-L23)

## Eventual resolution

`exists_successful_probe` holds for every valid root. In the safe
case the pinned `physical_stage_outcomes` gives finite step, padding
and extra-register data. Their natural-number encoding is accepted by
the checker. In the bad case the step count alone recovers the actual
terminal configuration. The stage theorem has blob
`096aeffc26350ca0fb65ac3683f7405b1ebcdfdb`.

`resolve` is executable and uses the least successful code, found by
decidable natural-number search. Its termination proof uses the native
one-stage theorem. `scan` retains success when its finite search bound
grows. `eventually_resolved` states that for every valid root and every
starting bound `B`, there exist a natural delay `d` and a receipt
returned by the attempt at `B+d`. Thus a scheduler that completes
successive bounded trials at a held root eventually has a valid
decision. A failed trial, including the empty bound, supplies no
arithmetic verdict. Termination is a mathematical property of the
search. The enumeration can be expensive, and its proof gives no
wall-clock bound. The HS heat and external certificate gate still need
a proof that they deliver the prescribed attempts or feed equivalent
native receipts to the handoff.
[Stage-outcome theorem](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/ReductionSupport/Riemann95/Stage95.lean#L26-L32) ·
[Original witness criterion](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/ReductionSupport/Riemann95/Witness95.lean#L73-L99)

## Exact retry counts and receipt agreement

Let `k = firstSuccessfulCode root` be the least code with a successful
native probe. The original `scan root b` checks codes strictly below
`b`, so at bound `k` it still has no receipt and at `k+1` it returns
the receipt of code `k`. `scan_eq_firstSuccessfulCode` proves this
classification for every bound. At a successor bound it either retains
the first receipt already found, visits code `k` itself, or visits a
smaller code that fails by minimality. The successful probe at `k`
returns exactly the dependent receipt used by `resolve`. Consequently
`attempt_eq_firstSuccessfulCode` gives the same successor or terminal
configuration as the constructive resolver.

For every starting bound `b`, `attempt_resolves_after_exact_retry_count`
gives `max(0,k+1-b)` failed attempts before the first resolution in
consecutive trials. Every exposed retry raises the bound by one and
decreases `retriesRemaining` by one. An already sufficient starting
bound resolves immediately. `attempt_schedule_resolves_iff` also covers
completed attempts that skip bounds. They resolve at this held root
exactly when some sampled bound exceeds `k`. A schedule repeating the
bound `k` forever is a hostile control because each trial omits code
`k`. Unbounded completed bounds always include it eventually.

This classification connects bounded attempts to the native stage
runner even when distinct valid codes could carry different data.
Connecting physical HS retries to this result still requires delivery
of completed trials with a sufficient bound or source-equivalent
receipts. The retry count measures search bounds and leaves the durations
of the trials open.

## Executable stage runner

`run` starts at the certified blank bootstrap. A live state includes
the full root, count of original instructions, and exact reachability
proof from blank. A halted state contains the first encountered bad stage,
the reached configuration and its terminal instruction test. The runner
calls the total resolver at each live stage. It carries the physical
trace forward and retains a halted state on subsequent ticks.

`live_at_safe_prefix` proves that for every `N` with all original
stages below `N` safe, tick `N` is live at stage `N`. In a run with a
bad stage, decide the least one by natural-number search. Its strict
prefix is safe, so the next tick at that stage returns a witnessed stop.
`halts_iff_witness`, `halts_iff_native` and `halts_iff_not_RH`
identify existence of an executable stop with the original Shunia
witness, original blank-tape halting and the negation of RH, respectively.
The tick index here counts completed calls to the resolver. The finite
trial attempts in the previous section use search bounds within one call.
[Original blank-tape criterion](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Riemann95.lean#L19-L23) ·
[Original RH equivalence](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Semantics/Riemann95.lean#L11-L16)

```text
trim and quotient round trip → exact equality of native configurations
finite source trace + exact predicate → checked receipt
original stage outcomes → some finite candidate succeeds
least successful code → exact retry count and receipt equality at every sufficient bound
native bootstrap + receipt trace → successor or halt on original blank run
safe-prefix induction + least bad stage → executable runner halting equivalence
HS runtime scheduling and heat integration → attempts or exact receipts [open]
```

## Verification

The isolated Lake target and targeted kernel replay passed against the
actual pinned Cryptids imports. The twelve audited definitions and
theorems depend only on subsets of `propext`, `Classical.choice` and
`Quot.sound`. The expected types for eventual resolution and the
runner's RH equivalence passed. The trailing-blank example and
zero-bound retry checked in the kernel.

The executable verifier accepted the proposed first-stage transition
of 10,715 instructions to stage 1, padding 23 and 29 zero extra
registers. It rejected the otherwise identical 10,714-instruction
proposal. These checks ran the finite verifier on supplied candidates.
Full fresh replay of the dependency closure, independent review,
HS runtime parity, and wall-clock performance are `NOT_RUN`.
The exact-count extension compiled with `--trust=0` and warnings as
errors on the same isolated pins. Kernel checks confirmed the retry at
bound `k`, the identical resolution at `k+1`, the stalled constant
schedule, and the general resolution bound. Target kernel replay passed.
The transitive audit of the eight added public declarations reported only
`propext`, `Classical.choice` and `Quot.sound`. Fresh replay of the full
import closure and independent review of the extension are `NOT_RUN`.

[Coordination and exact evidence](https://github.com/grwtsk/math/issues/1823)

## Incremental probe controller under pauses

`probeTick` checks one candidate code. A failed probe increments the
cursor while retaining the original root, tape, and cumulative native
instruction count. A successful probe commits the same typed receipt
as the existing stage runner and resets the cursor at its successor.
The two runners use the same receipt application.

At each live stage with first successful code `k`, the first `k`
completed probes leave it live with cursors 1 through `k`. Probe
`k+1` commits. `probeClock n` accumulates these budgets through the
first `n` stage decisions. Induction on stages proves
`probeRun_at_clock`, equality with the original stage runner at every
committed boundary, including the exact native terminal configuration.

For any Boolean schedule, `scheduledProbeRun_eq` erases paused ticks.
The completed-probe count begins at zero and each tick adds zero or
one. If it reaches `probeClock n` and the strict prefix below `n` is
safe, `scheduledProbeRun_visits` yields a live visit to stage `n`
with cursor zero. If `m` is the first bad stage,
`scheduledProbeRun_first_bad` identifies one native terminal receipt
at stage `m`. At every tick the run is in that exact halted state
precisely when the completed-probe count is at least
`probeClock (m+1)`. Earlier offsets within stage `m` are live.
Halting persists, so no earlier time before entry at `m` can have
been halted. The always-paused schedule stays at the original
bootstrap forever, regardless of the number of elapsed ticks.

```text
least successful code → exact stage probe budget → cumulative boundary clock
completed-probe count ≥ boundary clock → native stage visit or terminal receipt
unbounded completed probes → exact native halting equivalence
deployed pause and heat gates → prove probe completion and cursor persistence [open]
```

This clock counts completed verifier calls, whose finite native replays
can have different lengths. It gives no wall-clock estimate. Pinned
compilation with `--trust=0` and warnings as errors, target kernel
replay, boundary controls, and the transitive theorem audit passed.
Fresh replay of the full import closure, independent review, wall-clock
performance, and HS runtime parity are `NOT_RUN`.

## Fairness and deadlines from enabled ticks

`completedProbes_unbounded_iff` holds for every schedule. A clock that never
increments after some tick is bounded by its count at that tick. Conversely,
an arbitrarily late enabled tick provides the next increment after any
witnessed count. This criterion supplies the exact progress premise of
`scheduledProbeRun_halts_iff_not_RH_of_enabled`. A schedule with only tick
zero enabled fails it, even though the gate does permit a completed probe.

`le_completedProbes_mul` assumes that every interval of `w` successive ticks
includes an enabled tick. The (n)-th such block contributes at least one
increment before its end, yielding at least `n` completed probes by tick
`n * w`. Thus `scheduledProbeRun_visits_by` visits every safe stage `n`
at cursor zero by tick `probeClock n * w`. If `m` is the first bad native
stage, `scheduledProbeRun_first_bad_by` reaches the exact recorded terminal
state by tick `probeClock (m + 1) * w`.

The arithmetic classification and recorded trace still come from the pinned
Cryptids `Stage95.physical_stage_outcomes` and
`physical_stage0_halts_iff_witness` chain documented above. To apply
the deadlines to HS, prove that an enabled tick delivers a completed native
probe and that paused ticks preserve the full checkpoint and cursor. Then
certify a uniform gap bound for those completions. The result measures
scheduler ticks. A bound in elapsed time additionally requires a bound on the
duration of those ticks.

Strict standalone Lean compilation with `--trust=0 -DwarningAsError=true`,
target kernel replay and the seven-theorem transitive audit passed on the
pins above. The audit found only `propext`, `Classical.choice` and
`Quot.sound`. Verified Lean SHA-256
`b6ddb8363144dbb5c7acbd93547144995f478ff0a2c271898d344ad6a163e34f`.
Fresh import-closure replay, independent review and HS runtime parity
remain `NOT_RUN`.
A checked alternating schedule meets the width-two condition and has
exactly `n` completions at tick `2 * n`, attaining the bound. At tick
100 the single-enabled and alternating schedules returned counts 1 and 50.

## Out-of-order proposals and terminal agreement

`verifyBatch` checks submitted candidates against the same anchored
root and returns the first valid receipt in arrival order. The batch
may skip any candidate codes. `verifyBatch_none_iff` characterizes
failure as rejection of every proposal, and `verifyBatch_some_mem`
identifies a submitted candidate for every returned receipt.
`commitBatch` keeps the full active state when the batch is
inconclusive. Otherwise it consumes the original native trace in the
receipt. It halts exactly when the root's original Shunia predicate
holds and the batch contains a verified candidate.

The terminal-time proof compares two successful runs from the same
native start. If their lengths differ, the longer run takes a step
after the earlier run has reached a configuration with no successor.
This is impossible by native run composition. Equal lengths give
the same full terminal configuration by determinism.
`Stopped.native_time_and_config_eq` applies this to absolute native
instruction counts from blank, including batches with different
anchored active inputs.

The zero-step control rejects every batch made only of such proposals
at any safe root, irrespective of its size, padding or register data.
A bounded count of completed batches alone therefore cannot replace
coverage of successful proposals. An HS runtime still needs to bind
each proposal to the current anchored root and deliver a successful
proposal at every stage that it reaches. Verification of this
extension is recorded in [issue #1823](https://github.com/grwtsk/math/issues/1823).

## Stage-dependent batch deadlines

Every batch run, including an unfair one, carries a safe strict
arithmetic prefix at every active or halted state. Inconclusive
batches leave that prefix unchanged. Completed receipts append the
verified safe stage. A counterexample receipt preserves the strict
prefix and supplies the bad stage itself.

For a latency function L, require that every actual live visit at
stage m and tick t has a batch verifying for that held root at some
u between t and t+L(m). If the root has not already committed, all
earlier inconclusive batches preserve it, so some commit takes place
by u+1. Induction gives the cumulative deadline
sum_{m<n} (L(m)+1) to enter stage n when its strict prefix is safe.
For the first bad stage n, add L(n)+1 ticks to obtain the terminal
deadline. In particular a safe full window enters the next window
at slot zero by the corresponding sum. The assumption is only on
actual visits and counts scheduler ticks.

An always-empty stream violates the latency premise for every
function L. Strict pinned compilation, target replay, the empty
stream and variable allowance controls, and four theorem audits
passed. Fresh full replay, independent review and physical latency
certification are NOT_RUN.

## Fairness at visited checkpoints

`BatchVisitFair` requires a future verifying batch only for an actual
live visit of the native runner. `batchRun_stays_live_iff` characterizes
permanent retention of that exact checkpoint as rejection by every
subsequent batch. Rejections hold the root in place by induction. A
verification either adds one to the native stage or commits the terminal
receipt, so it cannot leave the live checkpoint unchanged.
`batchVisitFair_iff_leaves_live` makes departure from every live visit
equivalent to this qualitative fairness premise.

`batchRun_visits_safe_prefix_of_visit_fair` and
`batchRun_halts_at_first_bad_of_visit_fair` use this weaker premise.
The first successful batch for the held root commits the original typed
receipt. Induction gives all safe prefixes, and the first bad stage gives
the actual terminal trace. Thus `batchRun_halts_iff_not_RH_of_visit_fair`
returns to the same pinned Shunia witness equivalence. The original
global-fairness interfaces are recovered via `BatchFair.toVisitFair`.

The checked empty stream is permanently stalled. Even a nonempty singleton
at every tick, consisting of an otherwise arbitrary zero-step proposal,
fails visit fairness at a safe first root. The physical scheduler still
needs to supply eventual verification at every reached checkpoint.

Strict target compilation, targeted kernel replay, the starvation controls
and the seven theorem transitive audits passed on the toolchain and
dependency pins above. The audits found only `propext`,
`Classical.choice` and `Quot.sound`. Checked source SHA-256
`98640b180d193b4c81b5d3f074303a5a632ddf705115cc4b8e6b9ec1bc92de7a`.
Full fresh dependency replay, independent review and HS runtime parity
are `NOT_RUN`.

## Packet boundaries at the same native root

`verifyBatch_append` preserves the exact first verified receipt when a
list of proposals is split into two packets at the same anchored root.
The proof is list induction, with case analysis on the verifier result
for the head proposal. `commitBatch_append_of_retry` permits merging a
rejected prefix packet with the next packet. `commitBatch_append_of_receipt`
admits no change to the committed result from further proposals at that
root. `verifyBatch_none_iff_of_perm` preserves the retry decision under
reordering. The selected successful receipt may depend on the order.

These laws use the actual source verifier and apply only within one root.
A report for a later committed root must be verified at that new root.
The physical HS packet binding and fairness assumptions remain separate.
[Verification record](https://github.com/grwtsk/math/issues/1823)
