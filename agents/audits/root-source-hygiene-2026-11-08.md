# Root and source-colocation audit — 2026-11-08

Inspected base `grwtsk/math` main at
`821cd5aa4a6af126e5bfea526d42235e0afb0b0b`.
Local attribution: grwtsk contributors. Later concurrent mathematical
changes on main are preserved.

The former idea of a separate `agents/scopes/` instruction hierarchy
was rejected because it would detach agent guidance from the actual
mathematical sources. Specialists now live in the `AGENTS.md`
files of their own directories; the agents index only connects them.

Root source dispositions: shorten the rhetorical README into a neutral
technical index; move detailed material into `docs/guide/`.
Keep `GRWTSK.lean` (ordered imports), `NOTICE` (legal/source
attribution), root `AGENTS.md`, `CONTRIBUTING.md`,
all licenses, Lean dependency pins and existing proof sources unchanged.

The ~84 MB MSC source layout, ~19 MB documentation layout, existing
ontology shards and upstream adapter records are source-bound.
They cannot safely be split by a generic line limit without an
exhaustive reference and consumer audit (see issue #1425).

This is static repository hygiene, not a mathematical-source corpus
audit, full link audit, Lean build, independent legal review, proof
acceptance or runtime-agent implementation. All unperformed checks
remain NOT_RUN.
