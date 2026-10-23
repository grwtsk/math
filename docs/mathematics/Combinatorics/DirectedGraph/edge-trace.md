# Typed edge traces of directed paths


Fix a root $r$ in any quiver $V$. A tagged edge is an actual dependent triple
$(a,b,e)$ with $e:a\to b$. A chronological edge list is valid from $r$ when
its first source equals $r$ and every later source equals the previous target.
The empty list is valid from $r$ and ends at $r$.

The source constructs an equivalence

\[
\operatorname{Quiver.PathStar}(r)
\simeq \{\text{tagged edge lists valid from }r\}.
\]

`PathStar r` is Mathlib's existing dependent pair of endpoint and actual typed
path. Both construction/projection round trips are proved, including recovery
of the endpoint. No arrow uniqueness, decidable vertex equality, finiteness or
acyclicity is assumed.

## Reconstruction and composition

An explicit prefunctor tags each actual edge and maps it into the existing
single-object quiver. Its outgoing-star maps are injective; the proof reuses
Mathlib's `Prefunctor.pathStar_injective`. The existing chronological
[single-object edge representation](path-occurrences.md) then encodes the path.
The decoder recursively constructs an actual typed path from the list and its
validity proof. These are noncomputable mathematical definitions; no executable
codec is admitted. The proof does not assume a codec round trip or decode
arbitrary lists.

Path composition corresponds to chronological list append. Validity and the
computed endpoint have corresponding append laws, with the right list required
to start at the endpoint of the left. Wrong initial sources and broken joins
are rejected. Fixing the root matters: empty paths at different roots would
otherwise share the same empty edge list.

The positive controls use an actual two-vertex quiver with distinct parallel
arrows, empty and composed paths. Full tagged edges retain the distinction
between paths with the same vertex sequence. The negative control attempts to
supply an invalid join as valid input and must fail at its intended type.

## Cache and occurrence scope

The representation retains actual edges, endpoints and order; repeated vertices
or edge labels do not merge occurrence positions. It extends the earlier
single-object contract to arbitrary quivers through fully tagged dependent
edges. It does not construct an unfolding tree of all paths, assert a relation
between graph reachability and proof implication, or make a shortest-path
subtree cover every occurrence.

The separate operational occurrence validator (artifact:gitblob:2304c61045278f7e7ef9b09be4a2ba4367c2b984)
binds relation-ID traces to exact taxonomy bytes and a source snapshot. Its
bounded tests are separate from this theorem. A correspondence from those
JSON rows to this Lean equivalence remains open. Taxonomy/classification
candidates retain `NOT_RUN`; the 16 declared method families do not provide
the missing 215 individual method identities.

The separate [path unfolding](path-unfolding.md) constructs the arborescence
of all rooted history occurrences with exact outgoing lifts and reachable
endpoint image. That source has its own native receipt; it does not replace
the valid-list equivalence or its binding on this page.

## Source, verification and credit

The [source](../../../../GRWTSK/Combinatorics/DirectedGraph/EdgeTrace.lean),
[positive consumers](../../../../GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/EdgeTrace.lean)
and native receipt (artifact:gitblob:eabe42d40fbf1687ce669f637af40d8f53d42968)
bind exact bytes and controls. The complete local source closure and accepted
controls use fresh project objects, pinned Lean 4.33.0, trust zero, fatal warnings
and an owned-declaration/transitive-axiom census permitting only `propext`,
`Classical.choice` and `Quot.sound`. Generated project objects are fingerprinted
and rechecked. Pinned dependency objects are reused and fingerprinted rather
than rebuilt from source.

The integration evidence (artifact:gitblob:df19bbec1a32d893793ce0828ce0cd58affa133d)
and bounded source review (artifact:gitblob:71becf7ba704b364367c58307a9001f8b41d760f)
preserve upstream API identities, credit, controls and transfer limits.
Model review is correlated, not independent validation. Local source is MIT;
Mathlib and Lean authorship and Apache-2.0 terms remain upstream. Human direction:
grwtsk contributors. Formalization/checking assistance: OpenAI Codex. No
mathematical novelty or whole-repository acceptance is claimed.

**Current source scope.** Source links identify the existing mathematical modules. Earlier proposed bindings and verification receipts retain their recorded paths and hashes; this pointer repair records current bytes and does not claim fresh proof replay.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Combinatorics/DirectedGraph/EdgeTrace.lean`](../../../../GRWTSK/Combinatorics/DirectedGraph/EdgeTrace.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 23 |
| Theorem/lemma commands | 15 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
