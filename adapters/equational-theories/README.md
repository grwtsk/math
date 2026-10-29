# teorth/equational_theories adapters

Local attribution: grwtsk contributors.

Pinned upstream: [teorth/equational_theories@2f49bdaf3d38ffb722e54ac1288c8269dac61846](https://github.com/teorth/equational_theories/tree/2f49bdaf3d38ffb722e54ac1288c8269dac61846).
This provider imports exact upstream modules in isolated native-version packages.
The complete pinned source inventory contains 1347 Lean files; inventory
coverage is not a claim that every source file is compiled or every statement proved.

Mathematical use: Finite algebra and implication/countermodel consumers.
Missing bridge: Preserve law identifiers, finite/infinite model domains and certificate scope; do not equate graph reachability with a proof without a soundness bridge.

| Isolated adapter directory | Upstream project | Toolchain | Import surfaces |
| --- | --- | --- | --- |
| `adapters/equational-theories` | `.` | `leanprover/lean4:v4.29.1` | 1 |

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

## Consumer wave 2026-10-29

New subject-organized source candidates: `adapters/equational-theories/GRWTSK/GeneralAlgebraicSystems/EquationalFinitePremiseConsumers.lean`. See
[consumer provenance](../consumer-integrations.json) and the canonical paper ledger.
Exact declarations and hypotheses remain in the source; compilation, fresh replay
and transitive axiom audit are NOT_RUN.
