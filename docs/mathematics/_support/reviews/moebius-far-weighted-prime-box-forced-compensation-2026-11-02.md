# RH arithmetic continuation: exact weighted prime-box asymptotic, forced signed compensation, and unconditional rate-one stretched saving

Research date: 2026-11-02 (America/Los_Angeles).
Original mathematical work attributed to grwtsk contributors; source proof formalization assistance by OpenAI ChatGPT.
Classification: unconditional ORDINARY mathematics from established PNT and classical quantitative Mertens; SOURCE_PROOF_CANDIDATE in pinned Lean; compilation deliberately DEFERRED.
Not an all-positive-rate bound and NOT a proof of the Riemann Hypothesis.

## 1. Exact original arithmetic and physical source

All original source definitions are UNCHANGED:
  moebiusReal(m)*moebiusReal(n)*pickupResponseGram(T,m,n)
on the genuine original terminal positive integer support,
physical time T=J*log 2 and N=2^J, with m!=n, both original
ordered orientations and squareful coefficients exactly zero.
The continuing exact original far selector excludes only
shortRatioPair and reducedClosePair inside the actual lowIndices
finite prime-bank complement.

For a FIXED genuinely empty prime bank, earlier elementary
source work proved that its actual highSmooth terminal collar
is empty for every J>=8. Hence lowIndices(empty,J) is the
entire unchanged terminal inventory for the asymptotic limits.
The inherited true FAR source is
  F_J=farReducedOrLongCross(emptyPrimeBand,empty,J).

The two previous explicit finite prime boxes are:
  A=[1/16,1/12] and B=[1/4,1/3].
At N=2^J let
 P_J={p prime : p/N in A},
 Q_J={q prime : q/N in B},
 R_J={r prime : 2r/N in B}.
Use integer inequalities 16p>=N,12p<=N, 4q>=N,3q<=N,
8r>=N,6r<=N, exactly as the previous published Lean source.
The true pairs (p,q),(q,p) are positive (mu products +1).
The pairs (p,2r),(2r,p) are negative (mu products -1).
The two selected original pair classes are disjoint
(prime q>2 is odd, 2r is even), and all these pairs survive
the original FAR mask for J>=8.

Let B_J denote the COMPLETE true selected signed pair packet,
including BOTH orientations:
  B_J =
     2 * sum_(p in P_J,q in Q_J) K_T(p,q)
       -2 * sum_(p in P_J,r in R_J) K_T(p,2r).     (1)
Let R_J^other be the FULL actual original FAR pair sum on
every pair outside exactly these two original source rectangles.
No sign is changed or pair duplicated; exact finite double
sum partition gives
  F_J=B_J+R_J^other.                              (2)

The new Lean file MoebiusFarPrimeBoxWeightedAsymptotic.lean
contains the literal source finite mask/partition theorem.
Its source comparison B_J=analyticalNet(J) (for J>=8)
is an EXPLICIT still-unported elementary Lean Prop, not an
assumed RH-strength cancellation.

## 2. EXACT physical-time Gram scaling, not a surrogate

For positive integers m,n<=N, let a=m/N,b=n/N in (0,1].
The original birth-gated response is
  r_m(u)=2*(m^(-1/2)-exp(-u/2))
at log m<=u and zero before. With t=T-u (T=log N),
  r_m(T-t)=(2/sqrt N)*(a^(-1/2)-exp(t/2))
while 0<=t<=log(1/a), and similarly for n.

Thus the ORIGINAL physical Gram is exactly
  K_T(m,n)=(1/N)*kappa(a,b),                      (3)
where the positive continuous normalized kernel is
  kappa(a,b)=
    4*integral_(0 to log(1/max(a,b)))
      (a^(-1/2)-exp(t/2))*(b^(-1/2)-exp(t/2))dt.

On A x B, a<b always, so max(a,b)=b and explicit integration
of the ORIGINAL physical formula yields
  kappa(a,b)=4*[
      a^(-1/2)*(b^(-1/2)*(log(1/b)-2)+2)
          -(b^(-1/2)-1)^2].                       (4)

The original physical-time last-half-unit subinterval
u in [T-1/2,T] proves kappa(a,b)>1 throughout A x B:
a<=1/12,b<=1/3, exp(1/4)<4/3,
sqrt12>3, sqrt3>5/3, so the two true responses are
>=10/(3sqrt N) and >=2/(3sqrt N) on that interval,
and K_T(m,n)>10/(9N)>1/N.
The expression is strictly positive; no random Gram or
stationary-phase modification is involved.

## 3. Weighted classical PNT and the exact leading constant

The classical prime number theorem pi(x)~x/log x implies
weak convergence of the finite prime measures on every
compact interval [a,b] in (0,infinity):
  (log N/N)*sum_(p prime,p/N in [a,b]) delta_(p/N)
     --> Lebesgue measure restricted to [a,b].
This follows by PNT interval counts and step-function
approximation, then uniform approximation of continuous
functions. The two product measures converge as well,
because they have bounded total mass and kappa is continuous
and bounded on the fixed compact A x B.

For the R_J prime set, the map r->2r gives
  (log N/N)*sum_(r prime,2r/N in B) delta_(2r/N)
      --> (1/2)*Lebesgue on B.
The factor 1/2 is NOT an independence assumption: it is the
literal Jacobian / prime-density effect of doubling the
original integer argument. All selected signs remain true mu.

Put I=int_A int_B kappa(a,b) db da. Equations (3)
and weighted PNT now give the independent genuine limits
  (T^2/N)*sum_(p in P,q in Q)K_T(p,q) --> I,
  (T^2/N)*sum_(p in P,r in R)K_T(p,2r) --> I/2.
Therefore the COMPLETE signed prime-box subpacket (1)
satisfies
  (T^2/N)*B_J --> 2I-2*(I/2)=I>0.              (5)

We can compute I in closed form from (4). Let
  A0=int_A a^(-1/2)da=1/sqrt3-1/2,
  A1=length(A)=1/48,
  B0=[2sqrt(b)log(1/b)+2b]_(b=1/4)^(b=1/3)
       =2log3/sqrt3+1/6-log4,
  B1=[log b-4sqrt(b)+b]_(b=1/4)^(b=1/3)
       =log(4/3)+25/12-4/sqrt3.
Then the exact constant is

  I=4*((1/sqrt3-1/2)*(2log3/sqrt3+1/6-log4)
      -(1/48)*(log(4/3)+25/12-4/sqrt3))
    =0.01000771806416765...>0.                (6)

The strict bound kappa>=1 shows I>=length(A)*length(B)
=1/576 without trusting the decimal. No regression or
numerical fitting supplies this constant. It is the exact
integral of the physical source.

The weighted-PNT and original-physical scaling steps remain
separately visible unproved pinned-Lean Props:
  OriginalPrimeBoxExactSourceTarget,
  WeightedPrimeBoxPNTTarget,
  OriginalKernelScalingAndIntegralTarget.
The pure finite partition and elementary limit algebra have
new Lean theorem proof bodies, but no Lean compilation ran.

## 4. A NONCIRCULAR full-source cancellation theorem at the prime scale

The classical unconditional Vinogradov-Korobov zero-free
region gives the original Mertens bound for every fixed A:
  |M(x)|<=C_A*x/(1+log x)^A, x>=1.
The original causal signed finite Abel identity and true
physical source yield for every fixed integer beta>=1
  pickupEnergy(T)<=C_beta*exp T/(1+T)^beta,
after selecting a sufficiently large Mertens log-power.
This is the preexisting classical original-source PNT route,
not an RH-strength Mertens power estimate.

Since pickupEnergy(T)=pickupDiagonal(T)+pickupCross(T),
  pickupEnergy>=0, 0<=pickupDiagonal(T)<=2T^2,
we obtain the genuine TWO-SIDED upper
  |pickupCross(T)|<=C_beta*exp T/(1+T)^beta+2T^2.

The three previously paid literal original source packets,
collarIncident, shortRatio and reducedClose, have separately
proved ordinary-math subexponential ABSOLUTE envelopes with
ONE source-independent cutoff schedule (their pinned Lean
numerical formalizations remain NOT_RUN). In the fixed
empty-bank case, the collar packet is ZERO for J>=8.
The other two packets are O(poly(T)*exp(sqrt T)),
hence o(exp T/(1+T)^A) for EVERY fixed A.

The EXACT unchanged decomposition is
 pickupCross(T_J)
   =collarIncident(empty,J)
      +shortRatio(empty,J)
      +reducedClose(empty,J)+F_J.

Choose beta=4 in the genuine classical source bound.
The COMPLETE signed far source therefore satisfies
  F_J=o(N/T_J^2),                              (7)
indeed |F_J|=O_A(N/T_J^A) for every fixed A>0.
This is NOT an all-positive-exponential-rate bound:
for epsilon<1, exp(T)/T^A >> exp(epsilon*T).

Combining (2), (5) and (7) gives a new forced original
Möbius signed cancellation theorem:
  (T_J^2/N)*R_J^other --> -I.                  (8)
Equivalently,
  R_J^other= -I*N/T_J^2 + o(N/T_J^2),
and the previously selected positive prime-box packet
B_J=+I*N/T_J^2+o(N/T_J^2)
is CANCELED, to exact leading order, by OTHER original far
Möbius pairs.

This is a genuine arithmetic conclusion that the negative
compensation lives outside the selected prime/2prime boxes.
It is NOT obtained by assuming arbitrary sign balance,
nor by an equivalence disguised as a theorem, nor by RH.
The remaining other source contains every unselected original
signed pair with its real coefficient and physical birth.

The companion Lean file
MoebiusFarPrimeBoxForcedCompensation.lean contains the exact
limit-subtraction proof body GIVEN explicitly the independent
classical source input:
 ClassicalMertensToFarPrimeScaleTarget,
which is the ordinary PNT/log-power-to-causal-energy transfer
and the three genuine elementary packet bounds. The old
unproved pinned-Lean gates remain visible. It does NOT
take an every-rate FAR/RH assertion as input.

## 5. Stronger classical Vinogradov-Korobov physical envelope

The established unconditional classical Mertens theorem
(see Lee-Leong arXiv:2208.06141 and Fields Institute notes)
actually gives for large x
  |M(x)|<=C*x*exp(-c*(log x)^(3/5)*
                               (loglog x)^(-1/5)).
Choose the smooth positive increasing sublinear scale
  phi(t)=t^(3/5)/(log(3+t))^(1/5), t>=0.
By adjusting constants on a finite initial range one can
write for ALL t>=0,
  |M(exp t)|<=C*exp(t)*exp(-c phi(t)).
The exact original causal source has
  pickupVelocity(t)=exp(-t/2)*M(exp t),
  wholePickup(T)=int_0^T pickupVelocity(t)dt,
  pickupEnergy(T)=int_0^T wholePickup(t)^2dt.

The positive function phi is increasing, satisfies
  phi(t/2)>=2^(-3/5)*phi(t), phi(t)=o(t),
and grows faster than every fixed multiple of log(2+t).
Proof of monotonicity: d(log phi)/dt =
  3/(5t)-1/(5(3+t)log(3+t))>0 at t>0.

Split the FIRST original causal integral at T/2. For T>=0,
  |wholePickup(T)|
   <=2C*exp(T/4)+2C*exp(T/2-c phi(T/2)).
By phi(T/2)>=2^(-3/5)*phi(T) and phi(T)=o(T),
for all sufficiently large T and adjusted positive constants
  |wholePickup(T)|<=C1*exp(T/2-c1 phi(T)).

Split the SECOND original causal square-energy integral
at T/2. Since phi is increasing,
  pickupEnergy(T)
    <=C1^2*(exp(T/2)+
           exp(T-2*c1*phi(T/2)))
    <=C2*exp(T-c2 phi(T)).
Every step is a true interval integral of the original
signed waveform, not a positive-only synthetic Gram.

The original diagonal <=2T^2 and all three source-specific
proper paid packets are exp(o(T)). Their absolute magnitude
is eventually << exp(T-c2 phi(T)), since phi(T)=o(T).
Consequently the COMPLETE original far source (empty bank,
and uniformly for the prescribed admissible growing banks
when using the previously bank-uniform paid estimates) satisfies
  |F_J|<=C3*exp(T_J-c3 phi(T_J)).                (9)

This is an UNCONDITIONAL ordinary-mathematical fixed RATE-ONE
stretched-exponential saving, genuinely stronger than any
fixed inverse-logarithm power. It is NOT exp(epsilon*T) for
every epsilon>0, because phi(T)/T->0.
The new local Lean source exposes the independent
ClassicalVinogradovKorobovMertensTarget and
ClassicalVinogradovKorobovFarSavingTarget Props; the latter
real-calculus bridge has not been proved in pinned Lean.

## 6. Full FAR population relative balance, no RH assumption

Write original far F_J=P_J^+-P_J^-, where the two actual
positive masses are exactly the previous genuine
FarPrimeBoxPNTMass.positiveFarMass and negativeFarMass.
The independent eventual PNT prime-box lower gives
  P_J^+,P_J^- >= N/(4608*T_J^2)
for one fixed J>=J0 onward, so
  P_J^++P_J^- >= N/(2304*T_J^2).

The unconditional classical quantitative Mertens estimate
(7) shows for every fixed beta>2 that
  |P_J^+-P_J^-|/(P_J^++P_J^-)
        =O_beta(T_J^(2-beta)).
Since beta is arbitrarily large, the actual COMPLETE
opposite-sign FAR populations have relative imbalance
O_A(T_J^(-A)) for EVERY fixed A>0.
This result is NONCIRCULAR and contains all original terms.

The stronger VK saving (9) gives eventually
  |P_J^+-P_J^-|/(P_J^++P_J^-)
    <=2304*C3*T_J^2*exp(-c3 phi(T_J))
    <=C4*exp(-c4 phi(T_J)),                     (10)
for some positive C4,c4. The final absorption uses
2log T=o(phi(T)). The exponent still approaches rate ONE,
not the all-positive-rate RH growth.

The source records this stronger result as
ClassicalRelativeFarBalanceVKTarget, with the original
physical prime source, independent PNT box counts and
Mertens VK input as explicit arguments. This is NOT a
checked Lean theorem or an all-rate signed FAR supplier.

## 7. Independent finite original-source diagnostic

The original closed-birth pickup Gram is numerically
verified against the exact normalized kernel. For N=256:
   m=17,n=67: closed Gram 0.02885913616187;
   m=19,n=71: closed Gram 0.02394320424220;
   m=17,n=74: closed Gram 0.02412767631134.
Direct quadrature differences were <=7e-13 and no model
time-shift was substituted.

Using the actual true-prime boxes and normalized physical
kernel, the independent finite data at J=8..18 are:
    J  |P| |Q| |R|  scaled_positive scaled_negative scaled_signed_net
     8   2    5   2      0.027727      0.010127       0.035199
     9   2    8   5      0.013218      0.008255       0.009927
    10   5   14   8      0.019095      0.010570       0.017049
    11   8   26  14      0.016271      0.009243       0.014055
    12  14   46  26      0.015711      0.008581       0.014260
    13  26   89  46      0.015944      0.008379       0.015132
    14  46  157  89      0.014686      0.008292       0.012789
    15  89  299 157      0.015469      0.008098       0.014741
    16 157  550 299      0.014235      0.007775       0.012919
    17 299 1039 550      0.014525      0.007661       0.013730
    18 550 1940 1039     0.013955      0.007474       0.012962
The predicted independent limits are I=0.010007718064
for the positive one-order box, I/2=0.005003859032
for the negative one-order box, and I for the oriented
SIGNED box. The finite approach is slow due to prime-density
logarithms; the theorem is PNT, NOT inference from the table.
The computations are NONCERTIFYING float diagnostics.

## 8. Exact source acceptance and unresolved RH frontier

New additive Lean source files:
  MoebiusFarPrimeBoxWeightedAsymptotic.lean
  MoebiusFarPrimeBoxForcedCompensation.lean
with new mathematical review and one passive verification target.
The originals, root imports, Lean pin, finite index masks and
physical Möbius definition remain UNMODIFIED.

The new exact finite partition has a source proof body;
the limit difference and conditional classical consumer have
source proof bodies. Weighted PNT, original physical kernel
scaling/positivity, exact prime-box sign FAR support, classical
Mertens prime-scale implication and VK transfer remain
EXPLICIT UNPROVED PINNED LEAN PROP TARGETS. No new
research axiom, sorry, admit, unsafe, opaque trust shortcut,
native_decide or automation is introduced.

Pinned Lean v4.34.1 / Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612.
Compilation DEFERRED per user, parsing/elaboration/expected
types/kernel/complete transitive axiom/opaque/native audits
NOT_RUN. No CI, Noe worker, scheduler or browser automation
was started.

The true all-positive-rate FAR statement
 FarOriginalEveryPositiveRateUpperTarget
and the canonical Riemann Hypothesis remain OPEN.
The proof here is an independently classical,
noncircular cancellation at one specified rate-one
logarithmic scale, NOT a proof of RH.

Independent background references (not imported Lean):
 - NIST DLMF 27.2, https://dlmf.nist.gov/27.2, prime number theorem;
 - Lee and Leong, arXiv:2208.06141v5 (2026),
   https://arxiv.org/abs/2208.06141, quantitative classical Mertens
   and reciprocal-zeta bounds;
 - Nicol Leong, Fields Institute talk "Explicit Mertens estimates",
   https://www.fields.utoronto.ca/talks/Explicit-Mertens-estimates .
