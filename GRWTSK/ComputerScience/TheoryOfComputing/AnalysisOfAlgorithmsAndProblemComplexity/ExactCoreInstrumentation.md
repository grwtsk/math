# Exact core instrumentation: mathematical argument and provenance

Local source attribution: grwtsk contributors.

Maintained source: [ExactCoreInstrumentation.lean](ExactCoreInstrumentation.lean).
Namespace: `GRWTSK.ComputerScience.ExactCoreInstrumentation`.
Status of every new Lean declaration: **SOURCE_PROOF_CANDIDATE**.
Coordination: [math #1838](https://github.com/grwtsk/math/issues/1838).

## Objects, hypotheses, and finite refinement argument

Let `Core` be the complete mathematical configuration type, `Metadata` an
arbitrary external type, and `step : Core -> Option Core` the exact partial
transition. `State` contains both values. A command replaces metadata and
either observes, holds, or commits. An observation or hold preserves `core`
definitionally. A commit applies `step` once; it cannot choose a different
tape cell, control label, or successor. `none` propagates through replay.

For a command list `commands`, let `commitCount commands` count only commit
commands. Induction on that list proves `replay_projection`. The empty list
projects to the original configuration. The observation and hold cases
remove one command without changing the projected input or commit count.
The commit case splits on the actual core transition: `none` agrees on both
sides; `some next` reduces to the induction hypothesis starting at `next`.
Thus erasing metadata and zero-step commands gives exactly the original
finite computation, including a terminal option.

`replay_eq_some_projects` extracts the native prefix from a successful
instrumented replay. `replay_eq_none_iff` reflects failure of the original
partial transition in both directions. These results do not equate a
process error, timeout, or exhausted external budget with `none` in the
mathematical interpreter.

`AllowedProjection` states the local identity-or-exact-step condition.
`inject` is deliberately outside the command language. The hostile theorem
`injection_can_break_projection` uses a Boolean core with no transitions:
replacing `false` by `true` is neither an identity nor an allowed transition.
Determinism of an intervention alone therefore gives no refinement.

`holds_preserve_core` proves exact core preservation after any finite number
of holds. The same configuration can remain held for every such prefix.
Consequently finite trace safety does not provide eventual execution or
halt reporting. A separate progress premise remains necessary.

## Concrete consumers and comparison with existing source

[Riemann95Instrumentation.lean](Riemann95Instrumentation.lean) instantiates
the core with the literal Cryptids `Cfg 95 2` and the literal machine step.
Its projection theorem returns the same `nSteps` relation used by
`Riemann95StageRetrySearch.Receipt.from_blank` and the native checkpoint
interfaces. This establishes the mathematical boundary expected of an
instrumented implementation without changing the native table.

The existing [Riemann95StageRetrySearch.lean](Riemann95StageRetrySearch.lean)
already supplies scheduled-probe erasure, cofinal completion, batch fairness,
deadline, and always-paused results. This module does not reproduce that
progress theory. A deployed observer still needs to establish that its
actual operations implement this command language and preserve the complete
configuration, not just selected telemetry.

[Math #1813](https://github.com/grwtsk/math/issues/1813) owns the separate
source-to-model observation meaning and evidence boundary. Metadata here is
unconstrained: the theorem neither makes telemetry a lossless encoding nor
authenticates a claimed source digest, proof term, worker, or axiom audit.
[Math #1820](https://github.com/grwtsk/math/issues/1820) still requires exact
arithmetic certificates and all required source coverage. Erasing holds
does not prove those premises.

This is a local elementary consequence of the stated interpreter, not an
adaptation of an external published theorem. The primary argument is the
finite induction above; the injection and permanent-hold cases are hostile
checks with different conclusions. They do not constitute an independent
second proof or independent review.

## Source identity and verification scope

The source and consumers were compared at `grwtsk/math` revision
`749e1706a21a4fe07fda373fb58d5ed15800591c`. Root pins are Lean `4.34.1`
and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

The module also has a per-file link and target in the existing isolated
Cryptids environment so that its native consumer can import the same
maintained source. That environment keeps Lean `4.35.0-rc4` and Mathlib
`1f414401f69059aa7eead47b53ee40bd38455eeb`; no root import or dependency
version is changed.

New-source parsing/elaboration: **NOT_RUN**. Targeted kernel replay:
**NOT_RUN**. Fresh dependency replay: **NOT_RUN**. Transitive axiom audit:
**NOT_RUN**. Independent mathematical review: **NOT_RUN**. HS/runtime
correspondence: **NOT_RUN**. No Lean, Lake, or kernel checker executable was
available in this authoring environment; no compilation failure was
observed because compilation was not attempted.

A targeted check, once an authorized runner with the root pins is available,
is the following command from the repository root:

```sh
lake env lean --trust=0 -DwarningAsError=true GRWTSK/ComputerScience/TheoryOfComputing/AnalysisOfAlgorithmsAndProblemComplexity/ExactCoreInstrumentation.lean
```

This command is a verification specification, not an executed receipt.

Public mathematical claims requiring that check are `replay_projection`,
`replay_eq_some_projects`, `replay_eq_none_iff`,
`injection_can_break_projection`, and `holds_preserve_core`, each qualified
by the namespace above. Source publication and finite interpreter reasoning
do not assert RH or GRH.
