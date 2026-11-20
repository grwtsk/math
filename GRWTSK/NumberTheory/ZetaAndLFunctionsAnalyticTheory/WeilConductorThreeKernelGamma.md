# Complete gamma interchange for the conductor-three source

Local attribution: grwtsk contributors.

## Source identity and mathematical consumer

[WeilConductorThreeKernelGamma.lean](WeilConductorThreeKernelGamma.lean)
works in the namespace
`GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen`.
It proves the actual positive-lag/product-integral interchange needed to
return the conductor-three source kernel to its original arithmetic gamma
correction. Its consumer is
[WeilConductorThreeKernelReturn.lean](WeilConductorThreeKernelReturn.lean):
after a separate minimum-kernel integration-by-parts identity, the input
`u = deriv f` returns to the squared translation difference of the original
compact C1 function `f`.

The source snapshot is
[`grwtsk/math@5624239ab1a35db87d6eb8aa7771f68ad7117b74`](https://github.com/grwtsk/math/tree/5624239ab1a35db87d6eb8aa7771f68ad7117b74).
The retained objects and analytical dependency are:

| Source file | Exact declarations or role | Source Git blob |
| --- | --- | --- |
| [WeilConductorThreeKernel.lean](WeilConductorThreeKernel.lean) | The literal `sourceKernel`, including the negative integrated minimum kernel | `2f911f18a04e0d280e27a6d782d39b9eb6e382a1` |
| [WeilGammaData.lean](WeilGammaData.lean) | The parity-one `parityKernel` | `4ddf4399b7edfdb59af8d95d7b72222a1fefcd88` |
| [WeilConductorThreeKernelTruncation.lean](WeilConductorThreeKernelTruncation.lean) | `gammaRemainder_majorant` at cutoff zero | `6a14149fb8e7278da2fa6da964ad4748c762e90f` |
| [IntegralKernelApproximation.lean](../../FunctionalAnalysis/IntegralKernelApproximation.lean) | The existing conjugate-first `integrand` and product-measure `kernelForm` | `e8849c533ffe50931889ba046eb4dec15b70a9f5` |

The measure-theoretic implementation uses Mathlib's
[`Integrable.mul_prod`, `Integrable.integral_prod_left`, `Integrable.integral_prod_right`, and `integral_integral_swap`](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/MeasureTheory/Integral/Prod.lean)
at the unchanged repository pin. Mathlib's authorship and license remain
upstream; this is a local application of those theorems to the literal
maintained gamma kernel. It is not attributed to a new external paper or
claimed as a new RH/GRH theorem.

## Exact objects and hypotheses

Let

\[
\kappa_1(r)=\frac{e^{-3r/2}}{1-e^{-2r}},\qquad r>0,
\]

and use Lebesgue measure on the entire real line for both spatial
variables. The lag measure is Lebesgue measure restricted to `(0, infinity)`.
For an arbitrary `u : real -> complex` with `Integrable u volume`, put

\[
m_r(x,y)=\min(|x-y|,r),\qquad
G(x,y)=\int_0^\infty\kappa_1(r)m_r(x,y)\,dr.
\]

The real values are cast to complex values inside the existing form

\[
B_K(u,u)=\int_{\mathbb R^2}
 \overline{u(x)}K(x,y)u(y)\,d(x,y).
\]

`minimumKernel`, `integratedGammaKernel`, and `gammaPairingIntegrand`
retain these definitions. No compact support, L2 hypothesis, differentiability,
mean-zero condition, arithmetic sign, or already-assumed source identity is
an input to this module.

## Complete analytical argument

The existing cutoff-zero majorant gives, for every real `t` and every
positive `r`,

\[
0\le\kappa_1(r)\min(|t|,r)\le\frac12e^{-r/2}.
\]

This is the full gamma kernel: cutoff zero removes every finite head term.
The estimate follows in the imported source from
`r <= sinh r` and hence `1 - exp(-2r) >= 2r exp(-r)`, combined with
`min(|t|,r) <= r`. Its right-hand side has integral one on the entire
positive half-line. The estimate covers both the singular endpoint and
the infinite lag tail.

Consequently the actual triple integrand satisfies

\[
\left|\overline{u(x)}\kappa_1(r)m_r(x,y)u(y)\right|
\le\frac12e^{-r/2}|u(x)|\,|u(y)|.
\]

The right side is integrable for the genuine product measure

\[
\bigl(dr\restriction(0,\infty)\bigr)\otimes(dx\otimes dy)
\]

because each factor is integrable. Its integral is
`(integral |u|)^2`. Measurability of the scalar kernel follows from the
explicit exponential quotient and minimum; the factors containing `u`
are strongly measurable almost everywhere. Positivity of the lag holds
almost everywhere for the restricted measure. These are the hypotheses
used in `integrable_gammaPairingIntegrand`, rather than a formal exchange
of possibly divergent integrals.

For each nonnegative lag, the separate bound `m_r(x,y) <= r` also proves
integrability of the minimum-kernel pairing. Fubini applied to the triple
integrand gives both integrability of the integrated-kernel pairing and
integrability of the lag-dependent forms, followed by

\[
B_G(u,u)=\int_0^\infty\kappa_1(r)B_{m_r}(u,u)\,dr.
\]

The proof preserves the real integral defining `G`, its real-to-complex
cast, and the original conjugate-first pairing. Linearity then gives the
sign needed by the literal source:

\[
B_{-G}(u,u)=\int_0^\infty\kappa_1(r)B_{-m_r}(u,u)\,dr.
\]

No infinite series/integral interchange or restricted finite-lag surrogate
appears in either identity.

## Declaration map

All entries have the namespace above as their prefix.

| Declaration | Proved role |
| --- | --- |
| `parity_min_majorant` | The full nonnegative scalar gamma integrand is bounded by the integrable exponential |
| `integrable_minimumKernel` | The actual spatial pairing is integrable for every nonnegative lag |
| `integrable_gammaPairingIntegrand` | Absolute integrability for the actual three-variable measure |
| `integral_gammaPairingIntegrand` | The lag section is the literal integrated-kernel integrand |
| `integral_gammaPairingIntegrand_pair` | The spatial section is the literal weighted minimum-kernel form |
| `integrable_integratedGammaKernel` | The whole-line integrated-kernel pairing is integrable |
| `integrable_gammaKernelForms` | The weighted minimum-kernel forms are integrable over every positive lag |
| `kernelForm_integratedGammaKernel` | The complete positive-kernel Fubini identity |
| `kernelForm_neg_integratedGammaKernel` | The complete negative-kernel identity used by the arithmetic source |

`gammaPairingIntegrand_eq` records the scalar/product rearrangement. A
private kernel-negation lemma performs only the algebraic change of sign.

## Comparison, limiting cases, and remaining return

This route uses a product L1 majorant for the whole gamma integral. One
could instead first truncate lag and space, apply Fubini on bounded
domains, and pass to limits with domination. That is a different
implementation arrangement of the same analytic estimate, not an
independent proof or independent verification.

The estimate and the interchange apply to complex, nonsymmetric inputs;
they do not require real-valued or odd test functions. At `r = 0`, the
minimum kernel vanishes, but the pointwise gamma quotient is not used:
the source integration domain is the strict positive half-line. At
`x = y`, the integrated kernel vanishes. The majorant is an upper bound,
not an equality or an optimal form estimate. A nonintegrable function such
as the constant function one is outside the stated theorem; totalized
Bochner-integral notation does not supply an unjustified extension to it.

The positive pointwise sign of `G` does not prove positive semidefiniteness
of `B_G`. The two endpoint theorem names distinguish kernel signs only.
The separate integration-by-parts identity on derivative carriers gives
`B_(-m_r)(deriv f, deriv f)` as the original nonnegative translation
energy. The [arithmetic-return module](WeilConductorThreeKernelReturn.md)
separately establishes that identity, returns the gamma constant and every
signed prime term, and justifies the interval restriction. None of these
is assumed in this module.

This interchange alone supplies no physical-energy comparison, closed
operator theorem, finite matrix sign certificate, complete high-complement
estimate, positivity criterion, explicit-formula identification, or RH/GRH
conclusion.

## Verification and review

Source elaboration and the narrow Lake module build **PASSED** under the
unchanged Lean `4.34.1` and Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612` pins. The final Lean source
SHA-256 is
`38cc387e4f68d048b57a14937993447e754195664b8821556e41e59325014592`.
The earlier compiler passes identified library-interface and
definitional-normalization issues, which were corrected without changing
the mathematical hypotheses or endpoint statements. The final new module
compiled without warnings; existing dependency warnings retain their own
scope.

The transitive axiom audit of all 14 public declarations **PASSED**. Every
reported axiom set is contained in `propext`, `Classical.choice`, and
`Quot.sound`; no additional unproved mathematical assumption or proof
placeholder occurs in these audited dependencies.

The combined source build and audit of all 54 public declarations also
passed. The separate fresh-replay attempts remained operationally
incomplete: a dependency-import timeout and then a legacy/module-system
compatibility failure occurred before a new-declaration replay verdict.
The [return record](WeilConductorThreeKernelReturn.md) and
[issue #1839](https://github.com/grwtsk/math/issues/1839) retain these
outcomes separately from the successful build and axiom audit.

The accompanying source review checks the original kernel and arithmetic
consumer, but is AI-assisted and is not independent external review.
Independently implemented kernel checking and independent external
mathematical review are **NOT_RUN**.
