# Finite-sigma von Mangoldt Fourier/Fubini and exact logarithmic kernel

**Status:** SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
**Mathematics owner:** grwtsk/math, directly on main (no branch/worktree).
**Effectful custody:** grwtsk/noeaaeue.
**Codex relay:** 4043e626-46a7-464e-96bc-4307570c0ac9.

## Source and mathematical target

The maintained formal PNT project is
AlexKontorovich/PrimeNumberTheoremAnd main at
127b50e33f6033e2147921167a117af96d9ba4ea.
Its Wiener source blob is 59fd5069a7eca51a8bc5005b5c43e31a5cbb38ac;
the relevant source declarations are first_fourier_aux2, first_fourier
(approximately lines 71-170), and bound_sum_log' (approximately
lines 1600-1650).

Local math remains pinned to Lean v4.33.0 and Mathlib revision
db584cd6d46c92f209a44c0f1c829460d327499d.
The maintained project uses Lean v4.35.0, so its proof terms are NOT
assumed compatible. The earlier 19-header Fourier/Mellin source was
independently --wfail/trust0 checked by the local coordinator at math
commit a9d81821f5044b1dedcf56523ab491f0ee04dcc8. This increment
imports that checked mathematical source and does not change its
published repaired blobs. The q=1 boundary packet at math
aacad842ff4b0991c9d4d4d319ae0ba94f2637a7 remains separately
queued for replay. No new runner proposal is requested here.

## 1. Substantive positive analytic supplier: first Fourier/Fubini

The new pure mathematical source is

    GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaQOneFiniteSigmaFubini.lean

The controls are

    GRWTSK/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOneFiniteSigmaFubiniControls.lean

For sigma>1 and T>0 define the literal pinned complex
von Mangoldt coefficient sequence Lambda_C(n) and

    xi(n,T) = log(n/T)/(2*pi).

For a continuous compactly supported complex test psi the source
authors the finite-sigma identity

    sum'_n LSeries.term(Lambda_C,sigma,n)*Fourier(psi)(xi(n,T))
      = integral_t LSeries(Lambda_C,sigma+it)*psi(t)*T^(it) dt.

This is the **FIRST** Fourier identity: there is no pole integral yet.
It is exactly the L-series part of the maintained formal PNT source.

### Genuine domination and Fubini justification

The source first proves the pinned L-series is absolutely summable:
LSeriesSummable_vonMangoldt for Re(s)>1. The normative equality
LSeries.norm_term_eq shows, for every real t,

    |term(Lambda_C,sigma+it,n)|=|term(Lambda_C,sigma,n)|.

The actual Fourier-phase integrand is

    F_n(t) = term(Lambda_C,sigma,n)
      * [exp(-2*pi*i*t*xi(n,T))*psi(t)].

Mathlib's Circle scalar Fourier character has norm one, so the source
proves the exact pointwise norm identity

    |F_n(t)| = |term(Lambda_C,sigma,n)| * |psi(t)|.

Compact support and continuity prove each F_n is genuinely integrable
over the WHOLE REAL LINE. The independent norm-integral summability
lemma proves

    sum_n integral_t |F_n(t)| dt
      = (sum_n |term(Lambda_C,sigma,n)|)
        * integral_t |psi(t)| dt < infinity.

This uses the L-series norm summability and actual Integrable(psi),
not a theorem hypothesis asking for Fubini to hold. The theorem
integral_tsum_of_summable_integral_norm consequently permits the
mathematically justified exchange

    sum_n integral_t F_n(t) dt
      = integral_t sum_n F_n(t) dt.

Finally an explicit coefficient identity evaluates

    term(Lambda_C,sigma,n)
      * exp(-2*pi*i*t*xi(n,T))
      = term(Lambda_C,sigma+it,n) * T^(it),

with n=0 handled separately (both source terms vanish). The norm
identity supplies actual absolute summability of the vertical terms,
so the sum inside the integral is the genuine LSeries at sigma+it,
not a symbolic or conditionally convergent expression. The source
uses the real Fourier transform with exp(-2*pi*i*t*xi) and positive
xi=log(n/T)/(2*pi). Its RHS phase is T^(+it), not T^(-it).

The generic theorem wienerFubini_firstFourier consumes a genuine
LSeriesSummable input. The final theorem
wienerFubini_qoneLambda_firstFourier DISCHARGES that input using the
pinned von Mangoldt theorem and keeps no new arithmetic assumption.

**Formal status:** the new theorem source is authored, not yet
Lean-elaborated or kernel checked. No global Wiener/Schwartz limit is
deduced by this source alone.

## 2. Exact uniform Chebyshev logarithmic kernel

The source introduces the arithmetic weight

    w_T(n) =
      0,                                     n=0;
      Lambda(n)/n *
        1/(1+(log(n/T)/(2*pi))^2),             n>=1.

It proves source-level termwise nonnegativity and the n=0 endpoint,
and the controls prove finite sums of these terms are nonnegative.

This is the exact historical frequency; the denominator contains
1+(log(n/T)/(2*pi))^2, not 1+log(n/T)^2 and not an unsigned surrogate
coefficient. For T>=1, the required UNIFORM bound is

    sum'_n w_T(n) <= (log(4)+4)*(1+2*pi^2).

Maintained theorem name: bound_sum_log'.

### Mathematical derivation of the still-unported bound

Set c=2*pi, and for x>=1 let

    W_T(x)=1/[x*(1+(log(x/T)/c)^2)].

For T>0, W_T(x)>0. Let u=log(x/T)/c. Direct differentiation gives

    W_T'(x)=
      -[1+u^2+(2*u/c)]/[x^2*(1+u^2)^2].

The numerator is
    (u+1/c)^2 + 1 - 1/c^2 > 0
because c=2*pi>1. Thus W_T is decreasing on (0,infinity),
with no change of the Fourier 2*pi normalization.

Let A(N)=sum_(1<=n<=N) Lambda(n)=psi(N). By pinned Mathlib,

    0 <= A(N) <= C*N,  C=log(4)+4.

Finite Abel summation gives, for every M>=1,

    sum_(1<=n<=M) Lambda(n)*W_T(n)
      = A(M)*W_T(M)
        + sum_(1<=n<M) A(n)*(W_T(n)-W_T(n+1))

      <= C * sum_(1<=n<=M) W_T(n).

The inequality follows by positivity and monotonicity of W_T and
A(n)<=C*n; summation-by-parts gives the telescoping cancellation
(the extra nonnegative final term makes this finite upper bound safe).

Since W_T is decreasing,

    sum_(n>=1) W_T(n) <= W_T(1) + integral_1^infinity W_T(x) dx.

For T>=1, W_T(1)<=1. The substitution v=log(x/T)/c yields

    integral_1^infinity W_T(x) dx
      = c * [pi/2 - arctan(log(1/T)/c)]
      <= c*pi = 2*pi^2.

Therefore the uniform bound above holds mathematically. This
argument also proves the nonnegative weighted series converges;
it cannot be obtained from pointwise Schwartz decay alone.

**Formal gap:** the new Lean file has NOT yet formalized the
derivative monotonicity, Abel finite-sum transport, and infinite
integral comparison. The exact bound_sum_log' remains a separate
kernel obligation. The present source defines the literal kernel
and proves its positivity, not the infinite quantitative inequality.
No property or structure field is introduced asserting that bound.

## 3. Remaining finite-sigma pole identity

The true finite-sigma Wiener analytic statement subtracts the
pole term from the FIRST Fourier identity. The still-required second
Fourier/Fubini identity is, for sigma>1, T>0:

    integral_{u>=-log T}
      exp[-u*(sigma-1)] *
        Fourier(psi)(u/(2*pi)) du
      =
      T^(sigma-1) *
        integral_t [1/(sigma+it-1)]*psi(t)*T^(it) dt.

The proof requires the integrability of psi and exponential decay
in u (sigma-1>0), then a genuine product-measure Fubini theorem,
the exact exp(-2*pi*i*t*xi) convention, and the evaluation of the
exponential antiderivative at -log T and +infinity.

Combining this second identity with the ACTUAL q=1 pole identity

    G(s)=LSeries(Lambda,s)-1/(s-1),  Re(s)>1

produces the correct finite-sigma identity for G. But no such
completed finite-sigma pole/Fubini theorem is claimed in this
increment; the q=1 boundary continuation source at aacad842
is also still unverified. The maintained full limiting_cor_schwartz
requires these, the sigma↓1 limit with the uniform logarithmic
kernel, and genuine compact-to-Schwartz approximation.

## 4. Hostile boundaries and next actual source

The source/controls distinguish:
- the zero L-series term from an illicit ordinary division by zero;
- actual L1 domination from pointwise summability;
- the positive logarithmic Fourier frequency from a sign reversal;
- termwise nonnegativity from the UNIFORM infinite kernel bound;
- the first Fourier identity from the still-open second pole identity;
- compactly supported boundary integrability from arbitrary
  Schwartz boundary integrability without any vertical growth bound.

The separately unverified PR #965 smooth-to-interval squeeze cannot
supply a missing analytic identity. The previously rejected fixed
integer-psi quadratic capacity remains MATHEMATICALLY REJECTED_ROUTE,
not a valid RH supplier.

## 5. Verification and ownership

Pure source declarations belong only in grwtsk/math. All actual
Lean/Lake execution, immutable source selection, generated theorem
types, transitive axioms, trust0 receipts, and coordination records
belong in grwtsk/noeaaeue. This source is a NEW SOURCE_DRAFT and is
not covered by the 19 earlier independently repaired/checked
Fourier/Mellin declarations. No runner proposal is issued here.

End state:
  finite-sigma first Fourier/Fubini source: SOURCE_DRAFT
  exact Lambda log-kernel source + positivity: SOURCE_DRAFT
  uniform bound_sum_log' port: OPEN
  second Fourier pole integral: OPEN
  full limiting_cor_schwartz: OPEN
  unconditional PNT/RH/Chowla/Goldbach: NOT CLAIMED

**Next substantive proof obligation:** port the exact second Fourier
pole/Fubini identity and the Abel summation/integral bound_sum_log'
with all convergence and endpoint details, then replay the entire
finite-sigma theorem and carry sigma↓1 to the compact-test limit.
