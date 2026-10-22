# Pinned q=1 Wiener–Ikehara boundary estimates and Schwartz decay

**Status:** SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
**Mathematical owner:** grwtsk/math, directly on main.
**Operational owner:** grwtsk/noeaaeue for future exact-source replay and axiom audits.
**Human relay:** 2cc88298-64e7-4cda-bdec-725926184406.

This source does NOT modify the earlier assigned source blobs
5b16e6712b6944b39659a448d5321acd662761a9 and
78375795ec74d54ee1ee7a052fc86e6e66055a8a.
Those earlier Fourier/Mellin sources are still awaiting local --wfail/trust0
replay from the coordinator; no second runner proposal is requested.

## Maintained formal PNT source

The primary maintained formalization is
AlexKontorovich/PrimeNumberTheoremAnd main at commit
127b50e33f6033e2147921167a117af96d9ba4ea,
PrimeNumberTheoremAnd/Wiener.lean blob
59fd5069a7eca51a8bc5005b5c43e31a5cbb38ac.

Its relevant results are, approximately:
- Wiener.lean lines 388–464: decay_bounds_key / Schwartz Fourier 1/(1+u²) decay and integrability;
- lines 920–1060: limiting_fourier_lim1_aux, limiting_fourier_lim1 and limiting_fourier_lim2 (dominated convergence at sigma↓1);
- lines 1063–1130: limiting_fourier_lim3, boundary integration dominated by a compact vertical rectangle;
- lines 1149–1185: limiting_cor_aux, the Riemann–Lebesgue oscillation step;
- lines 1646–1715: summable_fourier, bound_I1', bound_I2 and bound_main, the Chebyshev-uniform Schwartz error;
- lines 1722–1819: limiting_cor_W21 and limiting_cor_schwartz, compact truncation and uniform tail control.

The maintained project currently uses Lean v4.35.0. grwtsk/math remains pinned to
Lean v4.33.0 and Mathlib revision
db584cd6d46c92f209a44c0f1c829460d327499d.
The maintained PNT proof is not imported as an unverified axiom.

## Concrete mathematical source, not an equivalent premise

Pure Lean module:

    GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaQOneBoundaryEstimates.lean

Hostile controls:

    GRWTSK/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOneBoundaryEstimatesControls.lean

This module sources the ACTUAL arithmetic function
Lambda(n) = ArithmeticFunction.vonMangoldt(n), complexified into C.
The q=1 residueClass indicator satisfies Lambda_{q=1,a=1}(n)=Lambda(n)
for every natural n, including zero and prime powers. The module
transports the coefficient equality into the LSeries and consumes
the pinned ArithmeticFunction.LSeriesSummable_vonMangoldt theorem for
all complex s with Re(s)>1.

Let

    G(s) := ArithmeticFunction.vonMangoldt.LFunctionResidueClassAux
              (1 : ZMod 1) s.

Pinned Mathlib supplies an actual theorem that G is continuous on
{Re(s)>=1}; its pole-identity theorem and totient(1)=1 give precisely

    G(s) = LSeries(Lambda,s) - 1/(s-1), for Re(s)>1.

The residue is literally 1, not a fitted parameter. The source
preserves the separation between equality on the open half-plane
and continuity on its closed boundary.

### A. True compact-boundary integrability

For any continuous compactly supported psi:R->C, the function

    t |-> G(1+i*t)*psi(t)

is integrable on the entire real line. The proof uses composition
of the pinned G continuity on the right closed half-plane and compact
support of psi. This is a mathematical fact proved from actual
sources, not a merely asserted integrability interface.

Crucial limitation: continuity of G on the infinite vertical line
does NOT, by itself, imply that G(1+i*t)*psi(t) is integrable for every
arbitrary Schwartz psi. There is no global vertical-growth theorem
in this source. The full Schwartz extension must first control compact
tests and then use a separate uniform tail estimate.

### B. Riemann–Lebesgue boundary cancellation

The pinned Riemann–Lebesgue lemma is
Real.zero_at_infty_fourier. The source ports the actual equality between
the oscillatory complex power and the Fourier transform at frequency

    xi(T) = -log(T)/(2*pi).

With the convention Fourier(f)(xi)=integral_t exp(-2*pi*i*t*xi) f(t)dt,

    exp(-2*pi*i*t*xi(T)) = exp(i*t*log(T)) = T^(i*t),

for T>0. This is the NEGATIVE logarithmic frequency. The source then
establishes the genuine boundary limit

    integral_t G(1+i*t)*psi(t)*T^(i*t) dt -> 0 (T->infty)

for any continuous compactly supported psi. This is the q=1,
arithmetically sourced specialization of the maintained
limiting_cor_aux, and no Wiener–Ikehara limit theorem is assumed.

### C. Actual dominated sigma↓1 boundary integral

For each fixed T>=1 and compactly supported continuous psi, the
source proves that

    integral_t G(sigma+i*t)*psi(t)*T^(i*t) dt

converges as sigma decreases to 1 from above to

    integral_t G(1+i*t)*psi(t)*T^(i*t) dt.

It uses the compact rectangle

    {sigma+i*t : 1<=sigma<=2, t in tsupport(psi)}

inside the closed right half-plane, continuity of G on that rectangle,
attainment of a finite maximum M for |G|, |T^(it)|=1 for T>0, and the
integrable majorant M*|psi(t)|. The integral limit is obtained through
pinned dominated convergence, with every measurability, domination,
and pointwise-limit premise exposed. This is an actual proof of the
boundary passage, not a new field asking for it.

### D. Genuine Schwartz Fourier decay and integrability

For any g in the PINNED Schwartz space S(R,C), its Fourier transform
is also a Schwartz function. Applying SchwartzMap.decay at (k,n)=(0,0)
and (2,0) constructs C>=0 such that for all u,

    |Fourier(g)(u)| <= C/(1+u²).

The source retains the same constant after the historical rescaling

    |Fourier(g)(u/(2*pi))|
      <= C/(1+(u/(2*pi))²),

and uses Schwartz integrability and the nonzero dilation 2*pi to prove
the scaled Fourier integrand is genuinely Lebesgue integrable.

This directly establishes the pointwise decay and integral
summability facts needed by the historical uniform Fourier tail
argument, without importing an old W21 seminorm type as an axiom.

## The EXACT remaining quantified estimate

The problem now lies in the finite-sigma Fourier identity and the
uniform Chebyshev-weighted sum control. The maintained Wiener source
proves (in bound_sum_log') the following quantitative estimate for
any f:Nat->C satisfying one fixed nonnegative Chebyshev bound

    sum_(n<N) |f(n)| <= C*N:

for ALL T>=1,

    sum'_(n>=1) [ |f(n)|/n *
       1/(1+( log(n/T)/(2*pi) )²) ]
       <= C*(1+2*pi²).

The zero index contributes zero under the historical totalized
convention. For the actual von Mangoldt function, the known pinned
Chebyshev bound permits C=log(4)+4.

This UNIFORM-in-T estimate, not just pointwise Fourier decay,
is the necessary domination for the historical compact-truncation
approximation. It is NOT proved in this new source packet and must
not be inferred from continuous G or Schwartz membership alone.

For the compact-support case, the first missing complex identity is
the finite-sigma Fourier/Fubini equality (for T>=1, sigma>1,
compactly supported smooth psi):

    sum'_n term(Lambda,sigma,n) *
       Fourier(psi)(log(n/T)/(2*pi))
    - T^(1-sigma) *
       integral_{u>=-log(T)}
         exp[-u*(sigma-1)]*Fourier(psi)(u/(2*pi))du
    = integral_t G(sigma+i*t)*psi(t)*T^(i*t)dt.

The source already proves the actual G pole identity, lambda
summability, boundary sigma↓1 integral limit and boundary oscillation.
To prove the full limiting_cor_schwartz one must still:
1. establish that exact finite-sigma first/second Fourier Fubini identity
   using actual absolute integrability on Re(sigma)>1;
2. justify sigma↓1 passage in the arithmetic Fourier sum by the
   Chebyshev-weighted logarithmic kernel;
3. construct the compact-support truncation of an arbitrary Schwartz
   test and prove its W21/error norm tends to zero;
4. prove the UNIFORM bound above so that the tail error tends to zero
   uniformly in T, allowing the compact case to extend to Schwartz.

No theorem named limiting_cor_schwartz, WeakPNT, ThetaPNT, or RH is
introduced as a structure field or unproved input. The existing
smooth-to-interval draft PR #965 is separately unverified and cannot
supply the missing Fourier limit.

## Trust status

All new Lean is SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
The two already assigned Mellin/Fourier source blobs remain unchanged
and are awaiting local --wfail/trust0 replay; this response does not
request another runner or claim its outcome.

All future execution, source-provider binding, compiler output,
axiom receipts, and operational custody belong in grwtsk/noeaaeue,
at a specific immutable math commit. Preserve concurrent main
updates; never claim generic main build success is an exact-source
verification of these declarations.

The earlier fixed all-target integer-psi capacity has been
mathematically REJECTED_ROUTE. This reusable Wiener--Ikehara
analysis is not evidence for RH, Chowla or Goldbach.
