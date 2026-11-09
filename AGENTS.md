# Repository instructions

This repository is the canonical pure mathematical source for GRWTSK.

## Artifact admission

- Keep maintained mathematical source, mathematical exposition and provenance
  records, and necessary repository-integrity support here.
  Support includes licensing, dependency/build configuration, isolated adaptations,
  justified verification fixtures, static verification specifications and
  repository instructions. Preserve source proof candidates at their actual
  evidence status; admission does not imply mathematical acceptance.
- Before committing a new artifact, identify its mathematical consumer or concrete
  repository-integrity purpose. A `.lean` suffix, theorem wrapper, opaque encoding,
  hash or ontology entry alone does not justify admission. Do not use this checkout
  as a dump for operational outputs by wrapping or relabeling them as mathematics.
- Classify content by its maintained role. Noe consuming a mathematical source or
  repository-support file does not make that file an operational artifact. Keep
  legitimate mathematical and integrity material here and link its external use
  through source-local references.

## Working in the checkout and publishing changes

- Read any more-specific `AGENTS.md` before editing its subtree, including
  [docs/AGENTS.md](docs/AGENTS.md) for documentation changes.
- Work in the existing checkout on `main` by default. Create a branch or worktree
  only when explicitly requested or direct work on `main` is technically
  impossible. If another branch is checked out, switch safely; preserve and
  report any uncommitted or conflicting work that prevents the switch.
- Inspect the current HEAD, working tree and index before editing and committing.
  Concurrent changes are intentional stability data: preserve unrelated work,
  report exact collision paths and states, and never reset, discard, overwrite
  or hide changes to avoid a collision. Stage and commit only the task's changes.
- Build each commit on the current complete repository tree, never a partial
  overlay. Before advancing `main`, review the diff and use an expected-head
  lease; refresh and reconcile if HEAD changes. Push completed commits to the
  configured upstream with routine non-force pushes. Force-pushes, remote branch
  deletion and branch-protection changes require an explicit request.
- For authorized formalization, publish the source directly on `main`. A patch,
  archive, unattached blob or detached delta tree is not final delivery. Temporary
  Git objects may help assemble and inspect a commit; confirm that the resulting
  commit is reachable from `main` before reporting publication.

## Source layout and dependencies

- Keep maintained mathematical declarations under `GRWTSK.*` or explicit upstream
  dependencies. Place definitions and theorems by mathematical subject, not by
  orchestration workflow.
- Preserve existing subject placement and namespaces. Resolve current files from
  the checked-out source tree; historical namespaces need not match paths.
- Store provider-derived Lean source in the canonical `GRWTSK/` subject tree.
  Use relative per-file links from isolated packages under
  `docs/adaptations/environments/`; keep their dependency pins and build targets
  separate from the root build.
- Keep incompatible upstream adaptations outside the local default build. Do not
  promote root imports or change dependency versions merely to publish a candidate.

## Mathematical claims and evidence

- Preserve exact hypotheses, source identities, certificate scopes, trust
  boundaries and unresolved premises.
- Apply the following proof-comparison requirements to every newly authored,
  revised, imported or promoted proof claim. Explain a
  complete primary analytical argument; compare the actual mathematical objects
  and source observations; identify counterexamples and the precise consumer or
  return to the original problem; disclose shared or unresolved premises. Seek a
  genuinely distinct alternative analytic route or hostile check when useful.
- Two formal scripts do not establish independent proofs. Label absent independent
  review honestly. Neither novelty nor a second proof is required for logical
  validity. Analytic proofs may exist without Lean; they do not supply Lean evidence.
- Assess mathematical comparison and analytic completion separately from Lean
  parsing, compilation, fresh kernel checking and transitive axiom auditing.
  Source publication is not mathematical acceptance. Keep each unperformed formal
  check explicitly `NOT_RUN` until actual source-bound evidence exists. File or
  update exact-source verification issues without dispatching unauthorized execution.
- Treat elaboration/typechecking as valuable observation of the formal
  **neighborhood**: hypotheses, types, dependencies and permitted steps. It may
  expose previously unrecognized consequences, but throughput alone does not
  establish source equivalence, analytic transfer, noncircular proof independence
  or prior-art novelty. Assess exact-statement novelty against dated primary sources.
- Distinguish reproducible finite computation, certified computer-assisted proof
  and experimental evidence. Do not promote a finite computation, conditional
  implication, statistical candidate or representational analogy to a stronger
  theorem without an explicit proved bridge.
- Distinguish statistical generation, symbolic calculation, elaboration and kernel
  proof. Do not assume a generative system uses diffusion unless its mechanism is
  source-established.
- Record attributable human, mathematical-source and tool-specific roles without
  inventing causal provenance. Assess access and feedback separately from novelty
  and correctness. Never infer corpus-wide analytic review or retroactively change
  historical acceptance from a repository-wide policy.
- Before **mathematically qualified proof-capsule admission**, require the reviewed
  analytic/theoretical disposition defined above. Retain unqualified candidate
  capsules without presenting them as mathematical proof. Structural comparison
  and analytic estimates are examples, not required methods. Noe owns the separate
  operational admission contract; this rule does not authorize changes to the
  existing PW-0 codec or historical receipts.

## Source references and documentation

- Track paper-to-Lean formalizations under `docs/formalizations/`, mirroring actual
  canonical source paths. Require individual exact paper-edition/theorem provenance;
  importing an existing Lean proof is an adaptation, not evidence of a new paper
  formalization. Preserve many-to-many paper/declaration correspondence and
  distinguish direct formalization, local consequences and conditional interfaces.

- Develop and check adaptations locally before bringing them into this repository.
  Publish each adapted theorem with its own Markdown provenance record beside
  the maintained theorem source. This theorem-local record is required even
  though repository-level documentation remains intentionally sparse.
- The [repository catalog](docs/catalogue.json) follows the complete tracked Git
  tree. Keep file coverage separate from the coverage of theorem provenance;
  absent publication correspondence is unknown, not evidence of no publication.
- Organize adaptation provenance by actual repository source path and declaration,
  not by user, provider or publication. Record cross-publication correspondence
  as many-to-many references; preserve distinct source editions and evidence scopes.
- Each record identifies the local file and fully qualified declaration, upstream
  authors and paper edition or repository, exact theorem/locator and revision,
  available source digest, and direct reference links. Explain retained hypotheses,
  changes in statement or representation, the mathematical consumer, unresolved
  bridges, and actual verification outcomes; mark unperformed checks `NOT_RUN`.
- Existing imported surfaces are not retroactively qualified adaptations. Before
  adding, revising or presenting one as an adapted theorem, supply its individual
  source-bound Markdown record. Never invent provenance or verification evidence.

- For paper-derived formalizations, cite the actual paper, edition, authors,
  exact theorem or method, and hypotheses in source comments or the associated
  issue/PR. Record declarations, source pins, verification outcomes or `NOT_RUN`,
  and missing bridges there or in an existing verification target.
- The literature register is optional. Do not create or regenerate it as a
  prerequisite for a Lean change.
- Do not automatically create or regenerate subject articles, proof summaries,
  mirrored source documentation, generated navigation or other prose when adding
  or revising Lean sources. Explicitly requested, useful authored documents are
  permitted; documentation generation is not a publication or verification gate.

## Operational ownership

- Effectful verification, mutable caches, execution attempts, receipts, schedules,
  training state and deployment artifacts belong in `grwtsk/noeaaeue`, not here.
- Preserve exact source identities and evidence scope in source-local records.
  Removed documentation remains available in Git history; do not recreate an
  ontology, taxonomy registry or repository-wide explanatory corpus.
- Repository-level documentation follows [docs/README.md](docs/README.md).

- For automation covered by `advance-browser-chats`, `chatgpt-message`,
  `noe-math-chat-bridge` or `noe-proof-automation`, discover and read the applicable
  canonical skill through `~/.agents/skills` (legacy `~/.codex/skills` links also
  resolve to Noe). Do not maintain independent copies. If canonical access is
  unavailable, report it and stop dependent automation. Skill availability grants
  no additional execution or messaging authority.

## Privacy and local attribution

- Use exactly `grwtsk contributors` for local bylines, copyright notices and
  metadata. Keep individual personal names out of local attribution.
- For local automation commits on behalf of this checkout owner, use
  `grwtsk <176085483+grwtsk@users.noreply.github.com>` for author and committer.
  Use this identity for repository actions performed on behalf of the contributor,
  including commits created by automation. Set the local Git identity accordingly.
  Preserve other contributors' own identities unless the owner explicitly
  authorizes an attribution rewrite.
  Keep personal names, personal email addresses, private account handles and
  personal device identifiers out of maintained content. Preserve public
  researchers' bylines, upstream authorship and license obligations.
- Use provider names only for source identity, licensing, reproducibility or a
  documented contribution; never advertise a vendor.
- Privacy redactions affect historical source displays, encoded recipes and
  receipts. Original hashes and source pins describe pre-redaction evidence,
  not edited bytes. Redaction or rewritten Git identities do not establish fresh
  replay, kernel verification or stronger mathematical acceptance.

- Track only externally sourced material in the adaptation source view and adaptation theorem catalog. Require explicit external provenance or a pinned upstream source/import record; local-only dependencies do not establish external provenance. Preserve excluded canonical source and its local provenance. Isolated build configuration, legal notices and verification helpers remain support, not adapted theorems.
