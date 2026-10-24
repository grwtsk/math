# Uniform Schwartz seminorms of Gaussian windows

Let $A$ be the exact smooth dyadic annulus, $P$ the normalized logarithmic
Gaussian and $G(Z,j,y)=A(y)P(2^j y/Z)/\sqrt y$. For every real $a$ and
natural $k,n$, there is one $C>0$ such that

\[
\forall Z>0\;\forall j\in\mathbb N,\qquad
p_{k,n}\bigl(G(Z,j,\cdot)\bigr)\le C(2^j/Z)^{-a}.
\]

Here $G$ denotes the actual [compact-window Schwartz map](compact-gaussian-window.md)
and $p_{k,n}$ is Mathlib's existing real Schwartz seminorm. The constant may
depend on $a,k,n$, but is independent of $Z,j$.

For every finite seminorm family $S$ there is likewise one constant for
its supremum. For every real exponent $b$ the actual estimates at $b$ and
$-b$ give a two-sided bound

\[
\sup_{(k,n)\in S}p_{k,n}(G(Z,j,\cdot))
\le C\min\bigl((2^j/Z)^b,(2^j/Z)^{-b}\bigr).
\]

The constant is chosen before $Z,j$. An empty family is allowed.

## Actual product-rule and support suppliers

The source uses the fixed factor $H(y)=A(y)/\sqrt y$, proves that it is
smooth and compactly supported, and packages its actual Schwartz map.
It proves the exact factorization

\[
G(Z,j,y)=H(y)P\bigl((2^j/Z)y\bigr).
\]

For positive $Z$, the scale $r=2^j/Z$ is positive. On $[1/2,2]$, the actual
iterated product rule combines fixed-factor derivative seminorms with the
[uniform scaled Gaussian derivative bounds](scaled-gaussian-derivatives.md).
The finite sum of these proved bounds supplies one constant for the
window's derivative order. Outside this closed interval the cutoff is
locally zero, so every actual derivative vanishes. On the interval,
$|y|^k\le2^k$ supplies the weight in the Schwartz seminorm. Finite-family
suprema and the two-sided minimum use the same actual estimates.

No uniform window bound is assumed as a premise. A fixed-scale Schwartz
object alone would not supply these constants.

The [weighted summation consumer](gaussian-dyadic-summation.md) now uses
these actual estimates at exponents zero and a natural $N>s$ to derive
a polynomial envelope. Its separately proved scalar dyadic kernel supplies
actual weighted seminorm summability and a bound $C(s,S)Z^s$. Evaluation
through the zeroth seminorm also gives actual weighted norm-value sums
with one constant independent of the real evaluation point.

The [Fourier-moment consumer](gaussian-fourier-moments.md) supplies a
concrete finite source family through order $J+p$, where $p$ is Lebesgue
measure's `integrablePower`. The separately proved generic Fourier transfer
and actual positive-scale cancellation give integrability and a uniform
one-plus Fourier norm moment bounded by $C(a,J)(2^j/Z)^{-a}$.

## Positive-scale control

For the exact totalized functions, $G(0,0,3/4)\ne0$: the annulus and $P(0)$
are nonzero and the square-root denominator is nonzero. At exponent one,
the proposed right side at $Z=0$ is $C\cdot0^{-1}=0$. This gives an actual
function-level counterexample to broadening the uniform derivative bound
to nonnegative $Z$. The positive module proves this obstruction before
the negative consumer attempts to remove strict positivity.

This counterexample needs no Schwartz constructor at zero and makes no
nonsmoothness claim. Ideal-pair coefficients, Hecke and calibration inputs,
arithmetic summability and physical-row suppliers remain separate.

## Source, verification and credit

The [source](../../../../../../GRWTSK/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianWindowSeminorms.lean),
[positive controls](../../../../../../GRWTSK/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianWindowSeminorms.lean),
native receipt (artifact:gitblob:b8478ec9682ed167d5286559aaf1f415ef52f20f)
and integration record (artifact:gitblob:aaa9b9f3ad0f9eadbeb4cd5a5d538d79d781e923)
bind the exact selected closure. Lean 4.33.0 checks fresh local sources at
trust zero with fatal warnings and a complete owned-declaration/transitive-
axiom census permitting only `propext`, `Classical.choice` and `Quot.sound`.
Clean pinned dependency objects are reused and fingerprinted; their sources
are not rebuilt. Correlated source/model review is not independent validation.

The exact supplier chain follows OpenAI's pinned
[GaussianSeminorm](https://github.com/openai/math/blob/1581d4cbdd69a0faf34b2089614fe2a814316a6a/lean/OAI/NumberTheory/DirichletL/Detector/GaussianSeminorm.lean).
Apache-2.0 terms remain retained, alongside individual Mathlib
Schwartz-space, smooth-transition, square-root and derivative author credits
in the source and NOTICE. Human direction: grwtsk contributors; local
adaptation/formalization/checking: OpenAI Codex. No novelty, whole-library
or RH admission, or operational cache refinement is claimed.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Analysis/MellinTransform/GaussianWindowSeminorms.lean`](../../../../../../GRWTSK/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianWindowSeminorms.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | Unavailable |
| Theorem/lemma commands | Unavailable |

Source-command totals are unavailable for this primary source.

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
