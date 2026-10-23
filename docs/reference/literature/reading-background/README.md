# Reading background and intellectual lineage

Latest seven-idea assessment: [precise construction and proof obligations by taxonomy](seven-idea-construction-plan.md). All seven remain unresolved; recording a construction plan does not establish a Lean bridge.

## Paper-to-Lean provenance requirement

For each newly formalized theorem, construction, algorithm, or method drawn from a paper, maintain a [paper-to-Lean provenance record](paper-to-lean-provenance.md) in the ideas documentation. Record the title, authors, publication/version year, stable DOI/arXiv URL, exact paper theorem or method and **all hypotheses actually used**, imported and local Lean declarations, the full source commit and blob, and command-level verification status. Mark separately a proved repository identity, a genuinely proved bridge to the paper, a conditional application, a comparison-only analogy, and every unresolved supplier. Bibliographic inspection, source presence, a merged commit, a queued validation issue, or a passing unrelated root import is **not** kernel verification. The existing version-bound idea map and catalog remain authoritative for their historical source identities and are not silently rewritten by this policy.

For **paper-derived mathematical formalizations**, record the published source's exact theorem/method and hypotheses, stable bibliography, pinned Lean declarations and commit, verification evidence, and proved-versus-analogy status. The [paper-to-Lean RH provenance ledger](paper-formalization-provenance-rh.md) gives the required template and applies it to the Bombieri/Weil test-class work and related literature. Its source inspection does not imply reading history, intellectual influence, or kernel acceptance.

Current follow-up for the ten unresolved ideas: [broader maintained/upstream Lean search by taxonomy](ten-idea-target-search.md). Earlier statuses remain historical; the newer review distinguishes narrow conditional fragments and remaining gaps.

Current follow-up for the 21 unresolved ideas: [broader maintained/upstream Lean search by taxonomy](remaining-idea-target-search.md). Earlier statuses remain historical; the newer review distinguishes conditional fragments, obstruction checks, repair candidates and remaining gaps.

Current follow-up for the 40 unresolved ideas: [broader maintained/upstream Lean search by taxonomy](unresolved-idea-broader-search.md). Earlier statuses remain historical; the newer review distinguishes narrow fragments, corrections and remaining gaps.

This catalog supports [attribution issue #254](https://github.com/grwtsk/math/issues/254). It records bibliographic candidates and explicit source idea → owner understanding → pinned formalization links. Discovery is not evidence of reading, influence, originality, authorship, or proof acceptance. Attribution remains unresolved until source-specific review.

`catalog.schema.json` is a JSON Schema 2020-12 contract; `catalog.json` contains bibliographic candidates from the Desktop, Downloads and Documents intakes. Raw extracted metadata remains unverified. Reviewed bibliographic fields are in each source’s `bibliography` object under schema version 2; see [bibliographic qualifications](metadata-review.md). Titles, bylines, identifiers and dates carry per-field status and version-bound evidence. Owner-reported grwtsk contributors attribution is separate from printed bylines. The [idea–formalization map](idea-formalization-map.md) contains 279 version-bound idea records and 226 pinned code links, organized by mathematical subject. The [unpublished-source coverage](unpublished-mapping-coverage.md) accounts separately for all 274 owner-designated unpublished versions: 41 retain their earlier passage-level comparisons, and all 233 formerly screened versions now have substantive reviews of selected complete pages beyond screening. This completes the deeper reading pass, not the missing mathematical bridges or a full manuscript audit. Ideas without a matching declaration remain explicitly unresolved. Draft interpretations have `origin: assistant-proposed`, a null `owner_statement`, and no asserted understanding date; they must not be read as the owner's testimony or historical influence. Links distinguish conditional correspondence from analogy, retain physical PDF pages, and pin code line spans and SHA-256 alongside Git commit/blob identity. `source-reviewed` means source inspection, not compilation or kernel audit. A formalization link binds repository, commit, path, blob and declaration, retains hypotheses and gaps, and states the relationship and evidence. Kernel checking does not establish intellectual attribution.

## Paper-to-Lean reference ledger

For every new paper-derived formalization, consult and update the
[paper-to-formalization references ledger](paper-to-formalization-references.md)
in the same mathematical source change. It records **title, credited authors,
year/version, stable identifier, exact theorem/method and hypotheses, precise
Lean declarations and introducing/revising commits, and actual verification
status**. An analogy is not a formal dependency, and an unproved
specialization or a source-level proof candidate is not a kernel-accepted
bridge.

The ledger contains source-bound entries for the 2026 ICARM
rank-32 record, Cremona's 2002 good-prime 2-descent method,
Stoll's pinned Lean 4.35 development (**code**, not a paper),
Sarnak's 2011 deterministic-flow conjecture (**analogy**, not an
instantiated theorem), and the 2026 Weil-form/inertia comparison
(**analogy**, not an imported zero-distribution theorem). It now
also records exact Farey selected-return angular and projective
obstructions and cyclic-residue Hodge identities as **2026
repository-derived constructions with no separately established
paper theorem or historical influence**. Those entries distinguish
the earlier eight-module local kernel/axiom qualification from the
still-unverified angular, projective and Hodge leaves and list
their individual queued replay issues. The
large version-bound unpublished-manuscript map remains separate; neither
catalog proves reading history, influence, priority or theorem acceptance.

## Custody and deduplication

PDF bytes live outside Git at `~/Desktop/MathematicsLibrary/<subject>/`. Only exact SHA-256 equality merges asset identity. Distinct versions remain separate until reviewed; a filename, DOI or arXiv family is not a byte-identity test. Duplicate physical occurrences remain in a separate local duplicate area, preserving their original path and date observations; no original is deleted. Taxonomy assignments are provisional opening-page keyword classifications, with an explicit review queue.

Private local records in `MathematicsLibrary/.catalog/` retain original absolute paths, pre-read filesystem times (including raw nanoseconds), inode/device, extended attributes, extraction results, and move records. These machine records, scripts and PDFs are not repository literature references. The scanner lives in `grwtsk/noeaaeue/operations/literature/`. The initial scope is loose Desktop PDFs plus Desktop/Papers recursively, excluding repository trees elsewhere on the Desktop. Subsequent discovery includes Downloads and Documents recursively. PDFs inside Git checkouts, worktrees and audit source packets are observed but left in place to preserve project references. Symlinks and dependency/cache directories `.git`, `.lake`, `node_modules` and `.venv` are excluded. Non-paper personal documents and uncertain unmatched candidates stay in place. Private per-session records retain extraction errors and any manual classification overrides.

## Dates and trust

Filesystem access time is a single OS observation, not an access history and not proof of human reading. It may be stale, suppressed, restored or changed by indexing, copying and this scanner. Birth and modification dates are likewise not publication or reading dates. PDF metadata dates are publisher/tool claims, not validated chronology. Capture pre-read times and extended attributes before hashing or extraction; scanner access and move observations are separately labeled. Original date observations remain durable even if moving changes ctime. Existing history cannot be reconstructed from a lone atime. Owner-reported reading dates, annotations, download provenance and bibliographic dates must retain their evidence, precision and actor separately.

The schema admits future video sources with timestamp locators and video-publication dates. No YouTube collection has been performed. Bibliographic identifiers/authors/titles are candidates until independently checked; PDF notices and bytes are retained, and no redistribution license is inferred.

## Historical unpublished research

The [spectral research archive](graveyard-unpublished.md) adds 240 pinned PDF versions from `grwtsk/spectral-proof-of-RH/docs/graveyard`, designated unpublished research by the owner. Repository origins are distinct from local filesystem observations; Git dates do not supply historical reading dates. Exact bytes stay outside Git.

The [three additional manuscript versions under docs](spectral-docs-unpublished.md) complete coverage of all 243 PDFs at the same pinned repository snapshot.

## Idea mapping evidence

`unpublished-mapping-coverage.json` and its schema bind each exact PDF version to physical page locators, the reviewed extent, proposed mathematical subject and missing bridges. New idea records include exact claim anchors, physical pages read and page-text SHA-256 hashes; each version is checked independently, including empty-body versions. Prior screening locators remain in `previous_screening`. Candidate code-search locations are separate from source-compared formalization links. A finite data contract, a conditional terminal implication, a scope guard and a full arithmetic construction are distinct roles. Neither a positive Gram model, a real spectrum, a symmetry, a finite computation nor a historically reported receipt supplies a missing source comparison. The original four catalog mappings retain their prior pinned code commit and evidence unchanged.

Mapping extraction, rendering and validation tooling lives in `grwtsk/noeaaeue/operations/literature/`. Pre-read machine-access observations and extracted PDF text stay in the external library; bibliographic source records and original dates are preserved.

Latest assessment of the 70 historically unresolved ideas: [taxonomy-organized paper-to-Lean follow-up](unmatched-idea-followup.md), with exact version/page and pinned declaration references.

Implementation follow-up: [36 version-bound obligations with exact Lean bridges, hypotheses and remaining gaps](obligation-implementation-progress.md). Four optional/corrective obligations discharged; three conditional fragments; 29 unresolved. All seven main claims remain open.

Next implementation pass: [local order detection, finite local products, residual readouts and rate separation by taxonomy](obligation-implementation-progress-v2.md). Four obligations remain completed; seven have verified partial results; 25 remain unresolved.
