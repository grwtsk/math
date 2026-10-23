# Reading background and intellectual lineage

This catalog supports [attribution issue #254](https://github.com/grwtsk/math/issues/254). It records bibliographic candidates and explicit source idea → owner understanding → pinned formalization links. Discovery is not evidence of reading, influence, originality, authorship, or proof acceptance. Attribution remains unresolved until source-specific review.

`catalog.schema.json` is a JSON Schema 2020-12 contract; `catalog.json` contains bibliographic candidates from the Desktop, Downloads and Documents intakes. Raw extracted metadata remains unverified. Reviewed bibliographic fields are in each source’s `bibliography` object under schema version 2; see [bibliographic qualifications](metadata-review.md). Titles, bylines, identifiers and dates carry per-field status and version-bound evidence. Owner-reported grwtsk contributors attribution is separate from printed bylines. Empty idea, understanding and formalization-link arrays are intentional: these require actual paper review and the owner's account. A formalization link binds repository, commit, path, blob and declaration, retains hypotheses and gaps, and states the relationship and evidence. Kernel checking does not establish intellectual attribution.

## Custody and deduplication

PDF bytes live outside Git at `~/Desktop/MathematicsLibrary/<subject>/`. Only exact SHA-256 equality merges asset identity. Distinct versions remain separate until reviewed; a filename, DOI or arXiv family is not a byte-identity test. Duplicate physical occurrences remain in a separate local duplicate area, preserving their original path and date observations; no original is deleted. Taxonomy assignments are provisional opening-page keyword classifications, with an explicit review queue.

Private local records in `MathematicsLibrary/.catalog/` retain original absolute paths, pre-read filesystem times (including raw nanoseconds), inode/device, extended attributes, extraction results, and move records. These machine records, scripts and PDFs are not repository literature references. The scanner lives in `grwtsk/noeaaeue/operations/literature/`. The initial scope is loose Desktop PDFs plus Desktop/Papers recursively, excluding repository trees elsewhere on the Desktop. Subsequent discovery includes Downloads and Documents recursively. PDFs inside Git checkouts, worktrees and audit source packets are observed but left in place to preserve project references. Symlinks and dependency/cache directories `.git`, `.lake`, `node_modules` and `.venv` are excluded. Non-paper personal documents and uncertain unmatched candidates stay in place. Private per-session records retain extraction errors and any manual classification overrides.

## Dates and trust

Filesystem access time is a single OS observation, not an access history and not proof of human reading. It may be stale, suppressed, restored or changed by indexing, copying and this scanner. Birth and modification dates are likewise not publication or reading dates. PDF metadata dates are publisher/tool claims, not validated chronology. Capture pre-read times and extended attributes before hashing or extraction; scanner access and move observations are separately labeled. Original date observations remain durable even if moving changes ctime. Existing history cannot be reconstructed from a lone atime. Owner-reported reading dates, annotations, download provenance and bibliographic dates must retain their evidence, precision and actor separately.

The schema admits future video sources with timestamp locators and video-publication dates. No YouTube collection has been performed. Bibliographic identifiers/authors/titles are candidates until independently checked; PDF notices and bytes are retained, and no redistribution license is inferred.

## Historical unpublished research

The [spectral research archive](graveyard-unpublished.md) adds 240 pinned PDF versions from `grwtsk/spectral-proof-of-RH/docs/graveyard`, designated unpublished research by the owner. Repository origins are distinct from local filesystem observations; Git dates do not supply historical reading dates. Exact bytes stay outside Git.

The [three additional manuscript versions under docs](spectral-docs-unpublished.md) complete coverage of all 243 PDFs at the same pinned repository snapshot.
