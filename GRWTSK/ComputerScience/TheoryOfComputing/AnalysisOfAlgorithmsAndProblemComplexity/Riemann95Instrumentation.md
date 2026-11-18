# Literal Riemann95 instrumentation: argument and source correspondence

Local source attribution: grwtsk contributors.

Maintained source: [Riemann95Instrumentation.lean](Riemann95Instrumentation.lean).
Namespace: `GRWTSK.ComputerScience.Riemann95Instrumentation`.
Status of every new Lean declaration: **SOURCE_PROOF_CANDIDATE**.
Coordination: [math #1838](https://github.com/grwtsk/math/issues/1838).

## Exact upstream identity

This module specializes local instrumentation results to Google DeepMind
Cryptids, copyright Google LLC, Apache-2.0, revision
`3647718b5df22e1a61462dec0376bd204526285a`. It is a local consequence of
upstream definitions, not a new formalization of an external paper theorem.

| Upstream source at that revision | Git blob | Imported object or observation |
| --- | --- | --- |
| [Cryptids/Machines.lean](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Machines.lean) | `345a59a2133776d937507536b4a07667c11e299b` | `Cfg`, `Machine.transition`, `step`, `init`, and the loaded `Machines.riemann95` table |
| [Cryptids/Riemann95Definition.lean](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Riemann95Definition.lean) | `cabc27cb96a7eecdfb8254e98c8dc0a9c9144a38` | `Riemann95.machine` and the original `nSteps` |
| [artifacts/riemann_95/machine.txt](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/artifacts/riemann_95/machine.txt) | `d6f841a883bcf826d1fbdbd1c66497e072231c55` | First row `1L48 0R49`; 95 rows and two symbols |

The maintained mathematical consumer baseline is
`grwtsk/math@749e1706a21a4fe07fda373fb58d5ed15800591c`.

## First-transition obstruction

`first_transition` refers to the imported `machine.transition 0 0` itself.
The original row-zero, read-zero entry writes 1, moves left, and enters
state 48. `first_step_state` applies that entry to the original blank
configuration. Because `48 mod 19 = 10`, `first_step_phase` gives phase 10
and `first_step_phase_not_one` rules out phase 1.

The source table was read and its 95 two-column rows were counted in this
session. It has one absent instruction, at state 61 reading 1. Those are
source observations, not fresh Lean qualification. The `rfl` candidates
must still be elaborated against the exact pinned imported bytes.

This is a direct hostile example to the independent residue-clock proposal:
the discrepancy occurs on the first transition from the actual initial
configuration. It is stronger than an arbitrary fabricated transition, and
uses no assumption about whether the blank run eventually halts.

## Finite replay return to the actual core

`nativeRun_eq_nSteps` compares the local generic interpreter with the
upstream interpreter by induction on the instruction count. Both return
the starting configuration at zero. Both use the same native `step` and
the same option bind at a successor count, so the successful case reduces
to the induction hypothesis and the missing-instruction case agrees.

Composing this identity with `ExactCoreInstrumentation.replay_projection`
gives `replay_projects_to_nSteps`. Observation and hold commands can alter
metadata only; each commit consumes precisely one actual source instruction.
`committed_prefix_is_native` extracts a successful native prefix, retaining
the full `Cfg 95 2`: control, scanned symbol, and both complete half-tapes.
`terminal_prefix_is_native` additionally retains the explicit native halt
test `step machine final.core = none`. A pause or an operational timeout
does not supply that premise.

The direct consumers are
`Riemann95StageRetrySearch.Receipt.from_blank`, the existing native
checkpoint relation, and `Riemann95PrimeMachine.project_step/project_run`.
Their existing progress and arithmetic results remain unchanged. In
particular, `Riemann95StageRetrySearch` already distinguishes finite
pause-erasure safety from fair completed probes or verifying batches.
The present adapter does not prove those fairness assumptions for HS.

[Math #1813](https://github.com/grwtsk/math/issues/1813) additionally requires
exact source and proof-observation meaning; arbitrary metadata here cannot
authenticate a producer or determine an omitted proof dependency.
[Math #1820](https://github.com/grwtsk/math/issues/1820) still requires the
original arithmetic checker and all required certificate coverage. The
upstream blank-tape theorem is a halting equivalence with the negation of
RH; these instrumentation declarations prove neither nonhalting nor RH.

The primary mathematical routes are definitional comparison of the literal
first transition and induction through the actual finite interpreter.
The source table check is a hostile control, not an independent proof of
the entire imported dependency closure. Independent review remains absent.

## Build integration and evidence status

Use the existing isolated environment
`docs/adaptations/environments/cryptids`, with Lean `4.35.0-rc4`, Cryptids
at the revision above, and Mathlib
`1f414401f69059aa7eead47b53ee40bd38455eeb`. Per-file relative links to
this source and its two local dependencies, and isolated Lake roots for
those three files, integrate the candidate without copying source. The
root Lean `4.34.1` / Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`
pins and root imports remain unchanged.

All new-source formal evidence is **NOT_RUN**: parsing/elaboration,
targeted kernel replay, fresh import-closure replay, transitive axiom
audit, exact compiled-statement comparison, and HS/runtime correspondence.
Independent mathematical review is **NOT_RUN**. No Lean, Lake, or checker
executable was available. Source reads and numeric arithmetic observations
must not inherit earlier verification reported for neighboring modules.

With the existing isolated dependencies installed, the following targeted
commands are a verification specification, not an execution receipt:

```sh
cd docs/adaptations/environments/cryptids
lake build GRWTSK.ComputerScience.TheoryOfComputing.AnalysisOfAlgorithmsAndProblemComplexity.Riemann95Instrumentation
lake env lean --trust=0 -DwarningAsError=true GRWTSK/ComputerScience/TheoryOfComputing/AnalysisOfAlgorithmsAndProblemComplexity/Riemann95Instrumentation.lean
```

The exact new theorem names requiring qualification are `first_transition`,
`first_step_state`, `first_step_phase`, `first_step_phase_not_one`,
`nativeRun_eq_nSteps`, `replay_projects_to_nSteps`,
`committed_prefix_is_native`, and `terminal_prefix_is_native`, qualified
by the namespace above. Record any actual errors as failures; do not
replace a later failed attempt with this initial **NOT_RUN** status.
