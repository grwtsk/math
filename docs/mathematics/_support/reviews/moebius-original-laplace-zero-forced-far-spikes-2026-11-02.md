# RH arithmetic advancement: the original causal Möbius Laplace transform detects off-line zeta zeros and forces uniform signed FAR spikes

Date: 2026-11-02, America/Los_Angeles.
Attribution: grwtsk contributors; mathematical reasoning and Lean source-formalization assistance by OpenAI ChatGPT.
Scope: complete noncircular ORDINARY mathematical proof of a necessary obstruction, not an unconditional proof of RH.
Formalization status: additive Lean proof candidates, source-only, user-deferred compilation and fresh kernel.
All external analytic operations are standard and explicitly separated from presently UNPROVED pinned-Lean gates.

## 1. Exact pinned repository definitions

Source: grwtsk/math,
GRWTSK/NumberTheory/ElementaryNumberTheory/
ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPrimitive.lean,
Git blob 45e06c371d67bcf8c939d20a95fcbc63570546fa.

The ORIGINAL, unchanged Möbius source is
  M(x)=mertensPrefix(x)=sum_{1<=n<=floor x}mu(n),
  V(u)=pickupVelocity(u)=exp(-u/2)*M(exp u),
  P(T)=wholePickup(T)=int_0^T V(u)du,
  E(T)=pickupEnergy(T)=int_0^T P(u)^2du.
All original mu(n), n=1, squareful zeros, floor(exp u)
and real-time integral conventions are preserved.

The existing source
.../NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/
EnergyAbscissa.lean, Git blob
c1f86b43daefd7fbb8cfc4254d6888c410d051d9
defines the TRUE weighted square-energy abscissa
 a_E=pickupEnergyAbscissa =
   inf {sigma>0 :
     integral_0^infinity exp(-sigma*T)*P(T)^2 dT<infinity}.
It already establishes 0<=a_E<=1 and integrability
for every sigma>a_E, WITHOUT claiming a_E=0.

The SAME unchanged original fixed dyadic grid is
 T_J=dyadicTime J=J*log 2, J>=1.
The existing original exact physical signed decomposition is
  E(T_J)=pickupDiagonal(T_J)+pickupCross(T_J)
        =pickupDiagonal(T_J)
         +collarIncidentCross(B_J,empty,J)
         +shortRatioCross(B_J,empty,J)
         +reducedCloseCross(B_J,empty,J)
         +farReducedOrLongCross(B_J,empty,J).
This holds for EVERY original admissible true-prime bank family
B:J->PrimeBand. Both original ordered Gram orientations,
true m!=n, squareful zero mu, birth gating and the
rate-independent short/reduced-gap masks remain exactly
unchanged.

Three existing elementary proper packet absolute all-rate
targets are independently documented (mathematically proved
with explicit uniform bounds, still NOT pinned-Lean compiled):
 UniformCollarAllRateTarget,
 ShortRatioUniformAllRateTarget,
 ReducedCloseUniformAllRateTarget.
Their constants do NOT depend on J, the original bank family,
or any zeta zero assumption. No new source cancellation
budget is assumed in the derivation below.

## 2. Exact RIGHT-LINE Laplace identity, ordinary unconditional math

For w complex, Re(w)>1/2, set s=w+1/2; then Re(s)>1.
The genuine original Laplace transform is
  L_P(w)=integral_0^infinity exp(-w*T)*P(T)dT.
By P(T)=int_0^T exp(-u/2)M(exp u)du,
Fubini with absolute convergence yields
  L_P(w)=(1/w)*integral_0^infinity
             exp(-(w+1/2)*u)*M(exp u)du.
This is justified by bounding every original mu in modulus
by one, and Re(w)>1/2.

Since the original Mertens step function is EXACTLY
  M(exp u)=sum_(n>=1)mu(n)*1_{log n<=u}
for u>=0, Tonelli for the absolute majorant gives
  integral_0^infinity exp(-s*u)*M(exp u)du
   =sum_(n>=1)mu(n)*int_(log n)^infinity exp(-s*u)du
   =(1/s)*sum_(n>=1)mu(n)/n^s.
All sums and transforms are absolutely convergent in Re s>1:
  sum n^(-Re s)<infinity.
By the actual pinned Mathlib Möbius Dirichlet identity,
  sum mu(n)/n^s = 1/zeta(s).
Consequently
  L_P(w)=1/[w*(w+1/2)*zeta(w+1/2)],          (L1)
valid for Re(w)>1/2. No RH, Mellin shift, or
unverified zero-free region is used.

Let Z1(s)=ZetaAsymptotics.riemannZeta₁(s), the PINNED
ENTIRE regularization with Z1(1)=1 and
  zeta(s)=(s-1)^(-1)*Z1(s) for s!=1.
Multiplying (L1) without assuming any unknown denominator
nonzero outside its initial domain gives the
HOLomorphic PRODUCT identity
  w*(w+1/2)*Z1(w+1/2)*L_P(w)=w-1/2.       (L2)

This is the decisive safe form: the continuation argument
never takes 1/Z1 at a possible zero.

## 3. Exact weighted-L2 -> holomorphic Laplace extension

Suppose for SOME sigma>0 the ACTUAL signed wave satisfies
  W_sigma := integral_0^infinity
                exp(-sigma*T)*P(T)^2dT <infinity.
This is a direct measured physical-energy condition,
not a signed Möbius expectation or model.

For EVERY w with Re(w)>sigma/2, Cauchy-Schwarz gives
  |L_P(w)| <= sqrt(W_sigma) *
    sqrt(integral_0^infinity
            exp(-(2Re(w)-sigma)*T)dT)
   =sqrt(W_sigma)/sqrt(2Re(w)-sigma).     (L3)
Indeed factor
  exp(-w*T) P(T) =
    [exp(-sigma*T/2)P(T)]
    exp(-(w-sigma/2)*T).
The second factor is L2 precisely when
2Re(w)-sigma>0. Uniform positive margins on compact subsets
and the corresponding T^k exponential derivative majorants
show the SAME original integral L_P is holomorphic on
  {w:Re(w)>sigma/2}.
No new zeta zero-free hypothesis is used.

The identity theorem applies to the analytic difference
  F(w)=w*(w+1/2)*Z1(w+1/2)*L_P(w)-(w-1/2)
on the connected open half-plane Re(w)>sigma/2.
Z1 is ENTIRE by pinned Mathlib.
By (L2) this difference vanishes on the nonempty open
subset Re(w)>max(1/2,sigma/2), so it vanishes
throughout Re(w)>sigma/2:
  w*(w+1/2)*Z1(w+1/2)*L_P(w)=w-1/2.       (L4)
This is a standard complex identity theorem; the needed
holomorphic integral and identity-theorem ports are EXPLICIT
UNPROVED PINNED LEAN Props, not trusted axioms.

An additional genuine source implication follows:
for Re(s)>(1+sigma)/2 the identity rules out
zeta zeros, and on the resulting zero-free subdomain,
  1/zeta(s)=(s-1/2)*s*L_P(s-1/2).
The Cauchy estimate (L3) yields quantitative conditional
reciprocal control
 |1/zeta(s)| <= |s-1/2|*|s|*
    sqrt(W_sigma)/sqrt(2Re(s)-1-sigma). (L5)
This grows polynomially with |Im s|; it is not the
subpower reciprocal Perron input used elsewhere in
the repository. It is valid only after GENUINE
weighted-energy integrability has been established.

## 4. A hypothetical offcritical zeta zero forces an energy-abscissa LOWER bound

Take any *hypothetical actual* nontrivial zeta zero
rho=beta+i gamma with 1/2<beta<1, zeta(rho)=0.
This is a conditional antecedent only: no zero is claimed
to exist. The pinned factorization and rho!=1 give
  Z1(rho)=0.

Assume, for contradiction, a positive weighted energy
damping sigma<2beta-1 were integrable. Then
w0=rho-1/2 has Re(w0)=beta-1/2>sigma/2.
Evaluate (L4) at w0. The LHS is ZERO due to Z1(rho)=0,
whereas its RHS is w0-1/2=rho-1!=0.
This is impossible. Therefore

  for every 0<sigma<2beta-1,
    integral_0^infinity exp(-sigma*T)*P(T)^2dT
    is NOT finite.                                  (Z1)

Since the actual a_E is an infimum of such positive
integrable dampings, (Z1) gives a mathematically
UNCONDITIONAL implication:
  zeta(rho)=0, beta>1/2
           => a_E >= 2beta-1.                     (Z2)

This is the REVERSE of the prior source's conditional
zero-free-to-Mertens-to-energy UPPER transfer. It gives a
quantitative lower obstruction for EACH hypothetical
offcritical zero, with no Perron truncation, zero-free
assumption or global RH premise.

In particular if the exact existing a_E were proved
equal to zero by an independently noncircular argument,
then RH would follow directly. We have NOT proved a_E=0.

## 5. Hypothetical zero => unbounded positive original energy spikes

A genuine cumulative original energy upper
  E(T) <= C*exp(eta*T), for all T>=0,
with some 0<eta<2beta-1 would imply for every
sigma in (eta,2beta-1) that the true weighted L2
energy is integrable. Indeed E is the nonnegative
absolutely continuous primitive of P(T)^2 and
integration by parts gives
  int_0^infinity exp(-sigma*T)*P(T)^2dT
    =sigma*int_0^infinity exp(-sigma*T)*E(T)dT
    <=sigma*C/(sigma-eta)<infinity.
This contradicts (Z1). Thus for EVERY eta in
(0,2beta-1) and EVERY C>=0, some arbitrarily
large physical times T have
  E(T)>C*exp(eta*T),
equivalently
  limsup_(T->infinity) exp(-eta*T)*E(T)=+infinity. (Z3)

No positivity of any individual signed cross term is
assumed; it is the ORIGINAL square energy that is
nonnegative.

## 6. The STRONGEST original signed FAR consequence: bank-uniform positive spikes

The existing exact source already has
 E(T_J)=D_J+I_(B,J)+S_(B,J)+Q_(B,J)+F_(B,J),
with F_(B,J)=farReducedOrLongCross(B_J,empty,J).

For every fixed eta>0 the three independent absolute
all-rate paid-packet estimates give ONE constant
I_eta+S_eta+Q_eta>=0, independent of J and B,
such that
  |I_(B,J)|+|S_(B,J)|+|Q_(B,J)|
    <=(I_eta+S_eta+Q_eta)*exp(eta*T_J).
The ORIGINAL diagonal has 0<=D_J<=2*T_J^2.
Using exp(eta*T)>=eta^2*T^2/2 gives
  D_J<=(4/eta^2)*exp(eta*T_J).
Put
  K_eta=I_eta+S_eta+Q_eta+4/eta^2.
Then the complete genuine original source obeys
  F_(B,J) >= E(T_J)-K_eta*exp(eta*T_J)       (Z4)
for EVERY dyadic J>=1 and EVERY admissible B
SIMULTANEOUSLY.

The true E(T) is nondecreasing for T>=0.
For every T>=0 choose J=max(1,ceil(T/log2)).
Then T<=T_J<=T+log2. Therefore a bounded
exp(-eta*T_J) E(T_J) on the full dyadic grid
would yield the same rate for ALL T, up to the
constant factor exp(eta*log2)=2^eta.
This contradicts (Z3).

Combining (Z3)-(Z4) gives the precise original
Möbius-specific failure-witness theorem:

  IF an actual nontrivial zero rho has beta>1/2,
  then for EVERY 0<eta<2beta-1 and EVERY K real,
  there is ONE dyadic J>=1 such that
    F_(B,J)>K*exp(eta*T_J)
  for EVERY admissible finite true-prime bank B,
  even when a bank is allowed to vary with J.       (Z5)

The same J works SIMULTANEOUSLY for all banks,
not merely for a chosen individual bank.
Consequently
  limsup_(J->infinity)
     inf_(admissible B) exp(-eta*T_J)*F_(B,J)
        =+infinity,
with the inf understood pointwise over actual
admissible bank choices. For arbitrary K, (Z4)
chooses a scale at which all banks exceed it.
This is a true ONE-SIDED POSITIVE signed FAR excursion.
It is stronger than saying an absolute-value upper
cannot hold, and no input assumes any FAR signed balance.

This theorem is a NECESSARY implication of a hypothetical
offcritical zero. It does NOT establish that any such zero
exists, does not certify RH, and does not itself obtain
an unconditional all-positive-rate F upper.

## 7. Lean source acceptance and exactly exposed analytic gates

Two entirely additive pinned Lean SOURCE PROOF CANDIDATES:
  MoebiusOriginalLaplaceZeroBarrier.lean:
    originalWholePickupLaplace(w) is an integral of the
    SAME real wholePickup with complex exponential;
    ordinary right-line source Dirichlet identity;
    weighted-L2 holomorphic integral;
    standard analytic identity continuation;
    source-level algebraic zeta-zero contradiction;
    energy-abscissa lower and forbidden energy rate.
  MoebiusOriginalFarZeroForcedSpikes.lean:
    absolute source packet/diagonal uniform payment;
    elementary bounded-gap dyadic energy ceiling;
    source-level positive FAR forced spikes, including
    the SAME J for ALL admissible bank families.

THREE standard complex-analysis ports remain UNPROVED Lean Props:
  OriginalLaplaceRightLineIdentityTarget,
  WeightedWholePickupLaplaceHolomorphyTarget,
  LaplaceProductIdentityTheoremTarget.
ONE standard pure-energy/dyadic real-calculus port remains:
  DyadicOriginalEnergyCeilingTarget.
The three earlier independently elementary source packet
all-rate absolute targets remain explicit as separate
unproved pinned-Lean gates. No research axiom, sorry,
unsafe, opaque trusted declaration or signed FAR all-rate
conclusion is introduced as a premise.

The finite algebra and conditional proof bodies are
uncompiled; this is NOT kernel acceptance.
All original source coefficients, physical kernel,
right-line reciprocal/Perron definitions, toolchain
pins and root imports remain UNCHANGED.

Pinned Lean v4.34.1, Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612.
As instructed by the user, compilation DEFERRED;
parser, elaboration, expected types, full dependency
closure, fresh independent kernel, transitive axioms
and native/opaque auditing NOT_RUN.
No Noe automation, CI, managed native worker or
scheduler was invoked.

## 8. Independent noncertifying finite numeric check

With an independent ordinary sieve for the genuine
integer Möbius coefficients up to N=20000, compare
  sum_(n<=N) mu(n)*n^(-s)
with the analytic value 1/zeta(s). At
  w=1.5, s=2:
      abs difference ~6.92561074e-8;
      after dividing by w*s (the Laplace factor):
      ~2.30853691e-8.
  w=1.5+0.3i, s=2+0.3i:
      absolute Dirichlet difference ~6.92899810e-8;
      Laplace factor difference ~2.23975678e-8.
  w=1.0, s=1.5:
      Dirichlet difference ~9.86142527e-6;
      Laplace factor difference ~6.57428352e-6.

These are expected truncation remainders, not numerical
checks of unknown zeta zeros or a proof of any analytic
continuation statement. The proof of (L1)-(Z5) is
ordinary mathematics independent of these samples.

Background on the actual Dirichlet series:
 pinned Mathlib NumberTheory/LSeries/Dirichlet.lean,
 and e.g. Keith Conrad, Dirichlet Series:
 https://kconrad.math.uconn.edu/blurbs/gradnumthy/dirichletseries.pdf .
 The ordinary integral/Laplace calculations are supplied
 explicitly above rather than borrowed from a different
 arithmetic source.

Status: RH OPEN; actual a_E unknown; every-positive-rate
original signed FAR upper OPEN.
