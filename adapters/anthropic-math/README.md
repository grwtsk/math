# Anthropic mathematical adapters

Local attribution: grwtsk contributors.

Four isolated, opt-in packages track Anthropic's published formal mathematics.
Each package pins its upstream Git commit, toolchain and complete dependency lock.
Run `lake build` inside the selected project directory; these are verification
commands to run, not successful receipts. No package is imported by the root build.

- `zeta23`: all 23 configured zeta/Dirichlet/ξ′ declarations.
- `3sum-apsp`: all 137 configured declarations, including conditional paper statements.
- `eth`: both configured MainResults declarations.
- `fermat`: exact positive-natural FLT transport, a positive-cube specialization, and
  a zero-factor obstruction for natural-number power-sum solutions (including zero output).

See [catalogue.json](catalogue.json) for exact source commits, file blobs,
configuration contents, theorem names and isolated dependency versions.
Re-exports preserve upstream types; they do not establish statement fidelity,
independent verification or a GRWTSK arithmetic/complexity bridge.
The Fermat specializations are source proof candidates. All compilation,
Comparator, independent-kernel and transitive-axiom checks are **NOT_RUN**.
Upstream CI reports are upstream claims, not local receipts.

Read upstream trusted statement files alongside each paper. Preserve zeta counting
conventions and primitive-character restrictions; word-RAM integer bounds and
conditional complexity inputs; and ETH's quantified Turing-machine definitions.
No zeta proportion implies RH, and no asymptotic algorithm asserts practical speed.
Upstream LICENSE, NOTICE and attribution files are retained per project.

Canonical paper mapping: [paper ledger](../../documentation/mathematics/_support/reference/literature/reading-background/paper-to-formalization-references.md#anthropic-adapter-reconciliation).

## Consumer wave 2026-10-29

New subject-organized source candidates: `adapters/anthropic-math/fermat/GRWTSK/NumberTheory/DiophantineEquations/FermatSolutionFibers.lean`. See
[consumer provenance](../consumer-integrations.json) and the canonical paper ledger.
Exact declarations and hypotheses remain in the source; compilation, fresh replay
and transitive axiom audit are NOT_RUN.

## Six exact Fermat interfaces

The original three positive-power/cube/zero-factor candidates and the three
solution-fiber candidates have one additional exact-interface verification target:
`documentation/mathematics/_verification/targets/NumberTheory/DiophantineEquations/anthropic-fermat-six-interfaces-20261029.json` with adjacent managed profile and TOML. It selects both complete
module-owned censuses, all six exact roots and literal expected types, preserving
zero cases, positive-natural premises and n>=3. Historical targets are unchanged.
See [Fermat references](fermat/references.md) and the canonical ledger continuation.
All native, Comparator, kernel, axiom and expected-interface checks remain NOT_RUN.
