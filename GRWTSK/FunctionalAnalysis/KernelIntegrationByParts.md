# Derivative pairings for absolute-value, hinge and truncated kernels

Local source attribution: grwtsk contributors.

Maintained source: [KernelIntegrationByParts.lean](KernelIntegrationByParts.lean).
Starting repository revision:
[`5624239ab1a35db87d6eb8aa7771f68ad7117b74`](https://github.com/grwtsk/math/commit/5624239ab1a35db87d6eb8aa7771f68ad7117b74).
The mathematical consumer is the return from the integrated conductor-three
Weil kernel to its physical arithmetic form. This module proves the actual
whole-line integral identities needed by that return, with ordinary complex
bilinear multiplication; the first factor can subsequently be specialized
to the conjugate of the physical test.

## Precise carrier and integrability

Let `f,g : R -> C` be continuously differentiable and compactly supported.
The formal hypotheses are exactly `ContDiff R 1` and `HasCompactSupport` for
both functions. No equation identifying a kernel pairing with a correlation
is supplied as an assumption. In particular, the results hold for complex
inputs and do not require an even or odd spatial parity.

The function

\[
(x,y)\longmapsto f'(x)K(x,y)g'(y)
\]

is integrable for each continuous kernel used here. Its support is contained
in the compact product of the derivative supports. Continuity and this
actual compact support give Bochner integrability on product Lebesgue
measure. The theorem `integrable_kernel_product` proves the general fact
with arbitrary continuous factors and kernel. Consequently the identities
below concern genuine integrable product-measure expressions, rather than
values assigned by a totalized integral to nonintegrable functions.

## The primary analytic argument

Fix a real endpoint `a`. Apply the half-line fundamental theorem of calculus
to the compactly supported C1 function

\[
F_a(y)=(a-y)g(y),\qquad
F_a'(y)=-g(y)+(a-y)g'(y).
\]

The endpoint value is zero. Thus

\[
\int_{-\infty}^a(a-y)g'(y)\,dy
=\int_{-\infty}^a g(y)\,dy.
\]

The positive-part factor vanishes outside that half-line, so the same
formula gives the actual whole-line integral

\[
\int_{\mathbb R}(a-y)_+g'(y)\,dy
=\int_{-\infty}^a g(y)\,dy.
\]

Set `a=x-r` and multiply by `f'(x)`. The resulting triangular integrand
`1_(y <= x-r) f'(x) g(y)` is integrable: it is an indicator restriction of
the product of two L1 functions. Fubini therefore changes its order of
integration. The remaining inner integral is

\[
\int_{y+r}^{\infty}f'(x)\,dx=-f(y+r).
\]

The closed/open half-line distinction does not contribute an endpoint
mass for Lebesgue measure. We obtain, for every real shift `r`,

\[
\iint f'(x)(x-y-r)_+g'(y)\,dx\,dy
=-\int f(y+r)g(y)\,dy.
\]

Swapping the two product coordinates proves the reflected orientation,

\[
\iint f'(x)(y-x-r)_+g'(y)\,dx\,dy
=-\int f(x)g(x+r)\,dx.
\]

Every application of Fubini or integral additivity is accompanied by its
integrability argument. There is no appeal to an unformalized distributional
derivative in these proofs.

## The three kernel identities

For `r >= 0`, the elementary pointwise identity

\[
(|t|-r)_+=(t-r)_++(-t-r)_+
\]

gives the complete hinge pairing:

\[
\iint f'(x)(|x-y|-r)_+g'(y)\,dx\,dy
=-\int f(y+r)g(y)\,dy-\int f(x)g(x+r)\,dx.
\]

At `r=0`, this is the absolute-value kernel identity

\[
\iint f'(x)|x-y|g'(y)\,dx\,dy=-2\int f(x)g(x)\,dx.
\]

Finally, `min(|t|,r)=|t|-(|t|-r)_+` gives

\[
\iint f'(x)\min(|x-y|,r)g'(y)\,dx\,dy
=-2\int fg+\int f(y+r)g(y)\,dy+\int f(x)g(x+r)\,dx.
\]

The public endpoints are `integral_hinge_deriv_product`,
`integral_abs_deriv_product`, and `integral_min_deriv_product`, in namespace
`GRWTSK.FunctionalAnalysis.KernelIntegrationByParts`. The one-sided results
remain separately available as `integral_ramp_deriv_product` and
`integral_reflectedRamp_deriv_product`.

## Source comparison and hostile checks

The equivalent distributional description differentiates a hinge twice and
obtains point masses at its breakpoints. The present proof instead evaluates
ordinary compactly supported derivative integrals using half-line FTC and
Fubini. This is a comparison of analytic methods, not an independent formal
proof or independent external review.

For a real nonzero test with `f=g`, the absolute-value pairing is negative,
equal to `-2*integral f^2`. Treating that kernel as positive definite would
give the wrong sign. For complex tests, the two oriented hinge terms must
both be retained. Only after the first factor is specialized to the
conjugate test can their sum be identified with twice a real correlation.
At zero lag the truncated kernel is zero, and the returned expression
cancels exactly. These are useful sign, orientation and endpoint checks.

The actual arithmetic return also needs the source's coefficients,
character hypotheses, gamma integration interchange and interval-to-whole-line
identification. These obligations are discharged separately in
[the arithmetic-return module](../NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilConductorThreeKernelReturn.md).
This module supplies the spatial integral identities, including the continuous
absolute-kernel Green identity. It does not assert arithmetic positivity,
a finite packet-metric comparison or RH/GRH.

## Provenance and formal evidence

This is a local derivation using the pinned Mathlib revision
`d13f23b723b8a846827a245b89c10fc7d3f11612`, with Lean `4.34.1`.
Its foundational analytic inputs are Mathlib's
`HasCompactSupport.integral_Iic_deriv_eq` and
`HasCompactSupport.integral_Ioi_deriv_eq` in
[IntegralEqImproper.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/MeasureTheory/Integral/IntegralEqImproper.lean),
and `Integrable.mul_prod`, `integral_prod`, `integral_integral_swap`, and
`integral_prod_swap` in
[Prod.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/MeasureTheory/Integral/Prod.lean).
The upstream source records its authors and Apache-2.0 license; it remains
an unchanged dependency. This is not a claimed new paper theorem or an
imported proof presented as a fresh formalization.

The final source passed the pinned command
`lake build GRWTSK.FunctionalAnalysis.KernelIntegrationByParts` on
2026-11-20, with exit status zero and the compiled module produced. Its
SHA-256 is
`198aaa8f9777ce952bced6e7ed99e00dd032841dd8d6954a3706e788816a6027`.
All ten theorem declarations are proved; the source contains no proof
placeholders or added axioms. The aggregate audit of all 54 public
declarations in the four-module arithmetic-return increment also passed;
every axiom set is contained in `propext`, `Classical.choice`, and
`Quot.sound`.

Two separate fresh-replay attempts remained operationally incomplete: the
first timed out while importing the dependency environment, and the second
encountered Lean's legacy/module-system import incompatibility. Neither
attempt reached a new-declaration replay verdict. These outcomes are
distinct from the successful source build and axiom audit. Exact evidence
is recorded in [issue #1839](https://github.com/grwtsk/math/issues/1839) and
the [arithmetic-return record](../NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilConductorThreeKernelReturn.md).
Independent external mathematical review and an independently implemented
kernel checker are **NOT_RUN**.
