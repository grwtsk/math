# Repository instructions

This repository is the canonical pure mathematical source for GRWTSK.

- Use exactly `grwtsk contributors` for local attribution in bylines, copyright notices, and metadata; keep individual personal names out of local attribution. Preserve actual upstream author attribution and license obligations.
- Keep maintained mathematical declarations under `GRWTSK.*` or explicit upstream dependencies.
- Place definitions and theorems by mathematical subject, not by orchestration workflow.
- Use the official MSC2020 heading hierarchy for maintained source folders, bound by `documentation/taxonomy/msc2020/source-layout-v1.json`. Preserve existing declaration namespaces and source verification scopes. PMD IDs are retired; source provenance is independent of taxonomy metadata.
- Preserve exact hypotheses, source identities, certificate scopes, trust boundaries, and unresolved premises.
- For each paper-derived formalization, add/update its entry in `documentation/mathematics/_support/reference/literature/reading-background/paper-to-formalization-references.md` with title, byline/authors, year/version, stable DOI/arXiv/URL, exact theorem or method and hypotheses, fully qualified declarations, source commit/blob, actual verification commands/receipts or explicit `NOT_RUN`, and the precise missing bridges. Classify imported mathematics, kernel-verified bridges, source proof candidates, conditional interfaces, finite evidence, analogies, and unresolved premises separately. Do not infer historical influence from an idea match.
- Static replay manifests and mathematical acceptance predicates may live under `documentation/mathematics/_verification/targets/`.
- Do not commit process runners, mutable caches, execution attempts, receipts, controller state, schedules, authority records, WSC coordination, generated capsule state, or Git-effect machinery here.
- Implement effectful verification, repository mutation, proof-capsule assembly, and generated documentation in `grwtsk/noeaaeue`, bound to a pinned math commit.
- Do not promote a finite computation, conditional implication, or representational analogy to a stronger theorem without an explicit proved bridge.

## Direct repository formalization

- For user-authorized formalization work, publish the mathematical source directly on the existing `main` branch using routine non-force commits, preserving concurrent changes.
- A downloadable patch, archive, unattached blob, or detached delta tree is not the requested final delivery. Temporary Git objects may be used to assemble and inspect a commit, but confirm that the resulting commit is reachable from `main` before reporting publication.
- Build on the current complete repository tree. Never replace it with a partial overlay. Before advancing `main`, check the diff and use an expected-head lease; refresh and reconcile if the head changes.
- Source publication and mathematical acceptance are separate. Preserve explicit `NOT_RUN` statuses for compilation, fresh kernel checking and transitive axiom auditing until actual source-bound evidence exists. File or update exact-source verification issues without dispatching unauthorized execution.
- Keep incompatible upstream adapters outside the local default build. Do not promote root imports or change dependency versions merely to publish a candidate.

## Privacy and local attribution

- Use exactly `grwtsk contributors` for local content attribution. For commits made by local automation on behalf of this checkout owner, use `grwtsk <contributors@grwtsk.invalid>`. Anyone may contribute under their own Git author and committer identity; preserve other contributors’ attribution. Do not enforce a repository-wide commit identity or rewrite other contributors’ identities.
- Where an individual human reference is necessary, use only `R.A.` or `Hs`. Keep personal names, personal email addresses, private account handles, and personal device identifiers out of maintained content.
- Preserve public researchers' source bylines, upstream authorship, and license obligations.
- Privacy redactions affect historical source displays, encoded recipes, and receipts. Original hashes and source pins describe pre-redaction evidence; they do not certify edited bytes. Redaction and rewritten Git identities do not establish fresh replay, kernel verification, or stronger mathematical acceptance.

## Structural-intelligence work

Read `documentation/mathematics/_support/reference/structural-intelligence.md` and the matching repository-local
skill under `grwtsk/noeaaeue/bindings/mathematics/organization/skills/` before an
increment in this programme. Formalize a consumer-backed result first, explain
its mathematical use, then evaluate the guidance. Keep joint premises, alternative
proof routes, source mappings and evidence roles distinct. Apply the skills to
actual work and improve them from recorded failures, not unmeasured claims.

Track the programme in grwtsk/noeaaeue#406. Queue taxonomy proposals in
grwtsk/math#1425. The user approved the coordinated documentation-only
quiet-window batch on 2026-10-28; mathematical source namespaces stay unchanged. New skill files do not authorize
execution, publication, root promotion or dependency migration.
