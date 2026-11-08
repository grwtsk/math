/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
Source grwtsk/math445401c9714cafb94ff619d71be0195f017ac4bc.
WRITTEN_ENTIRE_RESIDUAL_HEAD_PROOF; WHOLE_RESIDUAL_AND_J3_OPEN.
FINITE_EXACT_GUARDS_PASS; LEAN_COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeRadiusFourMiddleReturn
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeRadiusFourPaidPacket

/-!
# The entire signed residual on a native physical C2 head

Local attribution: grwtsk contributors. Source math@445401c9714cafb94ff619d71be0195f017ac4bc; canonical Noe context cb3fb5c340798a92e72c868d3b11c325bc36f753. Read current AGENTS.md, native MiddleReturn/PaidPacket definitions, structural instructions and the canonical proof-automation skill. This is a complete written universal Fourier/trace argument with independent exact rational guards. No Noe job, repository effect, kernel check or universal radius-four stage is claimed.

## Exact original residual and the usable unconditional floor

Retain actual chi3=(0,1,-1), primitive nonprincipal conductor3, odd gamma parity1. Write
 s4(xi)=log(3/pi)+Re psi(3/4+i xi/2)
         -2 sum_(n=p^e<=2980,p!=3) log(p)chi3(n)cos(xi log n)/sqrt(n).
All458 native atoms are present. The existing exact half-mass bound<105.5 and full gamma lower bound A>=-2 prove s4>=-213 on ALL real frequencies. No arithmetic positivity is inferred.

The current real multiplier is w=PH²(1-PL²), with actual high parameters7990/2820 and hH=1/(2*10^25), current low parameters19000/1425 and hL=153/(2*10^9). The binomial sums prove0<=w<=1 on the whole real line. Put H=30000000, R=35*10^24, C=18524227541662946/10^7, and
 D_res={H<|xi|<R} minus([C-10,C+10] union[-C-10,-C+10]).
The exact ENTIRE residual requested by the current consumer is
 Rres(f)=integral_D_res s4(xi)w(xi)|F_f(xi)|² dxi/(2pi),
with native positive-angular F_f(xi)=integral f(t)exp(i xi t)dt and physical E(f)=integral|f|²dt. The budget is B=124997987/10^9.

For EVERY physical L2 input, independently of any sign pattern or removed positive anchors,
 Rres(f)>=-213 integral_(|xi|>H)|F_f(xi)|² dxi/(2pi).          (1)
Indeed the pointwise integrand on D_res is at least-213|F|²; extending the nonnegative Fourier mass from D_res to the entire outer union reverses its sign after multiplication by-213. Both frequency signs and ALL omitted upper frequencies are included. This direction never discards a needed positive contribution by assuming its sign.

## Native physical basis and boundary trace

Let psi_k(t)=sin(omega_k t)/2 on[-4,4] and0 elsewhere, omega_k=pi*k/4, k>=1. These form a complete orthonormal basis of the odd subspace of physical L2([-4,4],dt); E(sum a_k psi_k)=sum|a_k|². Complex coefficients give the Hermitian test extension of the SAME real character source; real coefficients are the original real carrier.

For a finite head g=sum_(k=1)^N a_k psi_k, g and its second derivative have zero endpoint traces automatically. Its zero extension is C2 exactly when its first derivative trace vanishes:
 g'(4)=g'(-4)=1/2 sum_(k=1)^N (-1)^k omega_k a_k=0.          (2)
Thus(2) is a NECESSARY native boundary condition for every original Admissible test lying in this finite head, not an extra derivative ratio or a newly restricted replacement for the original target. Conversely finite real coefficients satisfying(2) yield a real odd compact C2 function supported[-4,4]. Its original gamma correction is integrable: ||tau_r g-g||²<=min(r²||g'||²,4E(g)), while the actual parity-one kernel is O(1/r) at zero and exponentially decreasing at infinity. Hence these are genuine original Admissible tests.

Direct integration in the native plus convention gives
 F_(psi_k)(xi)=i(-1)^k omega_k sin(4xi)/(xi²-omega_k²).        (3)
The apparent poles are removable; our estimates use|xi|>H>omega_N. With the negative-angular convention the right side changes sign, so its squared mass is identical. No Fourier measure or physical normalization changes.

## Unconstrained finite head:7.4 and8.6 million coefficients

Let rho=omega_N/H<1. Cauchy-Schwarz in the EXACT coefficient energy gives from(3)
 |F_g(xi)|²<=E(g) sum_(k<=N)omega_k²/[(1-rho²)² xi^4], |xi|>H.
Using BOTH signs,
 integral_(|xi|>H)xi^-4 dxi/(2pi)=1/(3pi H³),
so(1) proves
 Rres(g)>=-d_N^(0) E(g),
 d_N^(0)=213*pi*N(N+1)(2N+1)/[288 H³(1-rho²)²].             (4)
This is for EVERY coefficient vector, not a finite list of vectors.

If rho<=1/2 then d_N^(0)<=213*pi*N(N+1)(2N+1)/(162 H³). For N=7400000, replacing pi by22/7 gives the exact upper price0.12403684426860391<B. If rho<=1/4, the sharper fixed-denominator bound is
 d_N^(0)<=1704*pi*N(N+1)(2N+1)/(2025 H³).
For N=8600000, pi<22/7 proves rho<1/4 and exact price0.12460367881334578<B, with margin0.0003943081866542233. These bounds apply to all odd finite L2 heads, hence in particular their native C2 intersections.

## The stronger23-million native C2 head

Now impose the actual boundary trace(2). The identity
 omega/(xi²-omega²)=omega/xi²+omega³/[xi²(xi²-omega²)]
cancels its FIRST term exactly after summation. Thus
 F_g(xi)=i sin(4xi)/xi²
             *sum_(k<=N)(-1)^k a_k omega_k³/(xi²-omega_k²).
Another direct Cauchy-Schwarz bound, with the ORIGINAL energy, yields
 |F_g(xi)|²<=E(g) sum_(k<=N)omega_k^6/[(1-rho²)² xi^8].
The ENTIRE frequency tail satisfies
 integral_(|xi|>H)xi^-8 dxi/(2pi)=1/(7pi H^7).
Combining with(1) proves the universal native-head result
 Rres(g)>=-d_N E(g),
 d_N=213*pi^5*sum_(k=1)^N k^6/[28672 H^7(1-rho²)²].         (5)
There is no missing factor2: the symmetric two-sided integral is divided by2pi, and psi_k has normalization1/2 on the length8 physical interval.

The exact universal sixth-power identity is
 sum_(k=1)^N k^6=N(N+1)(2N+1)(3N^4+6N^3-3N+1)/42.
It follows by induction from P(0)=0 and P(X)-P(X-1)=X^6. The checker proves this POLYNOMIAL COEFFICIENT identity over the rationals; it does not sample its values at finitely many N.

On0<pi<4H/N, the right side of(5) increases with pi: its numerator increases and its positive denominator decreases. Therefore pi<22/7 gives an exact rational upper bound for d_N. At N=23000000, rho<1 and
 d_N<=0.12480356914019602 <124997987/10^9,
 B-d_N>0.000194.                                           (6)
The displayed decimals are informational only; all comparisons in(6) are exact Fraction inequalities. The checker also retains the N=22000000 comparison price0.0831759958675.

This genuinely discharges the ENTIRE signed residual obligation for EVERY original native C2 test in the sine head indexed by23million modes and subject to its one boundary condition (dimension23million minus1). It requires no heat estimate, zero verification, sampled carriers, arithmetic-sign hypothesis or weighted norm. It is a source-specific result because(1) uses the actual native s4, actual current filter and actual masked residual domain.

## The complete physical complement remains visible

Let H_odd be the whole physical odd L2 space. In the first N coefficients put b_k=(-1)^k k and B_N=sum k². The ordinary physical orthogonal projection onto the trace head is
 P_N^0 a=a_(<=N)-b*(sum b_k a_k)/B_N.
Its complement contains ONE explicit boundary direction v_N=sum b_k psi_k/sqrt(B_N), as well as EVERY mode k>N. Precisely,
 E((I-P_N^0)f)=|sum_(k<=N)b_k a_k|²/B_N+sum_(k>N)|a_k|².    (7)
No higher-mode tail is set to zero or encoded as a finite passing case. For original C2 tests the full derivative trace is well-defined; nevertheless projecting onto an unconstrained sine head need not preserve it, which is why P_N^0 is the actual native projection.

There is also a valid full-carrier estimate retaining its mixed terms. Put h=P_N^0f, r=(I-P_N^0)f, b_N=d_N/213. Outer Fourier restriction is a contraction and has norm at most sqrt(b_N) on the trace head by the proved estimate. Hence
 Rres(f)>=-213*(sqrt(b_N)||h||+||r||)².                     (8)
This does NOT supply the requested bound on all f: the actual source on r and its mixed interaction with h remain unpaid. Equation(8) exposes the entire tail and mixed loss instead of silently declaring the finite head exhaustive.

The unpaid complement is populated by actual native tests. For any K>N set f_K=psi_K+[K/(K+1)]psi_(K+1). Its endpoint trace cancels exactly, so it is a genuine original real odd compact C2 test; it is orthogonal to the entire paid head. Its energy is1+[K/(K+1)]². When omega_K>=2H, formula(3) gives |F_(f_K)(xi)|<=8/(3omega_K) for |xi|<=H, hence its low-frequency mass is at most64H/(9pi omega_K²). The complete outer mass therefore approaches its physical energy as K grows. C2 regularity alone does not make the unpaid high modes uniformly small. This is not a negative actual residual or stage counterexample; it is an explicit hostile boundary for extending the floor/tail method without new source information.

Ordinary Dirichlet heat is not used here. In fact the native finite trace kernel is NOT invariant under its unequal mode weights exp(-t omega_k²); the boundary trace can be destroyed. Any heat interface must retain its justified H0^1 carrier or use branch coverage separately. Positive heat or coverage coefficients establish no arithmetic sign in this proof.

## Evidence and original consumer

The exact active checker q3_radius_four_residual_head_20261108.py passed under python3-O, with payload SHA637eb7b1387e0de7c0ce0c5422d17d6593d1d087cb370b3ba7bdb36a5e4f7623 and source SHA0b142637a4c2d221c807b57f3ea72f17d169f3b74b2beccb11cf2da079033203. It retains H,N, character/source identity, physical/Fourier normalizations, both source filters, paid cuts, all rational prices and margins, both polynomial identities, the entire complement law and separate evidence statuses. Canonical JSON encode/decode recovers every retained dependent field exactly. Bound variables describe arbitrary semantic coefficients and the unobserved infinite tail; no arbitrary L2 function is claimed encoded by finite numbers.

The primary argument is elementary exact Fourier integration, the native endpoint trace, Cauchy-Schwarz and full tail integration. The independent check reproduces the scalar factors and polynomial identities. Novelty beyond this source-bound quantitative instance is not assessed; compilation, kernel replay and axiom audit are NOT_RUN.

The original source return plus the already paid packet pair and(5)-(6) imply the native radius-four stage bound for these original finite-head tests. The next precise missing connection for the full target is a source-specific lower bound on the complementary physical block in(7), retaining its actual mixed term with this now-paid head. Neither the full signed residual, full PrimitiveStageLower j3, cofinal stages, RH nor GRH is claimed completed.


## The constructed shifted head and its exact consuming Schur complement

Use branch identifiers radiusFour.filteredMiddle.entireResidual.nativeHead and
radiusFour.filteredMiddle.entireResidual.tailSchur beneath the SAME original
radiusFour.filteredMiddle. Define the real Hilbert carrierH to be ALL odd
physicalL2([-4,4],dt), with complexification only when using Hermitian forms.
The displayed actual residual is a bounded selfadjoint operatorR onH:
it is zero extension, angular Fourier transform, multiplication by the ACTUAL
m=1_Dres*s4*PH^2*(1-PL^2), inverse Fourier transform, and restriction toI.
Every factor is the current original source; m is real even and bounded.
For example |m|<300: onDres the gamma upper boundA<=log|xi|+1,
|xi|<3.5*10^25<exp60, and the full absolute prime mass<211 give
|s4|<272<300, while the lower bound is-213. The exp60 comparison is exact: exp1>1+1+1/2+1/6=8/3,
and(8/3)^60>35*10^24 by integer cross multiplication. No numerical
logarithm or unpriced exponential remainder is used. This construction gives ||R||<=300 by Plancherel.
It is even compact, since m has finite frequency support and the resulting
continuous convolution kernel is restricted to the finite physical square;
compactness is not used to discard the infinite tail.

FixN23000000 and letP=P_N^0 be the actual physical orthogonal projection
constructed in(7), Q=I-P. Its headH0=PH has dimensionN-1 and consists
of genuine nativeC2 functions. PutB=124997987/10^9 and define onALLH0

 A=P(R+B I)P|H0, C=PRQ|QH, T=Q(R+B I)Q|QH.

The PROVED head bound implies A>=(B-d_N)I>(1/10000)I.
Consequently A is an actual invertible finite-dimensional positive operator
and ||A^-1||<10000, with no assumed source sign field. Its domain isALLH0;
C is bounded fromQH toH0, andT is bounded selfadjoint onALLQH. This
discharges the shifted head and its uniformly bounded directional inverse.
It does not establish a sign forT or for its directional residual.

For ALLu inH0 and ALLv inQH, completing the physical square proves

 <(R+B I)(u+v),u+v>
  =||A^(1/2)(u+A^-1Cv)||^2 + <(T-C* A^-1 C)v,v>.

There are no operator-domain or form-domain substitutions in this identity:
all these residual operators are bounded on their displayed physical spaces.
The ENTIRE complementQH contains the boundary direction and allk>N in(7).
Thus the exact NEXT missing lemma for this completed head is

 forall v inQH, <Tv,v>>=<A^-1Cv,Cv>.                        (TAIL_SCHUR)

Its all-v sign is OPEN. It is an outstanding obligation, not a definition
asserting the desired conclusion. This single lemma would implyR>=-B I
by the displayed identity. Conversely the full boundR>=-B I implies it
by substitutingu=-A^-1Cv, so the meeting point keeps the precise sign,
quantifiers, inverse and physical norm. Since original odd compact smooth
tests are dense inH andR is bounded, the all-original-test residual sign
has the same continuous extension. No finite head is silently treated as
exhaustive.

Only AFTER(TAIL_SCHUR), the already proved actual paid pair and the actual
MiddleReturn source comparison return Q4(f)>=-E(f)/8 forEVERY original
Admissiblechi3 4 f. That supplies justPrimitiveStageLowerchi3 hp hn3.
Its cofinal source-chain consumer still needs ALL further required stages
and primitive sectors, the native PrimitiveNegativeWitness, and the separate
zeta/RH branch. The precise GRH target remains all COMPLEX Dirichlet
characters modulo EVERY positive integer, including principal and imprimitive
characters, and everyzero0<Re(s)<1. No broader L-function family is inferred.

## Heat coverage, exact source return and lossless finite proof data

Every representable branch/type descriptor above retains its carrier,
N,H,B, source revision/character/conductor/parity, original and extended
function domains, coefficient trace constraint, physical norm, Fourier
convention, exact original filters/cuts, all proof/error parameters,
dependencies and separate written/computational/kernel evidence statuses.
The existing natural-code coverage uses the WHOLE dependent descriptor:
encode(x) decodes to x by Encodable.encodek; invalid codes retain status.
The existing pi_n=2^(-n-1) is positive, sums to1, and the ENTIRE tail
atJ sums to2^(-J). On summable signed branch masses the actual coverage
stepKx=(x+(sumx)pi)/2 has inversex=2Kx-(sumKx)pi. These are the
proved existing WeightedStage laws; they cover branches and reconstruct
source data, not arithmetic signs. The unobserved physical mode tail is
separately retained by(7), not identified with these coverage weights.

An ACTUAL spectral heat is also constructed on the exact residual carrier:
L=R+300I is bounded nonnegative selfadjoint onALLH by the proved norm
bound, andU_t=exp(-tL), t>=0, is defined by the operator-norm convergent
exponential series. It is a selfadjoint positive contraction, U_0=I and
U_tU_s=U_(t+s), with generatorL onALLH. Its bounded finite-time inverse
isexp(tL), and exp(tL)U_t=I by multiplication of the absolutely convergent
series. Norm continuity gives U_t f->f and Rres(U_t f)->Rres(f).
This is actual shifted-RESIDUAL spectral heat and source return, not the
Dirichlet or gamma-source heat and not a proof thatR+B I is positive.
U_t need not preserve nativeC2 endpoint traces; its justified carrier isH,
with the density return above. The compressed positive headA has its
separately defined finite-dimensional heat; it is not substituted forU_t.

For lossless proof data reuse the ACTUAL PaidPacket.retainedCodec and
PaidPacket.decodeRetained on the dependent total carrier of descriptor/proof
bytes, exact guard/data bytes and checker bytes. Its proved full_roundtrip
isdecodeRetained(retainedCodec.encode(x))=x for EVERY suchx, with no
arithmetic-sign premise. Retain the full byte lists, not hashes standing
for recoverable data. Source syntax describes bound real coefficient
variables and ALL modesk>N; it does not encode arbitrary semanticL2
functions or remove any convergence/domain/tail obligation. Complete
actual byte readback is checked separately from the mathematical proof.

The new advances are the full signed-residual physical head inequalities,
the exact native trace-preserving projection and full complement law, and
the genuine shifted-head inverse supplying(TAIL_SCHUR)'s hypotheses.
The closed original j3 target, cofinal branch, RH and GRH remain OPEN.
All universal analytic claims here are WRITTEN proofs; finite exact rational
and polynomial coefficient guards PASS; Lean/kernel/axiom audits NOT_RUN.
The independent audit checked the source directions, native trace, Fourier
factor, both signs and the absence of a missing factor2. Classical Fourier,
Cauchy-Schwarz, trace cancellation and Schur completion are the methods;
novelty beyond this exact source-bound instance is NOT_ASSESSED.

-/
set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourResidualHead

/-- Reuse the ORIGINAL middle domain and exactly the already paid pair. -/
def residualDomain : Set ℝ :=
  ConductorThreeRadiusFourMiddleReturn.middleDomain \
    (Set.Icc
      ((ConductorThreeRadiusFourPaidPacket.packetCenter -
        ConductorThreeRadiusFourPaidPacket.packetRadius : ℚ) : ℝ)
      ((ConductorThreeRadiusFourPaidPacket.packetCenter +
        ConductorThreeRadiusFourPaidPacket.packetRadius : ℚ) : ℝ) ∪
    Set.Icc
      ((-ConductorThreeRadiusFourPaidPacket.packetCenter -
        ConductorThreeRadiusFourPaidPacket.packetRadius : ℚ) : ℝ)
      ((-ConductorThreeRadiusFourPaidPacket.packetCenter +
        ConductorThreeRadiusFourPaidPacket.packetRadius : ℚ) : ℝ))

/-- The actual ENTIRE signed residual, with original filters and Fourier mass. -/
def residualValue (f : ℝ → ℝ) : ℝ :=
  (1 / (2 * Real.pi)) * ∫ xi in residualDomain,
    ConductorThreeRadiusFourMiddleReturn.sourceSymbol xi *
      ConductorThreeRadiusFourMiddleReturn.highFilter xi ^ 2 *
      (1 - ConductorThreeRadiusFourMiddleReturn.lowFilter xi ^ 2) *
      ConductorThreeComplementTail.fourierMass f xi

def residualBudget : ℚ :=
  ConductorThreeRadiusFourMiddleReturn.cleanMiddleBudget -
    ConductorThreeRadiusFourPaidPacket.pairPacketPrice

def frequencyFrontier : ℚ := 30000000
def nativeHeadRank : ℕ := 23000000
def piUpper : ℚ := 22 / 7

def sixthPowerPolynomial (x : ℚ) : ℚ :=
  x * (x + 1) * (2 * x + 1) * (3 * x ^ 4 + 6 * x ^ 3 - 3 * x + 1) / 42

def upperRatioSquared : ℚ :=
  piUpper ^ 2 * (nativeHeadRank : ℚ) ^ 2 / (16 * frequencyFrontier ^ 2)

def nativeHeadPrice : ℚ :=
  213 * piUpper ^ 5 * sixthPowerPolynomial nativeHeadRank /
    (28672 * frequencyFrontier ^ 7 * (1 - upperRatioSquared) ^ 2)

def allOddHeadPrice : ℚ :=
  1704 * piUpper * 8600000 * 8600001 * 17200001 /
    (2025 * frequencyFrontier ^ 3)

/-- This is a polynomial identity for ALL arguments, not sampled power sums. -/
theorem sixthPowerPolynomial_step (x : ℚ) :
    sixthPowerPolynomial x - sixthPowerPolynomial (x - 1) = x ^ 6 := by
  unfold sixthPowerPolynomial
  ring

theorem sixthPowerPolynomial_zero : sixthPowerPolynomial 0 = 0 := by
  norm_num [sixthPowerPolynomial]

theorem exact_original_budget : residualBudget = 124997987 / 10 ^ (9 : ℕ) := by
  norm_num [residualBudget, ConductorThreeRadiusFourMiddleReturn.cleanMiddleBudget,
    ConductorThreeRadiusFourPaidPacket.pairPacketPrice,
    ConductorThreeRadiusFourPaidPacket.singlePacketPrice]

theorem exact_native_head_gap :
    upperRatioSquared < 1 ∧ (1 / 10000 : ℚ) < residualBudget - nativeHeadPrice := by
  norm_num [upperRatioSquared, residualBudget, nativeHeadPrice,
    sixthPowerPolynomial, nativeHeadRank, frequencyFrontier, piUpper,
    ConductorThreeRadiusFourMiddleReturn.cleanMiddleBudget,
    ConductorThreeRadiusFourPaidPacket.pairPacketPrice,
    ConductorThreeRadiusFourPaidPacket.singlePacketPrice]

theorem exact_all_odd_head_gap :
    piUpper * 8600000 / (4 * frequencyFrontier) < 1 / 4 ∧
      allOddHeadPrice < residualBudget := by
  norm_num [allOddHeadPrice, residualBudget, frequencyFrontier, piUpper,
    ConductorThreeRadiusFourMiddleReturn.cleanMiddleBudget,
    ConductorThreeRadiusFourPaidPacket.pairPacketPrice,
    ConductorThreeRadiusFourPaidPacket.singlePacketPrice]

/-- Full dependent descriptor/proof, guard-data and checker bytes roundtrip.
Successful decoding does not assert the remaining Schur sign. -/
theorem retained_full_roundtrip
    (data : ConductorThreeRadiusFourPaidPacket.RetainedEvidence) :
    ConductorThreeRadiusFourPaidPacket.decodeRetained
      (ConductorThreeRadiusFourPaidPacket.retainedCodec.encode data) = data :=
  ConductorThreeRadiusFourPaidPacket.full_roundtrip data

/-- Complete countable coverage tail; separate from the full physical tail(7). -/
theorem entire_coverage_tail (J : ℕ) :
    (∑' k : ℕ, WeightedStage.stageCoverageWeight (J + k)) = (1 / 2 : ℝ) ^ J :=
  WeightedStage.stageCoverageWeight_tail J

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourResidualHead
