/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors
Inspected source: grwtsk/math 9404b5698d0da5ee97d289a830f76ab75e3ef84f;
current complete checkout 654cefad38292ca96e54439902602e823382103a.
Consumed conductor-three sources are unchanged between these revisions.
Written analysis and standalone exhaustive LOCAL rational computation.
COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
INDEPENDENT_HUMAN_REVIEW_NOT_RUN / WORLDWIDE_NOVELTY_NOT_ASSESSED.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeComplementTail

/-!
# An actual paid packet with complete physical-basis tail

Backward target: finiteAnnulusValue f >= -(98136331/500000000)*E for EVERY
original Admissible chi3 3 f. This source supplies ONE actual paid interval,
not an exhaustive family, the whole annulus, PrimitiveStageLower j=2, RH or GRH.
The universal analytic results below are WRITTEN proofs. Only finite rational
constants are Lean declarations.

At c=300081451003/1000 the exact polynomial q(x)=1-15*x^2/4+3*x^4 gives
 integral_(-1)^1 m(c+x)*P_H(c+x)^2*q(x)^2 dx < -1/4.
The exact outward checker retains all93 atoms, Binet gamma, variance/filter
errors and polynomial moments; its rational upper endpoint is approximately
-0.28982345. Hence a universal positive degree-five frequency-moment minorant
at radius1 is FALSE. This is not an Admissible counterexample. The physical
orthonormal-basis argument below supplies a valid local alternative.

Raw-source exceptional packet at the enlarged physical support

Source: grwtsk/math9404b5698d0da5ee97d289a830f76ab75e3ef84f.
Written analytic proof plus exact interval/rational computation, not a kernel result.

Theorem. Let T=300612999/100000000, c=300081451003/1000 and I=[c-5,c+5].
For every COMPLEX L2 function f zero-extended from[-T,T], with physical mass E
and F(xi)=integral f(t)exp(-i xi t)dt,
 integral_I [A(xi)-P_arith(xi)]|F(xi)|^2 dxi/(2pi)>=-E/5000000000.
Here A and the complete93-term P_arith are the ORIGINAL conductor-three
radius-three source. No prime at the enlarged support is silently added.
The actual checked price is less than1.209430844*10^-11, and the theorem
uses only the exact rational comparison to2*10^-10. A symmetric real-odd
input has mirror-pair cost at most4*10^-10 by applying the bound twice.

This is one genuine paid packet, not a uniform statement for every center.
In particular the far lower-frequency wells can have larger local raw-source
loss, so a full cover still needs actual certificates for every packet.

Use the complete orthonormal physical basis
 e_n(t)=i^n sqrt((2n+1)/(2T))P_n(t/T),
 Phi_n(s)=Fourier(e_n)(s)=sqrt(2T(2n+1))*j_n(Ts).
Demodulating by exp(-ict) preserves support and physical norm. Let K be angular
Fourier restriction to s in[-5,5], with frequency measure ds/(2pi), so ||K||<=1.
Let Q48 be the projection onto e_0,...,e_47. Put g=18.7802997 and
l(s)=g-P_arith(c+s). The accurate Binet guards in the checker prove A(c+s)>=g
throughout[-5,5], including its left endpoint: for y=(c-5)/2,
 3y/pi>exp(g+10^-9), 3/(8y^2)+1/(18y)<10^-9.
Hence the desired raw-source integral is bounded below by the quadratic form
of H=K* l K. All93 source atoms are retained, and |l|<93.

Construct the48 by48 physical matrix
 H48(n,m)=integral_(-5)^5 l(s)Phi_n(s)Phi_m(s)ds/(2pi).
Use64-point Gauss-Legendre quadrature. Every P64 root is isolated in a disjoint
96-bit rational grid interval by exact rational sign checks. The quadrature
weights use P64'(x)=64 P63(x)/(1-x^2) at the root. Evaluate P63 exactly at each
bracket midpoint; padding1009 grid units is justified by |P63'|<=2016 and the
midpoint radius1/(2*2^96). No unstable interval recurrence estimate is used.

All spherical Bessel values use their power series through term80. Here |Ts|<16.
For every subsequent term the absolute ratio is<1/100; the whole omitted series
is bounded by the last included absolute term divided by99. Every operation is
rounded outward on the96-bit fixed grid, and the complete source sine/cosine/log
and pi enclosures are retained. Decimal and floating initial guesses locate roots
only; exact sign isolation determines acceptance.

The complete quadrature remainder is also bounded. Physical Cauchy--Schwarz gives
 |Phi_n^(k)|<=sqrt(2T)T^k, hence the128th derivative of l Phi_n Phi_m is bounded by
 2T(g+74)(2T+6)^128 <560*13^128.
The64-point Gauss remainder on[-5,5] is therefore at most
 Qerr=560*13^128*5^129*2^129*(64!)^4/[129*(128!)^3]
per unnormalized matrix entry. Divide by2pi>6 for the normalized error. The
formula follows from double-node Hermite remainder and the squared norm of
the monic Legendre polynomial, as in DLMF3.5(v).

Let Hmid be the rational midpoint matrix produced by the full interval sums.
If e is the largest outward entry error including Qerr/6, the checker gives
 e<4.324393*10^-14, hence ||H48-Hmid||<=48e.
Clearing positive denominators, exact fraction-free Bareiss elimination proves
 Hmid+10^-11 I positive definite: every leading principal pivot is positive and
every division has zero remainder. All48 pivots and all2304 midpoint entries
are retained. Thus H48>=-(10^-11+48e)I. No floating eigenvalue is accepted.

The ENTIRE unobserved physical rank tail is paid. For n>=48 and |Ts|<16,
 |j_n(Ts)|<=16^n/(2n+1)!! *exp(256/(2(2n+3)))
            <4*16^n/(2n+1)!!.
Since 2T<301/50 and the frequency interval has length10,
 ||K(1-Q48)||_HS^2
 <161 sum_(n>=48)(2n+1)16^(2n)/((2n+1)!!)^2
 <=161*97*16^96/(97!!)^2 *37/36 <10^-32.
The ratio of consecutive summands is256/[(2n+1)(2n+3)]<1/37. Therefore with
tau=10^-16, the full operator difference from the finite matrix costs at most
 2*93*tau+93*tau^2.
The sum of every error is
 10^-11+48e+186*10^-16+93*10^-32 <2*10^-10.
This proves the stated theorem on the entire supported physical L2 carrier.

No variance factor or low-pass factor is multiplied into this packet symbol.
Instead this raw theorem can be applied afterward to actual compact variance/
filtered inputs with support at mostT; their averaged physical mass must be
bounded by the original mass using the exact squared-transform identity.
This avoids differentiating the huge binomial polynomial in a quadrature
remainder and avoids treating a hard Fourier projection as physically compact.

The large-sieve aggregation refinement is compatible with the proof: retain
the head floor (10^-11+48e)||Q48 exp(-ict)f||^2, not a full E charge per packet.
For separated centers and disjoint frequency intervals, continuous large sieve
and the complete Bessel tail can aggregate these head and tail costs independently
of packet count. This does NOT establish an exhaustive certified collection of
source packets; all actual matrix certificates and the complement coverage remain
required before the original finite-annulus target can follow.

Checker /tmp/q3_physical_packet_Tlow_raw_exact.py ran under python -O.
Final checker SHA256:
19692b1d7a390caa540db2d0a0b48bb51033cdea6b86ac6c7a1117ecb23cd231.
Payload /tmp/q3_physical_packet_Tlow_raw_exact.json SHA256:
40a302f12b4f688bea269d4206f2003af07ae21e37af6e78d967c76e64cf3617.
The payload retains roots, matrix, pivots, exact error, source identities and
rank-tail law. Compilation, fresh kernel checking, axiom audit and independent
human review are NOT_RUN.

## Countable-family aggregation theorem and proof

# Countable physical-packet aggregation without a packet-count loss

Local attribution: grwtsk contributors.
Mathematical source pin inspected: grwtsk/math9404b5698d0da5ee97d289a830f76ab75e3ef84f. Read-only math checkout. Written proof and exact rational constant guards; Lean compilation, fresh kernel replay and axiom audit NOT_RUN. No Noe automation. This proves the analytic aggregation law, not an unconstructed exhaustive arithmetic packet cover.

This law retains the actual physical finite-matrix coordinates from the independently constructed exceptional packet /tmp/q3_physical_packet_exact_proof.txt. It does not multiply a per-packet physical error by an unbounded number of packets. A separate audit checked that instance's Fourier normalization, modulation sign, full spherical-Bessel tail, rank-cross terms, Gaussian quadrature derivative/remainder and finite matrix SPD return, without finding a mathematical flaw.

## Source contract

Fix physical T>0 and packet frequency radius R>0. Let c_j be a finite or countable family of real centers with |c_j-c_k|>=d>=2R for j!=k. Put I_j=[c_j-R,c_j+R]; their interiors are disjoint. Let a real source multiplier s(xi) have literal minorants l_j(s)<=s(c_j+s) on [-R,R], with |l_j|<=L. Every source parameter, sign, gamma floor, error and original inventory used to establish this minorization remains part of the packet's evidence.

Let H=L2([-T,T],dt). For any complex f in H, use its zero extension and F(xi)=integral f(t)exp(-i xi t)dt. Put u_j(t)=exp(-ic_jt)f(t), so its transform at s is F(c_j+s). Modulation preserves the ORIGINAL physical norm and support.

Let K:H->L2([-R,R],ds/(2pi)) be Fourier restriction. Thus ||K||<=1. Use the complete physical orthonormal Legendre basis

    e_n(t)=i^n sqrt((2n+1)/(2T)) P_n(t/T), n>=0,
    Phi_n(s)=sqrt(2T(2n+1)) j_n(Ts).

The latter is the exact Fourier transform of e_n. Let Q_N be projection onto e_0,...,e_(N-1). The finite SOURCE matrix at packet j is

    H_j[n,m]=integral_(-R)^R l_j(s)Phi_n(s)Phi_m(s)ds/(2pi).

Suppose each complete matrix has the actual uniform lower bound H_j>=-sigma I_N, sigma>=0, including every quadrature and interval error. This is an assumption about the actual checked heads, not a desired sign inserted into the conclusion.

## Continuous large sieve with the exact angular normalization

For arbitrary d-separated angular frequencies c_j and any g supported in [-T,T],

    sum_j |integral g(t)exp(-ic_jt)dt|^2
      <=C(d)||g||_2^2,  C(d)=2T+2pi/d.                          (1)

This follows from the uniform-spacing Hilbert inequality of Montgomery--Vaughan, Hilbert's Inequality, JLMS(2)8(1974), Theorem2, DOI10.1112/jlms/s2-8.1.73. For completeness, integrate the square of a finite exponential sum on [-T,T]. Its diagonal is 2T sum|a_j|^2; the off-diagonal sine quotient is the difference of TWO Hilbert forms, each bounded by pi/d sum|a_j|^2 after multiplying a_j by exp(plus or minusic_jT). This bounds the synthesis operator by C(d); Hilbert-space duality gives (1). Finite subfamilies followed by monotone convergence give the countable case. The factor is angular2pi/d, not 1/d and not an unexplained Sobolev sampling constant.

Primary text inspected: https://personal.science.psu.edu/rcv4/personal/Publications/s2-8-1-73.pdf , Theorem2 and Corollary2.

Apply (1) to g=f*conjugate(e_n). The elementary bound |P_n(x)|<=1 for x in[-1,1] gives

    sum_j |<u_j,e_n>|^2 <=C(d)(2n+1)/(2T)||f||_2^2.              (2)

One proof of that polynomial bound is Laplace's integral representation P_n(x)=pi^-1 integral_0^pi (x+i sqrt(1-x^2)cos theta)^n dtheta, whose integrand has modulus<=1. The representation follows by integrating its generating function and matching (1-2xt+t^2)^(-1/2).

Summing (2) for n<N proves the WHOLE head-coordinate bound

    sum_j ||Q_Nu_j||_2^2 <=C(d)N^2/(2T)||f||_2^2.               (3)

Thus sigma remains multiplied by the actually observed head mass, not by one full ||f||^2 per packet.

## Entire rank-tail aggregation

Write tau_n=||K e_n||. Assume a proved positive sequence upper-bounds these norms and makes

    B=sum_(n>=N) tau_n sqrt((2n+1)/(2T)) <infinity.

For finite tail sums, Minkowski in ell2_j(L2([-R,R],ds/(2pi))) and (2) give

    [sum_j ||K(1-Q_N)u_j||^2]^(1/2)
      <=sqrt(C(d))*B*||f||.

The finite sums converge in that Hilbert space because B is summable. Their coordinate limits are the true K(1-Q_N)u_j, by completeness of the physical basis and boundedness of K. Hence the FULL countable physical tail satisfies

    sum_j ||K(1-Q_N)u_j||^2 <=gamma||f||^2,
    gamma=C(d)B^2.                                              (4)

No high-rank coordinates or unobserved packets are discarded. Disjointness in FREQUENCY gives

    sum_j ||K u_j||^2=sum_j integral_(I_j)|F|^2/(2pi)<=||f||^2.

Therefore the head-restriction norms, as distinct from physical head-coordinate norms, satisfy

    [sum_j ||KQ_Nu_j||^2]^(1/2)<=(1+sqrt(gamma))||f||.           (5)

These two observations use different norms and are not interchanged silently.

## Full original-source return

For each packet, expand the original integral in Q_Nu_j and (1-Q_N)u_j. Its head is bounded below by -sigma||Q_Nu_j||^2. Both cross terms together cost at most 2L||KQ_Nu_j||||K(1-Q_N)u_j||; its high square costs at most L||K(1-Q_N)u_j||^2. Summing and using (3)-(5) proves

    sum_j integral_(I_j) s(xi)|F(xi)|^2/(2pi)
     >=-[sigma C(d)N^2/(2T)
           +2L(1+sqrt(gamma))sqrt(gamma)+Lgamma]||f||^2.         (6)

All source comparisons and signed cross terms have been retained. The signed integrals are absolutely summable when the source is uniformly bounded on this union (as the literal chi3 source is on a bounded annulus); the minorant integral is absolutely summable from |l_j|<=L and disjointness. Alternatively (6) first holds on every finite subfamily and the source integral converges absolutely on the exact domain.

## Concrete radius5/rank48 constants

For the low-variance application use

    T=300612999/100000000=3.00612999, R=5, N=48, d>=10, L<=100.

This physical support retains the original93 unramified prime powers through403, since exp(2T)<409 and404..408 are not prime powers. The proof of this source comparison is in q3_compact_low_zero_filter_20261107.md.

Here C(d)<7, T>=3, and TR<16. The spherical Bessel series gives

    |j_n(x)|<=|x|^n/(2n+1)!! * exp(x^2/(2(2n+3))).

For n>=48, |x|<=TR<16 the exponential is <4, proved by the exact guard exp(256/198)<4. Integrating the transform norm over [-R,R] yields

    tau_n <=4sqrt(2TR/pi)sqrt(2n+1)(TR)^n/(2n+1)!!.

After multiplying by sqrt((2n+1)/(2T)), the summands are bounded by

    4sqrt(R/pi)(2n+1)(TR)^n/(2n+1)!!.

The ratio of successive last factors is TR/(2n+1)<16/97<1/6. Consequently

    B <=(24/5)sqrt(R/pi)*97*(TR)^48/97!!,
    gamma <7*(192/5)*97^2*16^96/(97!!)^2 <10^-30.               (7)

This is an exact bound on the ENTIRE tail. Hence sqrt(gamma)<10^-15. Also C(d)N^2/(2T)<2688. A uniform actual head floor sigma=2*10^-10 therefore gives, for the WHOLE countable family,

    total source price
      <2688*(2*10^-10)+200(1+10^-15)10^-15+100*10^-30
      <538*10^-9.                                               (8)

Even a much looser head floor sigma=10^-5 would give a whole-family price below0.026881, still comfortably inside the middle-annulus allowance. The proof does NOT assert those head floors for every actual center: that arithmetic certificate and exhaustive domain coverage remain to be supplied.

## Returning to compact variance components

The actual middle multiplier is m P_H^2(1-P_L^2). The binomial variance representation of 1-P_L^2 has support radius2M_Lh_L, NOT4M_Lh_L: its nonnegative monomials have degree2M_L in t=sinc^2, each represented as a squared transform of a convolution of degree-many radius-h_L factors. Together with the high filter radius2M_Hh_H and wide six-box variance radius6h, every represented original test has exactly the T above.

Apply (6) uniformly to each such represented test, then integrate the finite nonnegative variance coefficients. The averaged PHYSICAL mass is exactly integral V P_H^2(1-P_L^2)|F|^2/(2pi)<=||f||^2. Thus the same whole-family price returns to the original test f, without multiplying by enormous signed-kernel total variation bounds or claiming that a filtered function has the same norm as f.

The packet integrals must be the actual complete intervals in the consuming source domain. A packet crossing an excluded B band or a domain endpoint cannot use positive anchors removed from the target without a separately proved comparison. Source nonnegativity or other paid estimates on the ENTIRE leftover domain remain necessary. This theorem resolves aggregation and the full physical rank tail; it does not supply that absent exhaustive source cover or the uniform finite-head signs.

Exact constant checker: /tmp/q3_physical_packet_family_20261107.py; canonical scalar payload: /tmp/q3_physical_packet_family_20261107.json. These record T,R,N,d,L, the whole gamma tail, head coefficient and whole-family source price. The input coefficients are the complete physical matrices, not arbitrary local frequency polynomials; thus this method can handle the genuine unpaid packet where polynomial moment positivity fails. No universal matrix certificate or RH/GRH completion is asserted.

## Branch contracts and evidence interfaces

The local carrier is COMPLEX physical L2([-T,T],dt), zero extended to R, with
ALL its elements quantified. Retain T, center/radius, dxi/(2*pi), chi3,
conductor3/parity1, original93-atom inventory, gamma floor, quadrature, precision,
finite matrices, pivots, all errors and full rank-tail law. The family result
has its displayed extra ACTUAL minorant/matrix hypotheses for EACH packet.
No uniform family instance is asserted. Compact wide/high/low variance inputs
have this exact T; their averaged PHYSICAL mass multiplier is
V*P_H^2*(1-P_L^2)<=1. No weighted norm or hard Fourier cutoff replaces that norm.

The existing consuming branch types are Admissible chi3 3,
PrimitiveStageLower chi3 hp hn 2, SmallConductorStages and cofinal DirichletGRH.
One stage supplies only its own coordinate. The GRH target is ALL complex
Dirichlet characters modulo every positive integer. Primitive principal
conductor1 remains the separate RH/zeta branch; imprimitive characters keep
the original inducing-character/finite-Euler return. No Hecke sector is claimed.

EVERY type reuses the finite-description and dependentProofCodec interfaces of
WeilDirichletCompactFilterReturn. Representable proof data retains the dependent
type context, source identity, parameters, complete finite arrays/certificates,
all approximation errors, actual convergence/domain/full-tail proofs,
dependencies and separate evidence statuses. Its proved law is
 decode(encode x)=some x;
on the encoder image decodeImage(encode x)=x, recovering every field and its
dependent context. Arbitrary semantic L2 functions are not claimed finitely
encodable. A finite description cannot manufacture a missing arithmetic sign.

Heat is ONLY the established exhaustive branch coverage: enumerate finite
representable dependent descriptions by code n, keep invalid-code statuses,
weight n by 2^(-n-1) and retain the full tail 2^(-J) after J. Every representable
description has a code. Reuse the proved summable-source return
x=2Kx-(sum Kx)*pi. These are coverage/source recovery laws, not an Euler sign
certificate or spectral semigroup. The physical Fourier/variance operators
above have their separately proved norm and source-return laws.

Fresh exact standalone Python -O replays passed. A separate agent audited
source identity, Fourier normalization, quadrature, domains and entire-rank
return. These AI-assisted checks are not independent human or kernel evidence.
The family law shares the physical-basis calculation and additionally uses the
continuous large sieve; it is CONDITIONAL on the actual head certificates.
Static certificate: documentation/mathematics/_verification/targets/
chi3-radius-three-physical-packet-20261107.json. Portable source checkers live
in Noe tools/chi3_radius_three/. The companion records their revised hashes;
historical temporary hashes above retain their original scope.

Next exact missing lemma: exhaustive disjoint ACTUAL source packets covering
{30000000<|xi|<3500000000} minus B0,B1,B2, with true variable radii, sufficiently
small actual finite-head lower bounds, entire physical tails, source positivity
on the entire leftover set, and signed comparisons at every cut boundary.
This one paid packet does NOT discharge the original annulus budget.
-/

set_option autoImplicit false
namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreePhysicalPackets

def physicalRadius : ℚ := 300612999 / 100000000

def packetCenter : ℚ := 300081451003 / 1000

def packetRadius : ℚ := 5

/-- Actual support of wide/high/low variance components. -/
theorem physicalRadius_source :
    physicalRadius = 3 + 6 / 3000000 + 2 * 7990 / 2000000000 +
      2 * 40000 * (153 / 2000000000) := by
  norm_num [physicalRadius]

/-- Both packet endpoints lie in the original radial annulus. -/
theorem packet_radial_domain :
    (10000 : ℚ) < packetCenter - packetRadius ∧
      packetCenter + packetRadius < 3500000000 := by
  norm_num [packetCenter, packetRadius]

/-- Finite arithmetic; the actual matrix certificate supplies the entry error. -/
theorem packet_price_margin :
    (1 / 10 ^ 11 + 48 * (4324393 / 10 ^ 20) +
      186 / 10 ^ 16 + 93 / 10 ^ 32 : ℚ) < 1 / 5000000000 := by
  norm_num

/-- A price comparison without asserting missing family-head signs. -/
theorem radius_five_family_price_margin :
    (2688 * (2 / 10 ^ 10) + 200 * (1 + 1 / 10 ^ 15) / 10 ^ 15 +
      100 / 10 ^ 30 : ℚ) < 538 / 10 ^ 9 := by
  norm_num

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreePhysicalPackets
