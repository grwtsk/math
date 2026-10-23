# Second Fourier identity for the residue-one Wiener–Ikehara pole

Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**.
Mathematics owner: grwtsk/math main.
Effects and source-bound execution custody: grwtsk/noeaaeue.

## Exact mathematical result

Maintained primary source:
- AlexKontorovich/PrimeNumberTheoremAnd at commit 127b50e33f6033e2147921167a117af96d9ba4ea.
- PrimeNumberTheoremAnd/Wiener.lean blob 59fd5069a7eca51a8bc5005b5c43e31a5cbb38ac.
- Declarations second_fourier_integrable_aux1a, second_fourier_integrable_aux1, second_fourier_aux and second_fourier, approximately lines 170–300.
- Upstream Lean v4.35.0; local Lean v4.33.0, pinned Mathlib db584cd6d46c92f209a44c0f1c829460d327499d.

Pure source file:
GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaQOnePoleFourier.lean.

Hostile controls:
GRWTSK/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOnePoleFourierControls.lean.

This source works independently of the previous first Fourier and boundary modules, because they remain separately subject to local replay.

For sigma>1 and T>0, with a continuous compactly supported complex test function psi, it authors the genuine pole identity:

    integral_(u>=-log T) exp[-u*(sigma-1)] *
        Fourier(psi)(u/(2*pi)) du
      = T^(sigma-1) *
        integral_t [psi(t)*T^(it)/(sigma+it-1)] dt.

The exact Fourier character is exp(-2*pi*i*t*xi), with xi=u/(2*pi), yielding the complex decay exponent (1-sigma-it)*u, not (1-sigma+it)*u. The pole denominator sigma+it-1 has residue coefficient exactly one. For T=1, the lower integration endpoint becomes 0 and both complex-power scale factors become 1.

## Actual product-integrability proof

The source defines the product function on [ -log T, +infinity ) x Real:

    F(u,t) = exp(-u*(sigma-1))
             * [FourierCharacter(-(t*u/(2*pi))) * psi(t)].

The Fourier Circle character has norm one, so

    |F(u,t)| = exp(-u*(sigma-1)) * |psi(t)|.

Pinned Mathlib proves exp(-u*(sigma-1)) is integrable on the half-line for sigma>1 (Real.exp_neg_integrableOn_Ioi; singleton endpoint equivalence). Compact support and continuity make psi integrable over all Real. The product majorant is therefore integrable by pinned Integrable.mul_prod. Measurability of the actual two-variable integrand follows from continuity; the source uses Integrable.mono and the exact norm identity, then invokes MeasureTheory.integral_integral_swap.

This is a proof-relevant justification for interchanging the ENTIRE-LINE test integral and the SEMI-INFINITE pole integral. No Fubini permission is introduced as a standalone premise.

## Exact complex Laplace integral

Let c=1-sigma-it; Re(c)=1-sigma<0. The pinned theorem

    integral_exp_mul_complex_Ioi

directly evaluates the actual complex-valued tail:

    integral_(u > -log T) exp(c*u) du
      = -exp(-c*log T)/c
      = T^(sigma-1)*T^(it)/(sigma+it-1).

The proof transports from Ici to Ioi using the null Lebesgue singleton, applies the Mathlib improper integral, and derives the complex logarithmic power identity with T>0. No unproved limit at u=infinity is discarded and no Fourier sign is fitted after the calculation.

The source theorem wienerPole_secondFourier combines the product-integral exchange with this exact Laplace evaluation.

## Unresolved analytic chain

Earlier pure source WienerIkeharaQOneFiniteSigmaFubini.lean contains the FIRST Fourier/Fubini identity for the genuine von Mangoldt L-series, plus the actual norm-integral summability justification. Its latest local verification state is separately source draft unless confirmed by an accepted local receipt.

Earlier pure source WienerIkeharaQOneBoundaryEstimates.lean contains the q=1 residue-one pole identity and compact-boundary Riemann–Lebesgue and dominated sigma↓1 arguments, separately queued for replay.

Once these are kernel accepted, the first and second identities can be combined, using the actual q=1 pole formula

    G(s)=LSeries(Lambda,s)-1/(s-1), Re(s)>1,

to obtain the exact finite-sigma equality for the pole-subtracted G.

Full limiting_cor_schwartz is NOT claimed: the sigma↓1 arithmetic Fourier series requires the uniform bound_sum_log' Chebyshev logarithmic kernel, and the compact-support-to-Schwartz extension requires uniform discarded-tail control. Neither follows from continuity on compact rectangles or the pole identity alone.

The next arithmetic object is the exact nonnegative weight, for T>=1 and n>=1,

    W_T(n)=1/[n*(1+(log(n/T)/(2*pi))^2)],

and the target

    sum_(n>=1) Lambda(n)*W_T(n)
      <= (log(4)+4)*(1+2*pi^2).

One may derive its finite partial-sum stage from a genuine Abel majorization identity, then prove monotonicity of W_T and the one-dimensional integral bound; none is an axiom or automatically supplied by pointwise Schwartz decay.

## Trust boundary

No Lean/Lake compiler was executed for this new source. No actual --wfail, --trust=0, generated declaration types, or transitive axiom closure was obtained. Status remains SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

The previously repaired and independently checked 19 Fourier/Mellin declarations from math a9d81821f5044b1dedcf56523ab491f0ee04dcc8 are not changed by this source.

The separately unverified PR #965 smooth-to-interval squeeze remains outside this source's import closure and does not supply any analytic limit.

No RH, Chowla, Goldbach, unconditional weak-PNT, or resurrection of the rejected fixed integer-psi capacity is claimed.
