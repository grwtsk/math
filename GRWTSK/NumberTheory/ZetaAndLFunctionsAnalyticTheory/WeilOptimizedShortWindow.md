# Extended uniform primitive Weil coercivity through optimal affine gamma tails

Source attribution: grwtsk contributors. Edition 1, 2026-11-12.
MSC2020: 11M26 (primary), 11M41, 33B15, 46E35.

Status: COMPLETE WRITTEN ANALYTICAL ARGUMENT, not independently reviewed.
The adjacent WeilOptimizedShortWindow.lean contains eight Lean
SOURCE_PROOF_CANDIDATE declarations; the full affine-kernel integral
evaluation and the final all-test zeta/Dirichlet inequalities remain
WRITTEN, not new elaborated Lean theorems. Lean compilation, fresh kernel
replay, transitive axiom audit and certified numerical computation
NOT_RUN. Novelty UNASSESSED. No RH or primitive GRH proof claimed.

## 1. Exact source and quantified theorem

For EVERY real 0<A<=1/800, every conductor q>=1 and primitive
Dirichlet character chi of conductor q with parity a∈{0,1}, and EVERY
complex smooth test f supported in [-A,A], use the ORIGINAL whole-line
arithmetic expression

  E(f)=int_R |f(t)|²dt,
  C_f(r)=int_R conjugate(f(t))*f(t+r)dt,
  e_f(r)=int_R |f(t+r)-f(t)|²dt,
  K_a(r)=exp(-b*r)/(1-exp(-2r)),  b=a+1/2,
  Gamma_a(f)=int_(0,infinity) K_a(r)e_f(r)dr,
  c_chi=gammaConstant(q,a),
  S_chi,A(f)=2sum_(n in activePrimePowers A)
           primeWeight(n)*Re(conj(chi(n))*C_f(log n)).

The literal native activePrimePowers inventory includes ALL von Mangoldt
prime powers under the strict n<exp(2A) cutoff, and the source
gammaCorrectionDensity is exactly K_a(r)*e_f(r). No L-series outside
its half-plane of convergence is used: all functions on the zero side
are the analytically continued canonical completed functions.

The full primitive nonprincipal expression is
  Q_chi,A(f)=c_chi E(f)+Gamma_a(f)-S_chi,A(f), q>1.

The conductor-one zeta source is kept SEPARATELY and pole-INCLUSIVELY:
  Q_zeta,A(f)=P_zeta(f)+c_zeta E(f)+Gamma_0(f)-S_1,A(f),
  P_zeta(f)=M_+(f)*conj(M_-(f))+M_-(f)*conj(M_+(f)),
  M_±(f)=int_R f(t)*exp(±t/2)dt.

**WRITTEN unconditional theorem (OSW-v1-A):**
  Q_chi,A(f)>= (1/16)*E(f) for ALL primitive sectors including q=1 zeta,
  Q_chi,A(f)>= (1/8)*E(f) for ALL primitive nonprincipal q>1.
The original complete arithmetic Weil form is the theorem's consumer.
This is a positive result for a FIXED bounded support range, not for
arbitrary A. It neither assumes RH nor proves RH/primitive GRH.

The preceding written theorem in WeilImprovedShortWindow.md covers
A<=1/3500 with the same 1/16 pole-inclusive floor. The present proof
extends that radius by the exact factor 3500/800=35/8, with no reduction
of the claimed 1/16 floor. Relative to the historical A<=2^(-22)
range the radius factor is 2^22/800=5242.88; the earlier 3/2 floor
is stronger on its smaller range.

## 2. General original-kernel affine estimate (OSW-v1-B)

For ANY nonnegative integer a, let b=a+1/2>0. If r>0 and b*r<=1,
then 1-b*r>=0. The elementary exact real inequalities
  exp(-b*r)>=1-b*r,
  0<1-exp(-2*r)<=2*r
give, with every division direction justified,

  K_a(r) >= (1-b*r)/(2*r)
         = 1/(2*r)-b/2.                           (2.1)

This is a pointwise comparison of the unchanged
OddRootProjection.parityKernel, with no other gamma convention.

For a=0, the allowed radius is 0<r<=2. For a=1, the radius
is 0<r<=2/3. The earlier 0<r<=1/4 cutoff discarded much of
this positive range. The new Lean declaration
OptimizedShortWindow.parityKernel_ge_affine_of_rate_mul_le_one
states (2.1) for EVERY a, with its exact b*r<=1 domain.

## 3. Genuine gamma full-source return without an harch postulate

The exact supported shift identity for an L2 source is
  e_f(r)=2E(f) whenever r>=2A.
This holds at r=2A: overlap of the two supports has only a
Lebesgue-null endpoint. It is the native
SourcePrimeCorrelation.shiftEnergy_eq_two_of_cutoff,
used in ExactGammaTail.gammaTail_integrable_and_eq.

For ANY A>0 and compact supported C1 complex f,
GammaHeadIntegrability.gammaCorrection_integrableOn_of_contDiff
proves genuine integrability at the singular zero endpoint,
not merely a totalized integral. The native theorem
gammaCorrection_eq_head_add_tail_of_contDiff, specialized to R=2A,
proves the exact source equality

  Gamma_a(f)=int_(0,2A] K_a(r)e_f(r)dr
               +tailMass(a,2A)*E(f),
  tailMass(a,2A)=2int_(2A,infinity) K_a(r)dr.

The head integrand is nonnegative for every r>0. The published
GammaHeadIntegrability.gammaCorrection_head_budget supplies its
true nonnegative integral. Consequently the new Lean candidate
gammaIntegral_ge_exact_tail_of_contDiff proves, with ONLY ContDiff
C1 and the original support hypotheses,

  Gamma_a(f)>=tailMass(a,2A)*E(f).                   (3.1)

This holds for every support radius A>0 and EVERY parity a;
no new harch, hLp or gamma sign premises are introduced.

## 4. Exact affine-tail integration and parity-dependent floors

In the present small window, 2A<=1/(a+1/2) for BOTH a=0 and a=1.
The original nonnegative full gamma integral can therefore discard
only positive terms outside [2A,1/b], retaining the full source:

  Gamma_a(f)
    >=2E(f)*int_(2A)^(1/b) K_a(r)dr
    >= E(f)*int_(2A)^(1/b) (1/r-b)dr
    = [log(1/(2*b*A))-1+2*b*A]*E(f).             (4.1)

Every integral in the finite interval is genuine because A>0,
and the lower integrand is nonnegative there by b*r<=1.
The evaluation is the actual fundamental theorem of calculus
for log r on (0,infinity) and a constant, not a guessed
quadrature or replacement gamma term.

Thus the EVEN parity a=0 satisfies

  Gamma_0(f) >= [log(1/A)-1+A]*E(f),                (4.2)

and the ODD parity a=1 satisfies

  Gamma_1(f) >= [log(1/(3A))-1+3A]*E(f).           (4.3)

The interval-integral proof (4.1)--(4.3) is written mathematics;
a dedicated Lean integral comparison declaration is still missing.
Do NOT treat the existence of the kernel pointwise theorem or
the exact-tail lower theorem alone as kernel checking (4.1).

## 5. Exact rational exponential comparisons

The pinned theorem Real.exp_one_lt_d9 gives
  exp(1)<68/25,
where 68/25=2.72>2.7182818286.

By exact exponential laws,
  [exp(53/8)]^8=exp(53)=[exp(1)]^53.
The rational inequality, checked with exact integer powers, is

  (68/25)^53 < 800^8.

All sides are positive, hence
  exp(53/8)<800,  log(800)>53/8.                 (5.1)

Since 1/A>=800 for A<=1/800, this yields

  log(1/A)>53/8,
  Gamma_0(f)>=(45/8+A)*E(f)>=(45/8)*E(f).        (5.2)

Similarly
  exp(5)=[exp1]^5<(68/25)^5<800/3,
so log(800/3)>5. Since 1/(3A)>=800/3,

  Gamma_1(f)>=(4+3A)*E(f)>=4E(f).                (5.3)

No fixed numerical tolerance was held while an unbounded
quadrature weight grew; these are rational analytical comparisons
using exact exponential monotonicity. The new Lean candidates
exp_fifty_three_eighths_lt_eight_hundred, even_log_floor and
odd_log_floor expose the comparisons without external certificates.

## 6. The complete original arithmetic sign on this window

**All actual prime powers are absent.** For A<=1/800,
  2A<=1/400<log2,
so exp(2A)<2 and the exact native activePrimePowers(A) is empty.
All χ phases and weights remain part of the definition; the
finite signed sum vanishes because its original inventory is empty,
not because of a truncated or positive-proxy majorant.
This is the candidate primeInventory_empty_optimized,
which supplies the direct primitive nonprincipal arithmetic
consumer primitiveArithmeticValue_eq_gamma_optimized.

The native gammaConstant_lower_sharp gives, for all q>=1,
  gammaConstant(q,a)>=log q-11/2>=-11/2.
For a=1 the exact parity identity
  gammaConstant(q,1)=gammaConstant(q,0)+pi
together with pi>3 gives
  gammaConstant(q,1)>=-5/2.
The candidate gammaConstant_odd_global_floor states this
genuine arithmetic consequence.

Combining (5.2)--(5.3) with those native gamma constants:

  Q_chi,A(f)>=(45/8-11/2)E(f)=E(f)/8     if a=0, q>1,
  Q_chi,A(f)>=(4-5/2)E(f)=3E(f)/2        if a=1, q>1.

The uniform primitive NONPRINCIPAL bound is therefore E/8.

**Conductor-one zeta is separate.** The exact two-orientation
source pole decomposition is

  P_zeta(f)=2|U(f)|²-2|V(f)|²,
  U(f)=int f(t)cosh(t/2)dt,
  V(f)=int f(t)sinh(t/2)dt.

The literal support-truncated sinh vector has squared L2 mass
sinh A-A, so Cauchy gives
  P_zeta(f)>=-2(sinh A-A)E(f).
For A<=1 the positive Taylor series and sinh(1)-1<1 give
  0<=sinh A-A<=A³.
For 0<A<=1/800,
  2A³ <= 2/(800³) < 1/16.
The zeta source has even parity, no active prime powers,
and c_zeta>=-11/2. Its complete signed form therefore obeys

  Q_zeta,A(f)>=(1/8-2A³)E(f)>=(1/16)E(f).

The last inequality pays the POSSIBLY NEGATIVE pole explicitly.
Real odd, complex and zero directions remain in the original
smooth test class. At f=0 equality holds, so no strict
positivity of a null direction is asserted.

## 7. Scope, falsification and next formal consumers

The shift cutoffs 2 and 2/3 depend on physical parity and come
from the positivity of 1-b*r. Applying (2.1) beyond b*r<=1
is not licensed by its proof. In the full gamma integral,
only genuinely nonnegative parts are discarded; the signed
zeta poles are never discarded. The zero extension of a
C1 compact supported source has its actual zero trace and
does not create a hidden boundary jump. No original test
has been replaced by a discontinuous sine basis.

The result is not uniform over support A->infinity; its
proof uses the strict empty prime inventory. The missing
all-window signed Weil domination is not a numerical
rounding error and has not been assumed as a hypothesis.
No spectral shift, ordinate projection, absolute-square
replacement of zero pairings, completed-L-function
simplification or new axiom supplies it.

Dependencies and primary comparison:
- grwtsk/math WeilImprovedShortWindow.lean and
  WeilUniformShortWindowCoercivity.lean (previous short windows);
- GammaHeadIntegrability.gammaCorrection_head_budget,
  gammaCorrection_eq_head_add_tail_of_contDiff;
- ExactGammaTail.tailMass and the original source
  shiftEnergy_eq_two_of_cutoff;
- GammaData.gammaConstant_lower_sharp and
  gammaConstant_odd_eq_even_add_pi;
- ShortWindow.activePrimePowers_empty_of_exp_le_two,
  CharacterWindow.twistedPrime and primitiveArithmeticValue;
- ZetaPoleRankOneReturn.sourcePole / two signed moments.
- Bombieri, "Remarks on Weil's quadratic functional in the
  theory of prime numbers, I", Rend. Lincei 11 (2000),
  variational Weil-source arguments.
- Connes--Consani--Moscovici, "Zeta Spectral Triples",
  arXiv:2511.22755v1, (3.19)--(3.20), complete signed source.

Exact pin when authored: grwtsk/math/main
6df8ecc0e16f123c476c1418fb611e73ff13e86c,
Lean leanprover/lean4:v4.34.1,
mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
No existing source imports or pins changed.

First FORMAL obligation: elaborate the optimized source at
those pins and audit transitive axioms. Prove the finite interval
integration (4.1) in Lean using the pointwise affine kernel,
the exact source support tail and the existing gamma integrability
theorems, then join conductor/parity and the zeta signed-pole
bound into a kernel-checked all-test short-window theorem.
First ARITHMETIC obligation: prove complete Weil positivity
for every support radius, conductor and complex smooth test,
including regions with ACTIVE prime powers. The current theorem
and its source candidates do not prove RH or primitive GRH.
