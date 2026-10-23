# Closed operator solvability from adjoint bounds

Let $E$ and $F$ be complete inner product spaces over an `RCLike` field, and let
$T:E\to F$ be a partially defined linear operator. Assume its actual domain is
dense and its graph is closed. If $C\ge0$ and

\[
\forall v\in\operatorname{dom}(T^*),\qquad
|\langle f,v\rangle|\le C\|T^*v\|,
\]

then `exists_solution_of_adjoint_bound` gives an actual domain element $u$ with
$Tu=f$ and $\|u\|\le C$. No closed-range, bounded-operator or injectivity
hypothesis is added. The universal bound is a premise; this result does not
supply it for an arbitrary operator.

## Recovering graph membership

The supporting theorem `mem_graph_of_adjoint_identity` assumes an element $u$
of $E$ and the exact weak identity

\[
\forall v\in\operatorname{dom}(T^*),\qquad
\langle u,T^*v\rangle=\langle f,v\rangle.
\]

It concludes $(u,f)\in\operatorname{graph}(T)$. Both density of the domain and
closedness of the graph remain explicit. The proof uses the orthogonal double
complement of the graph in the Hilbert product space; closedness turns its
closure back into the graph.

For the norm estimate, the adjoint pairing bound defines a bounded functional
on the range of $T^*$. The bound makes it vanish on the kernel before passing
to that range. Hahn–Banach extends the functional without increasing its norm,
Riesz representation supplies $u$, and the graph-membership theorem supplies
the actual domain solution.

## Checked consumers and obstruction

Generic consumers retain every hypothesis. A concrete total zero operator on
$\mathbb R$, target zero and bound zero checks the boundary case through the
actual theorem. For the same dense closed operator, target one has no solution;
its universal adjoint pairing identity fails. The negative consumer proves
these concrete obstructions and then rejects an application that leaves the
pairing premise unpaid. Density and closedness alone do not supply a solution
for every target.

## Source, verification and credit

The [source](../../../../GRWTSK/Analysis/InnerProductSpace/ClosedOperatorSolvability.lean)
adapts only the first two supporting results from OpenAI's
[ComplexSolvability formalization](https://github.com/openai/math/blob/1581d4cbdd69a0faf34b2089614fe2a814316a6a/lean/OAI/Analysis/InnerProductSpace/ComplexSolvability.lean).
The subsequent [Hilbert-complex estimate](closed-complex-solvability.md) has its
own source and selected replay; the
[dense joint-graph core estimate](joint-graph-solvability.md) has a separate
source and replay retaining its density and coercivity premises.
Upstream project metadata names OpenAI as formalization author;
the adapted file retains Apache-2.0 terms and its precise source pin.

The [positive consumers](../../../../GRWTSK/Analysis/InnerProductSpace/Checks/Positive/ClosedOperatorSolvability.lean)
and fresh selected receipt (artifact:gitblob:86d2e65bc3b019b56e63195a64f55f1742361663)
bind actual source bytes, native commands, controls and the complete owned
axiom census. Replay uses pinned Lean 4.33.0, trust zero and fatal warnings,
permitting only `propext`, `Classical.choice` and `Quot.sound`. Pinned dependency
objects are reused and fingerprinted. This does not claim a cold Mathlib rebuild,
whole-repository acceptance, independent review or a surrounding manuscript's
main result. The
integration record (artifact:gitblob:79cd2a9a6c399fef9f3ce79737fe32b26c9a09fe)
retains exact assumptions, source identity, contribution roles and limits.

Human project direction: grwtsk contributors. Local adaptation and checking
assistance: OpenAI Codex. Mathlib retains upstream authorship and Apache-2.0
licensing. The port claims no mathematical novelty or RH supplier.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Analysis/InnerProductSpace/ClosedOperatorSolvability.lean`](../../../../GRWTSK/Analysis/InnerProductSpace/ClosedOperatorSolvability.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | Unavailable |
| Theorem/lemma commands | Unavailable |

Source-command totals are unavailable for this primary source.

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
