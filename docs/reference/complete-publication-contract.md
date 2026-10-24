# Complete mathematical source publication

Local attribution: grwtsk contributors.

The complete publication represents every tracked regular `.lean` source at one
exact Git commit. Its source closure includes `GRWTSK/`, the `GRWTSK.lean`
umbrella and verification support sources. Canonical library sources, the
umbrella, verification support and any other tracked Lean sources retain
separate scope metadata. Working-tree additions, edits and deletions are a
different population and cannot silently change the pinned publication.

Every source has a co-located module index under `docs/mathematics/`, full source
display, an exact byte companion and a linked verification obligation. Each
lexically observed declaration or anonymous command has an individual source
issuance. Definitions, instances, examples and source commands remain included
alongside theorem and lemma occurrences. Unrecognized syntax remains available
in the complete source snapshot; no verification status, namespace, subject
assignment or ranking threshold filters this population.

Module indexes follow `<subject-path>/<Module>.lean/index.md`, with per-level `complete-source-index.md` pages and matching verification hierarchies.
Current explicit taxonomy aliases and relocations determine publication locations;
canonical subject spelling takes precedence over existing directory spelling,
then deterministic portable casing resolves other ancestors. Original source
paths, identities and verification pins remain unchanged. Distinct historical
source occurrences that share a current destination retain separate module
directories; consolidation never drops an occurrence.

The source revision and publication layout are independent inputs. A long render
can use a frozen layout root containing the exact taxonomy policy bytes and
directory spellings, while reading all mathematics from its pinned Git revision.
The manifest binds the policy and resulting path map, together with the producer
sources captured at process start. A later folder move does not refresh that
binding. Reconciliation must retain all source and declaration identities, bind
its actual producer, and pass the maintained generator's exact-byte check before
its output is presented as reproducible. Recomputed counts alone do not establish
that unchanged source companions or declaration records were preserved.

An issuance contains its title, source observation, exact source window,
commit/tree/blob binding, revision, verification link and unresolved bridges.
UTF-8 source is displayed directly; non-UTF-8 source retains a base64 display.
The byte companion preserves the original encoding and final newline. Public upstream bylines and license obligations
remain attached to source material. A source window does not replace surrounding
namespace, variable, import or notation context, which the full source preserves.

Navigation tracks use repository, source path, command kind, source spelling and
ordinal, independently of the source commit. Commit-specific occurrence
identities retain the exact source commit, tree, path, mode, blob and command
observation. Historical theorem/lemma identities retain their original lexical
spelling and ordinal. A track supports navigation across revisions; it does not
prove declaration equivalence or authorize a change of source identity.

Source observation, module compilation, compiler declaration discovery, named
declaration axiom audit, mathematical admission and proof dependency extraction
are separate evidence scopes. Every result links to its source module's
verification obligation, including pending, blocked, failed and successful
states. A module status does not certify every lexical occurrence, intended
informal statement, transitive axiom boundary or composite proof. Lexical source
spelling is never promoted to an elaborated fully qualified declaration name.

The publication manifest records the source identity, observation profile,
complete declaration shards, generated page ownership, per-directory page
counts and output content inventory. Declaration shards are bounded artifacts,
not samples. Every row and every module remains reachable from the complete
source index. Reviewed semantic subjects remain distinct from source directory
navigation; a cross-branch proof requires an explicit statement, components and
proved composition bridges.

In complete-publication schema `noe.math-complete-documentation/2`, a source
observation's unavailable metric records `profile_sha256` as the SHA-256 of the
exact profile file bytes at the source commit. The evaluated metric schema's
`profile_digest` instead hashes canonical JSON after parsing. These bindings
have distinct encodings and must not be compared as interchangeable digests.
Neither binding supplies missing graph evidence or a numerical measurement.

Generation and effectful verification belong to `grwtsk/noeaaeue`. Its existing
managed native owner retains activation locks, reservations and admission holds.
Execution attempts, receipts, caches and mutable controller state are not stored
in the math repository. A refused shared admission probe does not count as an
attempted replay of every module. Future admitted native discovery must bind
compiler-observed declaration identities and independent component outcomes to
the exact source and environment before stronger result claims are published.

Acceptance has three separate checks: complete corpus generation checks exact
output bytes; navigation checks links and rendered previews; population checks
independently enumerate physical pages and compare the manifest's totals. Page
counts do not establish proof acceptance. Three-degree spectral measurements
require appropriately bound proof dependency evidence; missing evidence remains
explicitly unavailable.

[Complete source index](../mathematics/complete-source-index.md) ·
[Publication manifest](complete-documentation.json) ·
[Result publication standard](result-publication-contract.md)
