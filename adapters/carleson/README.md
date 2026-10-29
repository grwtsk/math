# fpvandoorn/carleson adapters

Local attribution: grwtsk contributors.

Pinned upstream: [fpvandoorn/carleson@52cba54d4b7b444e937c7abbc67835afa2a0bb16](https://github.com/fpvandoorn/carleson/tree/52cba54d4b7b444e937c7abbc67835afa2a0bb16).
This provider imports exact upstream modules in isolated native-version packages.
The complete pinned source inventory contains 125 Lean files; inventory
coverage is not a claim that every source file is compiled or every statement proved.

Mathematical use: Harmonic-analysis and almost-everywhere convergence consumers.
Missing bridge: Match generalized metric-measure/phase hypotheses, exceptional sets and operator normalization.

| Isolated adapter directory | Upstream project | Toolchain | Import surfaces |
| --- | --- | --- | --- |
| `adapters/carleson` | `.` | `leanprover/lean4:v4.36.0-rc1` | 3 |

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
