/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors
Composition source inspected: grwtsk/math901c989b9899251f08b3fe8e87bae731fb465e3b.
Native low/high modules are now committed on main12e3471d075669ca7ff09c41b8df7e5ab64f18fc;
original carrier, character and primitive-source definitions are unchanged.
The actual low-source definitions retained here are M19000,K1425, NOT the
alternative M18000,K1350 scratch construction. Native core carrier/source
contracts are unchanged from the inspected c779a67fa824da8f9b75384f7d61c46baeb2ce1f.
Recorded actual high payload SHA256
18a437949455f098b029d4d43f992cf0c5e8591ef5d3caaa2fbbd3bc8ba0e2dd.
Canonical Noe instructions previously read; no Noe/native replay job is run here.

WRITTEN_LOW_SOURCE_COMPOSITION_PROOF_AND_CONDITIONAL_STAGE_CONSUMER
SIGNED_WHOLE_MIDDLE_PREMISE_OPEN
FINITE_EXACT_SCALAR_SOURCE_GUARDS_PASS
COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN
INDEPENDENT_HUMAN_REVIEW_NOT_RUN / WORLDWIDE_NOVELTY_NOT_ASSESSED
-/

import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeRadiusFourLowFilter
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeComplementTail

/-!
# Exact radius-four low composition and the remaining signed middle

Backward consumer: `DirichletStageChain.PrimitiveStageLower
modThreeQuadratic modThreeQuadratic_primitive modThreeQuadratic_nonprincipal 3`.
The exact required result is Q_chi3,4(f)>=-E(f)/8 for EVERY original
`DirichletStageChain.Admissible modThreeQuadratic 4 f`.
This file proves the complete low-source composition with the new high filter
and the conditional consumer with its exact remaining allowance. It DOES NOT
prove or assume discharged the whole signed middle inequality stated below.

## Carrier, source, Fourier measure and current parameters

Retain the original REAL odd compactC2 test, zero extended outside[-4,4],
physical LebesgueL2 mass E=energy(liftReal f), and original finite parity-one
gamma form. PutF(z)=integral f(t)exp(i*z*t)dt and
J_D(b)=integral_D b(xi)|F(xi)|^2 dxi/(2pi). No H1 ratio, weighted norm,
finite mode domain or different character is substituted. All component
signed convolutions are real compactC2 and in the same gamma-form domain;
their support may enlarge only within the proved source-return window.

The actual primitive nonprincipal character ischi3=(0,1,-1) modulo3,
conductor3, gamma parity1, no principal pole. Let

 s4(xi)=A(xi)-P4(xi),
 A=log(3/pi)+Re psi(3/4+i*xi/2),
 P4=2 sum_(n=p^e<=2980,p!=3)log(p)*chi3(n)*cos(xi*log n)/sqrt(n).

This is the native `twistedPrime 4 chi3` multiplier, with ALL458 nonzero
unramified atoms, not the old93-atom radius-three prime symbol. The exact
source identity, gamma normalization and original physical norm are

  Q_chi3,4(f)=primitiveArithmeticValue chi3 hp hn 4(liftReal f)=J_R(s4). (S)

It follows from physical Plancherel, the correlation cosine shifts and the
digamma difference formula for the original gamma jump-energy kernel.
CompactC2 gives F=O((1+|xi|)^(-2)) on fixed horizontal strips; gamma grows
logarithmically and the prime multiplier is bounded. Thus all real signed
integrals, finite restrictions and the following decomposition exist
absolutely. The actual source half-mass enclosure gives |P4|<211; A>=-2
globally, so s4>=-213 on the ENTIRE real line.

Use the actual new HIGH filter

 M_H=7990,K_H=2820,h_H=1/(2*10^25),
 P_H(z)=sum_(j=K_H)^M_H choose(M_H,j)t_H^j(1-t_H)^(M_H-j),
 t_H=sinc(h_H*z)^2.

The recorded complete458-atom/4096-cell Schur/variance source return gives

 J_R(s4*(1-P_H^2))>=-lambda E,
 lambda=597531/(5*10^13)=2*(577531/10000+2)*10^-10.              (H)

The payload identity above retains this theorem at written/exact standalone
finite-computation scope, not fresh kernel scope. This consumer does not
rerun those rows or silently substitute the olderW58/dyadic-scale source.
Its all-lobe REAL probability laws are0<=P_H<=1 and

 P_H<=epsilon_H=10^-10 whenever|xi|>=R=35*10^24.

The dimensionless pass/stop endpoints are8/5 and7/4, because the actual
pass cutoff is32*10^24. The scale1/(2*10^25) is retained exactly.

Use the CURRENT retained LOW filter

 M_L=19000,K_L=1425,h_L=153/2000000000,epsilon_L=10^-40,
 P_L(z)=sum_(j=K_L)^M_L choose(M_L,j)t_L^j(1-t_L)^(M_L-j),
 t_L=sinc(h_L*z)^2.

These are the actual lowOrder/lowThreshold/lowBoxRadius definitions in
RadiusFourLowFilter. In particular0<=P_L<=1 onR and
P_L>=1-epsilon_L on|xi|<=L=30000000. Neither an alternative degree nor a
pointwise relation between two different high filters is assumed.

## Complete primary proof of the actual high source(H)

# Conductor-three radius-four physical source and whole high branch

Local attribution: grwtsk contributors. Source math@c779a67fa824da8f9b75384f7d61c46baeb2ce1f. Read current AGENTS.md, proof-comparison disposition, structural-intelligence source/skill, and the canonical Noe proof-automation skill. These are ordinary standalone mathematical calculations; no Noe job, repository edit, publication, compilation, kernel verification or axiom audit is claimed.

The exact consumer is DirichletStageChain.PrimitiveStageLower modThreeQuadratic hp hn 3: for every ORIGINAL real odd C2 compact Admissible f supported[-4,4], primitiveArithmeticValue chi3 hp hn 4 (liftReal f)>=-E(f)/8. Here E is unweighted physical Lebesgue L2 energy. All results below use the actual primitive, nonprincipal, real odd character chi3=(0,1,-1), conductor3 and gamma parity1.

Let F(xi)=integral f(t)exp(-i xi t)dt and integrate frequency with dxi/(2pi). The raw source is
 s(xi)=A(xi)-sum a_n cos(xi log n),
 A(xi)=log(3/pi)+Re psi(3/4+i xi/2),
 a_n=2log(p)chi3(p^e)/sqrt(p^e), n=p^e.
On physical radius T*=4.00001, exact logarithm comparisons give floor(exp(2T*))=2981. Since2981=11*271 is not a prime power, there are exactly458 nonzero atoms and the last is2971. At original radius4 the cutoff is2980, giving the SAME458 atoms. No prime3 power contributes. This is not the old93-atom source. The exact half absolute mass is between105.30513226 and105.30513227.

For the actual physical complex L2 carrier on[-T*,T*], zero-extend u and define
 B_chi u=sum_(n=p^e) b_n chi3(n)[u(t+log n)+u(t-log n)], b_n=log(p)/sqrt(n).
All458 atoms are retained. Its real quadratic form is precisely the original prime Fourier term. The auxiliary positive even step weight h has4096 absolute-coordinate cells, grid heights in positive integers, and cell width Delta=T*/4096. Its minimum normalized height is.225108. For log n/Delta in(d,d+1), the right translate lies in one of the cells i+d,i+d+1; the left translate uses reflected index -j-1. The exact row certificate takes the maximum neighboring height, including ZERO extension outside the physical interval. It uses a rational upper price q_n/1e8>=b_n, constructed by ceiling the certified log-upper/square-root-lower quotient using24-term atanh log bounds and a1e12 square-root grid. Every one of the4096 rows satisfies
 (B_abs h)(t)<=W h(t), W=577531/10000=57.7531.

Weighted Schur gives ||B_chi||<=W in the ORIGINAL UNWEIGHTED physical norm: apply2|u(t)u(v)|<=(h(v)/h(t))|u(t)|²+(h(t)/h(v))|u(v)|², integrate each symmetric shift, and use the row inequality. h is an auxiliary pointwise comparison; no weighted L2 norm is substituted. The exact maximum certified row ratio is57.75306868961007 (display only; the full rational is retained).

An independent physical Rayleigh calculation checks the sharpness relevant to this method. On the SAME radius T* take the even step function h itself. For full signed-cell height list H=reverse(h)++h, define S_k=sum_j H_j H_(j+k). For r=(d+theta)Delta, the exact covariance is Delta[(1-theta)S_d+theta S_(d+1)]. The exact ratio, including every atom, is between57.690548 and57.690549. Hence57.690548<=||B_abs||<=57.7531 on this stated carrier. This lower bound is not silently transported to a different radius or to the gamma source. It shows why the current unsigned high-frequency comparison cannot give a small cutoff merely by optimizing its positive weight.

The gamma estimate comes from [DLMF5.9.15](https://dlmf.nist.gov/5.9.E15). For z=3/4+iy, the integral denominator has modulus at least2*(3/4)*y; integrating t/(exp(2pi t)-1) over the ENTIRE positive half-line gives1/24. Thus the Binet correction, together with1/(2z), has modulus at most5/(9y). The original odd-parity source bounds A>=-2 and A(xi)>=log|xi|-.75 for|xi|>=100 follow as in the existing source. The exact new scalar guards prove
 log(3.2*10^25)>W+.75,
 10^25<exp(W+.75)<10^26.
The latter large cutoff is intrinsic to this unsigned comparison, not a suggested exhaustive scan.

Now choose the normalized box measure eta_h on[-h,h], h=1/(2*10^25), and set t(xi)=sinc(h xi)^2. Define the ACTUAL finite binomial polynomial
 P(xi)=sum_(j=2820)^7990 binomial(7990,j)t^j(1-t)^(7990-j).
No source sign is a field of P. Exact sinc-polynomial and Chernoff guards prove0<=P<=1, P>=1-epsilon on|xi|<=X=3.2*10^25, and P<=epsilon on|xi|>=R=3.5*10^25, with epsilon=1e-10. The real stop estimate covers every sinc lobe. These are the old scalar filter laws under an EXACT change of scale: hX=8/5 and hR=7/4.

The required source return is a finite variance identity. Put L=1-P and H=1-P²=L+LP. Expanding L and LP in monomials t^j(1-t)^k gives NONNEGATIVE coefficients and degree at most2*7990. For independent X_l distributed as eta_h, define the finite signed measure
 nu=eta_h^{*j}*product_l(delta_(X_l)-eta_h).
Then E|nu_hat|²=t^j(1-t)^k and supp(nu) is contained in[-(j+k)h,(j+k)h]. This proves the full H representation, not only a formal positivity assertion. For ORIGINAL f, every nu*f has physical support radius at most
 4+2*7990*h=4+7.99e-22<T*.
The exact same458-atom Schur operator therefore applies to every consuming covariance. Norm accounting uses the exact identity sum c E||nu*f||²=integral H|F|²/(2pi)<=E(f), never the large total variation of nu.

Consequently the complete prime term obeys
 integral P_arith H|F|²/(2pi)<=W integral H|F|²/(2pi),
and hence the ORIGINAL full real-frequency high branch satisfies
 integral_R s H|F|²/(2pi)>=integral_R(A-W)H|F|²/(2pi)
 >=-2(W+2)epsilon E(f)
 =-(597531/50000000000000)E(f).
This is a genuine whole infinite-domain bound, including every frequency and every variance source. It is not inferred from positive coverage weights: the actual signed arithmetic source is bounded through the separately proved physical Schur inequality. For the remaining stopped tail, s>=-213 and P²<=epsilon² give
 integral_(|xi|>R) s P²|F|²/(2pi)>=-213e-20 E(f).
All original C2 compact tests have the required convergent gamma integral; compact finite signed convolutions preserve the needed regularity. More general L2 tests may read the gamma side as an extended lower-bounded form.

Thus the current forward result pays the entire high-variance and stopped infinite-tail branch at loss1.195062e-8+2.13e-18, while leaving the original filtered finite source through3.5e25 unpaid. It does NOT prove j3 or cofinal positivity. Repeating the old3.5e9 scalar scan is not a viable completion of this exact branch: its domain is no longer the required domain and its source has changed458/93-fold. A new joint arithmetic-frequency comparison is required.

Exact artifacts: q3_radius_four_unsigned_schur_20261107.py/.json; q3_radius_four_unsigned_lower_20261107.py/.json; q3_radius_four_high_variance_20261107.py/.json. All final guards remain active under Python-O. JSON encode/decode directly roundtrip every retained source identity, physical radius, character, atom, row, parameter and approximation bound. These finite descriptions do not eliminate Binet, Fourier, convolution or infinite-tail obligations; those are proved above. The variance is a finite covariance representation, not an asserted spectral heat semigroup. Positive row/coverage weights alone certify no arithmetic sign.

Comparison and status: weighted Schur, exact piecewise-linear covariance, binomial Chernoff and Bernstein variance identities are standard methods; no prior-art novelty claim is made. The Rayleigh lower bound and the separate actual negative width11 packet are hostile checks. Source correspondence and the written analytic return are stated above; Lean compilation/kernel/axiom audit remain NOT_RUN. Finite passing rows are promoted only through the explicit Schur theorem, and finite scalar guards only through the complete variance/tail return. No finite radius is promoted to all cofinal stages.



Two source-level clarifications in this complete high proof are essential.
First, B_chi and B_abs act on the physical Hilbert space L2[-T*,T*]:
each shift uses zero extension and is compressed by restriction back to
that interval. Its quadratic form is the original full-line correlation
form because the input vanishes outside. No norm of an uncompressed
whole-line output is silently substituted. The exact maximum row ratio
is338505173856977/5861250000000<W, retaining every458 atom and4096 row.

Second, the global gamma estimate log|xi|-.75 uses the SHARP real-part
Binet bound, rather than only the coarser absolute5/(9y) correction:
Re psi(3/4+iy)>=log y-3/(8y^2)-1/(18y). Thus
A(xi)>=log|xi|+log(3/(2pi))-3/(2xi^2)-1/(9|xi|).
The exact guards pi<22/7, sum_(k=0)^5(.74)^k/k!>44/21
(hence exp(.74)>44/21), and
.74+3/(2*100^2)+1/(9*100)<.75 establish it for EVERY|xi|>=100.
The half-line Binet integral and its full1/24 moment were retained,
so this is not an unqualified asymptotic remainder.

The compact source covariance identity pays all frequencies once.
The stopped outer term213*10^-20 is a SEPARATE lower bound, used only
once in the middle partition below; it is not also included in lambda.

## Direct independent audit of the LOW proof with this NEW high filter

The high filter has an actual finite real even signed-measure instance
nu_H of radius2M_Hh_H=7990/10^25; the low instance nu_L has radius.002907.
This follows by expanding each binomial monomial in the two-box measure
anddelta0 minus it. Their finite total variations justify convolution and
derivative interchange, however large those variations are.

Forv=f*nu_H*nu_L the true physical radius is

  Tnew=4+.002907+7990/10^25.

Even the optional wide six-box variance adds only6/3000000. Both radii
are STRICTLY smaller than the source window already proved in the current
low leaf, Twide_old=400291699/100000000=4.00291699. That leaf proves
log2999-2*Twide_old>1/5000 and2980<exp8<2981. Every intervening integer
2981..2998 has zero vonMangoldt coefficient, and2999 is the next prime.
Thus the native arithmetic source forv and all optional wide components
is EXACTLY the SAME458-atom s4. No new term is dropped by its sign.

The gamma form remains finite: compactC2 and finite signed convolution
give||u(.+r)-u||^2<=min(r^2||u'||^2,4||u||^2), integrable against the actual
parity-one kernel. For the LOW proof no physical Schur estimate is needed.

The same strip argument directly applies to the NEW high polynomial:
for|Im z|<=1/2, |sinc(h_H*z)^2-sinc(h_H*Re z)^2|<h_H. Hence

 |P_H(z)|<1/(1-2M_Hh_H)<1001/1000=:c_H.                       (C)

This proves a bound on the actual new filter, rather than inferring an
order between old and new source integrals. The retained low proof gives
|P_L(z)|<c_L=1003/1000 on the whole strip. At|Re z|>=Hsafe=10^8/3-1,

 |P_L(z)|<c_L*epsilon_L,
 |P_L(z)|^2<=c_L^2[41/(h_L|Re z|)^2]^2850.                    (Z)

All real sinc lobes are included in(Z). The exact Chernoff guards use
(1937/2000)^19000/(7/10)^1424 and
(2049/2000)^19000/(3/2)^1425, both<10^-40. They are finite rational
comparisons, not probabilistic evidence about unknown arithmetic signs.

Apply the individual primitive compact explicit formula to ACTUALv:

 J_R(s4*P_H^2*P_L^2)=sum_z mult(z)F(z)F(-z)P_H(z)P_H(-z)P_L(z)P_L(-z).

The divisor is the original completed primitivechi3 divisor in
z=(rho-1/2)/i coordinates. Nonvanishing at/onRe rho>=1 and the primitive
functional equation exclude boundary zeros, so|Im z|<1/2. There is NO
factor1/2 for this individual character. The product at an unverified
complex ordinate is NOT replaced by an absolute square.

Platt1305.3087v1 Theorem7.1 supplies the actualchi3 verifieds-plane height
H=10^8/3; useHsafe=H-1. Realchi3 has no real positive-sigma zero, by its
positive paired Dirichlet series. Reality supplies the negative-ordinate
reflection. Thus every verified term is a NONNEGATIVE real square.
BMOR2005.02989v1 Theorem1.1 counts both ordinate signs and multiplicities.
Its source-bound coarse lawN(Y)<=Ylog(3(Y+2)) forY>=20 gives near count
N(10Hsafe)<10^10 and, for EVERYj>=0, far count

 10^9*2^j*(22+j) on10Hsafe*2^j<|Re z|<=20Hsafe*2^j.

For ORIGINALf, physical Cauchy--Schwarz gives |F(z)F(-z)|<=8exp4 E<648E.
Consequently the ENTIRE near unknown divisor has absolute sum

 <=648*c_H^2*c_L^2*10^10*10^-80 E <10^-67 E.

For ALL far annuli, h_L*10Hsafe>25 and41/625<1/15, so their complete
absolute sum is bounded by

 10^12*15^-2850 sum_(j>=0)(22+j)*2^(-5699j) E
       <23*10^12*15^-2850 E<10^-67 E.

The exact last inequality is23*10^79<15^2850. The geometric sum is<23.
Every zero in every unobserved annulus, both signs and all multiplicities,
is retained. The near and far majorants justify absolute convergence and
the optional compact-parameter average. They prove DIRECTLY for the new
filter

  J_R(s4*P_H^2*P_L^2)>=-10^-66 E>=-eta E, eta=10^-64.          (LOW)

The optional wide variance has strip-product bound4exp(6/3000000)<5;
its whole unknown tail is<10^-65 E and hence also<eta E. This stronger
fact is not needed in the raw consumer below. No zeta verification height,
fullchi3GRH, Schur norm, or middle-frequency sign enters(LOW).

## Exact signed middle and whole-source return

Let

 D4={xi:30000000<|xi|<35*10^24},
 Jmiddle(f)=J_D4(s4*P_H^2*(1-P_L^2)).

The domain contains BOTH signs. There are NO oldB0/B1/B2 masks or inherited
band-payment estimates. Use the exact multiplier identity

 1=(1-P_H^2)+P_H^2*P_L^2+P_H^2*(1-P_L^2).

On|xi|<=L, 1-P_L^2=(1-P_L)(1+P_L)<=2epsilon_L. The global source floor
s4>=-213 and0<=P_H^2<=1 imply pointwise
s4*P_H^2*(1-P_L^2)>=-426epsilon_L. On|xi|>=R, the all-lobe high stop
givesP_H^2<=epsilon_H^2, hence the pointwise lower bound-213epsilon_H^2.
Plancherel pays each ENTIRE omitted symmetric union once in the ORIGINAL
physical massE. It does not multiply by a packet or band count. Endpoints
are Lebesgue-null. No uniform operator theorem is inferred by multiplying
an arbitrary mixed-sign quadratic estimate by a bounded filter.

Together with(S),(H),(LOW), this proves the COMPLETE source comparison

 Q_chi3,4(f)>=Jmiddle(f)-delta*E,
 delta=597531/(5*10^13)+10^-64+426*10^-40+213*10^-20.            (R)

This is an actual proved reduction on EVERY original admissiblef. The
largest sufficient middle allowance supplied by this comparison is

 Cstar=1/8-delta=.12499998804937999787... .

The exact clean budgetC=124999987/10^9=.124999987 satisfies
C+delta<1/8, with margin>10^-9. Before the tiny low/outer residuals,

 1/8-C-597531/(5*10^13)=52469/(5*10^13).

Therefore the exact NEXT MISSING LEMMA

 forall original Admissiblechi3 4 f,
 Jmiddle(f)>=-(124999987/10^9)E(f)                            (MIDDLE)

would, by(R) andE>=0, prove Q_chi3,4(f)>=-E/8 and hence exactly the native
PrimitiveStageLowerchi3 hp hn3. The allowance is for the WHOLE SIGNED
middle integral. A negative restricted packet is not a counterexample to
(MIDDLE); positive frequency contributions may compensate it. Conversely
no collection of passing local cases proves(MIDDLE) without an exhaustive
source cover and full domain/operator return. This file proves NO such
whole-middle sign, and does not assume it has been discharged.

The parameterized finite scalar lemma below merely records this conditional
arithmetic implication. Its hypotheses are not accepted as actual source
observations merely by being representable.

## Evidence, types, heat coverage and lossless finite descriptions

The current source high payload and complete458-atom Schur input are pinned
separately in the companion scalar audit; the LOW proof above does not rerun
or depend on that Schur calculation. The audit preserves the currentM19000
low-source bytes, actualnewPH parameters, both compact support radii, all
complex-strip factors and ENTIRE zero-tail laws, the exact global source
floor and every residual in(R). All constants were checked by ordinary
exact integer/rational arithmetic with canonical payload readback.
Compilation, fresh kernel and axiom audits of this source areNOT_RUN.

Retain the SAME branch types: Admissiblechi3 4 (full physical domain above),
signed spectralL2(dxi/(2pi)) forms, actual compact signed measure instances,
the primitive completed zero divisor with multiplicity, the exact source
comparison(R), the still-open(MIDDLE), PrimitiveStageLower3 and the cofinal
SmallConductorStages supplier. Every descriptor retains hypotheses and
quantifiers, character table/conductor/parity, norm and Fourier convention,
source identity/parameters, finite coefficients, errors, full-tail/convergence
laws and separate statuses. Auxiliary signed kernels have finite total
variation; arbitrary semanticL2 functions/zeros are represented only by their
source definitions and bound-variable syntax, not fabricated finite values.

Reuse the existing CompactFilterReturn finite typed-description interface and
WeightedStage.dependentProofCodec, on the dependent total type of RETAINED
finite proof data. Its lawdecode(encode x)=some x yields on the encoder image
decodeImage(encode x)=x, preserving the complete source/type context and all
parameters/errors above. It does not manufacture the missing signed bound.
No runtime Gram factors, matrices or numerical root coordinates absent from
these retained data are claimed reconstructible from maxima or hashes.

Heat is ONLY the existing exhaustive branch-coverage instance: finite typed
descriptions indexed by their natural codes, positiveweights2^(-n-1), total1
and ENTIRE unobserved tail2^(-J); the summable source-return law is
x=2Kx-(sum Kx)pi. The geometric series and substitution prove those laws.
They never imply an arithmetic sign. The compact binomial/variance kernels
used here have their independently constructed source-return laws, not a
claimed spectral semigroup or a finite Euler sign certificate.

The original GRH target remains ALL complex Dirichlet characters modulo EVERY
positive integer, zeros in0<Re(s)<1. Primitive principal conductor1 is the
separate zeta/RH branch; imprimitive return keeps the inducing-character
finite-Euler law. One conditional radius-four return neither supplies all
cofinal stages nor the other primitive sectors. The exact unresolved item
for this branch is(MIDDLE), with all its displayed original-source data.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourMiddleReturn

open GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeQuadraticConstruction
open CharacterWindow

def sourceSymbol (xi : ℝ) : ℝ :=
  ConductorThreeComplementTail.gammaSymbol xi -
    twistedPrime 4 modThreeQuadratic
      (fun n => (Real.cos (xi * Real.log (n : ℝ)) : ℂ))

def highFilter (xi : ℝ) : ℝ :=
  ConductorThreeComplementTail.binomialFilter
    (Real.sinc (xi / (2 * 10 ^ 25)) ^ 2)

def lowFilter (xi : ℝ) : ℝ :=
  let t := Real.sinc ((ConductorThreeRadiusFourLowFilter.lowBoxRadius : ℝ) * xi) ^ 2
  ∑ j ∈ Finset.Icc ConductorThreeRadiusFourLowFilter.lowThreshold
      ConductorThreeRadiusFourLowFilter.lowOrder,
    (Nat.choose ConductorThreeRadiusFourLowFilter.lowOrder j : ℝ) *
      t ^ j * (1 - t) ^ (ConductorThreeRadiusFourLowFilter.lowOrder - j)

def middleDomain : Set ℝ :=
  {xi | 30000000 < |xi| ∧ |xi| < 35 * 10 ^ 24}

def middleValue (f : ℝ → ℝ) : ℝ :=
  (1 / (2 * Real.pi)) * ∫ xi in middleDomain,
    sourceSymbol xi * highFilter xi ^ 2 * (1 - lowFilter xi ^ 2) *
      ConductorThreeComplementTail.fourierMass f xi

def highPrice : ℚ := 597531 / (5 * 10 ^ 13)
def totalReturnPrice : ℚ :=
  highPrice + 1 / 10 ^ 64 + 426 / 10 ^ 40 + 213 / 10 ^ 20
def maximalMiddleBudget : ℚ := 1 / 8 - totalReturnPrice
def cleanMiddleBudget : ℚ := 124999987 / 10 ^ 9

theorem actual_high_support_fits_old_low_window :
    (4 : ℚ) + 2 * 7990 / (2 * 10 ^ 25) +
      2 * 19000 * (153 / 2000000000) + 6 / 3000000 <
        400291699 / 100000000 := by
  norm_num

theorem actual_new_high_strip_factor :
    (1 : ℚ) / (1 - 2 * 7990 / (2 * 10 ^ 25)) < 1001 / 1000 := by
  norm_num

theorem actual_new_high_endpoints :
    (1 / (2 * 10 ^ 25) : ℚ) * (32 * 10 ^ 24) = 8 / 5 ∧
      (1 / (2 * 10 ^ 25) : ℚ) * (35 * 10 ^ 24) = 7 / 4 := by
  norm_num

theorem high_price_source_identity :
    highPrice = 2 * (577531 / 10000 + 2) * (1 / 10 ^ 10 : ℚ) := by
  norm_num [highPrice]

theorem pre_tail_margin_exact :
    (1 / 8 : ℚ) - cleanMiddleBudget - highPrice = 52469 / (5 * 10 ^ 13) := by
  norm_num [cleanMiddleBudget, highPrice]

theorem clean_budget_margin :
    cleanMiddleBudget + totalReturnPrice + 1 / 10 ^ 9 < (1 / 8 : ℚ) := by
  norm_num [cleanMiddleBudget, totalReturnPrice, highPrice]

/-- Pure scalar consumer. It does not prove either actual analytic hypothesis. -/
theorem stage_three_of_actual_source_and_signed_middle
    (E Qvalue Jvalue : ℝ) (hE : 0 ≤ E)
    (hsource : Jvalue - (totalReturnPrice : ℝ) * E ≤ Qvalue)
    (hmiddle : -(cleanMiddleBudget : ℝ) * E ≤ Jvalue) :
    -(1 / 8 : ℝ) * E ≤ Qvalue := by
  have hprice : (cleanMiddleBudget : ℝ) + (totalReturnPrice : ℝ) ≤ 1 / 8 := by
    norm_num [cleanMiddleBudget, totalReturnPrice, highPrice]
  have hscale := mul_le_mul_of_nonneg_right hprice hE
  linarith

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourMiddleReturn
