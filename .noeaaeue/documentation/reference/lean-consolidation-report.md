# Lean consolidation report

This report describes the current working-tree consolidation. It is not a new
mathematical acceptance claim and does not replace retained historical
receipts.

## Inventory and migration

The active inventory contains 475 Git-visible, maintained first-party Lean
sources. All are under `GRWTSK/` except the exact root entry point
`GRWTSK.lean`. The public library closure contains 292 sources. Validation is
separate: 57 positive checks, 93 negative controls, and 33 audit drivers.

Counts by mathematical subject are: Algebra 11, Analysis 193, Combinatorics 8,
Data 1, DynamicalSystems 12, GroupTheory 4, LinearAlgebra 49, Logic 42,
MeasureTheory 5, NumberTheory 121, Order 3, Spectral 25, plus the single root
library entry point.

This migration moved 180 sources from the former top-level `checks/` tree into
subject-local `Checks` subtrees and moved three operational Logic verification
drivers into `GRWTSK/Logic/ProofChecking/Checks/`. The 292 `keep` entries include
three new formal support modules for artifact derivations, inference-rule
soundness, and the separation of reconstruction from formal-correctness
evidence; the other 289 remain at their canonical paths. No active source was split, merged, or
retired in this consolidation unit. There were no destination collisions.
Tracked one-to-one moves retained Git history; untracked concurrent sources
remained untracked. The move set was hash-checked, and source bytes were
preserved except for 19 validation sources whose pre-existing invalid combined
import commands were normalized into separate imports (four audit drivers,
five energy negative controls, and ten Fourier-family negative controls).

The authoritative per-source data is in
[`docs/math-layout.json`](../math-layout.json), including original path, current
digest and Git blob where applicable, working-tree state, imports and reverse
consumers, declaration inventory, classification, role, runner, open premises,
and verification state. [`math-source-catalog.json`](math-source-catalog.json)
is generated from that data.

## API and proof status

No library theorem statement, hypothesis, proof body, public declaration name,
notation, attribute, or instance was intentionally changed by this migration.
Validation module identities changed with their paths and are not public
library APIs. The two import repairs changed no declarations. Historical
declaration namespaces remain where consumers require them.

Open arithmetic premises, conjecture statements, conditional reductions, and
counterexamples remain open or conditional exactly as before. A compiled
conditional theorem is not evidence that its premise has been discharged.

## Verification record

The pinned environment is Lean 4.33.0 at
`d8b18978322de05a8f3dba51ef03cf5461676c17` and Mathlib at
`db584cd6d46c92f209a44c0f1c829460d327499d`. Existing pinned dependency
objects were reused and kernel checked; this was not a Mathlib source rebuild.

Completed current-byte checks include the layout check and its 44 hostile
fixtures, `lake build GRWTSK`, the 25 Python trust controls, the nine-command
native trust self-test, and the affected subject-local gauge, interval,
polarization, finite-coverage, Common J, determinant, cocycle, transfer,
sequence, Fourier, RH-target, RH-guard, and smooth-test suites. Exact commands
and machine-readable outcomes are recorded in the migration verification
record under `evidence/`.

The first full trust-zero replay, using the verifier's former fixed 4096 MiB
Lean ceiling, stopped at `GRWTSK.NumberTheory.Moebius.LogarithmicResponse` with
a Lean `memory_exception`. The failed run is retained under
`.local/math-trust/20261013T235814Z-7190ed5ccb`. That is a resource failure, not
a proof rejection.

A fresh retry at an explicit, receipt-recorded 8192 MiB ceiling elaborated all
289 library sources successfully at trust zero with fatal warnings, including
the root umbrella. The final owned-declaration audit then rejected 18 existing
compiler-generated `_unsafe_rec` declarations as partial. Its failed run is
retained under `.local/math-trust/20261014T002417Z-baa4c816b8`. The audit policy
was not weakened, no module was removed from coverage, and no exception was
broadened. Consolidation acceptance therefore remains blocked even though
containment, classification, dependency resolution, library coverage, selected
validation outcomes, documentation bindings, and source elaboration passed.
The separate Möbius-response manifest remains intentionally stale against
newer concurrent source and checker bytes; its validate-only run failed closed,
and no historical hash was refreshed to imply a new replay.

The source-bound command and result ledger is
[`evidence/lean-consolidation-2026-10-14.json`](../../evidence/lean-consolidation-2026-10-14.json).
That ledger remains bound to its recorded 472-source state. The later
three-module extension and refreshed 475-source inventory do not rewrite or
retroactively extend it.
