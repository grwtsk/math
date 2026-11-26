# Sunflower reduction and exact bounded hitting objectives

Local attribution: grwtsk contributors.

The reduction rule is classical. Max Bannach, Malte Skambath and Till Tantau
state the rule in [Kernelizing the Hitting Set Problem in Linear Sequential and
Constant Parallel Time, SWAT 2020, Rule 1.2](https://doi.org/10.4230/LIPIcs.SWAT.2020.9).
The sharper family-size supplier is OpenAI, [An exponential bound for
sunflowers, November 24, 2026, Theorem 1.1](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/preprints/An-exponential-bound-for-sunflowers-November-24-2026/paper.pdf).
The [pinned Comparator statement](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/ComparatorChallenges/Sunflower.lean#L13-L17)
is `OAI.Combinatorics.Sunflower.erdosRadoSunflower`. It supplies a natural base
$C\ge 1$ for each $r\ge3$, before choosing the width and ground type. The
paper also states the quantitative base with $H=\log_2(2r)$ and
$L=\log_2(2H)$, and $\log_2 B_r=O(H^4L^{5/2})$. That quantitative
supplier is outside the Comparator statement.

## Exact return to the search objective

Let $F$ be a finite family of edges and let $G\subseteq F$ consist of $r$
different edges satisfying $A\cap B=K$ for any two distinct members. Replace
$F$ by $F'=(F\setminus G)\cup\{K\}$. When $r>1$, the core $K$ lies in
every edge of $G$. Any $H$ hitting the new instance hits every edge of the
old instance.

Conversely suppose $H$ hits every edge of $G$ and avoids $K$. Choose one
point in $H\cap A$ for each $A\in G$. A point chosen twice would lie in the
intersection of the two corresponding edges and hence in $K$. The choice
map therefore injects $G$ into $H$. This contradicts $|H|<r$. Edges
outside $G$ are retained. The same $H$ is thus feasible on each side, for
every $H$ of size at most $b<r$. Any fixed scoring function or readout on
$H$ takes identical values on the two feasible collections, including ties
and infeasibility. The intersection test and the chosen search observable are
different data.

This pointwise return allows the identity on feasible $H$ to witness a
source-covering span in either direction under the existing
[`CertifiedTransversal.Transversal.ofFunction`](../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CertifiedTransversal.lean)
interface. For a finite hypergraph, the edge family is the `Finset` pullback
of its set-of-edges presentation. A deployment optimizing another objective
has to prove its exact candidate-to-hitting-set correspondence. A resource
budget of a different kind bounds the number of selected vertices only if a
separate comparison proves it. Costs of preprocessing or locating a sunflower
need their own bounds.

## Existence and the edge count

The replacement deletes $r$ edges and inserts at most one. Each retained
edge or inserted core lies in an original edge, preserving the maximum width.
Induction on the number of edges gives a sunflower-free $F^\ast$ with the
same pointwise objective. To apply a uniform-width bound, pad each edge $A$
of cardinality at most $k$ with $k-|A|$ tags private to $A$, using the
disjoint ground type $\alpha\sqcup(\operatorname{Finset}(\alpha)\times\mathbb N)$.
The map is injective and has image in the $k$-sets. Any sunflower in the
padded image pulls back to a sunflower of $F^\ast$, by restricting each
pairwise intersection to the original ground type. Thus the family-size cap
$C^k$ follows from the uniform theorem. In the formal interface the uniform
theorem is an explicit premise with its full quantifier order. Supplying it
from the pinned upstream theorem is a separate specialization check.
For a budget $b$, taking $r=\max(3,b+1)$ meets both hypotheses. The result
bounds the number of remaining edges. It leaves the search and preprocessing
costs to their execution models.

The restriction $b<r$ is sharp for this replacement. Take $r$ pairwise
disjoint singleton edges and their union as $H$. The old family is feasible
at budget $r$. The replacement contains the empty core and is infeasible.
For arbitrary unbounded proof search, deleting a petal can also change a
feasibility constraint. No complexity transfer follows solely from existence
of a smaller edge family.

## Local evidence

The canonical module is `SunflowerHittingSet.lean` in `GRWTSK/Combinatorics`.
Its proof declares `hitsEvery_replaceCore_iff`, `card_replaceCore_lt`,
`exists_sunflowerFree_hittingEquivalent`, `exists_sunflower_of_widthBound`
and `exists_bounded_hittingEquivalent`. The source compiled at SHA-256
`3bae7e4b8c57fbc70fee3e9c471d5877453f527a301547dd44beadc0bf35ba53`
with Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
The transitive `#print axioms` checks under `--trust=0` for `HitsEvery`
and each named theorem returned only `propext`, `Classical.choice` and
`Quot.sound`.
The identity-span adapter `SunflowerHittingTransversal.lean` compiled at
Git blob `babbfaa4c38ba0f01c70f3f66e81a6689ed6610e` and uses the same
three axioms in `transversal_of_hittingEquivalent`.
`leanchecker --fresh -v GRWTSK.Combinatorics.SunflowerHittingTransversal`
exited 0 and replays the closure containing both sunflower modules and the
existing certified-transversal module.
The upstream specialization and its Comparator replay have status `NOT_RUN`
in this module's qualification scope.
