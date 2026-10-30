# Repository instructions

This repository is the canonical pure mathematical source for GRWTSK.

- Use `grwtsk contributors` as the default collective-human byline and collective local copyright notice, not as an exclusive author identity. Human authors may receive source-specific public bylines in their own or chosen collective/pseudonymous form with consent; preserve actual upstream author attribution, ownership, and license obligations. Treat calculators, drawings, slide rules, books, search, educational media, symbolic/numerical computation, formal systems, and generative models as tools whose evidenced roles are acknowledged without provider promotion.
- Keep maintained mathematical declarations under `GRWTSK.*` or explicit upstream dependencies.
- Place definitions and theorems by mathematical subject, not by orchestration workflow.
- Use the official MSC2020 heading hierarchy for maintained source folders, bound by `documentation/taxonomy/msc2020/source-layout-v1.json`. Preserve existing declaration namespaces and source verification scopes. PMD IDs are retired; source provenance is independent of taxonomy metadata.
- Resolve current source paths through the MSC layout, including `followup_files`; preserved declaration namespaces do not determine filesystem locations. Store provider-derived Lean source in the canonical `GRWTSK/` subject tree, with relative per-file links from isolated provider packages under `documentation/adapters/`. Keep their dependency pins and build targets separate from the root build.
- Preserve exact hypotheses, source identities, certificate scopes, trust boundaries, and unresolved premises.
- Apply the [proof-comparison disposition](documentation/mathematics/_support/reference/proof-comparison-disposition.md) to every newly authored, revised, imported, or promoted proof claim: explain a complete primary analytical argument, compare the actual mathematical objects and source observations, seek a genuinely distinct alternative analytic route or hostile check when useful, identify counterexamples and the precise consumer/return, and disclose shared or unresolved premises. Do not confuse two formal scripts with independent proofs. Do not require a second proof as a condition of legitimate mathematics; label absent independent review honestly.
- Keep mathematical comparison/analytic-completion status separate from Lean parsing, compilation, kernel verification and axiom audits. Typechecking may expose previously unrecognized consequences, but throughput alone does not establish prior-art novelty, source equivalence, analytic transfer or noncircular proof independence. Independently assess exact-statement novelty against dated primary sources; distinguish reproducible finite computation, certified computer-assisted proof and experimental evidence; record attributable human, mathematical-source and tool-specific roles without inventing causal provenance; assess access and feedback separately from novelty and correctness. Novelty and a second proof are not prerequisites for logical validity. Analytic proofs can exist without Lean, and Lean evidence cannot be fabricated from them. Never retroactively change a historical proof's acceptance or claim corpus-wide analytic review from a repository-wide policy.

- Treat elaboration/typechecking as valuable observation of a theorem's formal **neighborhood** (hypotheses, types, dependencies and permitted steps), not as a theoretical qualification of its objects or analytic transfer. Before **mathematically qualified proof-capsule admission**, require a reviewed analytic/theoretical disposition as defined in the [proof-comparison disposition](documentation/mathematics/_support/reference/proof-comparison-disposition.md); retain unqualified candidate capsules without presenting them as mathematical proof. Grothendieck-style structural comparison and analytic estimates are examples, not mandatory methods or constraints on mathematical sources. Noe owns the separate operational admission contract; do not mutate the existing PW-0 codec or historical receipts from this rule.
- For each paper-derived formalization, add/update its entry in `documentation/mathematics/_support/reference/literature/reading-background/paper-to-formalization-references.md` with title, byline/authors, year/version, stable DOI/arXiv/URL, exact theorem or method and hypotheses, fully qualified declarations, source commit/blob, actual verification commands/receipts or explicit `NOT_RUN`, and the precise missing bridges. Classify imported mathematics, kernel-verified bridges, source proof candidates, conditional interfaces, finite evidence, analogies, and unresolved premises separately. Do not infer historical influence from an idea match.
- Static replay manifests and mathematical acceptance predicates may live under `documentation/mathematics/_verification/targets/`.
- Do not commit process runners, mutable caches, execution attempts, receipts, controller state, schedules, authority records, WSC coordination, generated capsule state, or Git-effect machinery here.
- Implement effectful verification, repository mutation, proof-capsule assembly, and generated documentation in `grwtsk/noeaaeue`, bound to a pinned math commit.
- Do not promote a finite computation, conditional implication, a statistical candidate, or representational analogy to a stronger theorem without an explicit proved bridge. Do not assume a generative system uses diffusion unless that mechanism is source-established; distinguish statistical generation, symbolic calculation, elaboration, and kernel proof. Provider names belong only where needed for source identity, licensing, reproducibility, or a documented contribution; never advertise a vendor.

## Direct repository formalization

- For user-authorized formalization work, publish the mathematical source directly on the existing `main` branch using routine non-force commits, preserving concurrent changes.
- A downloadable patch, archive, unattached blob, or detached delta tree is not the requested final delivery. Temporary Git objects may be used to assemble and inspect a commit, but confirm that the resulting commit is reachable from `main` before reporting publication.
- Build on the current complete repository tree. Never replace it with a partial overlay. Before advancing `main`, check the diff and use an expected-head lease; refresh and reconcile if the head changes.
- Source publication and mathematical acceptance are separate. Preserve explicit `NOT_RUN` statuses for compilation, fresh kernel checking and transitive axiom auditing until actual source-bound evidence exists. File or update exact-source verification issues without dispatching unauthorized execution.
- Keep incompatible upstream adapters outside the local default build. Do not promote root imports or change dependency versions merely to publish a candidate.

## Privacy and local attribution

- Anyone may contribute under their chosen public Git author and committer identity, including through an authorized publishing tool. No fixed Git name or email (including `grwtsk <contributors@grwtsk.invalid>`) is required. Preserve commit identities and do not impersonate people or rewrite another contributor’s authorship. Collective local copyright notices use `grwtsk contributors` where applicable; human scholarly authorship and copyright are separate from Git metadata and recorded tool operations. This policy does not transfer contributor or upstream rights.
- Continue to use `R.A.` or `Hs` for privacy-protected local individuals unless they explicitly authorize different public attribution. Other human contributors may use their chosen public names or pseudonyms with consent. Do not expose nonpublic personal names, email addresses, account handles, or device identifiers in maintained content.
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
