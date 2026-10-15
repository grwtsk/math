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
native receipts bind those claims.

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

The incoming prefix-tree taxonomy does not directly cover every acyclic diamond
allowed by the method taxonomy. The earlier identity-only history guard
permitted reorderings; the current transition guard requires the complete old
ordered rows as a literal prefix for decisions, contributions and aliases.
The correspondence from those Python/JSON rows to the exact Lean list model
remains an explicit refinement obligation.

See [cache operations](../how-to/cache.md), the
[taxonomy](../../cache/taxonomy.json), and the
[integration evidence](../../evidence/Logic/FiniteSequences/cache-integration-2026-10-15.json).
