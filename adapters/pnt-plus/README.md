# AlexKontorovich/PrimeNumberTheoremAnd adapters

Local attribution: grwtsk contributors.

Pinned upstream: [AlexKontorovich/PrimeNumberTheoremAnd@127b50e33f6033e2147921167a117af96d9ba4ea](https://github.com/AlexKontorovich/PrimeNumberTheoremAnd/tree/127b50e33f6033e2147921167a117af96d9ba4ea).
This provider imports exact upstream modules in isolated native-version packages.
The complete pinned source inventory contains 235 Lean files; inventory
coverage is not a claim that every source file is compiled or every statement proved.

Mathematical use: Prime counting, explicit formula and local arithmetic-error consumers.
Missing bridge: Select proved endpoints and exact normalization/error constants; distinguish pending blueprint nodes.

| Isolated adapter directory | Upstream project | Toolchain | Import surfaces |
| --- | --- | --- | --- |
| `adapters/pnt-plus` | `.` | `leanprover/lean4:v4.35.0` | 1 |

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
