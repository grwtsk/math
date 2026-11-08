/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors
Source: grwtsk/math 654cefad38292ca96e54439902602e823382103a;
consumed source unchanged from 9404b5698d0da5ee97d289a830f76ab75e3ef84f.
Canonical Noe proof-automation instructions read at
grwtsk/noeaaeue 7d296238ef384288431b9c2b8c876349e6aa2554.
No Noe job or repository mutation is performed by this source.

WRITTEN_ANALYTIC_PROOF_OF_CONDITIONAL_CONSUMER
FULL_ACTUAL_PACKET_HEAD_PREMISE_OPEN_AT_AUTHORING
HUMAN_INDEPENDENT_REVIEW_NOT_RUN / WORLDWIDE_NOVELTY_NOT_ASSESSED
COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN
-/

import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeComplementTail

/-!
# Direct raw-source return from all actual physical packet heads

This proves a WRITTEN conditional consumer for the original conductor-three
radius-three stage. Its unproved premise at authoring is the completed
actual finite head sign at EVERY packet. The source reductions, full
physical tails and source return below are proved; no field presupposes
the desired stage or GRH. Lean declarations are finite rational lemmas
and a source definition only. The universal analytic argument is written,
not claimed to be a Lean proof term.

## Exact target and source carrier

Use the existing `DirichletStageChain.Admissible chi3 3 f`: real odd compact
C2 functions supported in [-3,3], with physical Lebesgue L2 mass E and
the original finite parity-one gamma form. The actual character is
`modThreeQuadratic`, primitive nonprincipal of conductor3 and parity1.
Set F(xi)=integral f(t)exp(i*xi*t)dt and J_D(w)=integral_D w|F|^2/(2*pi).
All physical auxiliary norms remain Lebesgue L2; frequency measure is
dxi/(2*pi). Write

  s(xi)=A(xi)-P_arith(xi),
  A=ConductorThreeComplementTail.gammaSymbol,
  P_arith=ConductorThreeComplementTail.primeSymbol.

The source has the SAME93 signed unramified prime powers n=p^e<=403,
p!=3, coefficient2log(p)/sqrt(n)*chi3(n). There is no principal pole.
For every such f, gamma Fourier transformation and physical Plancherel
give the EXACT identity

 primitiveArithmeticValue chi3 hp hn 3 (liftReal f)=J_R(s).        (1)

Indeed the jump-energy multiplier is
2 integral_0^infty exp(-3r/2)/(1-exp(-2r))*(1-cos(xi*r))dr,
equal to Re psi(3/4+i*xi/2)-psi(3/4) by DLMF5.9.16. The source
constant supplies log(3/pi)+psi(3/4), leaving A. The physical correlation
at log n transforms to cos(xi*log n), with the displayed source weight.
Compact C2 implies F=O((1+|xi|)^(-2)); A=O(log(2+|xi|)), and the prime
sum is bounded, so all the real signed integrals here are absolutely
convergent. No source-smoothing error is present in (1).

The consuming branch is `PrimitiveStageLower chi3 hp hn 2`, which asks
Q>=-E/4 for EVERY original admissible f. One stage is only one entry of
`SmallConductorStages`; it does not give its universal stage quantifier.
The branch identifier cofinalDirichletGRH denotes the existing consumer
`DirichletStageChain.dirichletGRH_of_source_chains`. Its exact conclusion
is all complex Dirichlet characters of every positive modulus, with all
zeros in 0<Re(s)<1 on Re(s)=1/2. The separate zeta/RH source and all
remaining primitive sectors/stages remain necessary; imprimitive return
keeps the inducing-character Euler identity. No other L-function family
is asserted.

## The two already constructed compact filters

Retain, with exactly their previous definitions and source proofs,

  M_H=7990, K_H=2820, h_H=1/2000000000,
  M_L=40000, K_L=3000, h_L=153/2000000000,
  t_*(z)=sinc(h_*z)^2,
  P_*(z)=sum_(j=K_*)^M_* choose(M_*,j)t_*^j(1-t_*)^(M_*-j).

Both P's lie in [0,1] on R. The complete source-bound binomial proofs give

  P_H>=1-eps_H on |xi|<=X=3200000000,
  P_H<=eps_H on |xi|>=R=3500000000, eps_H=10^-10,
  P_L>=1-eps_L on |xi|<=L=30000000, eps_L=10^-80.                (2)

For |Im z|<=1/2, |P_H(z)|<1001/1000, and for
|Re z|>=Hsafe=100000000/3-1,

  |P_L(z)|<(1007/1000)*eps_L,
  |P_L(z)|^2 <=(1007/1000)^2[41/(h_L|Re z|)^2]^6000.            (3)

These are not complex binomial probabilities. They follow by writing
R0=|t|+|1-t|<=1+2h_*, bounding the actual polynomial by R0^M times a
REAL binomial upper tail with probability |t|/R0, and using the verified
all-lobe real sinc stop plus |t(z)-t(Re z)|<h_*. The pass/stop Chernoff
fractions and all Taylor remainders retain their exact checks from
WeilConductorThreeLowFilter's full written proof and recorded scalar
payload. The far power law in(3), not a constant repeated infinitely,
pays every unknown zero annulus.

The polynomial P_* is the transform of an actual real even finite signed
measure nu_* of radius2M_*h_*. The separate positive variance identity is
also needed. Let eta_* be the one-box probability of radius h_*; then
t_*=|etahat_*|^2 and

  1-t_*=E_(S~eta_*) |exp(i*xi*S)-etahat_*(xi)|^2.

Put p=P_*, l=1-p. Both have nonnegative binomial expansions in t,1-t,
and 1-p^2=l+l*p is a nonnegative finite sum of monomials of degree M
or2M. A monomial t^u(1-t)^v is the expected squared transform of the
convolution of u one-box measures and v independent(delta_S-eta_*)
factors. Its radius is at most(u+v)h_*<=2M_*h_*. All coefficients and
parameter measures are finite and nonnegative; the signed kernels have
uniformly finite total variation. This constructs the actual variance
family and proves its law. It does not deduce an arithmetic sign from
positive coefficients alone.

## Whole HIGH raw source, proved without the wide factor

Use the existing exact physical Schur theorem W=10567/500 for EVERY
complex physical L2 test supported in radiusTstar=3.00001, with original
93-atom source and zero extension. It gives
integral P_arith(xi)|G(xi)|^2 dxi/(2*pi)<=W||g||_2^2.
This is the source-bound4096-row exact certificate, not a replacement
weighted norm. The gamma Binet proof gives A>=-2 globally and
A>=log|xi|-.75 for |xi|>=100; its exact exponential guard gives A>=W
on |xi|>=X.

Apply the high variance family directly to ORIGINAL f, without a wide
variance convolution. Every physical component has radius at most
3+2M_Hh_H=3.00000799<Tstar and lies in the actual gamma form domain:
compact C2 and finite signed convolution imply the shift-energy bound
min(r^2||g'||^2,4||g||^2), which is integrable against the source kernel.
Averaging Schur over these components gives

 J_R(P_arith*(1-P_H^2))<=W J_R(1-P_H^2).

Subtract from the gamma integral. On |xi|>=X the resulting multiplier
(A-W)(1-P_H^2) is nonnegative. Below X, (2) gives
1-P_H^2<=2eps_H and A-W>=-(W+2). Plancherel proves

 J_R(s*(1-P_H^2))>=-lambda E,
 lambda=2(W+2)eps_H=11567/2500000000000.                        (4)

This is an independent raw-source derivation. It does not remove the
original wide factor V by a sign argument, nor use an estimate for V*s
as though it were an estimate for s.

## Whole LOW raw source, independently through the actual zero divisor

Let v=f*nu_H*nu_L. It is real odd compact C2 and has physical radius

 Traw=3+2M_Hh_H+2M_Lh_L=300612799/100000000
       <Tlow=300612999/100000000.                              (5)

The previously proved exp(2Tlow)<409 and the fact that404..408 are not
prime powers retain exactly the original403 source inventory for v.
The individual primitive compact explicit formula, with its actual
character, parity, no pole and no extraneous factor1/2, gives

 Q_chi3(v)=sum_(z in Z_chi3) mult(z) Vhat(z)Vhat(-z)
          =J_R(s*P_H^2*P_L^2).                                (6)

This formula uses the open-strip completed divisor; Euler nonvanishing,
whole-line nonvanishing on Re(s)=1 and the primitive functional equation
exclude boundary roots. Its source-normalized residue/digamma proof is
the existing CompactFilterReturn argument. On a verified real ordinate,
the product in(6) is |Vhat|^2>=0. At an unknown complex ordinate it is
not replaced by an absolute square.

Platt1305.3087v1 Theorem7.1 gives verified critical zeros throughH=10^8/3
for chi3; useHsafe=H-1. The positive paired series for L(sigma,chi3)
excludes a real zero for sigma>0. BMOR2005.02989v1 Theorem1.1, with both
ordinate signs and multiplicities, yields N(Y)<=Ylog(3(Y+2)) forY>=20.
Thus the whole near unknown regionHsafe<|Re z|<=10Hsafe contains fewer
than10^10 zeros, and the j-th far annulus has fewer than
10^9*2^j*(22+j) zeros for everyj>=0.

For ORIGINAL f, |F(z)F(-z)|<=6exp(3)E<126E on the half-width strip.
Combine with(3). The near unknown absolute contribution is bounded by

 126*(1001/1000)^2*(1007/1000)^2*10^10*10^-160 E <10^-145 E.

On the far j-th annulus, h_L*10Hsafe>25 and41/625<1/15. The whole
far contribution is less than

 10^12*15^-6000 sum_(j>=0)(22+j)*2^(-11999j) E
       <23*10^12*15^-6000 E<10^-145 E.

These are direct bounds on(6), with no wide signed factor; the earlier
factor5 is simply absent. Both bounds are strictly dominated by their
already checked wide-source counterparts. The full infinite zero sum
and all multiplicities remain included. Verified roots are nonnegative,
so(6) proves

  J_R(s*P_H^2*P_L^2)>=-eta E, eta=10^-144.                     (7)

This proof uses only the published finite verification at its actual
scope, not GRH for unverified zeros. No historical .001 source-smoothing
claim or B-band payment is used.

## Raw MIDDLE source and the complete uncut packet family

Set w=P_H^2*(1-P_L^2). Convolve ORIGINAL f with nu_H and with the low
variance family constructed above. The resulting g_theta are real compact
C2 tests supported in the SAME physical[-Tlow,Tlow], by(5). Their exact
averaged Fourier mass is w|F|^2, and their averaged PHYSICAL energy is

  integral E(g_theta) dtheta=J_R(w)<=E.                         (8)

No hard frequency projection or signed-kernel norm surrogate occurs.
Finite positive coefficient measures and uniform finite total variation
justify all averages, even if an intermediate total variation bound is
very large.

The physical Hilbert carrier is the genuine almost-everywhere quotient
L2([-Tlow,Tlow],dt). Restriction of each zero-extended physical component
and extension back by zero are inverse on its quotient class and are
isometric: its squared Hilbert norm is EXACTLY integral_R |g|^2. On this
finite physical interval L2 is included in L1 by Cauchy--Schwarz, so its
angular Fourier value at every real frequency is a bounded linear
functional, independent of the representative. Thus the matrix/core
calculation applies to the original physical function through its actual
L2 quotient class, with the same Fourier transform and no norm conversion.
Orthonormality gives ||Q_Ng||^2=sum_(n<N)|a_n|^2. The finite head source
quadratic form is precisely a^*H_j*a in that orthonormal core, with no
hidden Gram metric, Fourier2pi factor or parity truncation.

Now retain the completed scalar cover's actual full intervals, without
cutting B0,B1,B2 or any endpoint buffers. There are5848049 positive
intervals in the source-bound finished CSV, with integer widths11..52,
disjoint interiors and center separation>=11. Reflect all of them to
cover negative frequencies. Source s is even, so the completed scalar
argument gives s>=0 on[30m,3.5b] and its reflection OUTSIDE these intervals.
The three intervals previously skipped for being inside B bands must
also have their actual raw head floors paid. They are not free exclusions.

Suppose EVERY actual positive interval I_j=[c_j-r_j,c_j+r_j] has its
source minorant ell_j, |ell_j|<=100, and actual complete physical head
matrix H_j>=-10^-6 I, including cache, gamma/phase, reference arithmetic
and source errors. This actual all-head premise is OPEN at authoring;
completed scalar coverage does not supply it. Ranks areN_j=48 forwidth11,12
andN_j=ceil(Tlow*width)+20 otherwise, henceN_j<=177.

The mirrors require no new numerical assumption: set ell_minus(x)=ell_j(-x).
Then s(-c_j+x)=s(c_j-x)>=ell_j(-x). Spherical-Bessel parity gives
Phi_n(-x)=(-1)^n Phi_n(x); the reflected head is D H_j D for the unitary
diagonalD_nn=(-1)^n. Thus it has exactly the same lower floor, and its
cache/source errors retain their bounds. Signed centers still have
separation>=11, and all positive/reflected intervals are disjoint.

Here is the full variable-rank aggregation, on physicalL2[-Tlow,Tlow].
For native positive-angular Fourier convention choose
e_n=(-i)^n sqrt((2n+1)/(2Tlow))P_n(t/Tlow); then its transform is the
real Phi_n displayed in PhysicalPackets. This differs from that file's
negative-angular basis only by the diagonal(-1)^n, leaving Q_N and all
matrix lower floors unchanged by unitary congruence. Use this SAME fixed
complete physical basis for every width.
The continuous angular large sieve gives

 sum_j |Fourier(g*conj(e_n))(c_j)|^2
       <=C*(2n+1)/(2Tlow)||g||^2, C=2Tlow+2pi/11.

This follows by splitting the finite synthesis sine quotient into the
two Montgomery--Vaughan Hilbert forms (Theorem2 and Corollary2, JLMS1974),
then duality. It holds for the union of ALL signed centers. Since the
physical basis is the SAME for every width andN_j<=177,

 sum_j ||Q_Nj(exp(ic_jt)g)||^2
 <=sum_j ||Q177(exp(ic_jt)g)||^2
 <= C*177^2/(2Tlow)||g||^2.                                   (9)

This applies the large sieve ONCE. Summing one head price per width
would be an unnecessary loss. AsTlow>3 andpi<22/7,
C/(2Tlow)<253/231.

The entire rank tails are grouped by all42 POSSIBLE widths11..52,
including widths absent from the observed cover. For widthw putR=w/2,
N=N_w,A=ceil(Tlow*R), E_w=2^ceil(A^2/(2N+3)), rho=A/(2N+1)<1.
The Bessel series bounds
|j_n(x)|<=|x|^n exp(x^2/(2(2n+3)))/(2n+1)!!.
Integrating |s|^(2n) EXACTLY cancels the factor2n+1 in|Phi_n|^2:

 tau_n^2=||K_j e_n||^2 <=(2Tlow*R/pi)E_w^2 A^(2n)/(2n+1)!!^2.

The upper sequence tau_n*sqrt((2n+1)/(2Tlow)) has ratio at most
A/sqrt((2n+1)(2n+3))<=rho. Minkowski in the joint packet Hilbert space
and(9) therefore bound the entire class tail by gamma_w||g||^2, where

 gamma_w=(33/5)*E_w^2*(R/3)*(2N+1)*A^(2N)/
                  ((2N+1)!!^2*(1-rho)^2).

Every rankn>=N and every packet is retained. Exact rational guards in
the adaptive manifest proveGamma=sum_(w=11)^52 gamma_w<(7*10^-13)^2.
This sharper integrated tail explains the single2N+1 factor; replacing
|s| byR before integrating would instead give a valid but coarser square.

Disjointness and Plancherel give joint full restriction norm<=||g||.
Joint Minkowski bounds the head restriction norm by(1+sqrtGamma)||g||.
Expand each packet integral into finite head, two cross terms, and full
tail. With L=100,(9) and Cauchy--Schwarz yield the full family bound

 sum_j integral_Ij s(xi)|G(xi)|^2 dxi/(2*pi) >=-Cpacket||g||^2,
 Cpacket<=10^-6*(253*177^2/231)
             +200*(1+7*10^-13)*(7*10^-13)+100*(7*10^-13)^2
          <34312715/10^9=.034312715.                           (10)

This includes all positive packets AND mirrors, with no extra factor2
because(9) already uses their union. For countable families the summable
tail makes finite approximants Cauchy in the direct-sum Hilbert space;
the actual family is finite. On this bounded frequency union signed
integrals are absolutely convergent. No packet-count multiplication is
used. Equation(10) remains CONDITIONAL on every actual finite head floor.

Apply(10) to each g_theta and average by(8). On the rest of the whole
real line, the source is nonnegative inside the completed scalar domain.
Below30m, (2) and s>=-76 give sw>=-152eps_L; above3.5b they give
sw>=-76eps_H^2. Apply Plancherel to those ENTIRE regions once. Thus

 J_R(s*w)>=-[Cpacket+152eps_L+76eps_H^2]E.                     (11)

There is no endpoint subtraction here: the complete buffered packet
intervals, including their extensions outside the scalar domain, are
paid in(10); the rest is bounded directly in(11). There are no B cuts
and no inherited band sign claims. This avoids the positive-anchor
masking problem entirely by paying all three formerly excluded packets.

## Exact original stage return and open premise

The identity1=(1-P_H^2)+P_H^2*P_L^2+P_H^2*(1-P_L^2), together with
(1),(4),(7),(11), gives, for EVERY original admissible f,

 Q_chi3,3(f)>=-[.034312715+lambda+eta+152eps_L+76eps_H^2]E
             >=-(1/20)E >=-(1/4)E.                            (12)

The rational price is less than1/20; sinceE>=0 this proves exactly
`PrimitiveStageLower chi3 hp hn 2` IF all actual head checks in(10)
have completed with their required source bindings. This is a genuine
noncircular consuming bridge. It assumes neither RH nor GRH. The earlier
wide smoothing estimate, old B0 price and paidB1/B2 notes are not inputs.
At authoring the universal original stage is NOT asserted: unfinished
full head runs do not satisfy its finite premise. The separate requested
V-weighted complementary bound is not silently identified with(12).

## The requested complementary bound also follows from the same all-head premise

There is a second exact return to the ORIGINAL requested(7), rather than
silently identifying that V-weighted statement with the raw result(12).
Let mu be the wide SIX-box probability of radius6h, h=1/3000000, and
V=1-muhat^2. The actual variance identity for(delta_S-mu) gives V as
the average squared transform of signed compact kernels of radius6h.
With the high variance, physical radius3+6h+2M_Hh_H<Tstar; exactly the
proof of(4), now with0<=V<=1, gives J_R(V*s*(1-P_H^2))>=-lambda E.
With the low/high signed filters, radius is exactlyTlow; the proof of(7)
now has the uniform complex signed-product bound4exp(6h)<5. Its proved
near/far tails still give J_R(V*s*P_H^2*P_L^2)>=-eta E. These are direct
constructed wide-variance arguments, not historical smoothing estimates.

Put C=B0-complement. The completed exact packet-domain audit establishes
that no packet crosses B0: each is either wholly inside or wholly outside
it, apart from null endpoint contact. Keep the entire packets outsideB0,
including the packets insideB1 andB2. The all-packet proof(9)--(10) only
improves on this subfamily. Apply it to the wide/high/low variance inputs;
their physical support is exactlyTlow and averaged mass is
J_R(V*P_H^2*(1-P_L^2))<=E. The same low/outer scalar floors show

 J_C(V*s*P_H^2*(1-P_L^2))
          >=-[Cpacket+152eps_L+76eps_H^2]E.

The TWO whole-line estimates need UPPER bounds when restricting toC.
OnB0, m=V*s<=96, 1-P_H^2<=2*10^-40, andP_L<=eps_L. Thus their
ENTIRE removedB0 union costs at most96*(2*10^-40+eps_L^2)E, once.
Combining the exact three-part decomposition now proves

 J_C(V*s)>=-[Cpacket+lambda+eta+152eps_L+76eps_H^2
                         +96*(2*10^-40+eps_L^2)]E
             >=-E/20 >=-E/5.                                 (13)

This is EXACTLY the original complementary bound(7), conditional on the
same finished actual head premise, with all source parameters and original
test quantifiers retained. It uses neither oldB0/B1/B2 payment notes nor
the old .001 smoothing claim. The original stage follows directly from
the raw route(12), so those historical notes are unnecessary there too.
If any packet crossedB0, (13) would instead require its actual masked
matrix or an explicit removed-piece UPPER bound; no positive anchor may
be deleted for free. The completed exact band guard is therefore a
substantive premise of(13), not an inference from a positive full head.

## Evidence, heat, coding and next exact obligation

Source scalar cover CSV SHA256
145ffa4fce694c98377b3f6f04125b1f501e3c7f6d1e4a8a975ddf022f66eb47
has completed exact domain/count metadata. The finite operation proof,
compiler/runtime bindings and true log/weight input guards must accompany
that enumeration. All cache manifests, widths/ranks/hashes, the actual
p,n permutation and every completed controlled Gram report must be bound
before discharging(10). The adaptive full-tail checker SHA256 is
553d35514f2c83c5ea2194cfe28912871e0e916c255a496302d25c5c16978cf0.
Recorded finite exact arithmetic is not a fresh kernel result.

Every mathematical type here retains its carrier, hypotheses, quantifiers,
physical norm, Fourier measure, source character/conductor/parity, domain,
normalization, parameters and evidence status. Reuse CompactFilterReturn's
finite typed syntax descriptions and `WeightedStage.dependentProofCodec`.
Keep both variance families, their compact measures and mass law(8), the
raw exact source identity(1), all filter and published-zero parameters,
the ENTIRE zero and rank tails, complete RETAINED source-cache arrays and
cell enumeration, source and parameter identities, controlled-program run
reports, mirrors, all42 width laws, actual domain/subfamily choices,
every rounding/error bound and all statuses as fields.
The runtime Gram L bytes are NOT archived. They are transient witnesses
checked by the completed finite program, whose code, input identities,
reports and error proof are retained at ordinary computation scope.
Reported maxima do NOT losslessly encode all matrices or all factors.
No claim that the retained payload alone is an independently checkable
all-L certificate archive is made. Lossless coding applies ONLY to the
retained dependent finite proof data and its stated evidence level.
Decode(encode x)=some x; on the encoder image
decodeImage(encode x)=x. No arbitrary semantic L2 function is claimed
finitely encodable, and finite syntax eliminates no convergence or tail
obligation. Compression preserves the unresolved all-head premise.

Heat is only the same exhaustive branch coverage: finite typed descriptions
indexed by their Encodable codes, positive weights2^(-n-1), full unobserved
tail2^(-J), and summable source returnx=2Kx-(sum Kx)pi. These established
geometric-series/substitution laws apply to the actual branch descriptions
above and never establish an arithmetic sign. The random compact variance
families have their independently proved source-return laws; they are not
the branch heat or a claimed spectral semigroup.

The next exact missing lemma is completion and acceptance, at recorded
standalone finite-computation scope, of EVERY actual source head in the
full5848049-positive-packet cover, including the three contained B-band
packets, with all width/rank/cache/permutation/domain/reference-roundoff
bindings. If it fails at any packet, that packet remains an actual unpaid
obligation; no interface makes it positive. Human independent review,
compilation, fresh kernel checking and axiom audit are NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRawSourceReturn

open ConductorThreeComplementTail

def rawMultiplier (xi : ℝ) : ℝ := gammaSymbol xi - primeSymbol xi

def rawSourceReturnPrice : ℚ :=
  34312715 / 10 ^ 9 + 11567 / 2500000000000 +
    1 / 10 ^ 144 + 152 / 10 ^ 80 + 76 / 10 ^ 20

def complementSourceReturnPrice : ℚ :=
  rawSourceReturnPrice + 96 * (2 / 10 ^ 40 + 1 / 10 ^ 160)

theorem raw_support_exact_and_embedded :
    (3 : ℚ) + 2 * 7990 / 2000000000 +
        2 * 40000 * (153 / 2000000000) = 300612799 / 100000000 ∧
      (300612799 / 100000000 : ℚ) < 300612999 / 100000000 := by
  norm_num

theorem raw_high_support_margin :
    (3 : ℚ) + 2 * 7990 / 2000000000 < 300001 / 100000 := by
  norm_num

theorem all_width_head_coefficient :
    (253 * 177 ^ 2 / 231 : ℚ) = 240189 / 7 := by
  norm_num

/-- Finite arithmetic for the conditional all-packet return, not its head signs. -/
theorem all_packet_price_margin :
    (1 / 10 ^ 6 : ℚ) * (253 * 177 ^ 2 / 231) +
      200 * (1 + 7 / 10 ^ 13) * (7 / 10 ^ 13) +
      100 * (7 / 10 ^ 13) ^ 2 < 34312715 / 10 ^ 9 := by
  norm_num

theorem raw_stage_price_margin : rawSourceReturnPrice < 1 / 20 := by
  norm_num [rawSourceReturnPrice]

theorem complement_price_margin : complementSourceReturnPrice < 1 / 20 := by
  norm_num [complementSourceReturnPrice, rawSourceReturnPrice]

theorem raw_stage_allowance_margin : (1 / 20 : ℚ) < 1 / 4 := by
  norm_num

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRawSourceReturn
