# Solvability from a dense joint graph core

Let $E,F$ be complete inner product spaces over an `RCLike` field and $H$ an
inner product space. Let $T:E\to F$ and $S:F\to H$ be partially defined linear
operators. Assume the actual domain of $T$ is dense, both graphs are closed,
and every actual domain element satisfies $(Tx,0)\in\operatorname{graph}(S)$.

The actual joint graph is the subtype of triples $(v,a,b)\in F\times E\times H$
such that $(v,a)\in\operatorname{graph}(T^*)$ and
$(v,b)\in\operatorname{graph}(S)$. Let $D$ be dense in this subtype. Assume
$\varepsilon>0$ and

\[
\forall (v,a,b)\in D,\qquad
\varepsilon\|v\|^2\le\|a\|^2+\|b\|^2.
\]

For every target with $(f,0)\in\operatorname{graph}(S)$,
`exists_solution_of_core_estimate` supplies an actual $u\in\operatorname{dom}(T)$
with $Tu=f$ and $\|u\|\le\|f\|/\sqrt{\varepsilon}$.

## Why the topology and estimate are both required

The inequality defines a closed subset of the joint graph: all three
coordinate norm-square functions are continuous. Its inclusion of $D$ and
density of $D$ extend the same inequality to the whole joint graph.
Evaluating the resulting bound on the triple $(v,T^*v,Sv)$ supplies the
premise of the
[full-domain complex estimate](closed-complex-solvability.md).
Completeness of $H$ is not required.

The core is dense in the joint graph topology. Separate approximation of
coordinates, membership in a source catalog or a finite sample does not
establish this premise. For zero operators on the real line, the empty core
satisfies every proposed estimate vacuously, and target one is in the second
operator's kernel. It is not dense, and the first operator cannot map any
input to one. The checked obstruction and intended rejection control retain
this missing-density boundary.

## Source, verification and credit

The [source](../../../../GRWTSK/Analysis/InnerProductSpace/JointGraphSolvability.lean)
adapts `jointGraph` and `exists_solution_of_core_estimate` from OpenAI's pinned
[ComplexSolvability source](https://github.com/openai/math/blob/1581d4cbdd69a0faf34b2089614fe2a814316a6a/lean/OAI/Analysis/InnerProductSpace/ComplexSolvability.lean),
retaining the proof and all actual-domain, density, estimate and target
hypotheses. Upstream project metadata credits OpenAI; Apache-2.0 terms remain.
The result imports the previously checked full-domain estimate rather than
editing or replacing its source.

The [positive consumers](../../../../GRWTSK/Analysis/InnerProductSpace/Checks/Positive/JointGraphSolvability.lean)
and native receipt (artifact:gitblob:5fd36c996766a898ef6ca354baae097a06fbb8af)
bind exact source bytes, controls and the complete local import closure.
Replay uses pinned Lean 4.33.0, trust zero, fatal warnings and a complete
owned-declaration/transitive-axiom audit, permitting only `propext`,
`Classical.choice` and `Quot.sound`. Pinned dependency objects are reused and
fingerprinted; no cold dependency rebuild or independent validation is claimed.

The integration record (artifact:gitblob:d49fab4a6ce08593cfd2604d966d933f3a7fffda)
retains exact assumptions, source identity and credit. Human direction:
grwtsk contributors. Local adaptation and checking assistance: OpenAI Codex.
Lean and Mathlib retain upstream authorship and licensing. A concrete analytic
or arithmetic application must supply its own operators, graph core and
estimate. No mathematical novelty, surrounding manuscript result or RH proof
is claimed.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Analysis/InnerProductSpace/JointGraphSolvability.lean`](../../../../GRWTSK/Analysis/InnerProductSpace/JointGraphSolvability.lean).

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
