# Original Möbius adaptive Perron: sharper coefficient 24, extended finite contour reach, and effectivity audit

Research date: 2026-11-02, America/Los_Angeles.
Attribution: grwtsk contributors; formalization assistance OpenAI ChatGPT.
Scope: unconditional original-right-line ordinary mathematics, plus published finite-height zero verification where explicitly stated. Source-level Lean proof candidates, NOT pinned kernel results. No RH solution.

## Existing source and original arithmetic invariant

The untouched current math/main source files include:
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusAdaptiveVerifiedHeightPerron.lean (Git blob b623c5ac420ac6860ff29c4d2266dbf06c47818e).
- .../MoebiusAdaptiveFiniteScaleRHReturn.lean (blob 212c433cb8e7560f99d3fea75bed5d8b79d3650e).
- .../MoebiusPerronLocalCriticalWindow.lean (blob d48a4182e582a228e140d445b5778b41791962b8).
- .../MoebiusReciprocalCriticalCompact.lean (blob 312fc9341c57dc783acc914b5ed43bd2d3bf2152).
- .../MoebiusFarCompleteUpperTransfer.lean (blob 11b3913a25626bbd4e1a593b50c31e82bac6abee).

All source computations retain the ACTUAL finiteMertensPrefix N = sum_(n<=N) mu(n) (including n=1 and squareful mu=0), original Dirichlet reciprocal 1/zeta on Re>1, original perronVertical, original birth-gated pickupResponseGram, full sign and both ordered FAR Gram orientations, and original dyadic T_J=J*log2. There is no surrogate random arithmetic coefficient and no source redefinition.

The earlier adaptive right-line used x=N+1/2,c=1+1/log x and a fixed published Platt-Trudgian height H0=3*10^12, but its original-positive-series upper was S_c(x)<=64log x, giving error 200*x*log x/H0. This review proves a smaller constant and records exactly what it does/doesn't imply for RH.

## New unconditional elementary theorem: S_c(x)<=13 log x

Let N>=8, x=N+1/2>=8.5, L=log x>2 and
 c=1+1/L with 1<c<3/2. Define
 S_c(x)=sum_(n=1)^infinity
                 [n^(-c)/|log(x/n)|].
No denominator vanishes because x is a HALF-INTEGER and |x-n|>=1/2. Convergence follows from c>1 and logarithmic growth in the tail.

Split ALL positive integers into:
 (A) n<=x/2, (B) x/2<n<2x, and (C) n>=2x.

Region A: log(x/n)>=log2>1/2, so
  A<=2*sum_(n>=1)n^(-c)
    <=2*(1+1/(c-1))=2+2L,
using a decreasing positive integral comparison.

Region C: since 2x=2N+1 is exactly an integer,
  sum_(n>=2x)n^(-c)
    <=integral_(2x-1)^infinity t^(-c)dt
    =(2x-1)^(1-c)/(c-1)<=L
because 2x-1>=1, c>1. Again log(n/x)>=log2>1/2,
so C<=2L.

Region B is the TRUE improvement. For 1<=n<x:
  log(x/n)>= (x-n)/x,
  n^c>=n, and x/n<2 (since n>x/2),
so
  n^(-c)/log(x/n)<=2/(x-n).
For x<n<2x:
  log(n/x)>=(n-x)/n and n^c>=n, so
  n^(-c)/log(n/x)<=1/(n-x).

Each half integer distance equals k+1/2; each side has
AT MOST N distances with k=0,...,N-1.
Use the exact decreasing harmonic comparison
  sum_(k=0)^(N-1)1/(k+1/2)
    <=2+integral_0^(N-1)dt/(t+1/2)
    =2+log(2N-1)
    <3+log x,
since 2N-1<2x and log2<1.
Thus B<=3*(3+L)=9+3L.

Adding all disjoint regions:
  S_c(x) <= (2+2L)+(9+3L)+2L
          =11+7L <=13L,
because L>=2. THIS IS A COMPLETE ORDINARY MATHEMATICAL
PROOF; no sign information, zeta zero information, RH
or probabilistic independence is used.

The preexisting scalar Perron inversion and its two
oscillatory tails give for any H>0
  |M(N)-V_(c,H)(x)|
      <=(2/pi)*[x^c/H]*S_c(x).
Since x^c=e*x exactly, and pinned Mathlib supplies
 e<2.7182818286<11/4 and pi>3,
  (2/pi)*e*13 <(2/3)*(11/4)*13=23.8333...<24.

Hence the stronger ORIGINAL arithmetic right-line theorem:
  |M(N)-V_(c,H)(x)|<=24*x*log x/H,
  for EVERY N>=8 and EVERY positive H.          (1)

This is a genuine eightfold improvement over 200. In pinned
Lean the two remaining standard analytic facts are explicitly
named SOURCE PROP targets:
  SharperAdaptiveReciprocalLogSumTarget
  AdaptiveOriginalOscillatoryTailTarget.
The scalar 24 absorption has a Lean proof-body candidate
that uses pinned Real.exp_one_lt_d9 and Real.pi_gt_three
and the existing exact x^c=e*x source scalar target.
No research axiom or RH-sized assumption is introduced.

## Stronger but still FINITE near-critical verified-height window

Use exactly the independent published 2021 Platt-Trudgian
verification H0=3*10^12 for the ordinary rigorous finite-height
zero-free rectangle:
  sigma=1/2+delta<=Re s<=2, |Im s|<=H0,
  0<delta<=1/4.
For fixed delta the genuine regularized reciprocal R(s)
has some finite C_delta bounding its norm on the CLOSED
rectangle. The existing proof has NOT computed C_delta
numerically, and the P&T finite theorem remains unported
into pinned Lean; do not imply numerical effectivity.

The *same* original local Cauchy contour shift and its
vertical/horizontal norm bounds, now using (1) at H0,
give for all N>=8, x=N+1/2:
  |M(N)| <=
    (C_delta/pi)*x^sigma*(1/sigma+log H0)
       +(2*C_delta+24*log x)*x/H0.            (2)

The true small-frequency and physical source have not been
replaced by any positive surrogate.

Define
   L0=1+log H0,
   Q'=H0/(100*L0),
   X'_delta=(Q')^(1/(1/2-delta)).             (3)
If x<=X'_delta then
  x^(1-sigma)<=Q'
and log x <= log X'_delta <=4log H0,
because 1-sigma>=1/4 and Q'<H0.
Therefore
  ((2*C_delta+24log x)*x/H0)/x^sigma
   <=(2*C_delta+96log H0)/(100*(1+log H0))
   <= C_delta+1.                             (4)

Thus the old identical D_delta formula is sufficient on
the larger finite range:
  |M(N)| <= D_delta*x^(1/2+delta),
  8<=N, N+1/2<=X'_delta,                     (5)
  D_delta=(C_delta/pi)*(1/(1/2+delta)+log H0)
            +C_delta+1.

The OLD cutoff used 1000 in place of 100. The EXACT
multiplicative reach factor is
  X'_delta/X_delta=10^(1/(1/2-delta)).
The new range is ~100 times larger for tiny delta and
10,000 times larger at delta=1/4.

Numerically evaluated CONSERVATIVE cutoffs from (3):
  delta       previous X       new X'         dyadic J<=
  0.001       1.0963e16        1.1065e18          59
  0.010       2.1605e16        2.3734e18          61
  0.050       6.1167e17        1.0203e20          66
  0.100       1.0229e20        3.2347e22          74
  0.250       1.0369e32        1.0369e36         119
These are purely scalar ranges, NOT exhaustive direct
verification of M(N), and do not imply a numerically small
D_delta or any global asymptotic.

## Critical effectivity audit: unspecified constants make a finite power bound automatic

This point is essential for scientific integrity and
corrects an over-strong interpretation of the previous
finite-scale RH-shaped program.

For any arbitrary sequence A(N) with |A(N)|<=N and ANY
finite X>=1, exponent sigma>=0, all integers 1<=N<=X
automatically satisfy
  |A(N)|<=X*N^sigma.
Indeed N^sigma>=1 and N<=X. No zero verification, PNT,
Möbius signs, positivity, RH, or cancellation is needed.
Thus merely proving (5) with *some unknown finite D_delta*
on a finite set is, BY ITSELF, not a substantive power
saving over the trivial |M(N)|<=N.
This is mathematically true for any finite cutoff;
the previously enlarged source window is not a RH result.
The NEW source implements the elementary finite-range
power-bound-automatic theorem as a Lean proof candidate.

What IS new here and nonvacuous is (1), an explicit
UNCONDITIONAL bound on the original oscillatory Perron
truncation error, and (2), a more precise symbolic
inequality showing how a genuine certified numerical
reciprocal bound C_delta would improve actual Mertens data.

An EXACT checkable certificate criterion at a particular
original integer N>=8, x=N+1/2 and sigma=1/2+delta is:
  C_delta < C_effective(delta,N),                (6)
where
  C_effective(delta,N) =
     [N-24*x*log x/H0]/
     [(x^sigma/pi)*(1/sigma+log H0)+2*x/H0].
If the numerator is positive and the published finite
zero verification plus an INDEPENDENT RIGOROUS numerical
minimum-modulus computation certify C_delta below that
threshold, inequality (2) genuinely beats the trivial
|M(N)|<=N at that N.

For delta=0.01 and N=10^12,
  C_effective≈77,650.9995682.
This is a THRESHOLD, not a certified C_delta. No
minimum-modulus computation or interval enclosure
establishing the threshold has been performed.
Without one, the finite RH-shaped exponent is not
yet an effective quantitative arithmetic improvement.

## Exact original causal energy and signed FAR transfer, scope of validity

As in the unchanged parent source, original
  pickupVelocity(u)=exp(-u/2)*mertensPrefix(exp u),
  wholePickup(T)=int_0^T pickupVelocity(u)du,
  pickupEnergy(T)=int_0^T wholePickup(t)^2 dt.
The finite prefix (5), after paying finite small N,
gives on T<=log(X'_delta-1/2)
  pickupEnergy(T) <= E_delta*exp(2delta*T).
The required original prefix-to-physical interval calculus
is an explicit unported Lean proposition
  SharperFiniteRangeMertensEnergyTarget;
no source-signed FAR hypothesis is imported.

With the existing exact original source identity
  pickupCross(T_J)=collarIncident+shortRatio
                     +reducedClose+farReducedOrLongCross
and the THREE old independent elementary absolute packet
bounds at r=2delta, the true signed complete original FAR
is bounded by
  farReducedOrLongCross(B_J,empty,J)
     <= C_far,delta*exp(2delta*T_J)
for ALL admissible changing finite true-prime bank families
and ONLY J with T_J<=log(X'_delta-1/2).
The constant C_far,delta is again unspecified and,
without an effective input, finite-range all-rate control
is automatic for any source by trivial counting. This
is NOT a new RH-strength asymptotic cancellation theorem.

The original every-positive-rate for UNBOUNDED J is
equivalent to RH in the previously established source
framework; it remains OPEN. Even a fully certified
finite-height C_delta cannot alone establish it.

## Source verification and next useful mathematical objective

Additive Lean source modules:
  MoebiusAdaptiveSharperPerronTail.lean:
    genuine positive arithmetic-free reciprocal-log sum,
    fixed original half-integer Perron error, scalar
    constant 24 candidate theorem body.
  MoebiusAdaptiveSharperFiniteCertificate.lean:
    new X'_delta, exact original finite Mertens consumer
    and rigorous finite-window triviality audit.
  MoebiusAdaptiveSharperFiniteFar.lean:
    actual original energy and signed FAR return,
    conditional ONLY on unported arithmetic-free finite
    physical calculus and independently paid proper
    original source packets.
All retain original signed mu coefficients, physical
Gram, original terminal grid, real source masks,
source imported theorem statements and same genuine
verified-height external input.

The materially useful next numerical task is a
rigorous interval-arithmetic bound on
  min_{1/2+delta<=Re s<=2, |Im s|<=H0}
       |ZetaAsymptotics.riemannZeta₁(s)|
or a cheaper sharply bounded contour subset, to
produce a known numerical C_delta and compare it to
(6). The FULL H0 rectangle is too large to assert
an easy interval computation; no such computation is
claimed here. Even this would only improve finite-range
arithmetic, not prove RH.

An independent genuinely new all-height arithmetic
signed-cancellation or zero-free supplier is STILL
needed to bound the full original FAR source for
EVERY positive rate on ALL dyadic scales.

Pinned Lean v4.34.1 and Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612.
Compilation remains DEFERRED per user; parser,
elaboration, expected types, fresh independent kernel,
transitive axiom/opaque/native audit all NOT_RUN.
No root import/toolchain/old source modification,
native Noe runner, CI, scheduler or background job.

References:
- Platt and Trudgian, Bull. LMS 2021, 53:792-797,
  DOI https://doi.org/10.1112/blms.12460 ,
  published finite-height zero verification.
- Pinned Mathlib:
  https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Complex/ExponentialBounds.lean .
- Original noncircular grwtsk/math sources and RH issue #1556.
