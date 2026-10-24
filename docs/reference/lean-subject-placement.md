# Lean subject placement contract

Status: **source specification / model-independent / no execution evidence**.

`GRWTSK.FoundationsLogicAndTypeTheory.MathematicalOrganization.SubjectPlacement`
defines the pure acceptance boundary for subject-based organization of Lean source.
The effectful classifier and filesystem transaction belong to `grwtsk/noeaaeue`.

The contract keeps these claims separate:

- a file is conceptually relevant to one or more taxonomy subjects;
- a file has one selected physical home under `GRWTSK/`;
- a source command parses or elaborates;
- declarations retain their exact public identities and types;
- a mathematical implication, equivalence, or formalization relation is proved.

An unreviewed classifier may propose only `relevantTo`. It may not assert
`implies`, `equivalentTo`, or `formalizes`. Every managed file must receive one
terminal disposition: `keep`, `move`, `review`, or `pinned`. Low-confidence,
ambiguous, path-only, colliding, or immutable-archive cases remain non-moving.

A move is admissible only when the source identity and target are explicit,
Lean-native evidence is available, configured score and margin gates pass,
imports are rewritten as one transaction, and exact rollback bytes are retained.
The repository supplies a separate `targetAllowed` predicate so immutable
archives, ignored prefixes, portability rules, and later taxonomy policy remain
noncoercible from a model score.

A complete library check is required after all candidate moves. It is also
required when the tree is already correctly placed: an empty move set is not an
empty validation obligation. Failure restores the pre-transaction bytes when
mutation occurred; a failed process is unavailable execution evidence, not a
mathematical refutation.

The executable policy is the versioned static manifest
`docs/verification/_unscoped/lean-subject-sort-v1.toml`. Its subject profiles may be extended as
the taxonomy grows. Existing top-level subject directories can be represented as
provisional local profiles without being silently promoted to accepted taxonomy
concepts. The former `GRWTSK/SourceCorpus` custody root is retired by the
name-and-path migration specified in
[`sourcecorpus-taxonomy-v1.toml`](../verification/_unscoped/sourcecorpus-taxonomy-v1.toml).
Its maintained Lean sources now have subject homes and explicit old-to-new
bindings. Retained subject labels and lexical routing signals remain placement
proposals requiring source-specific review; moving a file does not complete
semantic review, Lean replay, public-library admission or mathematical acceptance.
Historical source identities, notices and verification scopes remain historical.

The [shared taxonomy path contract](../verification/_unscoped/taxonomy-path-sync-v1.toml)
is the current physical layout authority. Each bound subject has the same
relative path and exact capitalization under the Lean, mathematics documentation,
verification, and taxonomy roots. The navigation configuration projects those
paths directly. Retired aliases cannot create another subject home. Distinct
authored concept IDs retain their definitions and scope, and different proof
bodies retain isolated variant namespaces.

The first implementation is file-level. A source containing strongly mixed
subjects is classified `review`; it is not automatically split. Declaration-level
segmentation requires a separate source-preserving decomposition plan, exact
command coverage, dependency closure, and per-resulting-module replay.
