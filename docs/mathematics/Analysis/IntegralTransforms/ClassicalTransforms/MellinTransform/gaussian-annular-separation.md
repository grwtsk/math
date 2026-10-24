# Annular logarithmic quotient Gaussian separation

Let the index type be finite, let $W_i:\mathbb R\to\mathbb C$, and let
$M_i\ge0$. Suppose $W_i(\exp y)\ne0$ implies $|y|\le M_i$. Write $A$ for
the actual smooth dyadic annulus and $P$ for the normalized logarithmic Gaussian.
There is an actual compact Schwartz cutoff $V$, chosen before all $R>0$,
$x>0$ and positive tuples $q_i$, such that
\[
A(x)\Bigl(\prod_i W_i(q_i)\Bigr)P\Bigl(\frac{Rx}{\prod_i q_i}\Bigr)
=\int_{\mathbb R}A(x)e^{2\pi i t\log x}
\prod_i\bigl(W_i(q_i)e^{-2\pi i t\log q_i}\bigr)D_{V,R}(t)\,dt.
\]
Here $D_{V,R}$ is the actual Gaussian log-window Fourier density. The exact
frequency integrand is integrable. The same density supplies its existing
uniform natural moments, with constants chosen before positive scale.
No smoothness or integrability of the individual $W_i$ is assumed for this
pointwise parameter identity.

## Actual slots and normalization

The proof applies the checked [coupled family](gaussian-coupled-separation.md)
to Option slots: one annulus slot with slope $+1$, and each supplied window
with slope $-1$. It derives annular logarithmic support and the actual identity
$\exp(\log x-\sum_i\log q_i)=x/\prod_i q_i$ from positivity, then proves the
exact phase-product law. It assumes no desired separation identity.

The existing fixed window is $A(x)/\sqrt{x}$ and the existing root-weight
operation multiplies by $\sqrt{x}$. Their actual logarithmic twist gives
$A(x)e^{2\pi i t\log x}$ for $x>0$, with nonzero square-root cancellation.
This preserves the normalization instead of silently changing the annulus.

## Checked boundaries

The controls exercise empty and concrete quotient families, the actual
normalization and opposite imaginary phases at a quarter frequency. Under
Lean's totalized logarithm, $\exp(\log0)=1$ whereas $0=0/1$. A zero denominator
similarly breaks the auxiliary logarithmic quotient identity. These are
counterexamples to dropping positivity from that producer. The positive controls
also prove that the full empty-family annulus identity holds at $x=0$, where
$A(0)=0$. The intended
negative use omits a positivity premise only after this actual failure is proved.

## Source, verification and limits

The [source](../../../../../../GRWTSK/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianAnnularSeparation.lean),
[positive controls](../../../../../../GRWTSK/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianAnnularSeparation.lean),
native receipt (artifact:gitblob:86c42e3161e62b3505a287ab138353edc23dc018)
and integration record (artifact:gitblob:64b334ba11f4d463f927c36dc6934e4312d31bae)
bind exact fresh selected local sources and controls. Pinned Lean 4.33.0 checks
trust zero, fatal warnings and every owned declaration and transitive axiom,
allowing only `propext`, `Classical.choice` and `Quot.sound`. Clean pinned
dependency objects are reused and fingerprinted; their sources and the whole
umbrella are not rebuilt.

The proof slices adapt OpenAI's pinned
[GaussianSlots](https://github.com/openai/math/blob/1581d4cbdd69a0faf34b2089614fe2a814316a6a/lean/OAI/NumberTheory/DirichletL/Detector/GaussianSlots.lean).
OpenAI project credit, individual imported Mathlib credits and Apache-2.0 terms
remain retained. Human direction: grwtsk contributors; adaptation/formalization
and checking: OpenAI Codex. Correlated review is not independent validation.

The separate [ideal-norm support result](../../../../NumberTheory/Ideal/compact-norm-support.md)
now proves compact-window finite support for actual ideals over an explicitly
specified Dedekind ring finite and free over the integers. Its integer-ideal
consumer does not instantiate the original Eisenstein ring or supply completed
physical rows and their common support for every frequency.

Completed physical rows and common finite support, row majorants,
ideal/Hecke/calibration suppliers, the original detector and RH remain open.
No arithmetic, whole-library or operational cache refinement acceptance follows
from this pure analytic separation theorem.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Analysis/MellinTransform/GaussianAnnularSeparation.lean`](../../../../../../GRWTSK/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianAnnularSeparation.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 13 |
| Theorem/lemma commands | 9 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
