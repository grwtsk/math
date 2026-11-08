# Unified, source-colocated agent neighborhoods

Instructions live with the sources they govern, in each directory's
`AGENTS.md`. This directory holds the arithmetic prime graph, the static
index of those local files, and an audit record. There is no parallel
`agents/scopes/` hierarchy.

## Discovery and inheritance

For a file outside `GRWTSK/`, read its closest ancestor `AGENTS.md`
and every higher-level instruction file to the repository root. The existing
[root](../AGENTS.md) and [documentation](../docs/AGENTS.md) rules remain
authoritative. Source-local files specialize without replacing them.

The [registry](registry.json) records each annotated directory, its source
neighbors and inherited directory scope, as well as its prime triplet.
Unannotated descendants inherit the nearest ancestor's instructions; the
root covers all paths outside `GRWTSK/`.

## Cross-neighborhood links

The [prime-knot definitions](prime-knot-triplets.md) associate each scope
with consecutive prime neighbors, modular parents and modular children.
These are typed cross-references, not a competing directory hierarchy.
The finite registry includes only relations between registered scopes;
the global arithmetic graph has infinitely many primes.

No prime edge creates an identity, source ownership, runtime agent,
permission, Git publication right or mathematical proof certificate.
Operational automation belongs to the separately bound operations repository.
