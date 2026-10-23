# Solvability from a closed complex estimate

Let $E,F$ be complete inner product spaces over an `RCLike` field and $H$ an
inner product space; completeness of $H$ is not required. Let $T:E\to F$ and
$S:F\to H$ be partially defined linear operators. Assume:

- The actual domain of $T$ is dense, and both operator graphs are closed.
- Every $x\in\operatorname{dom}(T)$ satisfies $(Tx,0)\in\operatorname{graph}(S)$.
- A real constant $\varepsilon>0$ satisfies, for every actual
  $v\in\operatorname{dom}(T^*)\cap\operatorname{dom}(S)$,
  $\varepsilon\|v\|^2\le\|T^*v\|^2+\|Sv\|^2$.
- The target satisfies $(f,0)\in\operatorname{graph}(S)$.

Then `exists_solution_of_complex_estimate` supplies
$u\in\operatorname{dom}(T)$ with $Tu=f$ and
$\|u\|\le\|f\|/\sqrt{\varepsilon}$. The estimate is an explicit premise.

## Proof and actual domains

Closedness of $S$ makes its graph kernel a closed subspace of $F$.
Orthogonally decompose an adjoint-domain vector into its kernel component and
orthogonal complement. The relation $ST=0$, expressed through actual graph
membership, makes the orthogonal component belong to the adjoint domain with
zero adjoint value. The coercive estimate bounds the kernel component.
Cauchy–Schwarz then supplies the universal pairing bound required by the
[closed-operator solvability theorem](closed-operator-solvability.md).

No domain is silently replaced by the whole ambient space. Neither graph
closedness, the complex relation nor target kernel membership supplies the
coercive estimate. Concrete consumers and a missing-estimate rejection control
check this distinction for actual partial operators.

## Source, verification and credit

The [source](../../../../GRWTSK/Analysis/InnerProductSpace/ClosedComplexSolvability.lean)
adapts the third theorem of OpenAI's pinned
[ComplexSolvability source](https://github.com/openai/math/blob/1581d4cbdd69a0faf34b2089614fe2a814316a6a/lean/OAI/Analysis/InnerProductSpace/ComplexSolvability.lean),
retaining its proof and exact hypotheses. Upstream project metadata credits
OpenAI. The adapted file retains Apache-2.0 terms. The subsequent
[dense joint-graph core theorem](joint-graph-solvability.md) has its own source
and selected replay, retaining its exact topology and density premise.

The [positive consumers](../../../../GRWTSK/Analysis/InnerProductSpace/Checks/Positive/ClosedComplexSolvability.lean)
and native receipt (artifact:gitblob:0197b5dece18431170837019f7cf57b63583d173)
bind exact bytes, native commands, controls and the complete owned-declaration
and transitive-axiom census. Replay uses pinned Lean 4.33.0, trust zero and fatal
warnings, permitting only `propext`, `Classical.choice` and `Quot.sound`.
Pinned dependency objects are reused and fingerprinted. This is not a cold
Mathlib rebuild, whole-repository acceptance or independent review.

The integration record (artifact:gitblob:1168435e9ab647c3f014c75ff2b224e5796e5f05)
retains source identity, credit and limits. Human project direction:
grwtsk contributors. Local adaptation and checking assistance: OpenAI Codex.
Lean and Mathlib retain upstream authorship and licensing. No mathematical
novelty, arithmetic supplier, surrounding manuscript result or RH proof is
claimed.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Analysis/InnerProductSpace/ClosedComplexSolvability.lean`](../../../../GRWTSK/Analysis/InnerProductSpace/ClosedComplexSolvability.lean).

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
