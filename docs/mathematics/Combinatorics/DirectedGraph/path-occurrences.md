# Ordered occurrences of directed paths


For actual typed quiver paths $p:a\to b$ and $q:b\to c$, chronological vertex
occurrences include both endpoints and satisfy

\[
\operatorname{vertices}(p\circ q)
=\operatorname{vertices}(p)\mathbin{++}\operatorname{tail}(\operatorname{vertices}(q)).
\]

Here composition means traverse $p$ and then $q$. Every old vertex position is
retained. For each valid occurrence index $i$, the path splits into actual typed
prefix and suffix paths at that vertex, with prefix length exactly $i$.
Distinct indices yield distinct dependent prefix occurrences even when the
underlying vertex is repeated. No finiteness or acyclicity of the quiver is
assumed.

## Edge identity and reconstruction

Mathlib's `Path.vertices` is chronological. Its `Path.toList` stores edge-source
vertices in reverse order. The checked conversion is
`path.vertices.reverse = endpoint :: path.toList`; these two lists must not be
interchanged without that conversion.

For the existing single-object quiver `SingleObj Edge`, chronological edge
occurrences are the reverse of the existing `pathEquivList` representation.
Actual construction and projection are mutual inverses. Edge occurrences
compose by list append and determine the actual path. This reconstruction
contract is scoped to single-object quivers, rather than a claimed serializer
for arbitrary dependent edges.

Two one-edge Bool loops are different paths with the same typed endpoints,
length and full vertex list. Consequently those summaries cannot reconstruct
a general quiver path. Vertex reconstruction becomes valid under the explicit
hypothesis that every arrow space is a subsingleton, using Mathlib's existing
`toList_injective`. The positive consumer supplies that hypothesis from actual
simple-graph adjacency lifted into a quiver. The negative consumer attempts to
use vertex equality as equality of the two Bool-edge paths and must be rejected.

The later [typed edge-trace equivalence](edge-trace.md) retains source, target
and actual arrow tags to reconstruct paths in arbitrary quivers from valid
lists at a fixed root. It has its own source and native receipt; the faithful
edge-list contract of the present module remains scoped to single-object
quivers.

## Representation decisions and scope

These contracts support separate occurrence identities for repeated vertices
and preservation of complete edge identities. They complement the
[prefix representation obstruction](../../Order/Embeddings/prefix-obstruction.md).
They do not construct an unfolding of an arbitrary directed graph, equate
reachability with proof implication, or prove the Python/JSON cache refinement.
Source nodes, display occurrences, typed edges and relation roles remain
separate. The incoming taxonomy candidates retain their original `NOT_RUN`
status. The user's 16 declared method families and 215 declared records still
lack supplied individual method identities.

## Source, verification and credit

The [source](../../../../GRWTSK/Combinatorics/DirectedGraph/PathOccurrences.lean),
[positive consumers](../../../../GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/PathOccurrences.lean)
and native receipt (artifact:gitblob:437fa624f14cc2060efc88d16afb01a4578e01d2)
bind the exact selected source and controls. Pinned Lean 4.33.0 checks fresh
project objects at trust zero with fatal warnings and a complete owned-declaration
and transitive-axiom census. Only `propext`, `Classical.choice` and `Quot.sound`
are permitted. Pinned dependency objects are reused and fingerprinted, rather
than rebuilt from source.

The integration record (artifact:gitblob:aa168d97a0a6104281c4a3b2fb26acda128e348c)
and source review (artifact:gitblob:deecd189f5f80f14aa949413132a3ba7c9db8fa4)
preserve exact upstream API identities and the limits of transfer from
Anthropic's optional-weight-per-vertex-pair model. Source review is correlated
model review; it is not independent validation. No whole-library or operational
cache acceptance follows.

Human direction: grwtsk contributors. Formalization and checking assistance:
OpenAI Codex. Local source is MIT. Mathlib credits David Wärn, Kim Morrison,
Matteo Cipollina and Runtian Zhou for Path, Matteo Cipollina for Path.Vertices,
and Antoine Labelle for SingleObj; upstream Apache-2.0 terms remain retained.
No mathematical novelty is claimed.

**Current source scope.** Source links identify the existing mathematical modules. Earlier proposed bindings and verification receipts retain their recorded paths and hashes; this pointer repair records current bytes and does not claim fresh proof replay.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Combinatorics/DirectedGraph/PathOccurrences.lean`](../../../../GRWTSK/Combinatorics/DirectedGraph/PathOccurrences.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 17 |
| Theorem/lemma commands | 15 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
