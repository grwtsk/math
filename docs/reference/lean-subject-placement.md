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
`verification/lean-subject-sort-v1.toml`. Its subject profiles may be extended as
the taxonomy grows. Existing top-level subject directories can be represented as
provisional local profiles without being silently promoted to accepted taxonomy
concepts. Immutable prefixes such as `GRWTSK/SourceCorpus` are custody roots, not
discoverable destination subjects, and their archived vocabulary does not enter
the trainable ranking corpus.

The first implementation is file-level. A source containing strongly mixed
subjects is classified `review`; it is not automatically split. Declaration-level
segmentation requires a separate source-preserving decomposition plan, exact
command coverage, dependency closure, and per-resulting-module replay.
