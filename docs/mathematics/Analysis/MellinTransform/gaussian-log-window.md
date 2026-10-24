# Compact logarithmic Gaussian windows and Fourier density moments

Let $V:\mathbb R\to\mathbb C$ be an actual Schwartz map with compact
support, and define the actual Schwartz log-window and Fourier density by
\[
W_R(s)=V(s)F(R,s),\qquad D_R=\widehat{W_R},
\]
using the [entire logarithmic flow](gaussian-log-flow.md). For every real
$a$ and natural $J$, one constant $C(V,a,J)>0$ works for all $R>0$:
\[
\int_{\mathbb R}(1+|t|)^J|D_R(t)|\,dt\le C(V,a,J)R^{-a}.
\]
The weighted norm is proved integrable for every real $R$. The uniform
power bound above retains $R>0$. For positive $R$, the actual
Fourier integrand is $V(s)P(R e^s)$, with the pinned forward phase
$e^{-2\pi i s t}$. This identifies the exact log-window density object.

## Actual compact-support and seminorm suppliers

Compactness supplies a finite support box $|s|\le L$ with $L\ge0$.
The real product rule combines the actual flow derivative bounds with
Schwartz derivative bounds for $V$. Outside the support box the window is
locally zero, so every iterated derivative vanishes. These facts give
actual seminorm bounds $p_{k,n}(W_R)\le C(V,a,k,n)R^{-a}$.

For $p$ equal to Lebesgue measure's pinned `integrablePower`, the finite
source family contains both weights $0,p$ at every derivative index through
$J+p$. Positive-$R$ power cancellation supplies the actual paired source
budget required by the separately proved
[generic Fourier moment transfer](../HarmonicAnalysis/FourierAnalysis/schwartz-moments.md).
Its integrability theorem and integral bound yield the displayed result.
Neither the desired moment nor convergence is assumed as a supplier.

The controls check actual windows and source premises. The negative use
omits the support-box evidence required by the seminorm producer; it cannot
replace that evidence with an unrelated nonnegativity proof. The compact
window construction itself is valid at every real $R$; the positive-profile
identity and the stated uniform power bound retain $R>0$.

The [actual density-moment sums](gaussian-density-moments.md) now consume
this exact Fourier-density producer. They prove weighted dyadic summability
and uniform bounds, together with remote cutoff bounds. A nonzero-window
and Fourier-inverse argument supplies actual positive norm integral and a
complete zero-cutoff obstruction. This is a different quantity from the
prior finite-seminorm sums.

## Source, verification and limits

The [source](../../../../GRWTSK/Analysis/MellinTransform/GaussianLogWindow.lean),
[positive controls](../../../../GRWTSK/Analysis/MellinTransform/Checks/Positive/GaussianLogWindow.lean),
joint native receipt (artifact:gitblob:993e30f85c17fcf6f0e982a7558026cb592a6c3b)
and integration record (artifact:gitblob:27d08216144154c038d4e4d694e8994adafbb652)
bind exact fresh selected local sources and controls. Pinned Lean 4.33.0
checks trust zero, fatal warnings and the full owned-declaration and
transitive-axiom census, allowing only `propext`, `Classical.choice` and
`Quot.sound`. The flow and window share one analytic census, counted once.
Clean pinned dependency objects are reused and fingerprinted, without a
cold dependency rebuild or whole-umbrella replay.

The actual window and estimates are adapted from OpenAI's pinned
[GaussianLogWindow](https://github.com/openai/math/blob/1581d4cbdd69a0faf34b2089614fe2a814316a6a/lean/OAI/NumberTheory/DirichletL/Detector/GaussianLogWindow.lean);
the density definition follows
[GaussianCoupled](https://github.com/openai/math/blob/1581d4cbdd69a0faf34b2089614fe2a814316a6a/lean/OAI/NumberTheory/DirichletL/Detector/GaussianCoupled.lean).
Apache-2.0 terms, OpenAI project credit and individual Mathlib author credits
remain retained. Human direction: grwtsk contributors; local adaptation,
formalization and checking: OpenAI Codex. Correlated review is not independent
validation.

This density is a different family from the prior dyadic Gaussian-window
Fourier transform. Full coupled separation/cutoff, sums of density moments,
row majorants, ideal/Hecke/calibration and common physical-row support remain
open, as do the original physical detector and RH. No novelty, whole-library
or operational cache-refinement acceptance is inferred.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Analysis/MellinTransform/GaussianLogWindow.lean`](../../../../GRWTSK/Analysis/MellinTransform/GaussianLogWindow.lean).

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
