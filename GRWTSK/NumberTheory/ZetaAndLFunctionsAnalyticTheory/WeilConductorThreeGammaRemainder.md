# Positive complete gamma remainder on compact C1 derivatives

Local attribution: grwtsk contributors.

Maintained source:
[WeilConductorThreeGammaRemainder.lean](WeilConductorThreeGammaRemainder.lean).
Starting revision:
[`06a747e6244febf917e797a672c5ea8f6e07064a`](https://github.com/grwtsk/math/commit/06a747e6244febf917e797a672c5ea8f6e07064a).
Coordination: [math #1839](https://github.com/grwtsk/math/issues/1839).
The unchanged environment is Lean `4.34.1`, compiler
`5045d0056413266e57c625dcd7c365b10e377c52`, and Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.

This is a local consequence of the maintained conductor-three source,
complete gamma-remainder identity, product-measure integration theorems,
and compact-support derivative return. Its mathematical consumer is a
one-sided lower estimate for the original `primitiveArithmeticValue`.
The finite source, gamma constant, signed character, prime inventory,
conjugation convention, and Lebesgue measure remain unchanged.

## Exact source and retained carrier

Use the definitions in
[WeilConductorThreeKernel.lean](WeilConductorThreeKernel.lean) and
[WeilConductorThreeKernelTruncation.lean](WeilConductorThreeKernelTruncation.lean):

\[
\alpha_M=2M+\frac32,\qquad
w_M(r)=\frac{e^{-\alpha_Mr}}{1-e^{-2r}},\quad r>0.
\]

The exact finite decomposition of the parity-one gamma kernel gives

\[
K(t)-K_M(t)
=-\int_0^\infty w_M(r)\min(|t|,r)\,dr.
\]

Here `K = sourceKernel`, `K_M = partialSourceKernel M`, and
`w_M = gammaRemainder M`. The source difference cancels the original
gamma constant and every signed prime hinge exactly. No retained
arithmetic coefficient is replaced by its magnitude.

The sign and source-return theorems use exactly

```lean
f : ℝ → ℂ
ContDiff ℝ 1 f
HasCompactSupport f
```

They concern the actual derivative `deriv f`. No arbitrary mean-zero
function, Sobolev extension, or substitute derivative is introduced.
The whole-line identity uses the fixed radius-four arithmetic expression
as defined, with its unchanged prime inventory. The later finite-window
sampling consumer additionally retains `tsupport f ⊆ Icc (-4 : ℝ) 4`.
This identity does not enlarge that inventory for tests at another radius.

## Entire positive-lag Fubini argument

The existing `gammaRemainder_majorant` proves, for every real displacement
`t` and every `r > 0`,

\[
0\le w_M(r)\min(|t|,r)
\le\frac12e^{-(\alpha_M-1)r}.
\]

Since `α_M - 1 = 2M + 1/2 > 0`, the majorant is integrable on the
complete positive half-line. This controls both the singular endpoint
of the weight and the unbounded lag range.

For any complex `L¹` input `u`, define the actual conjugate-first
triple-product integrand

\[
F_M(r,x,y)
=\overline{u(x)}\,
 w_M(r)\min(|x-y|,r)\,u(y).
\]

Its norm is bounded by

\[
\frac12e^{-(\alpha_M-1)r}|u(x)|\,|u(y)|,
\]

an integrable function for
`gammaLagMeasure.prod (volume.prod volume)`. The source establishes
measurability and this absolute-integrability bound before applying
`integral_integral_swap`.

Write

\[
J_M(x,y)=\int_0^\infty w_M(r)\min(|x-y|,r)\,dr.
\]

The new `integratedGammaRemainder` is the real-to-complex embedding of
this exact kernel. The two iterated integrals then give

\[
Q_{J_M}(u)
=\int_0^\infty w_M(r)\,Q_{\min(|x-y|,r)}(u)\,dr,
\]

with the analogous identity for `-J_M`. These Fubini and integrability
results require only `Integrable u volume`; their statements contain no
positivity assertion for a general `u`.

The construction follows the maintained proof in
[WeilConductorThreeKernelGamma.lean](WeilConductorThreeKernelGamma.lean),
specialized to the actual omitted weight at arbitrary cutoff `M`.
No infinite-series interchange or unverified Fourier-transform convention
is used in this proof.

## Squared translation energies give the sign

The existing theorem `kernelForm_neg_minimum_deriv` in
[WeilConductorThreeKernelReturn.lean](WeilConductorThreeKernelReturn.lean)
proves the exact identity

\[
Q_{-\min(|x-y|,r)}(f')
=E\bigl(f(\cdot+r)-f\bigr),\qquad r\ge0,
\]

where

\[
E(g)=\int_{\mathbb R}|g(t)|^2\,dt.
\]

For compact `C¹` tests the derivative is integrable. Substituting this
identity into the justified remainder Fubini formula gives

\[
Q_{-J_M}(f')
=\int_0^\infty w_M(r)E\bigl(f(\cdot+r)-f\bigr)\,dr.
\]

The source separately derives integrability of this actual energy density
from the triple-product theorem and the same minimum-kernel identity.
It does not assume a missing small-lag estimate.

The new `gammaRemainderEnergy M f` is precisely this real integral. Its
nonnegativity follows from `w_M(r) ≥ 0` and the nonnegativity of squared
norms. The identity proves, in particular, that the complex remainder
form is real on this carrier.

## Return to the original arithmetic value

The full source and its integrated remainder have genuine whole-line
pairings. Their exact kernel identity also supplies integrability of the
partial source pairing. Thus kernel subtraction is performed with its
integrability hypotheses discharged.

For the unchanged original expression

```lean
primitiveArithmeticValue modThreeQuadratic
  modThreeQuadratic_isPrimitive modThreeQuadratic_nonprincipal 4 f
```

write `A(f)` as mathematical notation. The public excess identity is

\[
\boxed{
A(f)-\operatorname{Re}Q_{K_M}(f')
=\int_0^\infty w_M(r)E\bigl(f(\cdot+r)-f\bigr)\,dr.
}
\]

Consequently the final endpoint is

\[
\boxed{\operatorname{Re}Q_{K_M}(f')\le A(f).}
\]

It is named `partialSourceKernel_form_le_arithmeticValue` and uses the
literal inline partial-source kernel. This supplies a one-sided lower
comparison to the original source. Neither side is asserted nonnegative.

For a subsequent finite-window certificate consumer, the spatial error
is still charged. With `L_M = partialLipschitzConstant M`, the existing
sampling estimate has kernel error `8 L_M/(N+1)`. Multiplication by the
window mass gives `64 L_M/(N+1) E(f′)`. An accepted identity-metric
tolerance adds `8 τ/(N+1) E(f′)`. The present source-order theorem permits
that lower return to omit the separate gamma-tail charge. The
[one-sided certificate consumer](WeilConductorThreeOneSidedCertificates.md)
implements this return and applies it to the existing actual two-cell
packet. A varying all-precision family must still jointly supply the
spatial approximation, enclosure, and certificate conditions at its chosen
indices.

The existing two-sided absolute-error estimates remain valid with their
gamma allowance. In particular, the preceding fixed-packet budget
obstruction is a true statement about its defined symmetric-error budget.
A stronger one-sided comparison changes the budget available to the
consumer; it does not alter that previous theorem.

## Historical comparison and limits

Section 4 of the
[historical continuous-kernel argument at the starting revision](https://github.com/grwtsk/math/blob/06a747e6244febf917e797a672c5ea8f6e07064a/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilConductorThreeRadiusFourScrewGreen.lean)
describes the positive gamma-tail law through a Fourier multiplier.
That source labels its universal analytic claims as written proofs and
their Lean/kernel/axiom checks as `NOT_RUN`.

The present module formalizes the nonnegative-excess conclusion on
compact `C¹` derivatives by the time-domain squared-translation identity.
It does not retroactively verify the historical `H₀¹` extension, Fourier
multiplier formula, sharper derivative-energy upper bound, high-frequency
obstructions, or later Green-metric claims. The two analytic descriptions
share the same gamma source; they do not establish independent proofs of
arithmetic positivity.

The carrier restriction matters. For a fixed `r > 0`, the negative-minimum
kernel on the two points `0,r` has matrix `!![0,-r;-r,0]`; its value on
`(1,1)` is `-2r`. Pointwise-negative kernels therefore cannot be promoted
to positive quadratic forms on unrestricted inputs. The actual derivative
identity supplies the additional structure used here. This elementary
matrix observation is an analytical control, not an additional Lean
theorem of this module.

The result produces no accepted matrix certificate, no all-grid or
all-window sign theorem, and no RH/GRH conclusion. The spatial/certificate
producer and any required change of energy norm remain separate tasks.
No new paper formalization or prior-art novelty is claimed.

## Public declaration correspondence

The outer namespace is
`GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen`.

| Declaration | Role |
| --- | --- |
| `integratedGammaRemainder` | Exact omitted minimum-kernel integral. |
| `gammaRemainderPairingIntegrand` | Actual conjugate-first triple integrand. |
| `gammaRemainderEnergy` | Complete weighted physical translation energy. |
| `gammaRemainder_nonneg` | Sign of the weight on the actual positive-lag domain. |
| `gammaRemainderPairingIntegrand_eq` | Exact integrand normalization. |
| `integrable_gammaRemainderPairingIntegrand` | Absolute integrability on the triple product measure. |
| `integral_gammaRemainderPairingIntegrand` | The integrated kernel as the first iterated integral. |
| `integral_gammaRemainderPairingIntegrand_pair` | Weighted minimum-kernel forms as the opposite iteration. |
| `integrable_integratedGammaRemainder` | Genuine integrated-kernel pairing for complex L1 inputs. |
| `integrable_gammaRemainderKernelForms` | Integrability of the weighted forms on all positive lags. |
| `kernelForm_integratedGammaRemainder` | Exact Fubini identity for the integrated minimum kernel. |
| `kernelForm_neg_integratedGammaRemainder` | Same justified interchange with the arithmetic sign. |
| `integrable_gammaRemainderEnergyDensity` | Actual energy-density integrability on compact C1 tests. |
| `kernelForm_neg_gammaRemainder_deriv` | Remainder form equals the real energy integral. |
| `gammaRemainderEnergy_nonneg` | Nonnegative energy integral. |
| `sourceConvolutionKernel_sub_partial_eq` | Exact unchanged source-minus-partial kernel identity. |
| `integrable_partialSourceKernel_deriv` | Integrability needed for source-form subtraction. |
| `arithmeticValue_sub_partialSourceKernel_form` | Exact real excess of the original arithmetic value. |
| `partialSourceKernel_form_le_arithmeticValue` | One-sided comparison on the actual derivative carrier. |

## Verification evidence

This module was included in the successful exact-target build of
`GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeOneSidedCertificates`.
The aggregate build passed with exit 0 in 371.957 seconds;
the separate transitive axiom audit passed with exit 0 in
135.680 seconds. The source SHA-256 is
`89d54b8e0b9a39a65605492269b5baaca654e7c57b83c08973d2fb2f312d4a8b`.

All **19 public declarations** of this module (16 theorems
and 3 definitions) were audited. Their transitive axioms are subsets of
`propext`, `Classical.choice`, and `Quot.sound`, with no missing declaration.
Lean `4.34.1`, compiler `5045d0056413266e57c625dcd7c365b10e377c52`,
and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` were unchanged.
The checked source and pin hashes matched between build and audit.

The [consumer record](WeilConductorThreeOneSidedCertificates.md#verification-evidence)
gives the complete three-source inventory, actual attempt outcomes, the
nonfatal build warning, and mathematical/source review scope. No failed,
interrupted, or timed-out formal attempt occurred in this increment.

Fresh full-dependency proof replay, independent external mathematical review,
and an independently implemented checker are **NOT_RUN**. These new checks
apply to the source identified above and do not retroactively verify the
broader historical written arguments or change prior evidence scopes.
