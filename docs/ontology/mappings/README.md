# Repository and issue mappings

grwtsk contributors

The math corpus index records the commit, root tree, shard paths and denominators. All files tracked by the pinned tree occur once, including the GRWTSK sources, adapter packages, source specifications, authored documentation and supporting files. The census uses committed Git objects and covers the root `GRWTSK.lean` entry point and the entire tracked `GRWTSK/` tree.

## Reading a file shard

Join a group's `directory` and one item in `files` with a slash. An empty directory denotes the repository root. Some file suffixes contain subdirectories so parallel verification pages can share a prefix. The repository, commit and joined path identify the Git object and its mode. The SHA-256 first byte of the UTF-8 path modulo 64 selects the shard. Shards hold inventory metadata independently of semantic entity IDs.

The group gives the file's `role` and `disposition`. `layout_exact` follows the pinned MSC source-layout record, with follow-up placements taking precedence. For current modules without a placement record, `subject_folder` indicates a broad two-digit code from an unambiguous top-level subject heading. An absent subject means the census assigned no MSC code. Both assignments express navigation metadata.

For an `adapter_module_view`, the canonical target is the part of the adapter path beginning at `GRWTSK/`. Generation checks the committed symlink bytes against that expected path and its tracked target. Its independent provider package remains identified by the adapter path. A verification specification has its own file identity. Any historical source pin inside that file still governs the scope of its evidence.

## Reading an issue shard

The issue number identifies the live GitHub issue. The revision marker records the issue's observed update time and the SHA-256 of its canonical UTF-8 JSON metadata. The capture hashes the number, state, state reason, update timestamp, title, body and sorted returned label names. The snapshot checksum hashes the issue-number and revision-hash pairs in increasing issue-number order. It can be recomputed from the published metadata. Reproducing a content hash requires the original capture. Two paginated reads agreed at collection time. The capture covers issue metadata and bodies, with discussion comments outside this denominator.

An architecture annotation records the target, links to ontology entities where available, selected prerequisite issues, outstanding obligations and completion conditions. Issue dependencies are routing metadata. Executable inference requires its own instantiated premises and evidence. The annotation inherits the captured issue hash, and the generator carries it forward only when that hash still matches. An empty prerequisite list records that no prerequisites are bound in this annotation.

## Dispositions

- `pending` queues an item for source, declaration or issue review.
- `processed` means an issue body has a local architecture annotation at the captured revision. Open or closed remains a separate GitHub state.
- `justified_exempt` records a role outside the applicable review queue. File roles include duplicate adapter views, fixtures, configuration, licensing, taxonomy and generated navigation. Issue exemptions cover identified placeholders and operational history tracked outside this corpus.

The selected semantic entities and evidence bindings live in their own ontology records. Compilation, kernel replay, axiom auditing, theorem acceptance and independent mathematical review each require their own evidence.
