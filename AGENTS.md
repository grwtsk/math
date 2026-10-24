# Repository instructions

This repository is the canonical pure mathematical source for GRWTSK.

- Use exactly `grwtsk contributors` for local attribution in bylines, copyright notices, and metadata; keep individual personal names out of local attribution. Preserve actual upstream author attribution and license obligations.
- Keep maintained mathematical declarations under `GRWTSK.*` or explicit upstream dependencies.
- Place definitions and theorems by mathematical subject, not by orchestration workflow.
- Preserve exact hypotheses, source identities, certificate scopes, trust boundaries, and unresolved premises.
- For each paper-derived formalization, add/update its entry in `docs/reference/literature/reading-background/paper-to-formalization-references.md` with title, byline/authors, year/version, stable DOI/arXiv/URL, exact theorem or method and hypotheses, fully qualified declarations, source commit/blob, actual verification commands/receipts or explicit `NOT_RUN`, and the precise missing bridges. Classify imported mathematics, kernel-verified bridges, source proof candidates, conditional interfaces, finite evidence, analogies, and unresolved premises separately. Do not infer historical influence from an idea match.
- Static replay manifests and mathematical acceptance predicates may live under `verification/`.
- Do not commit process runners, mutable caches, execution attempts, receipts, controller state, schedules, authority records, WSC coordination, generated capsule state, or Git-effect machinery here.
- Implement effectful verification, repository mutation, proof-capsule assembly, and generated documentation in `grwtsk/noeaaeue`, bound to a pinned math commit.
- Do not promote a finite computation, conditional implication, or representational analogy to a stronger theorem without an explicit proved bridge.
