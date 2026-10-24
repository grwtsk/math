# Summing weighted Gaussian-window seminorms

Let $G(Z,j)$ be the actual compact Gaussian Schwartz window and let $S$ be
a finite family of real Schwartz seminorm indices. For every real $s>0$,
there is one $C>0$, chosen before $Z$, such that for every $Z>0$,

\[
\sum_{j=0}^{\infty}(2^j)^s\sup_{(k,n)\in S}p_{k,n}(G(Z,j))
\le C Z^s,
\]

and the displayed nonnegative sequence is actually summable. The family
may be empty. The source uses the existing Schwartz map and seminorms;
it does not assume the desired summability or bound.

## Polynomial envelope and actual scalar supplier

For each natural $N$ the [uniform seminorm estimates](gaussian-window-seminorms.md)
at exponents zero and $N$ supply one $B>0$ such that

\[
\sup_{(k,n)\in S}p_{k,n}(G(Z,j))\le\frac B{(1+2^j/Z)^N}.
\]

The proof splits at $2^j/Z\le1$ to construct this envelope. It then chooses
an actual natural $N>s$ and applies the separately proved
[dyadic kernel sum](../../../Series/dyadic-kernel.md) with $t=Z^{-1}>0$.
Actual nonnegative termwise domination supplies summability and the sum
comparison. The final real-power identity turns $t^{-s}$ into $Z^s$.

The source also consumes the actual zeroth seminorm to bound weighted
window values uniformly in their real evaluation point. This is a separate
actual evaluation consumer of the seminorm series.

The [weighted and remote seminorm consumer](gaussian-remote-seminorms.md)
now adds arbitrary real scale weights and an actual remote cutoff. Bounds
at opposite weights supply a remote sum bounded by $C Z^s/A^N$ for
$Z>0,A\ge1$, including an actual norm-value consumer uniform in the
real evaluation point. This window-seminorm result remains separate from
the original Fourier-density moment and physical-row integrals.

## Domain and verification

The retained premises are $s>0$, $Z>0$ and the chosen $N>s$. For the
exact totalized function, $G(0,0,3/4)\ne0$ and $G(0,j,3/4)$ is independent
of $j$. Thus the actual weighted norms at $Z=0,s=1,y=3/4$ are not
summable. The positive module proves this obstruction and an actual
positive-scale value-series consumer before the negative consumer attempts
to supply $0\le0$ as $0<0$. No Schwartz constructor at zero or
nonsmoothness claim is used. The [scalar controls](../../../Series/dyadic-kernel.md)
separately check missing decay and scale. No statement that $s>0$ is
necessary for every stronger Gaussian estimate is inferred.

The [source](../../../../../../GRWTSK/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianDyadicSummation.lean),
[positive controls](../../../../../../GRWTSK/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianDyadicSummation.lean),
joint native receipt (artifact:gitblob:c1e7cc216dfd595390a78619196aad2f9b96b045)
and integration record (artifact:gitblob:7de1882786e4959642d1699e59f589432bab5b56)
bind the exact selected closure, including the scalar kernel and both sets
of controls. Pinned Lean 4.33.0 checks fresh local sources at trust zero
with fatal warnings and a complete owned-declaration/transitive-axiom
census allowing only `propext`, `Classical.choice` and `Quot.sound`.
Pinned dependency objects are reused and fingerprinted, without rebuilding
their sources. Correlated source/model review is not independent validation.

The actual consumer follows OpenAI's pinned
[GaussianSummation](https://github.com/openai/math/blob/1581d4cbdd69a0faf34b2089614fe2a814316a6a/lean/OAI/NumberTheory/DirichletL/Detector/GaussianSummation.lean).
Apache-2.0 terms, the OpenAI project credit and individual Mathlib authors
remain retained. Human direction: grwtsk contributors; adaptation/formalization/
checking: OpenAI Codex. Original ideal-pair, Hecke, calibration, arithmetic
summability and physical-row suppliers remain separate. No RH, whole-library,
novelty or operational cache-refinement claim is made.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Analysis/MellinTransform/GaussianDyadicSummation.lean`](../../../../../../GRWTSK/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianDyadicSummation.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 3 |
| Theorem/lemma commands | 3 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
