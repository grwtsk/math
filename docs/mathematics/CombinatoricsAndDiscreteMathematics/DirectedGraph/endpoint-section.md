# Endpoint sections and incomparable ancestors


Fix any quiver and root $r$, and let $R$ be its root-reachable vertex
subtype. Suppose $a,b,c\in R$ satisfy
$a\rightsquigarrow c$ and $b\rightsquigarrow c$, while neither
$a\rightsquigarrow b$ nor $b\rightsquigarrow a$. There is no section
$s:R\to\operatorname{Occurrence}(r)$ that both satisfies

\[
\operatorname{reachableEndpoint}(s(x))=x
\]

and preserves every base reachability comparison as reachability between
the chosen occurrences. The relation is Mathlib's existing `Quiver.Reachable`.
No finiteness, countability, thinness or acyclicity of the base is assumed.

## Why a right inverse is insufficient

The [chosen-path section](occurrence-prefix.md) is an actual endpoint right
inverse. Such a section also reflects any occurrence reachability comparison
back to the base: project an actual occurrence path and use the endpoint
identities. If it preserved every source comparison as well, its complete
typed traces would preserve and reflect base reachability as list prefixes.

The existing [common-upper prefix obstruction](../OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/prefix-obstruction.md)
then applies: two ancestors of the same finite-list address must be prefix
comparable. The two incomparable base ancestors contradict reflection. The
proof reuses that obstruction and the exact occurrence-prefix equivalence;
it introduces no new path, ancestry relation or generic order theorem.

## The actual diamond control

The concrete quiver reuses the existing four-node `Diamond` and `DiamondLe`,
with actual arrows `PLift (DiamondLe a b)`. Reachability equals `DiamondLe`.
Every vertex is reachable from bottom; left and right reach top and cannot
reach one another. This quiver is reflexive, transitive and thin: it includes
identity loops and the bottom-to-top shortcut. It is not the four-edge Hasse
DAG, and its finite vertex set does not make the occurrence set finite.

The controls prove that the actual chosen section remains a right inverse
but cannot preserve all reachability. The negative consumer attempts to
substitute endpoint-right-inverse data for the missing preservation claim.
This does not assert that the repository's current operational taxonomy
already contains such a diamond.

## Source, verification and credit

The [source](../../../../GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/EndpointSection.lean),
[positive controls](../../../../GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/EndpointSection.lean),
native receipt (artifact:gitblob:c4ad977acd61fa0cfd50d0b6b29b7f6f73917843)
and integration record (artifact:gitblob:43f7c6a031dba34e6707b02823be68d04039e765)
bind the selected exact closure. Pinned Lean 4.33.0 checks fresh selected
local objects at trust zero with fatal warnings and the complete
owned-declaration/transitive-axiom census permitting only `propext`,
`Classical.choice` and `Quot.sound`. Pinned dependency objects are reused
and fingerprinted; their sources are not rebuilt. Correlated source/model
review supplies no independent validation.

Local source is MIT. Lean and Mathlib retain their named author credit and
Apache-2.0 terms. Human direction: grwtsk contributors; formalization/checking
assistance: OpenAI Codex. No arbitrary base-graph prefix embedding, executable
cache expansion, proof implication, permission authority or Lean/runtime
correspondence is inferred.

**Current source scope.** Source links identify the existing mathematical modules. Earlier proposed bindings and verification receipts retain their recorded paths and hashes; this pointer repair records current bytes and does not claim fresh proof replay.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Combinatorics/DirectedGraph/EndpointSection.lean`](../../../../GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/EndpointSection.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 5 |
| Theorem/lemma commands | 3 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
