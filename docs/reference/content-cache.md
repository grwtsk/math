# Compact source cache

`cache/` is an in-repository, reversible source store and coordination surface.
Its frozen scope is the exact Git-tracked plus nonignored untracked first-party
Lean paths under `GRWTSK/`, together with `GRWTSK.lean`. It retains source roles,
mathematical subject/object placement, lexical import dependencies, build and
license context, and the original catalog observations. Ignored archives,
external dependency bytes and compiled `.lake` objects are outside that scope.

The compact/expanded analogy describes representation. It is not a theorem
identifying a cache with the Riemann sphere or proving a topological equivalence.

| Component | Meaning |
|---|---|
| `cache/objects/` | Shared zlib objects, addressed by raw-byte SHA-256 and checked against raw and compressed lengths/hashes |
| `cache/manifests/` | Immutable content-addressed snapshots with exact path/identity sets and separate source occurrences |
| `cache/refs/` | Current revision and retained previous references |
| `cache/attempts/` | Actual successful or failed snapshot attempts |
| `cache/taxonomy.json` | Method facets, declared counts, typed relations, decisions, contributions and open premises |
| `cache/coordination/tasks/` | Scoped agent work and owned paths |
| `cache/coordination/events/` | Separate immutable progress, review and completion records |
| `cache/occurrences/` | Separate ordered relation-trace documents bound to exact taxonomy bytes/revision and a source snapshot |

## Mathematical contracts and operational evidence

The [indexed dictionary](../mathematics/Logic/FiniteSequences/indexed-dictionary.md)
proves exact finite-list packing and reconstruction. The
[dictionary revision theory](../mathematics/Logic/FiniteSequences/dictionary-revision.md)
proves preservation from explicit lookup agreement and includes stale-slot and
failed-decoder counterexamples. The [semantic decision certificate](../mathematics/Logic/FiniteSequences/decision-certificate.md)
binds a supplied proof to the actual decoded premises and proves conditional
reuse under exact agreement. The [ordered history checker](../mathematics/Logic/FiniteSequences/append-only-history.md)
reflects acceptance into an exact decoded prefix and proves that appending
a repeated payload can still invalidate old numeric dictionary slots. Fresh
native receipts bind those claims. The [stable incremental encoder](../mathematics/Logic/FiniteSequences/incremental-dictionary.md)
now preserves old slots by extending the dictionary itself, with an exact
append-decoding theorem requiring valid original references.
Its [composition law](../mathematics/Logic/FiniteSequences/incremental-composition.md)
equates actual decoded histories for sequential and concatenated batches.
Checked unequal representations show why this does not identify numeric slots
or serialized bytes across batching choices.
The [batch certificate theorem](../mathematics/Logic/FiniteSequences/batch-certificate.md)
reuses actual evidence for the complete appended history across those different
representations. A checked counterexample prevents automatic inheritance of
an arbitrary predicate from the old history.

The repository also contains finite dependency-closure and selective revision
models in `GRWTSK/Order/Closure/FiniteDependencyClosure.lean` and
`GRWTSK/Logic/Certificates/DependencyRevision.lean`. They are design references
for exact invalidation and retained history. This cache does not claim a new
native replay of those older models or a verified Python refinement from them.

The Python adapter is tested separately for exact coverage, corruption,
traversal and symlink rejection, source drift, stale revisions and cyclic
dependency closure. Snapshot capture freezes inputs and rechecks them before
advancing the current reference. Expansion verifies objects and reconstructs
bytes into an absent or empty destination outside the live repository.
Existing live source is never an expansion target.

Every cached source has `proof_status = unknown-unreplayed` and
`mathematical_acceptance = false`. Native proof receipts remain distinct,
source-bound evidence. Cache custody does not grant theorem acceptance; old
receipts and stale catalog bindings retain their original identities.

## Taxonomy and durable decisions

The supplied table defines 16 method families with a declared total of 215
records. It does not provide the 215 individual record identities. The taxonomy
therefore preserves the declared counts while reporting the method identity
inventory as unprovided. These counts are distinct from the source snapshot's
observed Lean-file count.

Method facets do not replace canonical mathematical homes. Parent relations,
aliases, provenance, formal implications, dependencies, communications and
governance relations have separate types and validation. Equality of counts
does not establish identity coverage, and arbitrary graph reachability does
not establish a theorem or effect authorization.

Frequency summaries, rank/graph diagnostics and similarity methods can aid
discovery when their data and assumptions are meaningful. Benford, Zipf,
randomness, spectral and model-fitting techniques are not structural proof
gates. The taxonomy records their applicability without claiming every listed
algorithm is implemented or applicable to source metadata.

The [durable decision record](../../cache/decisions/representation-and-evidence-v1.json)
binds representation choices to their premises and native receipts. Decision and
contribution records preserve their exact scope and premises across taxonomy revisions. Repository events communicate current agent work;
they do not manufacture independent review or human authorization. Concurrent
changes remain visible and must be reconciled by identity and checked contracts.
The [composition decision](../../cache/decisions/incremental-composition-v1.json)
requires an explicit choice between decoded-history comparison and exact
representation comparison; successful decoding cannot silently substitute for
byte custody or a source identity.
The [full-history evidence decision](../../cache/decisions/batch-certificate-v1.json)
requires actual evidence for all current decoded premises. Preserving old
storage slots does not establish an arbitrary predicate after new rows arrive.

The [prefix representation obstruction](../mathematics/Order/Embeddings/prefix-obstruction.md)
requires both preservation and reflection of the chosen source relation. An
incomparable pair with a common upper bound rules out such a representation;
injective monotonicity alone does not. The incoming taxonomy candidates remain
`NOT_RUN`, and correspondence with their prefix definition and the operational
typed graph remains separate. The
[representation decision](../../cache/decisions/prefix-embedding-v1.json)
keeps these mapping obligations explicit. The earlier identity-only history guard
permitted reorderings; the current transition guard requires the complete old
ordered rows as a literal prefix for decisions, contributions and aliases.
The correspondence from those Python/JSON rows to the exact Lean list model
remains an explicit refinement obligation.

The [typed path occurrence contracts](../mathematics/Combinatorics/DirectedGraph/path-occurrences.md)
retain every chronological vertex occurrence on path extension and split at
actual typed prefix positions. Complete edge occurrences reconstruct
single-object paths; endpoint/length/vertex summaries can erase parallel edges.
Vertex reconstruction has a separate arrow-uniqueness premise. The
[path identity decision](../../cache/decisions/path-occurrences-v1.json) keeps
these scopes distinct; general DAG unfolding and Python/JSON refinement remain
open. Neither source occurrences nor repeated display positions gain proof
authority from a common vertex label.

The [general typed edge-trace equivalence](../mathematics/Combinatorics/DirectedGraph/edge-trace.md)
now reconstructs arbitrary quiver paths from valid lists of actual source,
target and arrow tags at a fixed root. Its mathematical decoder requires a
validity proof and is maintained without executable code generation. It
supplies no automatic interpretation or correctness proof for operational
relation-ID rows.

The [all-occurrence path unfolding](../mathematics/Combinatorics/DirectedGraph/path-unfolding.md)
now gives a mathematical tree of every rooted path history and exact outgoing
finite lifts. Its endpoint image is precisely root-reachable vertices; an
incoming base edge at the root prevents full covering. This is a distinct
source/occurrence construction with its own native receipt. Finite cache
snapshots and the operational relation-ID schema do not acquire an executable
unfolding, universal property or semantic refinement from that theorem.

The [occurrence-prefix result](../mathematics/Combinatorics/DirectedGraph/occurrence-prefix.md)
relates existing unfolding reachability to complete typed edge-trace prefixes.
Endpoint equality and base reachability do not replace exact history. The
separate read-only `scripts/cache_trace_prefix.py` consumer compares two fully
validated operational traces at the same source snapshot, raw taxonomy,
fixed root and relation role. It retains both file identities and every
ordered edge occurrence. Its bounded tests and actual comparison receipts
are operational evidence; the Lean/runtime relation-graph correspondence,
proof authority and permission implications remain unestablished.

The [endpoint-section obstruction](../mathematics/Combinatorics/DirectedGraph/endpoint-section.md)
gives an exact limit on choosing one history for every reachable source
vertex. If two incomparable reachable vertices share a reachable upper
vertex, no endpoint right inverse can preserve every source reachability
comparison. The concrete thin diamond includes loops and a shortcut.
This conditional mathematical obstruction supplies no claim that the
current operational taxonomy contains that configuration. Source entities,
chosen representatives and all exact path occurrences retain separate
identities and verification states.

The separate occurrence-trace adapter validates one fixed root, one typed
relation kind, forward direction, exact relation content and ordered endpoint
joins. Its current source snapshot and exact taxonomy byte/revision bindings
are external inputs to validation. Repeated relation IDs retain their distinct
positions, and an empty trace retains its explicit root. The existing taxonomy
schema and duplicate-edge guard remain unchanged. A trace is metadata with
`proof_acceptance = not-established`; the operational validator's bounded
hostile controls do not prove its correspondence with a Lean quiver. Changes
to taxonomy relation content require new validation rather than reuse of an
old occurrence label. The taxonomy is separately byte-bound; it is not part
of the Lean-source snapshot. Validation binds this declared pair of inputs
without claiming the taxonomy was historically contained in that snapshot.

The [finite prefix inventory](../mathematics/Combinatorics/DirectedGraph/prefix-inventory.md)
shares complete typed prefix traces among a finite ordered list of keyed
occurrences. Every dictionary entry is valid from its fixed root and decodes
to an actual occurrence. The existing indexed decoder reconstructs all
original keys and complete traces; the valid-trace decoder then recovers
the actual occurrences, including duplicate rows, in order.
Its size is at most the sum of input trace lengths plus one per row.
`List.dedup` retains rightmost copies: parents need not precede children,
and indices need not remain stable after revision. This noncomputable
mathematical contract does not verify operational byte compression or the
relation-ID adapter. The [inventory decision](../../cache/decisions/prefix-inventory-v1.json)
records those boundaries durably.

The [root-aware parent dictionary](../mathematics/Combinatorics/DirectedGraph/parent-trace-dictionary.md)
now expands a finite table of length ranks, parent references and actual
last full edge tags to the complete prefix dictionary. It stores the root
and original ordered references separately. Its Option expansion checks
numeric lookups and decreasing ranks; actual encoded inventory proofs
supply rooted edge validity. Generic rank-valid tables do not acquire a
root/edge-join correctness theorem from those numeric checks. The
[parent dictionary decision](../../cache/decisions/parent-trace-dictionary-v1.json)
requires rank descent rather than an assumed ordering of numeric indices.

The [rooted revision consumer](../mathematics/Combinatorics/DirectedGraph/rooted-trace-revision.md)
now derives actual old-premise decoding across expanded parent dictionaries
from exact referenced lookup agreement and retained outer root equality.
It then uses the existing certificate's own actual pack roundtrip to reuse
its supplied criterion and evidence. A stale in-bounds index can decode a
different valid history, and an empty decoded list can hide a changed root.
The [rooted revision decision](../../cache/decisions/rooted-trace-revision-v1.json)
requires both premises; it grants no criterion for all appended rows and
no correspondence with operational hashes, JSON or effect authorization.

The [stable incremental prefix table](../mathematics/Combinatorics/DirectedGraph/incremental-prefix-table.md)
now copies the actual old dictionary, parent cells and ordered references
literally, appends missing prefixes, and adds references only for real new
rows. Actual parent expansion and indexed decoding recover the complete
old and new keyed histories. Auxiliary prefixes do not become communication
rows. The root remains explicit, and old evidence covers only its original
premises. The [stable extension decision](../../cache/decisions/incremental-prefix-table-v1.json)
records its finite one-step construction from a canonical base, with a
generally noncanonical output. The [stored-state result](../mathematics/Combinatorics/DirectedGraph/prefix-table-state.md)
now derives actual expansion from a structural invariant on arbitrary
stored dictionaries and parent cells, then proves stable update closure
and actual two-step row decoding. The [stored-state decision](../../cache/decisions/prefix-table-state-v2.json)
requires this invariant and preserves semantic ordered histories;
different update groupings may have different dictionaries. No operational
JSON/hash/zlib/IO correspondence or authority follows.

The [actual compaction result](../mathematics/Combinatorics/DirectedGraph/prefix-table-compaction.md)
now reconstructs canonical parent storage from actually decoded real rooted
histories. The reverse occurrence/trace roundtrip and actual parent/indexed
decoding prove semantic preservation, with an explicit partial old-slot map
and remapped retained parents and real references. Unused branches may be
removed; stale old references can decode empty histories. The
[compaction decision](../../cache/decisions/prefix-table-compaction-v2.json)
retains the root, order, repetitions and explicit certificate criterion.
It proves no byte-optimality or operational cache implementation refinement.

The [finite relation-table codec](../mathematics/Combinatorics/DirectedGraph/role-relation-table.md)
now qualifies actual table indices by role and relates them to actual typed
edges and full ordered rooted histories. The
[role-qualified codec decision](../../cache/decisions/role-relation-codec-v1.json)
records the fixed-table premises, actual compaction consumer and boundary:
no cross-revision index stability or operational parser correspondence is
inferred. Parallel IDs in the mathematical fixture leave the existing
operational duplicate-edge guard unchanged.

The [relation-table reindex result](../mathematics/Combinatorics/DirectedGraph/role-relation-reindex.md)
now binds actual index translations to source, target and role preservation.
The [reindex decision](../../cache/decisions/relation-table-reindex-v1.json)
requires actual inverse transport into a common old rooted payload before
reusing supplied evidence. Relation IDs and parent-dictionary references
are different indices; unchanged numbers and matching endpoint summaries
do not certify transport of full histories.

The [stored-state reindex result](../mathematics/Combinatorics/DirectedGraph/prefix-table-reindex.md)
transports actual well-formed root/dictionary/parent/reference state through full
typed relation tags. The [durable decision](../../cache/decisions/prefix-state-reindex-v1.json)
requires derived decoding and common old rooted entries for certificate reuse.
Parent slots and real references retain their numbers; relation tags translate.

The [incremental reindex law](../mathematics/Combinatorics/DirectedGraph/prefix-update-reindex.md)
and [durable decision](../../cache/decisions/incremental-state-reindex-v1.json)
derive the actual stored update equation from full typed histories. Injectivity
preserves distinct prefix identities; appending rows does not supply their
criteria or permission evidence.

See [cache operations](../how-to/cache.md), the
[taxonomy](../../cache/taxonomy.json), and the
[integration evidence](../../evidence/Logic/FiniteSequences/cache-integration-2026-10-15.json).
