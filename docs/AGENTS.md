# Documentation instructions

These instructions apply throughout `docs/` and supplement the
[repository instructions](../AGENTS.md). Repository-local paths below are relative
to this directory unless stated otherwise.

## Subject placement and navigation

- Use the official MSC2020 heading projection for mathematical subject folders in
  `mathematics/`, its verification subject subtrees and `taxonomy/subjects/`.
  Put administrative and reference material in the existing support areas.
- Bind current document navigation to
  [the documentation layout](taxonomy/msc2020/documentation-layout-v1.json).
  Resolve live document links through its current aliases. For Lean source paths,
  use the [source layout](taxonomy/msc2020/source-layout-v1.json), including
  `followup_files`; declaration namespaces do not determine current paths.
- Use readable mathematical document names. Distinguish records sharing a name
  with numbered source editions or occurrences. Keep cryptographic hashes in
  source/declaration identities and provenance metadata, not active filenames.

## Identity, claims and evidence

- Preserve immutable revision URLs, actual declaration namespaces, literal source
  snapshots, source commit/blob pins, hypotheses, unresolved premises and historical
  verification scopes when repairing navigation or moving documents.
- Authored subject-concept UUIDs identify authored records. Folder placement does
  not equate those records with official MSC concepts or establish semantic review
  or proof acceptance.
- Apply the [proof-comparison disposition](mathematics/_support/reference/proof-comparison-disposition.md)
  when authoring or revising proof claims. Keep analytical assessment, source
  publication and formal verification statuses separate, as required by the root
  instructions. Source publication does not establish mathematical acceptance.
  Document movement and navigation checks supply no compilation, kernel replay
  or axiom-audit evidence.

## Authoring and checking changes

- Keep edits scoped to the requested documentation work. Lean changes do not require
  articles, proof summaries, generated navigation or a literature-register update.
  For a deliberately maintained result article, follow the
  [article standard](mathematics/_support/reference/result-article-standard.md)
  subject to the root instructions; do not generate an article scaffold by default.
- Check edited local links and referenced layout entries against their current
  targets. Report what was checked and any unresolved targets at navigation scope;
  do not infer a corpus-wide audit from a local check.

## Operational boundary and attribution

- Follow the root artifact-admission and ontology-binding rules. Maintain
  mathematical documents and static navigation/specification data here; keep
  generators, mutable processing state, execution attempts and receipts in the
  operations repository identified by the
  [ontology manifest](ontology/manifest.yaml), bound to a pinned math commit.
  Generate documentation only when explicitly requested.
- Maintain current cross-repository bindings through
  [the ontology](ontology/README.md) and its existing source/mapping
  contracts. Preserve `ontology/v1/` as historical source through the
  [migration crosswalk](ontology/migrations/grwtsk.v1.yaml); do not create a
  second current registry or embed operational dumps in mathematical documents.
- Use exactly `grwtsk contributors` for local content attribution. Preserve upstream
  authorship and licensing. Follow the root privacy and Git identity rules; this
  content-attribution notice does not fix other contributors' Git identities.
