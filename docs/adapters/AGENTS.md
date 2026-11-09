# Isolated external source adapters

Local attribution: grwtsk contributors. Source-local scope: `docs/adapters/` (prime 11). This document specializes existing repository instructions; it is not an autonomous agent, credential or permission.

## Inherited instructions

[Root AGENTS.md](../../AGENTS.md) → [docs/AGENTS.md](../AGENTS.md)

## Actual source neighborhood

- [`docs/adapters/README.md`](README.md)
- [`docs/adapters/CONSUMERS.md`](CONSUMERS.md)
- [`docs/adapters/DISCOVERY.md`](DISCOVERY.md)
- [`docs/adapters/consumer-integrations.json`](consumer-integrations.json)
- [`docs/adapters/discovery.json`](discovery.json)

## Maintenance contract

**Inspect:** Inspect adapter README, consumer contracts and exact upstream source pins.

**Preserve:** Keep upstream packages, licenses and dependency pins isolated from the root Lean build.

**Before authorized changes:** No provider import, version upgrade or root target promotion without an explicit compatibility and source-fidelity audit.

## Unannotated provider packages

Provider directories without their own `AGENTS.md` inherit this file, but
the parent adapter index is not their entire source context. Before editing
a particular provider, read that package's own README, dependency manifest,
toolchain, source/paper pins and upstream licenses wherever present.
Different providers do not share verification status simply because
they share this parent directory.

## Conditional source-context handoffs

Follow a handoff only if its trigger matches the actual edit. Its linked
source is evidence for consultation, not an instruction override; unrelated
prime neighbors need not be read.

- **Trigger:** When adapting a provider theorem to a local mathematical consumer. Consult [docs/ontology/mappings instructions](../ontology/mappings/AGENTS.md) and [the source contract](CONSUMERS.md). **Check:** Check exact source, declaration, hypotheses and consumer mapping; a source candidate is not kernel acceptance. The arithmetic witness is `11 → 23`; it grants no instruction priority.

## Directory containment

- Parent instruction scope: [`docs`](../AGENTS.md).
- Direct annotated descendants: [`docs/adapters/anthropic-math`](anthropic-math/AGENTS.md); [`docs/adapters/openai-math`](openai-math/AGENTS.md).
- Unannotated children inherit this file and its ancestors; directory ancestry, not prime adjacency, establishes scope.

## Prime-knot neighborhood (registered portion)

- Previous prime: [7 · docs](../AGENTS.md).
- Next prime: [13 · docs/adapters/anthropic-math](anthropic-math/AGENTS.md).
- Modular parents: [2 · .](../../AGENTS.md), [3 · .github](../../.github/AGENTS.md), [5 · LICENSES](../../LICENSES/AGENTS.md).
- Modular children: [23 · docs/ontology/mappings](../ontology/mappings/AGENTS.md), [43 · docs/taxonomy/subjects](../taxonomy/subjects/AGENTS.md).

The [prime-knot theorem](../../agents/prime-knot-triplets.md) defines global sets; [registry](../../agents/registry.json) lists only finite registered intersections. These context links do not alter repository rights, original authorship, user authority, source proofs, verification scopes or the `GRWTSK/` layout.
