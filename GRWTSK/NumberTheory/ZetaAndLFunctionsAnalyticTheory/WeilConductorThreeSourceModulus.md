# Complete-source continuity modulus for the conductor-three kernel

Local attribution: grwtsk contributors.

Maintained source:
[WeilConductorThreeSourceModulus.lean](WeilConductorThreeSourceModulus.lean).
Starting revision:
[`b09f7ac564b418c51d8062844bd3c9c81e3894db`](https://github.com/grwtsk/math/commit/b09f7ac564b418c51d8062844bd3c9c81e3894db).
The relevant preceding gamma-remainder and sampling increment is
[`39aed5e3e62770195f54376365316f8cfe75a8d8`](https://github.com/grwtsk/math/commit/39aed5e3e62770195f54376365316f8cfe75a8d8).
Coordination: [math #1839](https://github.com/grwtsk/math/issues/1839).

## Mathematical consumer and source identity

The consumer is finite sampling of the actual conductor-three radius-four
`sourceKernel`. Its finite sample matrix should depend on spatial resolution,
while the gamma cutoff used to enclose its entries remains an approximation
parameter. This module supplies a continuity price for that complete source.
It does not replace the source by a finite gamma head or assert a sign for
any matrix or form.

The original kernel is

\[
K(t)=-\frac{c_\chi}{2}|t|
 -\int_0^\infty w_0(r)\min(|t|,r)\,dr+P_\chi(t),
\qquad
w_0(r)=\frac{e^{-3r/2}}{1-e^{-2r}}.
\]

Here `c_chi = gammaConstant 3 1`, and `P_chi = primeHinges` retains the
original mod-three character, all terms of the radius-four inventory, and
their signs. Write

\[
L_M=\operatorname{partialLipschitzConstant}(M),\qquad
T_M=\operatorname{truncationBudget}(M)=\frac1{4M+1}.
\]

The source definition, gamma rates, and exact prime hinges are unchanged.
The value `L_0` contains the absolute gamma-constant half and the existing
absolute coefficient mass used for the spatial error. Using absolute
coefficients in that error allowance does not alter the signed kernel.

## Exact modulus and primary argument

For nonnegative distance \(d\), define

\[
\boxed{
\omega(d)=L_0d+\int_0^\infty w_0(r)\min(d,r)\,dr.
}
\]

The Lean definition is total on real arguments and uses `min |d| r` in
the integral. Its nonnegativity and monotonicity claims explicitly restrict
the distance argument to be nonnegative. The exact real integral is also
identified with `(integratedGammaRemainder 0 d 0).re`; the existing
`integratedGammaRemainder` is a complex-valued two-coordinate kernel and is
not silently reinterpreted as a scalar function.

For every positive lag,

\[
|\min(|s|,r)-\min(|t|,r)|\le\min(|s-t|,r).
\]

The first bound follows because clipping at \(r\) and the absolute-value
map are both nonexpansive. The second follows because both clipped values
lie in \([0,r]\). Combining those two bounds gives the minimum on the
right. The weight \(w_0(r)\) is nonnegative.

The previously proved `gammaRemainder_integrable` supplies integrability
for the two original integrands, their difference, and the new bounding
integrand. Consequently subtraction commutes with the integral, the
absolute value of the integral is bounded by the integral of the absolute
value, and the pointwise bound may be integrated. This gives

\[
\left|\int_0^\infty w_0(r)\min(|s|,r)\,dr
 -\int_0^\infty w_0(r)\min(|t|,r)\,dr\right|
\le\int_0^\infty w_0(r)\min(|s-t|,r)\,dr.
\]

At cutoff zero, the remaining source is exactly the original gamma-constant
linear term plus the original signed prime hinges. Its established
Lipschitz bound has constant \(L_0\). The triangle inequality therefore
returns to the complete maintained kernel:

\[
\boxed{|K(s)-K(t)|\le\omega(|s-t|).}
\]

The module also proves \(\omega(0)=0\), nonnegativity on nonnegative
inputs, and monotonicity on that domain. The entire positive-lag integral
is retained. There is no finite lag interval, omitted endpoint, or use of
Lean's totalized integral to substitute for convergence.

## Computable head/tail prices for the fixed modulus

For every natural gamma cutoff \(M\), the existing exact decomposition is

\[
\int_0^\infty w_0(r)\min(d,r)\,dr
=\sum_{m<M}\frac{1-e^{-\alpha_md}}{\alpha_m^2}
 +\int_0^\infty w_M(r)\min(d,r)\,dr,
\quad \alpha_m=2m+\frac32.
\]

For \(d\ge0\), the elementary exponential inequality yields

\[
\frac{1-e^{-\alpha_md}}{\alpha_m^2}
\le\frac d{\alpha_m}.
\]

The complete final integral lies in \([0,T_M]\). The definition of the
existing Lipschitz constant gives

\[
L_M=L_0+\sum_{m<M}\alpha_m^{-1}.
\]

Together these establish the exact upper allowance

\[
\boxed{\omega(d)\le L_Md+T_M\qquad(d\ge0).}
\]

The cutoff \(M\) occurs in this bound, not in \(K\) or \(\omega\).
Different choices therefore enclose the same target. Increasing a cutoff
does not itself give a monotone numerical price: the Lipschitz term grows
while the tail term decreases. At a positive target error, one can first
make \(T_M\) small and then make the spatial distance small for that
finite \(L_M\). A complete certificate family additionally requires actual
source-matrix enclosures and accepted sign certificates; this modulus alone
does not supply them.

## A separate signed-width comparison

There is an economical check of the resulting pointwise price that does
not use the increment inequality for minimum kernels. The maintained
signed remainder bound says

\[
e_M(t):=K(t)-K_M(t)\in[-T_M,0].
\]

Both \(e_M(s)\) and \(e_M(t)\) lie in the same real interval, hence
\(|e_M(s)-e_M(t)|\le T_M\). This pays one interval width; applying
two independent absolute-value bounds would pay \(2T_M\). Using the
existing finite-head Lipschitz estimate gives

\[
|K(s)-K(t)|\le L_M|s-t|+T_M.
\]

This comparison shares the maintained source decomposition and its tail
bound with the primary proof. It is an alternate analytic estimate, not
an independently sourced proof or an independent checker. Neither its
pointwise signed interval nor the pointwise modulus establishes an
ordering of quadratic forms.

## Exact declarations and provenance

All declarations lie in

```lean
GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen
```

| Public declaration | Maintained role |
| --- | --- |
| `sourceContinuityModulus` | The fixed full-source distance price. |
| `sourceContinuityModulus_eq_gamma_min` | Identity with the original parity-one gamma integral. |
| `sourceContinuityModulus_eq_integratedGammaRemainder` | Identity with the real part of the existing two-coordinate remainder kernel. |
| `sourceContinuityModulus_nonneg` | Nonnegativity on nonnegative distances. |
| `sourceContinuityModulus_zero` | Exact value at zero. |
| `sourceContinuityModulus_mono` | Monotonicity on the nonnegative distance domain. |
| `abs_sourceKernel_sub_le_modulus` | Complete-source increment bound. |
| `sourceContinuityModulus_le` | Any finite head and complete tail enclose the same modulus. |
| `abs_sourceKernel_sub_le_head_tail` | Separate one-width signed-remainder comparison. |

Four private helpers establish the zero-cutoff parity identity, the minimum
kernel increment inequality, the integrated gamma increment bound, and the
finite exponential-term estimate. They are part of the public proofs'
transitive dependencies.

This is a local reconstruction from the maintained source, rather than an
adaptation of a new external paper result. Exact predecessor sources are:

| Source at the starting revision | Reused mathematical statements |
| --- | --- |
| [WeilConductorThreeKernel.lean](WeilConductorThreeKernel.lean) | Original kernel, signed hinges, gamma rates and finite heads. |
| [WeilConductorThreeKernelTruncation.lean](WeilConductorThreeKernelTruncation.lean) | Actual gamma integrability, finite decomposition, complete remainder interval, and source-minus-head identity. |
| [WeilConductorThreeKernelSampling.lean](WeilConductorThreeKernelSampling.lean) | Exact finite-head Lipschitz estimates and constants. |
| [WeilConductorThreeGammaRemainder.lean](WeilConductorThreeGammaRemainder.lean) | Nonnegative remainder weights and the existing complex integrated kernel. |

No prior-art novelty claim follows from this reconstruction. The historical
finite-head obstruction in `WeilConductorThreeRadiusFourScrewGreen.lean`
Section 7 retains its written status and precise range `M≤10^19`.
This module avoids requiring positive finite heads, but does not establish
the missing full-source sign certificates, fixed-window positivity, or
RH/GRH. The stronger squared-in-cutoff energy bound is also outside this
module's claims.

## Verification evidence

This module was included in the exact-source aggregate build and separate
47-declaration transitive axiom audit recorded in
[WeilConductorThreeSourceCertificates.md](WeilConductorThreeSourceCertificates.md#verification-evidence).
The final build and audit both **PASSED** under the unchanged pinned
Lean `4.34.1` and Mathlib environment. This module's checked source SHA-256
is `012aecb01467c62d7b4f78abd83cea2e19d954532bfac31afb5af17263d5a23d`.

The complete attempt ledger, including the initial failed elaboration and
its correction, is preserved in that source-local record. The audit found
no axioms outside `propext`, `Classical.choice`, and `Quot.sound` and no
missing public declarations. This result does not promote cache replay to
a fresh proof-term replay of all imported dependencies.

Fresh full-dependency proof replay, independent external mathematical
review, and independently implemented kernel checking remain **NOT_RUN**.
AI-assisted source review and the analytical comparison documented above
share the maintained source and do not supply independent external review.
Operational logs remain outside this mathematical checkout.
