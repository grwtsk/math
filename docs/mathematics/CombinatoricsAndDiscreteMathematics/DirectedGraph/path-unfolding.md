# Unfolding all rooted path occurrences


Fix a root $r$ in any quiver $V$. An occurrence wraps an existing
`Quiver.PathStar r`: an endpoint $v$ and an actual finite typed path from $r$
to $v$. An extension from occurrence $p$ to occurrence $q$ carries an actual
base arrow $e:p.endpoint\to q.endpoint$ together with equality of $q$ and
$p$'s history extended by $e$.

This extension quiver is an arborescence rooted at the empty-path occurrence.
Every occurrence has a unique actual path from that root. No finiteness,
countability, decidable equality or connectedness of the base is assumed.
Mathlib's `Quiver.Path` permits repeated vertices and arrows; these are directed
walks in conventions that reserve “path” for nonrepeating walks.

## Exact projection and lifting

The projection sends an occurrence to its endpoint and an extension to the
actual base arrow it carries. It is bijective on each outgoing star. For every
chosen occurrence $p$ and every base suffix path starting at $p.endpoint$,
there is a unique lifted path starting at $p$ whose projection is that suffix.
The canonical lift of a rooted base history projects to that exact history.
Every actual lifted path also retains its endpoint occurrence exactly as the
starting history composed with the projected suffix.

The endpoint image is exactly the set of root-reachable vertices:

\[
(\exists p,\ p.endpoint=v)\quad\Longleftrightarrow\quad
\operatorname{Nonempty}(\operatorname{Quiver.Path}(r,v)).
\]

Consequently, surjectivity onto every base vertex is equivalent to reachability
of every base vertex from $r$. Distinct histories remain distinct occurrences,
even when they reach the same base vertex. Height is actual history length;
every extension increases it by one. The proof reuses Mathlib's arborescence
height/parent criterion and outgoing-star finite-lifting theorem.

## Why full covering does not follow

The empty occurrence has no incoming edge. Whenever the base root has an
incoming edge, the projection therefore fails incoming-star surjectivity and
is not a full `Prefunctor.IsCovering`. Outgoing lifting retains its proved
bijection. The controls use an actual loop/parallel-edge base and check this
failure together with genuine outgoing path lifts and repeated endpoints.
The negative consumer attempts to use outgoing data as full covering evidence
and must be rejected at the intended type.

This construction retains all rooted path occurrences. A geodesic subtree of
the base chooses one shortest path to each vertex and has different coverage.
No universal property, source-node prefix embedding, executable enumerator or
Python/JSON relation-trace correspondence is asserted. The
[typed edge-trace equivalence](edge-trace.md) has its own exact list contracts;
operational graph interpretation and proof/permission roles remain separate.

The [occurrence-prefix equivalence](occurrence-prefix.md) separately relates
actual unfolding reachability to full typed trace prefixes. It also records
why selecting one history for each reachable base vertex loses occurrence
identity. Its own source and native receipt carry those additional claims.

## Source, verification and credit

The [source](../../../../GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding.lean),
[positive consumers](../../../../GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding.lean)
and native receipt (artifact:gitblob:485901552126708676a6deeca8147d1519c0d46b)
bind exact bytes and controls. Fresh selected project objects and accepted
controls use pinned Lean 4.33.0, trust zero, fatal warnings and a complete
owned-declaration/transitive-axiom census permitting only `propext`,
`Classical.choice` and `Quot.sound`. Generated project objects are fingerprinted
and rechecked. Pinned dependency objects are reused and fingerprinted rather
than rebuilt from source.

The integration evidence (artifact:gitblob:98560dea424edb9f0e3e81508e29e602d5b1ac91)
and source review (artifact:gitblob:123f10e5120781fd57d61e1dcd0101e4b89e7aeb)
preserve attribution, source identities and coverage limits. Courcelle's
[arXiv construction](https://arxiv.org/abs/2212.07205v3) supplies closely matching
context, with its own countability, connectedness and terminology conventions;
its full theorem or universal properties are not transferred by citation.
Source/model review is correlated, not independent validation.

Local source is MIT. Mathlib credits David Wärn for Arborescence, Antoine Labelle
and Rémi Bottinelli for Covering, and its named Path authors; upstream
Apache-2.0 terms remain retained. Human direction: grwtsk contributors.
Formalization and checking assistance: OpenAI Codex. No mathematical novelty,
whole-library admission or runtime refinement is claimed. The 16 declared
method families and 215 declared records still lack supplied method identities.

**Current source scope.** Source links identify the existing mathematical modules. Earlier proposed bindings and verification receipts retain their recorded paths and hashes; this pointer repair records current bytes and does not claim fresh proof replay.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Combinatorics/DirectedGraph/PathUnfolding.lean`](../../../../GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 31 |
| Theorem/lemma commands | 17 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
