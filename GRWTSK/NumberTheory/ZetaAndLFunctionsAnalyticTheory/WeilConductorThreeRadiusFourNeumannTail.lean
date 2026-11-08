/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
Inspected source: grwtsk/math445401c9714cafb94ff619d71be0195f017ac4bc.
WRITTEN_UNIVERSAL_ANALYTIC_PROOFS / EXACT_FINITE_RATIONAL_GUARDS_PASS.
LEAN_COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
INDEPENDENT_HUMAN_REVIEW_NOT_RUN / WORLDWIDE_NOVELTY_NOT_ASSESSED.
No universal j3 sign, joint gamma-prime complement, or mixed block is asserted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeRadiusFourOddTentHead
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeRadiusFourEdgeSchur
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeRadiusFourScrewGreen
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeRadiusFourMiddleReturn
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeRadiusFourPaidPacket
import Mathlib.Tactic

/-!
# Full gamma control and an actual prime obstruction on the tent complement

Local attribution: grwtsk contributors. Source inspected: grwtsk/math445401c9714cafb94ff619d71be0195f017ac4bc. Current AGENTS.md, native structural-intelligence/typed-port-routing and canonical Noe proof-automation instructions read. Ordinary standalone exact rational guards only; no Noe job, repository edit or publication. Written analytic proofs plus the stated finite exact guard; Lean/kernel/axiom audit NOT_RUN. The source is the ORIGINAL primitive real odd chi3, conductor3, parity1, all458 atoms through2980, including all365 new atoms. No zeta pole or old93-atom substitution occurs.

The backward consumer is the ORIGINAL all-test radius-four source lower bound. The actual EdgeSchur block still needs m11[v]>=<Bv,A0^-1Bv> for EVERY finite-gamma edgev, not a finite set of vectors. The observed16-cell prime matrix does not include gamma, the old source, the unobserved cell fluctuations or their mixed blocks. We prove a genuine positive full-complement gamma law, then a genuine arithmetic obstruction to extending that finite prime matrix sign. Neither result proves the full residual124997987/10^9 or stagej3.

## 1. Positive full-domain gamma comparison through actual Robin resolvents

Let I=[-a,a], with a4, and let H=L2(I,dt;C), using zero extension in the original gamma form

    Gamma(f)=integral_0^infinity kappa(r)||tau_r f-f||_2^2dr,
    kappa(r)=exp(-3r/2)/(1-exp(-2r))
            =sum_(m>=0)exp(-alpha_mr), alpha_m=2m+3/2.

NoH1 hypothesis is imposed onf; its source form domain is Gamma(f)<infinity. For eachalpha>0 define E_alpha by the actual kernel exp(-alpha|x-y|) onI. Direct differentiation proves

    E_alpha=2alpha(L_R,alpha+alpha^2)^(-1),

where the Robin realization has conditions v'(-a)=alpha v(-a), v'(a)=-alpha v(a). Its quadratic form onH1(I) is

    integral_I|v'|^2+alpha(|v(-a)|^2+|v(a)|^2).

It dominates the Neumann quadratic form integral|v'|^2 on the SAME domain. Thus

    (L_R,alpha+alpha^2)^(-1)<=(L_N+alpha^2)^(-1).              (1)

There is a direct proof without a domain analogy: for anyz inL2, the quadratic resolvent value is the maximum overv inH1 of2Re<z,v> minus the derivative energy, alpha^2||v||^2 and the indicated nonnegative Robin boundary charge. Removing that charge increases the maximum. Existence and the maximum identity follow by substitution of the explicit resolvent solution and completing its positive coercive form square. This proves(1) onALLphysicalL2.

The exact zero-extension jump source of exp(-alpha r) is

    Gamma_alpha(f)=2||f||^2/alpha-<E_alpha f,f>.

Consequently(1) gives the ACTUAL positive comparison

    Gamma_alpha(f)>=(2/alpha)<L_N(L_N+alpha^2)^(-1)f,f>.

Sum everyalpha_m and use Tonelli/monotone convergence. With

    g(xi)=sum_(m>=0)2xi^2/[alpha_m(alpha_m^2+xi^2)],

we obtain on the ENTIRE finite-gamma physical carrier

    Gamma(f)>=<g(sqrt(L_N))f,f>.                            (2)

This constructs a genuine source comparator, not an interface assuming arithmetic positivity. Every original gamma exponential and the entire unobservedm tail remain in(2). On the physical ODD subspace the Neumann frequencies are nu_k=(2k+1)pi/(2a), k>=0. They are NOT the k*pi/a physical Dirichlet frequencies and NOT the even derivative-Neumann carrier from ScrewGreen. No such sectors or boundary conditions are exchanged.

## 2. A full cell-complement gamma Poincare inequality

Suppose a zero-extendedf inL2(I) has meanzero in each of a finite disjoint family of cells of common widthh, and is zero outside their union. The cells may include both odd-reflected collar components and an intervening zero gap. Let W(x)=integral_(-infinity)^x f(t)dt. Every cell mean iszero, soW vanishes at every cell endpoint and in every gap. Cellwise Dirichlet Poincare, proved by the complete sine expansion ofW on that cell, gives

    ||W||_2^2<=h^2||f||_2^2/pi^2.                           (3)

Here W lies inH1 even whenf does not. This is not a derivative-norm estimate onf.

Since totalmeanf=0, the actual inverse-Neumann Green identity gives ||W||^2=<L_N^-1f,f>. Write mu=<L_N^-1f,f>/E. In the spectral probability measure of this Neumann operator, Y=lambda^-1 has meanmu. The scalar function1/(1+alpha^2Y) is convex, so Cauchy--Schwarz/Jensen gives

    <L_N(L_N+alpha^2)^(-1)f,f>/E
        >=1/(1+alpha^2mu).

One can first apply this to each bounded summand, then sum by Tonelli; no interchange of a signed or divergent series is made. Combining(2),(3) and the monotonicity ofg proves

    Gamma(f)>=g(pi/h)E(f).                                  (4)

The entire spectral and cell-fluctuation tail is retained. In particular letv be ANY complex function on(3,4) with finiteGamma(O4v), and assume integral_cell v=0 on EACH of the eight1/8 cells. Its ODD extension has the same zero means on the reflected cells. Equation(4) applies to the full odd source, including cross-origin gamma interactions, giving

    gamma_4[v]=Gamma(O4v)/2>=g(8pi)||v||_2^2
                                       >(7/2)||v||_2^2       (5)

for nonzerov. It is NOT the gamma form of an isolated positive interval with the reflection term removed.

The last strict constant is an actual exact instance: pi>3, so8pi>24. The first32 positive terms ofg(24) equal

    sum_(m=0)^31 9216/[(4m+3)((4m+3)^2+2304)]
        >3.5058733375>7/2.

The exact guard retains all32 rational lower prices. The earlier first8-term guard>3.0028 is also retained. These finite constants become universal through the proved source comparison(2)--(4), not by checking finitely many test vectors.

This is a collar-complement theorem. The orthogonal complement of the native16 cells on(2,4) also contains ALL functions supported in(0,2); no cell-mean high-frequency inference is made there. The actual EdgeSchur core and its directional inverse remain necessary for that part.

## 3. Exact unsigned source size behind the unobserved prime directions

For positive-halfv0=1_(3,4), its reflected correlation is

    H_v0(r)=integral v0(t)v0(r-t)dt=(1-|r-7|)_+,
    ||v0||^2=1.

The new prime form is the ORIGINAL signed

    Delta_new(O4u)=2sum_new w_n chi3(n)H_u(logn),
    w_n=logp/sqrt(n), 404<=n=p^e<=2980,p!=3.                 (6)

The EXACT retained365-row guard gives

    33.800046479222<=Rabs<=33.800046479587,
    Rabs=sum_new w_n(1-|logn-7|)_+.                         (7)

Every source prime, exponent, originalchi3 sign, log interval, square-root interval, tent interval and directed price is stored inq3_tent_complement_20261107.json. Signed coefficients are not replaced in(6); the unsigned quantity(7) will be reached by actual modulation and the multiplicative phase law below.

For a genuine smooth profile choose a real nonnegativeC-infinity cutoffv, equal1 on[3+2eps,4-2eps], zero outside[3+eps,4-eps], eps10^-12. Then||v||<=1, ||v-v0||<=2sqrt eps. The unsigned reflection operator has norm at mostW_new=sum_neww<365*8=2920. Its quadratic value changes by at most4W_newsqrt eps<.01168. Hence

    sum_new w_n H_v(logn)/||v||^2>33.7>33.                  (8)

No nonsmooth indicator is asserted to be an original admissible test.

## 4. Actual real odd phase carriers and exact tent orthogonality

The elementary positive-phase-polynomial argument fromq3_radius4_gamma_truncation_audit_20261107.md proves an unbounded sequencec_j with exp(ic_jlogp)->chi3(p) simultaneously for every prime appearing in the actual finite inventory. It uses unique prime factorization for nonzero Fourier frequencies, not statistically independent arbitrary prime-power phases. Thereforechi3(p^e)cos(c_jlog(p^e))->1 for every sourcepower, including512 and the other higher powers.

Put u_j(t)=v(t)sin(c_jt) on(3,4). Product-to-sum and Riemann--Lebesgue give

    H_uj(r)=-1/2 cos(c_jr)H_v(r)+o(1),
    E(O4u_j)=2||u_j||^2->||v||^2.

Using the finite365-term inventory and(6),(8),

    Delta_new(O4u_j)/E(O4u_j)
       ->-sum_neww_n H_v(logn)/||v||^2<-33.                 (9)

The sign comes from a real sine carrier and the actual odd-reflection identity; no sign is inferred from(7) alone.

Make all native tent observations EXACTLYzero without subtracting discontinuous steps. For each of the eight collar cells choose a fixed realC-infinity bumpb_i supported strictly inside that cell, with integralb_i=1. Put ell_i,j=integral_cell u_j and

    u_tilde_j=u_j-sum_(i=0)^7 ell_i,j b_i.

Every ell_i,j tends0 by Riemann--Lebesgue, so||u_tilde_j-u_j||->0. All eight collar means are exactlyzero; all eight remaining native cells in(2,3) have zero observation by support. Thus f_j=O4u_tilde_j is a genuine REAL ODDC-infinity original radius-four admissible test, EXACTLY orthogonal to the entire native16-dimensional odd step space. Each has finite originalgamma by the ordinary compactH1 shift bound.

The finite signed prime form is bounded in physicalL2, so its value and norm limits in(9) survive this correction. Consequently there exists an ORIGINAL ADMISSIBLE test orthogonal toALL16 observations with

    Delta_new(f)<-33 E(f).                                  (10)

In the positive-half norm the matrix operator has Rayleigh below-66. Thus the actual finite-matrix lower boundA>=-11I/4 cannot extend to the full complement. This is source-specific and preserves the character, domain and physical metric.

## 5. Full-source boundary, consumer and evidence

Neither(9) nor(10) is a fullQ4 counterexample. The Fourier mass of the carrier sequence escapes every bounded frequency interval; the fixed smooth-dual correction tends0 inL2 and does not change that fact. The actual gamma symbol has unconditional lower boundsA_chi>=-2 globally andA_chi>=log|xi|-.75 atlarge|xi|. Hence the full archimedean quotient tends+infinity, while ALL458 prime terms remain a bounded physical operator. The FULLQ4(f_j)/E(f_j) therefore tends+infinity.

The two results identify both useful information and the missing joint estimate. Gamma alone genuinely controls the full collar cell fluctuations by(5). Yet the finite signed prime head sign gives no corresponding complement lower bound; the complement contains the actual negative directions(10), compensated by large gamma. Quoting only a uniform gamma floor loses that carrier-dependent compensation. The actual mixed/source operatorB and A0^-1 from EdgeSchur cannot be replaced by an assumed scalar entry or erased.

The exact remaining all-v directional Schur obligation and the requested entire residual are still OPEN. No finite element observation, cell-size approximation, heat positivity or finitely many passing vectors is promoted to them. A source-specific JOINT gamma/prime bound on the complete complement and its couplings is required.

The closed positive originalGamma form has its actual selfadjoint spectral heat exp(-tA_Gamma) on the real odd physical carrier. Its source-return inGamma form norm follows directly from spectral dominated convergence, retaining every spectral tail. Bounded458-term prime forms then also return under that limit. This is gamma-source spectral heat, not the different Neumann comparison heat and not a sign certificate forQ4. Finite representable proof data retain source445401c, all365 signed rows, type/binder/normalization context, exact guards and entire-tail laws through the existing dependent lossless codec. Arbitrary semanticL2 inputs are not finitely encoded; decoding neither removes the unobserved tail nor manufactures positivity.

Exact standalone guard: /private/tmp/q3_tent_complement_20261107_verify.py. Payload: /private/tmp/q3_tent_complement_20261107.json. The mathematical source comparison and universal proofs are written, not kernel verified; the finite guard was executed with unbounded integers/rationals at the explicitly recorded scope.

## Explicit heat, exhaustive coverage and dependent lossless readback

Keep H equal to the REAL ODD physical L2([-4,4],dt) space and the actual
closed positive finite-Gamma form from EdgeSchur. Let A_Gamma be its
nonnegative selfadjoint form operator. This is a constructed gamma-source
operator, not an assumed sign for the full arithmetic Q4. Its actual heat
T_Gamma(t)=exp(-t*A_Gamma), t>=0, is a selfadjoint contraction semigroup.
For every f in the full finite-Gamma domain its spectral measure mu_f gives

 ||T_Gamma(t)f-f||^2=integral |exp(-t*lambda)-1|^2 dmu_f,
 Gamma(T_Gamma(t)f-f)=integral lambda*|exp(-t*lambda)-1|^2 dmu_f.

Dominated convergence proves BOTH tendzero as t decreases tozero. The entire
spectral measure and every unobserved tail are retained, not sampled. Since
all458 signed prime translations are bounded in physical L2, the SAME Q4
returns in this form limit. The odd smooth mollify/shrink form-density
argument of EdgeSchur, with radius4, supplies original admissible tests;
heat outputs are not silently called C2.

The comparison heat exp(-t*L_N) is DIFFERENT. Its PHYSICAL odd Neumann
frequencies are (2k+1)*pi/8,k>=0; its generator domain is odd Neumann H2.
The gamma comparison is the proved source-form inequality (2), not an
identity of these two semigroups. This Neumann heat is also different from
physical odd Dirichlet heat and even derivative-Neumann heat in ScrewGreen.
Its reference-energy return follows on its own spectral form domain,
retaining the exact full sums over every k. No arithmetic positivity is
inferred from positive spectral weights.

The bounded-source comparison has full countable gamma rates alpha_m,
m>=0, and all infinite sums in (2)--(5) keep that whole tail. If a
countable actual A_Gamma eigenmode inventory is used, (2) and g(nu)->infinity
prove compact form embedding, hence compact resolvent; include ALL modes
and multiplicities before any truncation. Spectral notation here makes
no finite observed-mode completeness assumption.

Branch COVERAGE is the separate existing dependent-description heat.
Enumerate complete representable source/parameter-indexed packets by codes
n in Nat, retain invalid-code statuses, and use pi_n=2^(-n-1). Its complete
tail is sum_(n>=J)pi_n=2^(-J). For summable source states
Kx=(x+(sum x)pi)/2, the exact laws are sum Kx=sum x and
x=2Kx-(sum Kx)pi. Neither this positive coverage nor a positive reference
Green/Neumann heat certifies the signed Euler source.

Representable proof packets reuse the existing dependent finite-description
codec on the sigma type of source/parameter-indexed packets. Retain all365
SIGNED atom rows, every log/sqrt/tent interval and outward price, the
source revision/helper identity, all32 Gamma prices, cell widths, physical
and Fourier normalizations, actual Neumann/Robin boundary conditions,
form domains, bound variables, full analytic tail/source-return proofs,
finite certificates and separate written/kernel statuses. The existing
roundtrip is decode(encode p)=some p; on the encoder image it is exactly
decodeImage(encode p)=p. Thus every dependent field is recovered. Arbitrary
semantic L2 functions are not finitely encoded; symbolic real parameters
remain exact bound syntax and no missing sign is manufactured.

## 6. A quantitative ONE-SIDED return for the actual gamma-source heat

The actual closed nonnegative Gamma form on the supported odd physical
Hilbert spaceH is the compression of its full-line nonnegative Fourier
multiplier. Closedness follows by taking the inverse image of the weighted
FourierL2 space under the zero-extension isometry; its form norm is
E+Gamma. Oddcompact smooth inputs lie in the domain and are dense inH,
so the form has its nonnegative selfadjoint representationA_Gamma.
The heat T_s=exp(-s A_Gamma) is the ACTUAL gamma-source spectral heat.
It preserves the same supported odd physical carrier and its form domain;
its full spectral source return was proved above. It need not preserve
nativeC2 endpoint traces. Every remaining prime form is bounded onH.

The following abstract inequality is completely proved here. LetA be
ANY nonnegative selfadjoint operator, V ANY bounded selfadjoint operator
with ||V||<=K, K>=0, andq the form ofA+V. For everyf inDom(A^1/2)
and everys>0, putT_s=exp(-sA), Df=(I-T_s)f. For everylambda>=0,

 lambda*(1-exp(-2s lambda)) >= (2/s)*(1-exp(-s lambda))^2.

Atlambda0 this is0>=0. Otherwise it is equivalent to
u*coth(u)>=1 foru=s lambda/2>0, which follows fromtanh(u)<=u.
One can verify the latter without an asymptotic estimate: the derivative
of u cosh(u)-sinh(u) isu sinh(u)>=0 and its value atzero iszero.
Spectral integration on the ACTUAL form domain therefore gives

 q_A(f)-q_A(T_s f)>=(2/s)||Df||^2.

The remaining source difference is
 Re<V Df,f>+Re<V T_s f,Df>
 >=-K||Df||(||f||+||T_s f||)>=-2K||Df||||f||.
SinceT_s is a contraction, completing the REAL physical square yields

 q(f)-q(T_s f)
 >=(2/s)(||Df||-K*s*||f||/2)^2-K^2*s*E(f)/2
 >=-K^2*s*E(f)/2.                                        (RETURN)

No assumptionAf inL2, arithmetic sign or target positivity is used.
No absolute-bias bound is asserted. The initial form is finite and every
spectral/gamma tail remains retained by spectral integration.

For the ACTUAL chi3 source, takeA=A_Gamma andV=c_chi I-P458.
The already complete458-atom/4096-row physical Schur estimate in current
MiddleReturn gives ||P458||<=577531/10000 on[-4,4]: extend byzero
isometrically intoT*=4.00001, where that SAME inventory was certified.
The norm is unweighted physicalL2. The exact gamma constant satisfies
-2<c_chi<0 (the source gamma bound and positive-real Binet), so the
genuine source-specific bound is

 ||V||<=K=597531/10000,
 K^2/2=357043295961/200000000.

Consequently for EVERY original admissiblef, and more generally ALLf in
the actual finiteGamma form domain,

 Q4(f)>=Q4(T_s f)-(357043295961/200000000)*s*E(f).           (GAMMA_RETURN)

At s=10^-10 the price is strictly lessE(f)/5000000. This discharges a
real quantitative one-sided SOURCE-return connection on its stated carrier.
It is not a uniform output-norm estimate or a statement about arbitrary
positive reference heat.

CruciallyT_s is NOT the Dirichlet heatS_t from VerifiedZeroHeat.
Gamma has logarithmic spectral order; the small-s source heat is not
known to have the strong sine/strip smoothing used in that module.
The whole-source lower bound proved forS_t therefore cannot be substituted
forQ4(T_s f). A separate actual gamma-heat sign or a justified one-sided
adapter between these two source observations is still OPEN. Conversely
the Dirichlet branch still needs its OWN one-sided lower source bias.
The exact heat operators, time parameters, domains and input norms are
retained; neither branch is completed by exchanging them.

The new unconditional law(GAMMA_RETURN) is useful because it pays its
entire source bias explicitly without assuming the desiredj3 sign.
If, separately, a correct all-input bound forQ4(T_s f) used a price less
than1/8 minus the displayed source-return price, its source return would
supply the originalj3 stage. This sign is an outstanding analytic
obligation, not a field or instance supplied by this construction.

## Reproduction and exact proof scope

Original static payload /private/tmp/q3_tent_complement_20261107.json:
SHA256 7ce9b7fa9710a5a8634dd2377d11c21df2114161d23c728a76628a162566c060.
The historical payload contained the full 365 signed rows and all finite
Gamma32 data. These aggregate margins and the digest do not replace
those data for reproduction. The original historical checker is
/private/tmp/q3_tent_complement_20261107_verify.py, SHA256
f9b374a652e8bcb3d3caecd33de3c106af375a95059845ee0e24d4833f962404.

The portable checker candidate is /tmp/q3_radius_four_neumann_tail_guard.py,
SHA256 515a70a9348c3be87ae4074c252a25d45caeeb658ba6254098fd38e3d6df61ac.
It uses the existing Noe interval_helpers.py, relative to its installed
directory by default, or --helper; --output selects the payload path.
The complete helper identity is
 a2301dc183f368b612ae9976ab00e27cdc2533297ed61754b2082e5ef219bab4.
A fresh standalone Python -O replay with that helper passed and produced
BYTES IDENTICAL to the original payload; cmp returned zero. The original
historical data and checker remain unchanged. No Noe job, compilation,
new kernel replay or Git effect is asserted.

The finite declarations below record ONLY exact table/price arithmetic.
They are not Lean proofs of the continuum Robin source comparison, the
Gamma-domain cell inequality, phase approximation, corrected smooth
witness, or source heat laws. All those universal results remain the
complete WRITTEN proofs above with their stated evidence scope.

The all-v joint gamma/prime and actual mixed-resolvent complement remain
OPEN. No all-v sign is inserted as a field or supplied premise. The user
requested the entire residual124997987/10^9 and PrimitiveStageLower j3;
this source does NOT claim either one, RH, or the cofinal Dirichlet GRH.
-/

set_option autoImplicit false
namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourNeumannTail

/-- COMPLETE finite gamma lower-price table; the source enclosures and
universal return are the separate written/exact guard above. -/
def gamma32Numerators : List Nat :=
  [ 1328145265, 559528868, 345492033, 242941874,
    182008492, 141438634, 112539839, 91053697,
    74614419, 61779788, 51607411, 43448948,
    36841158, 31443729, 27001450, 23319897,
    20249115, 17672269, 15497540, 13652220,
    12078336, 10729366, 9567758, 8563026,
    7690285, 6929120, 6262694, 5677061,
    5160611, 4703636, 4297988, 3936794 ]

/-- Finite count only. -/
theorem gamma32_count : gamma32Numerators.length = 32 := by decide

/-- All32 retained integer prices are included in this finite sum. -/
theorem gamma32_sum_exact : gamma32Numerators.sum = 3505873321 := by decide

/-- Scalar aggregate guard only, not a formalized Gamma-domain inequality. -/
theorem gamma32_price_margin :
    (7 / 2 : ℚ) < 3505873321 / 10 ^ (9 : Nat) := by norm_num

/-- Actual complete365-row unsigned reflection lower aggregate. -/
def collarRayleighLower : ℚ := 16900023239611 / 500000000000

def collarRayleighUpper : ℚ := 33800046479587 / 10 ^ (12 : Nat)

theorem source_aggregate_prices :
    (169 / 5 : ℚ) < collarRayleighLower ∧
      collarRayleighLower < collarRayleighUpper := by
  norm_num [collarRayleighLower, collarRayleighUpper]

/-- Smooth-profile continuity price with eps=10^(-12); its physical
source use, norms and exact orthogonal correction are proved in writing. -/
theorem smooth_profile_price :
    (337 / 10 : ℚ) < collarRayleighLower - 4 * (365 * 8) / 10 ^ (6 : Nat) := by
  norm_num [collarRayleighLower]

/-- The finite observed-matrix allowance cannot cover the new complement
witness. This arithmetic does not itself construct that witness. -/
theorem observation_vs_complement_margin :
    (11 / 8 : ℚ) < 33 ∧ (11 / 4 : ℚ) < 66 := by norm_num

/-- The exact bounded remainder used by the genuine gamma-source heat. -/
def gammaHeatRemainderNorm : ℚ := 597531 / 10000

theorem exact_gamma_heat_return_price :
    gammaHeatRemainderNorm ^ 2 / 2 = 357043295961 / 200000000 ∧
      (gammaHeatRemainderNorm ^ 2 / 2) / 10 ^ (10 : Nat) < 1 / 5000000 := by
  norm_num [gammaHeatRemainderNorm]

/-- Full source/parameter/proof/data/checker bytes, with the EXISTING
source-preserving dependent codec, not a sign-manufacturing encoder. -/
theorem retained_full_roundtrip
    (data : ConductorThreeRadiusFourPaidPacket.RetainedEvidence) :
    ConductorThreeRadiusFourPaidPacket.decodeRetained
      (ConductorThreeRadiusFourPaidPacket.retainedCodec.encode data) = data :=
  ConductorThreeRadiusFourPaidPacket.full_roundtrip data

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourNeumannTail
