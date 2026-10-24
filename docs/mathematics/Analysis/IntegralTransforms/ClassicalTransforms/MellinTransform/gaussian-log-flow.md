# Entire Gaussian flow in logarithmic coordinates

Let
\[
c=((2\pi)^{-1}:\mathbb C)\,\pi^{1/2},\qquad
F(R,z)=c\exp\!\left(-\frac{(\log R+z)^2}{4}\right).
\]
For every real $R$, this is an entire function of the complex variable $z$.
For $R>0$ and real $s$, its real restriction satisfies
\[
F(R,s)=P(R e^s),
\]
where $P$ is the existing normalized logarithmic Gaussian Mellin profile.
The positive-scale hypothesis cannot be dropped from the uniform identity;
the controls give $R=0,s=1$ as a counterexample.

## Uniform disk and derivative estimates

For real $a$, $L\ge0$, and natural $n$, there is a constant $C(a,L,n)>0$
chosen before all $R>0$ and all real $|y|\le L$ such that
\[
\left|\frac{d^n}{dy^n}F(R,y)\right|\le C(a,L,n)R^{-a}.
\]
The proof first bounds the actual entire function on the complex unit disk
around each such $y$, by completing the square in the real exponent.
The complex Cauchy estimate gives the derivative bound. A proved restriction
identity relates the actual iterated complex derivatives to those of the
real restriction. No desired derivative estimate is assumed.

## Zero-scale identity obstruction

Lean totalizes $\log 0=0$. At $R=0,s=1$, the actual flow is
$c\exp(-1/4)$, whereas $P(0 e)=P(0)=c\ne0$. The positive controls prove
these values differ. The negative control then attempts the positive-scale
identity with insufficient scale evidence. This is a failure of that
identity at zero, without a claim that the flow is nonsmooth or that a
complete zero-scale Fourier-moment theorem fails.

## Source and verification

The [source](../../../../../../GRWTSK/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianLogFlow.lean),
[positive controls](../../../../../../GRWTSK/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianLogFlow.lean),
joint native receipt (artifact:gitblob:993e30f85c17fcf6f0e982a7558026cb592a6c3b)
and integration record (artifact:gitblob:ae534d8426b2d86e2a5e46d6ec894c3df370f523)
bind exact fresh selected local sources and controls. Pinned Lean 4.33.0
checks trust zero, fatal warnings and the complete owned-declaration and
transitive-axiom census, allowing only `propext`, `Classical.choice` and
`Quot.sound`. The flow and log-window share one analytic census; it is not
counted twice. Clean pinned dependency objects are reused and fingerprinted;
their sources and the whole umbrella are not rebuilt.

This exact definition and proof slice is adapted from OpenAI's pinned
[GaussianFlow](https://github.com/openai/math/blob/1581d4cbdd69a0faf34b2089614fe2a814316a6a/lean/OAI/NumberTheory/DirichletL/Detector/GaussianFlow.lean).
Apache-2.0 terms, OpenAI project credit and individual imported Mathlib
credits are retained. Human direction: grwtsk contributors; local adaptation,
formalization and checking: OpenAI Codex. Correlated review is not independent
validation. The [compact log-window](gaussian-log-window.md) is an actual
consumer; arithmetic, physical and RH suppliers remain separate.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Analysis/MellinTransform/GaussianLogFlow.lean`](../../../../../../GRWTSK/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianLogFlow.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 6 |
| Theorem/lemma commands | 5 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
