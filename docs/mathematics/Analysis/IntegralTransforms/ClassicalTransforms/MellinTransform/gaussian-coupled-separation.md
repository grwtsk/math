# Coupled Gaussian separation for finite window families

Let $\iota$ be finite, $W_i:\mathbb R\to\mathbb C$, $a_i\in\mathbb R$,
and $M_i\ge0$. Suppose $W_i(y)\ne0$ implies $|y|\le M_i$. Put
$T=\sum_i |a_i|M_i$ and choose the actual
[compact smooth Schwartz cutoff](../../../RealAnalysis/DifferentialCalculus/compact-cutoff.md) $V=\phi_T$.
This choice precedes every positive scale $R$ and every parameter tuple $y$.
With $P$ the actual normalized logarithmic Gaussian and $D_{V,R}$ the actual
[log-window Fourier density](gaussian-log-window.md), the pointwise identity is
\[
\Bigl(\prod_i W_i(y_i)\Bigr)P\Bigl(R\exp(\sum_i a_i y_i)\Bigr)
=\int_{\mathbb R}\Bigl(\prod_i
W_i(y_i)e^{2\pi i t a_i y_i}\Bigr)D_{V,R}(t)\,dt.
\]

## Actual Fourier inversion and bounds

The proof uses the actual positive-phase Schwartz inverse and the finite
product phase identity. A nonzero window product supplies the active cutoff;
a zero product is treated directly. No desired Fourier evaluation or Fubini
identity is assumed, and no smoothness or integrability of $W_i$ is needed
for this pointwise parameter identity. The actual frequency density supplies
integrability. Its existing natural moments have uniform all-real-exponent
power bounds, with constants chosen before $R>0$.

## Checked boundaries

The controls exercise the actual cutoff, active support argument, finite
product phase normalization, zero-product and empty-family cases. With a
literal zero Schwartz cutoff, a single constant-one window, $R=1$ and zero
phase, the density integral is zero while $P(1)$ is a nonzero coefficient.
This proves that omitting the active-cutoff premise fails before the sole
intended negative use.

## Source, verification and limits

The [source](../../../../../../GRWTSK/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianCoupledSeparation.lean),
[positive controls](../../../../../../GRWTSK/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianCoupledSeparation.lean),
native receipt (artifact:gitblob:e441245ed821fcd9d4711747c6d207e98a9c5e6e)
and integration record (artifact:gitblob:b34d445ef72b82a367e7da8898c3f3bdd7bc0c17)
bind exact fresh selected local sources and controls. The generic cutoff shares
this analytic replay and its census is counted once. Pinned Lean 4.33.0 checks
trust zero, fatal warnings and every owned declaration and transitive axiom,
allowing only `propext`, `Classical.choice` and `Quot.sound`. Clean pinned
dependency objects are reused and fingerprinted; their sources and the whole
umbrella are not rebuilt.

The proof slices adapt OpenAI's pinned
[GaussianCoupled](https://github.com/openai/math/blob/1581d4cbdd69a0faf34b2089614fe2a814316a6a/lean/OAI/NumberTheory/DirichletL/Detector/GaussianCoupled.lean)
and [LogProfiles](https://github.com/openai/math/blob/1581d4cbdd69a0faf34b2089614fe2a814316a6a/lean/OAI/NumberTheory/DirichletL/Mellin/LogProfiles.lean).
Apache-2.0 terms, OpenAI project credit and individual Mathlib author credits
remain retained. Human direction: grwtsk contributors; adaptation/formalization/checking:
OpenAI Codex. Correlated review is not independent validation.

The [annular quotient separation](gaussian-annular-separation.md) now consumes
this actual family on Option slots, with one annulus factor and negatively
weighted logarithmic quotient factors. It retains the exact Fourier sign,
positive-variable hypotheses and square-root normalization.

Actual physical rows and their common finite support, row majorants,
ideal/Hecke/calibration suppliers, the original detector and RH remain open.
No unconditional arithmetic, whole-library or operational cache refinement
acceptance is inferred.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Analysis/MellinTransform/GaussianCoupledSeparation.lean`](../../../../../../GRWTSK/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianCoupledSeparation.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 10 |
| Theorem/lemma commands | 9 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
