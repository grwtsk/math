# HS-95 source window handoff

Local source attribution is grwtsk contributors. Formalization and checking assistance by OpenAI Codex.

The [controller](Riemann95WindowHandoff.lean) fixes the original test `Riemann120.ShuniaCounterexample (M + 2)` and keeps the physical configuration and cumulative machine steps. It assigns stage `M` to window `M / 95`, slot `M % 95`, and prime label at ordinal `M`. The state also holds the pinned revision, heat account, certificates, and outstanding obligations. The existing exact checker gives the arithmetic predicate identity used here. [Arithmetic predicate identity](Riemann95StageCertificatesCryptids.md) · [Coverage result](https://github.com/grwtsk/math/issues/1820)

## Exact handoff

- `source_block_completion` applies to any root at stage `M` with padding at least `M+21`. Given any natural `d` and proofs that each original test at `M+i` for `i<d` is safe, it produces a physical trace to stage `M+d`, growing padding by at least `d` and spending at least `d` machine steps. The induction appends the positive safe-stage trace from `physical_stage_outcomes`, using its increased padding to keep the next root valid.
- `acceptedWindow_handoff` takes a root at stage `95*w` and `accepts w = true`. The block theorem and exact arithmetic predicate identity carry the physical run to slot zero of window `w+1`. `Run.acceptedWindow_from_blank` appends the continuation to the preserved blank-start trace of any live controller at that boundary.
- `rejectedWindow_halts` takes the same root and `accepts w = false` from recomputed arithmetic. The set of bad slots is nonempty. Its least slot has a safe strict prefix. The proof appends the safe block and the terminal branch of `physical_stage_outcomes`. The resulting reachable configuration has no next source step.
- `firstWindow_accepts` checks the original arguments 2 through 96 in the kernel. `firstWindow_from_blank` composes that result with the 3,634-step bootstrap. It proves a trace from the blank tape to window one, slot zero, with padding at least 117 and at least 95 machine steps after bootstrap.

## Retry and fairness

`Step.retry_preserves` keeps the configuration, stage, address, cumulative steps, revision and committed certificates. Heat and outstanding obligations may change. The retry branch requires no arithmetic verdict. Rejection in `rejectedWindow_halts` requires the result of the exact arithmetic checker.

`Tick.preserves` inducts from the bootstrap. Decisive transitions append exact source segments, and retries preserve the checkpoint and its safe prefix. The legal constant-retry run falsifies eventual progress even when the source supplies decisive steps. The control predicate `m = N` is false throughout a strict prefix of length `N`, then fails the safety test at `N`.

`Run.fair_iff_prefix_resolution` gives an exact criterion. A legal run exits every live visit iff it resolves every stage whose strict prefix is safe. The forward proof takes the first exit at each stage. In reverse, stage monotonicity and terminal persistence force a visited stage's resolution to follow that visit. A strictly decreasing natural retry rank suffices by bounding any retry suffix by its starting rank. Under fairness, the first bad stage is exactly the halting stage, and controller halting is equivalent to the original machine's halting and to the negation of RH. The proof-only `referenceRun` establishes existence by choosing exact source traces. A concrete HS gate must still supply progress for its own legal runs. [Finite heat account](../../Combinatorics/GraphTheory/RootHeatState.lean) · [Path potential](../../DynamicalSystemsAndErgodicTheory/FinitePhraseProcess.lean) · [Exact periodic source paths](../../DynamicalSystemsAndErgodicTheory/SoficPeriodicSourceIntegration.lean)

```text
Pinned bootstrap + one-stage outcomes + composition
  → checkpoint preservation and physical block handoff
Exact ordinal checker → safe block or least bad slot → physical continuation or halt
Actual scheduler progress or decreasing retry budget → fair resolution
Fair resolution + halting invariant → first bad stage and the original RH criterion
```

## Provenance and verification

The local namespace is `GRWTSK.HS95.WindowHandoff`. The upstream source is Google DeepMind Cryptids revision `3647718b5df22e1a61462dec0376bd204526285a`, Google LLC 2026, Apache-2.0. Direct dependencies are `BootCertificate.boot_reaches_initialRoot` at blob `3c6eae70196edf6d1beb66c06d7b481e2acdf387`, `physical_stage_outcomes` at `096aeffc26350ca0fb65ac3683f7405b1ebcdfdb`, and `Dispatch.nSteps_composition` at `7a88be04a79f45f2fec0b366652deeb7399f404c`. The original witness proof is in `Witness95.lean` at `2f0b9fa8e289468aa1a18cdb0cef719eb7e1869e`. The controller uses the full physical root, original stage argument and exact terminal predicate. [Bootstrap](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/ReductionSupport/Riemann95/Bootstrap95.lean) · [Stages](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/ReductionSupport/Riemann95/Stage95.lean) · [Composition](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/ReductionSupport/Riemann95/ArithmeticDispatch95.lean) · [Witness](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/ReductionSupport/Riemann95/Witness95.lean) · [RH return](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Semantics/Riemann95.lean) · [License](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/LICENSE)

The earlier standalone candidate, SHA-256 `133fcaec4925a4c5f77e19150e3eb6d74088e43daf1453bbbb42a136e88b71c3`, failed the pinned Lean check on deprecated names, dependent matches and rewrites, the bundled halting type, and a monotonicity proof. The corrected local source has SHA-256 `539573c0da30c9b9f070899f3d4c9ffb160dba54741ab2aac772dad0187faa3b`.

The isolated target built with actual Cryptids imports on Lean `4.35.0-rc4` and Mathlib `1f414401f69059aa7eead47b53ee40bd38455eeb`. Direct compilation with `--trust=0` and warnings treated as errors passed for the new file. Targeted kernel replay and transitive axiom audits of eleven principal declarations passed. The audit found only `propext`, `Classical.choice`, and `Quot.sound`. Full import-closure replay, HS runtime parity and independent scholarly review are `NOT_RUN`.
