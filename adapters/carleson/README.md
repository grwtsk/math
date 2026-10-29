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

## Consumer wave 2026-10-29

New subject-organized source candidates: `adapters/carleson/GRWTSK/FourierAnalysis/FourierAnalysisInOneVariable/FiniteFourierReadoutConvergence.lean`. See
[consumer provenance](../consumer-integrations.json) and the canonical paper ledger.
Exact declarations and hypotheses remain in the source; compilation, fresh replay
and transitive axiom audit are NOT_RUN.

## Fixed-support varying-row residuals

Three additional source candidates bound every fixed-support l1-unit-ball row by
the actual finite sum of coordinate residual norms. On the existing common a.e.
set this yields one epsilon cutoff for all such rows and residual convergence
for arbitrary cutoff-dependent rows W(N), with the same row in both terms.
This is residual convergence; the moving reference/readout need not converge.
Empty support is allowed. No rate, growing support, uniformity in x or cyclic-DFT
comparison is supplied. Source commit fd6f3d97e80088c09262adbf5fa7ccce8467d504, blob a803cf300e8a4987ddfc62ff0bc1985617fd4734.
Static target `documentation/mathematics/_verification/targets/FourierAnalysis/FourierAnalysisInOneVariable/carleson-unit-ball-residual-20261029.json` and adjacent profile/TOML retain six required roots
and three new literal expected types. Native/interface/axiom checks are NOT_RUN.
The historical three source bodies and original source-bound target remain intact.
