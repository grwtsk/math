# google-deepmind/formal-conjectures adapters

Local attribution: grwtsk contributors.

Pinned upstream: [google-deepmind/formal-conjectures@909a8bec155bc5a6f3c72e12baaaa610ae293281](https://github.com/google-deepmind/formal-conjectures/tree/909a8bec155bc5a6f3c72e12baaaa610ae293281).
This provider imports exact upstream modules in isolated native-version packages.
The complete pinned source inventory contains 1969 Lean files; inventory
coverage is not a claim that every source file is compiled or every statement proved.

Mathematical use: Canonical problem statements and equivalence checks for Erdős adapters.
Missing bridge: Conjecture statements may contain sorry. Do not import them as established proofs; prove a separate fidelity equivalence to a proof endpoint.

| Isolated adapter directory | Upstream project | Toolchain | Import surfaces |
| --- | --- | --- | --- |
| `adapters/formal-conjectures` | `.` | `leanprover/lean4:v4.33.1` | 4 |

Run `lake build` only inside the selected adapter directory using its exact toolchain. This is a requested check, not a successful receipt. Path dependencies in the copied lock are explicitly rebound to the same immutable repository subdirectory; originals and conversions are retained in catalogue.json. Upstream Lake configuration remains the pinned dependency configuration.

All compilation, fresh kernel replay, transitive axiom audits and statement-fidelity
checks are **NOT_RUN**. These are import surfaces, not newly proved GRWTSK bridges.
Conjectures, challenge stubs, unproved source premises and finite evidence retain
their original scope. Imports may expose `sorryAx` or other unapproved dependencies;
no proof acceptance is asserted. Select actual consumer declarations and reject
unapproved axiom closures before making a mathematical acceptance claim.

No process runners or upstream post-update hooks are copied into math. Some
upstream configurations have effectful hooks: `catalogue.json` records their
presence; none was executed. Source replay must reproduce or explicitly qualify
that boundary through supported Noe tooling, not silently assume an unmodified
Git checkout equals a locally patched dependency.

Original authorship remains in upstream sources; repository license/notice files
are retained when present. This package is outside root default imports/builds.
See catalogue.json for every library, source module/blob, config and dependency
pin, and the canonical paper ledger for evidence scope and unresolved bridges.
