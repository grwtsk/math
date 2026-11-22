# Spatial approximation of the actual finite-gamma conductor-three form

Local attribution: grwtsk contributors.

Maintained source:
[WeilConductorThreePartialSampling.lean](WeilConductorThreePartialSampling.lean).
Starting source:
[`grwtsk/math@06a747e6244febf917e797a672c5ea8f6e07064a`](https://github.com/grwtsk/math/commit/06a747e6244febf917e797a672c5ea8f6e07064a).
Coordination: [math #1839](https://github.com/grwtsk/math/issues/1839).
The retained environment is Lean `4.34.1`, compiler
`5045d0056413266e57c625dcd7c365b10e377c52`, and Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Mathematical consumer and exact objects

This module isolates the spatial part of the already defined finite-gamma
approximation. Its consumer is a one-sided return from the sampled matrix
to the original conductor-three arithmetic functional. That return also
requires a separate proof that the omitted gamma form is nonnegative on
the relevant derivative carrier. The spatial estimate does not assume or
prove that sign.

All objects use the outer namespace
`GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen`.
Write

\[
I=[-4,4],\qquad \mu=\operatorname{Lebesgue}|_I,\qquad
K_M(t)=\operatorname{partialSourceKernel}(M,t),
\qquad L_M=\operatorname{partialLipschitzConstant}(M).
\]

The new definitions are

\[
\operatorname{partialConvolutionKernel}(M,x,y)=K_M(x-y),
\]

\[
B_M(u)=\operatorname{partialKernelForm}(M,u)
 =\int_{I\times I}\overline{u(x)}K_M(x-y)u(y)\,dx\,dy,
\]

and the spatial-only price

\[
\varepsilon_{M,N}
=\operatorname{spatialApproximationBudget}(M,N)
=\frac{8L_M}{N+1}.
\]

The underlying `partialSourceKernel` is unchanged. It retains the actual
gamma constant, the first `M` gamma summands, the native conductor-three
character, and every signed prime hinge in the radius-four inventory.
The existing `complexSampleMatrix`, `gridCell`, `gridPoint`, and
`featureMoment` are reused literally. There is no replacement matrix,
invented positivity assumption, or restriction to real input functions.

## Primary analytical argument

### Integrability of the actual partial form

[WeilConductorThreeKernelSampling.lean](WeilConductorThreeKernelSampling.lean)
already proves

\[
|K_M(s)-K_M(t)|\le L_M|s-t|,\qquad K_M(0)=0,\qquad L_M\ge0.
\]

For `x,y ∈ I`, the displacement is at most eight. Therefore

\[
|K_M(x-y)|\le8L_M.
\]

The same Lipschitz result supplies continuity and measurability. For every
complex `u ∈ L¹(μ)`, the pairing integrand is dominated by
`8 L_M |u(x)| |u(y)|`, whose product integral is finite. The public
`integrable_partialKernelForm` proves this actual integrability; it does
not rely on totalized integration of an unproved integrable expression.

### Whole-cell sampling and complete moments

The maintained grid has `N+1` midpoint representatives and covering radius
`4/(N+1)`, including the clamped right endpoint. Its existing theorem
`sampleMatrix_error` gives, for every pair in the source square,

\[
|K_M(x-y)-H_{M,N}(c_N(x),c_N(y))|
\le \frac{8L_M}{N+1}.
\]

Here `H_{M,N}=complexSampleMatrix M N` and `c_N=gridCell N`.
The theorem `partialKernel_sample_error` returns precisely this estimate
through the existing complex finite-kernel representation. The estimate
holds throughout each cell, rather than only at the midpoint samples.

The exact moments are

\[
v_i(u)=\int_{\{x\in I:c_N(x)=i\}}u(x)\,dx.
\]

The finite-kernel identity in
[FiniteKernelEnclosure.lean](../../FunctionalAnalysis/FiniteKernelEnclosure.lean)
then identifies its pairing with

\[
q_{M,N}(u)=\sum_i\sum_j
  \overline{v_i(u)}H_{M,N}(i,j)v_j(u).
\]

These are complete complex cell integrals, including their imaginary
parts. The identity is exact for the piecewise-constant sampled kernel.
Moment extraction is finite-dimensional; variation of the original kernel
within the cells is accounted for by the spatial error below.

For `u ∈ L¹(μ)` with `|u|² ∈ L¹(μ)`, integration of the uniform kernel
error followed by Cauchy--Schwarz gives

\[
|B_M(u)-q_{M,N}(u)|
\le \varepsilon_{M,N}\left(\int_I|u|\right)^2
\le 8\varepsilon_{M,N}\int_I|u|^2.
\]

The final factor eight is the measure of `I`. The public theorem
`partialKernelForm_finite_error` proves the stronger complex-norm version
of this estimate using the maintained `interval_kernelForm_error` theorem
in
[IntegralKernelApproximation.lean](../../FunctionalAnalysis/IntegralKernelApproximation.lean).
Taking a real part subsequently preserves the same error allowance.

### Return to the whole-line derivative carrier

If `tsupport f ⊆ I`, then `deriv f` vanishes outside `I` by the maintained
`deriv_eq_zero_outside_window` theorem in
[WeilConductorThreeKernelReturn.lean](WeilConductorThreeKernelReturn.lean).
In the product pairing, either exterior coordinate therefore makes the
integrand zero. Restricting both Lebesgue variables to `I` changes no value:

\[
B_M(f')=
\int_{\mathbb R^2}\overline{f'(x)}K_M(x-y)f'(y)\,dx\,dy.
\]

The formal restriction identity requires only the support hypothesis.
For the intended compactly supported `C¹` input, the existing derivative
integrability and squared-norm integrability theorems supply the hypotheses
of the finite error estimate. `window_deriv_energy_eq` then identifies its
energy with the whole-line derivative energy.

## Comparison, sign boundary, and separate arithmetic return

The earlier
[complete enclosure](WeilConductorThreeKernelEnclosure.lean)
compares the full integrated source with the same finite sampled matrix.
Its two-sided budget remains

\[
\operatorname{kernelApproximationBudget}(M,N)
=\operatorname{truncationBudget}(M)+\varepsilon_{M,N}.
\]

The present result compares only `K_M` with its spatial samples, so its
error contains only `ε_{M,N}`. This is a different, explicitly identified
comparison. Dropping the gamma cost from a full-source estimate requires
a separately proved one-sided form inequality. The sign of the pointwise
remainder alone does not provide that inequality on signed or complex
inputs.

The separate
[gamma-remainder module](WeilConductorThreeGammaRemainder.md) proves the
omitted form nonnegative on compact C1 derivatives. The
[one-sided certificate consumer](WeilConductorThreeOneSidedCertificates.md)
combines that source identity with this spatial estimate and an accepted
sampled-matrix lower bound. It reaches the full arithmetic value while
paying the spatial and packet-metric costs. This module supplies the
spatial comparison and exact carrier identity used by that return.

This separation does not manufacture finer-grid certificates. Existing
parameter-selection and conditional limit theorems still require actual
source enclosures and checker acceptance at their same chosen parameters.
The existing two-cell full-space negative control also remains relevant:
the zero-sum constraint cannot be omitted from its positivity statement.

The primary argument is the Lipschitz estimate, product integrability,
exact finite-kernel pairing, and interval Cauchy--Schwarz. Applying the
generic error theorem or repeating those inequalities directly shares
the same mathematical inputs and is not an independent analytic proof.
These are local consequences of the cited maintained sources at the
recorded revision. No external paper theorem or prior-art novelty is claimed.

## Public declaration correspondence

All names below are in the outer namespace specified above.

| Declaration | Mathematical role |
| --- | --- |
| `partialConvolutionKernel` | The exact finite-gamma source on two real coordinates. |
| `partialKernelForm` | Its conjugate-first complex pairing on the existing window. |
| `spatialApproximationBudget` | The separate whole-cell grid price. |
| `spatialApproximationBudget_nonneg` | The price is nonnegative for every cutoff and grid. |
| `partialConvolutionKernel_bound` | Actual uniform bound `8 L_M` on the source square. |
| `integrable_partialKernelForm` | Product-integrand integrability for each complex L1 input. |
| `partialKernel_sample_error` | Uniform pointwise comparison to the actual sampled kernel. |
| `partialKernelForm_finite_error` | Complex form error through exact cell moments and interval energy. |
| `partialKernelForm_deriv_eq_wholeline` | Exact return of the derivative pairing to the whole line. |

## Verification evidence

This module was included in the successful exact-target build of
`GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeOneSidedCertificates`.
The aggregate build passed with exit 0 in 371.957 seconds;
the separate transitive axiom audit passed with exit 0 in
135.680 seconds. The source SHA-256 is
`de065e16766b07d9225840a5ca51da9ba619e1cd45ec60f9fa2fd3b910bb6452`.

All **9 public declarations** of this module (6 theorems
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
