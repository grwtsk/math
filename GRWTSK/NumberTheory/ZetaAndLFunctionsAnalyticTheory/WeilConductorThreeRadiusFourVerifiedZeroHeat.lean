/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
Actual source inspected: grwtsk/math445401c9714cafb94ff619d71be0195f017ac4bc.
Canonical Desktop Noe source read at e0bbd994681482f4b6e64c869cfbcb0111001e1b.
WRITTEN_ANALYTIC_PROOFS_COMPLETE_AT_STATED_HEAT_AND_PHYSICAL_HEAD_SCOPES.
FINITE_EXACT_SCALAR_GUARDS_PASS; ORIGINAL_UNHEATED_STAGE3_OPEN.
LEAN_COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
INDEPENDENT_HUMAN_REVIEW_NOT_RUN / WORLDWIDE_NOVELTY_NOT_ASSESSED.
No Noe job, remote send or publication is performed by this source.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeRadiusFourLowFilter
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeRadiusFourMiddleReturn
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeRadiusFourScrewGreen
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeRadiusFourPaidPacket

/-!
# An actual conductor-three physical-heat source lower bound

Local attribution: grwtsk contributors.

Source inspected: `grwtsk/math@445401c9714cafb94ff619d71be0195f017ac4bc`.
Canonical instructions read from `grwtsk/noeaaeue@e0bbd994681482f4b6e64c869cfbcb0111001e1b`.
This is a complete written analytic proof, with independently transparent exact
scalar arithmetic. No Noe job, Lean compilation, fresh kernel verification,
transitive axiom audit, independent human review or publication is claimed.

## 1. Backward target, original source, and the new result

The original target is
`DirichletStageChain.PrimitiveStageLower modThreeQuadratic
modThreeQuadratic_primitive modThreeQuadratic_nonprincipal 3`.
It asks for Q4(f) >= -E(f)/8 on EVERY original real odd compact C2 test,
zero off [-4,4], with its finite parity-one gamma energy. The exact current
middle consumer still needs its whole signed residual bound with exact
price124997987/10^9, after the separately paid mirrored-pair price2/10^6;
their sum is the clean middle allowance124999987/10^9. This note does not
assert that original unheated residual bound or infer it from positive heat.

Let I=[-4,4]. On the REAL odd physical Hilbert space L2(I,dt), use zero
extension and E(f)=integral_I |f|^2 dt. The complete orthonormal sine basis is

  phi_k(x)=sin(k*pi*x/4)/2, lambda_k=(k*pi/4)^2, k=1,2,... .

Define the ACTUAL odd Dirichlet heat already used in
`WeilConductorThreeRadiusFourScrewGreen`, Section6a, by

  S_t f = sum_(k>=1) exp(-t*lambda_k) <f,phi_k> phi_k, t>=0.

The heat time t below has units inverse squared physical frequency, not the
compact-filter box radius. For EVERY real odd f in physical L2(I), the new
source-exact conclusion is

  Q4(S_(10^-10) f) >= -(3391/1406250) E(f) > -E(f)/400.       (A)

The right side uses the INPUT physical norm E(f), not a derivative norm and
not a weighted norm. The heat output has the SAME support [-4,4], so Q4 has
exactly the original 458 unramified prime-power atoms p^e<=2980, p!=3,
with their original chi3(p^e) signs. No enlarged-support prime source is used.
The character is the actual primitive nonprincipal real odd chi3=(0,1,-1)
modulo3, conductor3, gamma parity1, and has no principal pole.

Write, on odd H0^1(I),

 Q4(v)=c_chi E(v)+integral_0^infinity kappa(r)||tau_r v-v||_2^2 dr
            -2 sum_(n=p^e<=2980,p!=3) chi3(n)log(p)/sqrt(n) Re C_v(log n),
 c_chi=log(3/pi)+psi(3/4), kappa(r)=exp(-3r/2)/(1-exp(-2r)).

This is the native primitiveArithmeticValue source extended by its proved
H0^1 continuity in ScrewGreen. All translations use zero extension. Its
Fourier normalization is F_v(z)=integral_I v(x)exp(i*z*x)dx and dxi/(2pi).
Since the full source symbol is even, the negative-angular convention gives
the identical quadratic value. The result is not a zeta specialization.

## 2. Whole heat coverage and source domain

Parseval proves S_0=Id, S_t S_s=S_(t+s), selfadjointness, positivity,
contraction and strong convergence S_t f -> f in L2 as t decreases tozero.
Its nonnegative generator is the odd Dirichlet Laplacian, with domain
odd H2(I) intersect H0^1(I). Every k>=1 remains in the expansion; after J
the exact squared output tail is

  sum_(k>J) exp(-2t*lambda_k)|<f,phi_k>|^2.

For t>0, sum lambda_k exp(-2t lambda_k)|<f,phi_k>|^2 is finite, hence
S_t f belongs to odd H0^1. The spectral basis expansion agrees with the
physical primitive of the even Neumann heat in the existing ScrewGreen
source: D S_t = H_t D on odd H0^1 inputs. Thus this is the same actual
spectral semigroup and the same carrier, not a positive reference heat
silently identified with the signed arithmetic source. Positive spectral
weights prove these coverage/domain laws only; they do not prove (A).

For each fixed original H0^1 input, S_t f -> f in H0^1. The original gamma
form is continuous in H0^1, using
||tau_r v-v||^2 <= min(r^2||v'||^2,4E(v)), and every finite correlation is
continuous in L2. Consequently Q4(S_t f)->Q4(f) for each such FIXED f.
This is pointwise source return. It supplies no uniform L2 rate for the heat
bias and does not turn the fixed-time assertion (A) into the original stage.

## 3. Exact strip transform and a uniform physical-norm tail bound

Put z=gamma+i*beta, |beta|<=1/2, |gamma|>=1, and omega_k=k*pi/4.
Elementary integration on [-4,4] gives the exact identity

  F_phi_k(z)=i*(-1)^(k+1)*omega_k*sin(4z)/(lambda_k-z^2).   (1)

At the removable zeros in this expression use the integral definition.
Write c_k=<f,phi_k> and split S_t f into the complete low sine modes
lambda_k<=gamma^2/4 and ALL complementary modes.

For the low modes,

 |lambda_k-z^2| >= |Re(lambda_k-z^2)|
                  >=3gamma^2/4-beta^2 >= gamma^2/2.

Also |sin(4z)|<=exp(4|beta|)<=exp2. For every t>0,

 sum_(k>=1)lambda_k exp(-2t lambda_k)
   <=t^-1 sum_(k>=1)exp(-t lambda_k)
   <=t^-1 integral_0^infinity exp(-t*pi^2*x^2/16)dx
   =2/(sqrt(pi)*t^(3/2)) <2t^(-3/2).                     (2)

The first step uses x exp(-x)<=1, and the second uses monotonicity of the
Gaussian. Cauchy--Schwarz, (1),(2), and exp4<81 imply

  |F_low(z)|^2 <=648 |gamma|^-4 t^(-3/2) E(f).            (3)

For the ENTIRE high sine-mode tail, Parseval gives
E(high)<=exp(-t gamma^2/2)E(f). The evaluation functional on L2(I) has
squared norm integral_I exp(-2beta x)dx <=8exp4<648. Hence

  |F_high(z)|^2 <=648 exp(-t gamma^2/2) E(f).             (4)

No term in this high sine tail is discarded. Using |a+b|^2<=2|a|^2+2|b|^2
in (3),(4) proves the UNIFORM bound for EVERY physical L2 input

 |F_(S_t f)(gamma+i beta)|^2
   <=1296[|gamma|^-4 t^(-3/2)+exp(-t gamma^2/2)]E(f).    (5)

The same estimate holds at -z. Taking the geometric mean proves the same
right side for |F_(S_t f)(z)F_(S_t f)(-z)|. Neither factor at a complex
zero is replaced by an unjustified nonnegative absolute square.

## 4. Primary zero input, and an exhaustive entire divisor estimate

Use the completed chi3 divisor in z=(rho-1/2)/i coordinates, with every
positive multiplicity. Euler nonvanishing for Re rho>1, nonvanishing on
Re rho=1, and the primitive functional equation put it inside |Im z|<1/2;
no trivial or boundary root is added to or removed from the counted divisor.
The source's existing boundary nonvanishing and compact explicit formula
are reused at their WRITTEN scope.

Platt, Numerical computations concerning the GRH, arXiv:1305.3087v1,
Theorem7.1, proves the primitive q3 critical-line assertion through 10^8/3.
Thus EVERY divisor point with |Re z|<=H=30,000,000 is real. The real
character gives the negative-ordinate reflection. Any possible real L-zero
is absent: for real sigma>0 the locally convergent paired series
sum_k[(3k+1)^(-sigma)-(3k+2)^(-sigma)] is strictly positive. This uses the
actual chi3 verification height, not the unrelated zeta verification.
Primary source: https://arxiv.org/pdf/1305.3087v1 .

Bennett--Martin--O'Bryant--Rechnitzer, Counting zeros of Dirichlet L-functions,
arXiv:2005.02989v1, Theorem1.1, counts both ordinate signs with multiplicity.
At q3, it implies N(Y)<=Y log(3(Y+2)) for Y>=20. Indeed, write
L=log(3(Y+2)); pi>3 bounds the main term above by YL/3, and
0.22737L+2log(1+L)+1/4-1/2<3L. Since Y/3+3<=Y at Y>=20, the claim follows.
Its stated ell threshold holds throughout this domain.
Primary source: https://arxiv.org/pdf/2005.02989v1 .

For p=4 and p=8, partition ALL |gamma|>H into the disjoint annuli
2^j H<|gamma|<=2^(j+1)H, j=0,1,... . Since
log(3(2^(j+1)H+2))<21+j (exp21>180000006 and log2<1),

 sum_(|gamma|>H) mult(gamma)|gamma|^-p
 <=2H^(1-p) sum_(j>=0)(21+j) 2^(-(p-1)j) <50 H^(1-p).   (6)

The two full dimensionless sums are exactly 2368/49 and 683008/16129,
respectively, both below50. Endpoints are assigned once; all j, both signs,
every multiplicity and the entire unknown tail remain present.

For x>0, exp(-x)<=24/x^4. Applying this at x=t gamma^2/2 and combining
(5),(6), the absolute contribution of EVERY zero beyond H is at most

 B(t,H)E(f), where
 B(t,H)=64800 t^(-3/2)H^-3+24883200 t^-4 H^-7.            (7)

At t=10^-10 and H=30,000,000 these are EXACTLY

 first term =3/1250,
 second term=8/703125,
 B=3391/1406250,
 1/400-B=997/11250000>0.                                 (8)

Thus no hypothesized absence, positivity or numerical sampling of an
unverified zero enters the bound.

## 5. Exact explicit-formula return and proof of (A)

The native compact explicit formula extends to odd H0^1(I) by density.
Here are the required convergence details. For any zero-extended v in
H0^1(I), one integration by parts gives, uniformly on |Im z|<=1/2,
|F_v(z)|<=C||v'||_2/(1+|Re z|), after also using the ordinary L2 evaluation
bound on bounded Re z. The same estimate is uniform for an H0^1-convergent
sequence. The zero-count bound above makes sum mult(z)/(1+|Re z|^2)
convergent. Dominated convergence therefore passes the ENTIRE divisor sum
from real odd compact smooth approximants to v. The gamma/correlation side
converges by the H0^1 source continuity in Section2. There is no unproved
continuity on the larger L2 form domain.

Apply the result to v=S_t f. Its exact equality is

  Q4(v)=sum_z mult(z) F_v(z)F_v(-z).                      (9)

For every verified real z, real v gives F_v(-z)=conjugate(F_v(z)); its term
is nonnegative. For all remaining zeros, the total absolute sum is bounded
by (7). Therefore Q4(S_t f)>=-B(t,H)E(f), and (8) proves (A).
This is a full-domain HEAT-SOURCE lower bound, not a finite passing case.

Combining the proved gamma-tail inequality in ScrewGreen Section6a gives,
for every M>=0,

 Q4,M(S_t f) >=-[B(t,H)+1/(t(4M+1)^2)]E(f).              (10)

Thus a whole truncated-gamma heat-form sign is supplied at any fixed t>0
with its explicit remaining error, without an unobserved sine-mode cutoff.

## 5a. The ENTIRE actual requested residual on heat outputs

The same calculation on the REAL frequency axis is much sharper. In (1)
use |sin(4xi)|<=1, and in (4) the evaluation functional has squared norm
EXACTLY8. Repeating the same complete low/high sine split gives

 |F_(S_t f)(xi)|^2
   <=16[|xi|^-4 t^(-3/2)+exp(-t xi^2/2)]E(f), |xi|>=1.   (12)

Let D be ANY measurable subset of {|xi|>H}, and let W be ANY measurable
actual scalar weight with 0<=W<=1. The actual source floor s4>=-213 then
gives, with no sign assumption on its arithmetic cosine sum,

 J_D(s4 W; S_t f)
 >=-213 integral_(|xi|>H)|F_(S_t f)(xi)|^2 dxi/(2pi)
 >=-(3408/pi)[t^(-3/2)/(3H^3)+384 t^-4/(7H^7)]E(f).      (13)

Both frequency signs are included: their factor2 changes 1/(2pi) to1/pi.
The second integral uses exp(-t xi^2/2)<=384 t^-4 xi^-8 for ALL |xi|>H;
there is no numeric integration or finite outer cutoff. At the stated
t=10^-10,H=30,000,000, pi>3 makes the final price less than the EXACT

 B_middle=560261/39867187500 <1/70000,
 1/70000-B_middle=37081/159468750000>0.                   (14)

This applies in particular to the ENTIRE requested radius-four residual
D=( {30,000,000<|xi|<35*10^24} minus the one paid mirrored R10 packet),
with the ORIGINAL actual weight W=P_H(xi)^2(1-P_L(xi)^2). The real binomial
laws give 0<=W<=1. Restricting to D is paid by the universal negative-part
bound in (13), not by subtracting a packet of unknown sign. Thus the
residual inequality holds on S_t f with price1/70000 in the INPUT E(f).
This corollary uses the full physical heat transform and actual source
floor; it does not use any assumed unknown-zero positivity.

The output need not be original compactC2 after zero extension; the
justified carrier is odd H0^1 with the source/residual extension proved
above. The bounded negative part of this frequency integral is an L2
continuous form, and the full signed integral is H0^1 continuous since
s4 grows logarithmically. The original requested bound is in E(v) for
EVERY original input v. There is NO uniform bound E(f)<=C E(S_t f), so
(14) alone is not that desired output-normalized universal residual.

## 5b. An actual unheated physical head with every unknown zero paid

There is also a genuine unheated whole-source advance. Let V_K be the
ENTIRE real odd physical sine space span(phi_1,...,phi_K), with its
ordinary E(v)=sum_(k<=K)|c_k|^2 and the SAME H0^1 source extension. For
K<=1,500,000, pi^2<10 gives

 lambda_K+1/4 < H^2/100.

Consequently, for EVERY divisor point |gamma|>H, |beta|<=1/2 and EVERY
k<=K, the exact denominator in (1) obeys
|lambda_k-z^2|>=gamma^2-lambda_k-beta^2 > (99/100)gamma^2.
No high sine complement is present inside the DEFINED carrier V_K.
Cauchy--Schwarz in the COMPLETE K-term expansion gives

 |F_v(z)F_v(-z)|
 <=81(100/99)^2 |gamma|^-4 [sum_(k<=K)lambda_k]E(v).

Use the ENTIRE zero tail (6), and
sum_(k<=K)lambda_k < (10/96)K(K+1)(2K+1). The verified zero head is
nonnegative as before, so for EVERY v in V_K the actual full source obeys

 Q4(v)>=-b_K E(v),
 b_K=[50*81*10*10000/(96*9801)] K(K+1)(2K+1)/H^3.        (15)

In particular the exact rational guards are

 K=1,500,000: b_K=4500004500001/41817600000000 <1/8,
 K=1,200,000: b_K=261818509091/4752000000000 <1/16.        (16)

Thus Q4+E/8 is positive definite on the ENTIRE 1,500,000-dimensional
physical odd head, not merely on a sampled set of coefficient vectors.
No kernel execution or matrix certificate is used; (15) is its written
analytic proof with all unknown zeros included. The same statement applies
to every original admissible test that lies in that exact physical subspace.
H0^1 density gives source-exact smooth approximations to any individual
strict head inequality. These are physical GLOBAL sine modes, not a
104-mode packet head at an unrelated frequency center.

The full source still has unobserved physical modes k>K and mixed blocks.
Nothing in this finite-dimensional sign sets those blocks tozero or
infers a full stage. Since b_K grows as K^3 at fixed verified height,
these finite head inequalities do not form a uniform cofinal sign proof.

## 6. Exact remaining consumer and hostile check

For every original admissible f define the actual source bias
R_t(f)=Q4(f)-Q4(S_t f). Equation (A) shows that the original j3 follows
from the still-OPEN uniform source-bias inequality

 R_(10^-10)(f) >=-[1/8-3391/1406250]E(f).                 (11)

This is a sufficient consumer, not a proof of (11). The middle-residual
consumer also remains OPEN. In particular (7) diverges as t decreases
tozero, so the pointwise heat/source-return law cannot remove (11) by
silently changing the quantifier order. The primary Suzuki construction
arXiv:2606.09096v1 gives a selfadjoint localized form, but its positive norm
uses a shift below the actual lowest eigenvalue; that cannot independently
prove the shift1/8 required here. Source: https://arxiv.org/pdf/2606.09096v1 .

A direct hostile check shows why unheated Fourier decay is inadequate.
Take any nonzero real even nonnegative compact smooth bump phi inside I,
let g(x)=x phi(x), and set f_Gamma(x)=g(x)cos(Gamma x). These are actual
real odd compact smooth tests. Let b=1/4 and
S=integral_I g(x)sinh(bx)dx>0. The Riemann--Lebesgue lemma gives

 E(f_Gamma)->E(g)/2,
 F_(f_Gamma)(Gamma+i b)->-S/2,
 F_(f_Gamma)(-Gamma-i b)->S/2.

Therefore their divisor product tends to -S^2/4 at an arbitrary shifted
off-line point. For every large H, some Gamma>H has a negative product
bounded away fromzero relative to E(f_Gamma). The conjugate/reflected
quartet has the same sign. This is NOT an actual chi3 zero or a Q4
counterexample. It proves that fixed-test strip decay cannot furnish a
vanishing operator-norm bound for arbitrary unheated physical inputs.
Our heat estimate avoids that invalid step through its explicit uniform
spectral damping and retains the full output tail.

## 7. Representable data, coding, evidence and dependency path

No new semantic coding of all L2 functions or real zeros is asserted.
Finite representable proof data comprise this entire statement/proof as
bound syntax, source identities, all rational parameters, the full dyadic
tail law with its universal index, primary-source identifiers, exact scalar
guard record, and separate evidence statuses. Reuse the existing
`ConductorThreeRadiusFourPaidPacket.retainedCodec` on its TOTAL dependent
carrier Sigma(fun descriptor:List Nat => List Nat x List Nat): retain the
complete source/type/proof descriptor bytes, the complete scalar certificate
bytes, and the complete checker bytes. Encode is native Encodable.encode;
decode is native Encodable.decode, not a hash lookup. The existing
retainedCodec.roundtrip is decode(encode(data))=some(data). With the existing
decodeRetained default off the encoder image, rewriting this equality gives
decodeRetained(encode(data))=data. All dependent descriptor fields and all
three complete byte sequences return exactly; no failed/open evidence is
manufactured into an accepted sign. The default outside the encoder image
has no acceptance meaning. This is precisely the source-preserving reuse
of WeightedStage.dependentProofCodec, not a new certificate interface.

Heat role: actual spectral semigroup, with proved semigroup, domain,
complete-mode coverage, and fixed-input source-return laws in Section2.
Arithmetic sign role: (A) is proved separately by (1)--(9), not by heat
weights. Countable sine and zero tails are paid in full by (4),(6),(7).

Discharged obligations: an unconditional whole chi3 physical-heat source
floor on ALL odd L2 inputs at the fixed stated heat time, its associated
whole truncated-gamma heat floor (10), the ENTIRE requested heat-residual
bound (14) in the input physical norm, and the unheated entire physical
head signs (15)--(16). Source fidelity is a written proof
on the actual458-atom source. Scalar guards are exact rational arithmetic;
no numerical zero search or new native execution is involved. Lean,
kernel, axiom audit, human review and worldwide novelty remain NOT_RUN or
NOT_ASSESSED at their respective scopes. The method is a standard spectral
heat/explicit-formula estimate specialized to this exact source; no global
novelty claim is made.

Updated path: original primitive source -> actual physical Dirichlet heat
and exact sine transform -> verified chi3 zero head AND entire quantitative
unknown tail -> whole heat-source floor (A) -> OPEN uniform source bias(11)
or another complete signed-middle return -> radius-four PrimitiveStageLower3.
All later chi3 stages, the independent zeta RH branch and every other
primitive Dirichlet character remain separate. The exact global GRH family
is exactly the native Conditional.DirichletGRH: for EVERY positive modulus
N, EVERY DirichletCharacter complex N and EVERY complex s with
0<Re(s)<1, chi.LFunction(s)=0 implies Re(s)=1/2. Imprimitive/principal
sectors return through their own native conductor and pole contracts.
No such global conclusion follows from (A).


Exact scalar checker provenance:
/tmp/q3_radius_four_physical_heat_zero_tail_20261107.py
Exact complete scalar record:
/tmp/q3_radius_four_physical_heat_zero_tail_20261107.json
All checks use explicit raises and remain active under python -O. The checker
is ordinary exact finite arithmetic, not Noe/native replay or Lean evidence.
The following Lean declarations are finite arithmetic, source-definition
reuse, exact retained-data roundtrips and an explicitly CONDITIONAL source
consumer. They do not assert the universal analytic heat/head statements as
kernel-established declarations. Those are the complete written proofs above.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourVerifiedZeroHeat

open DirichletStageChain SourcePrimeCorrelation
open GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeQuadraticConstruction
open GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreePrimitiveGauss

/-- Actual original radius and verified cutoff; no zeta height substitution. -/
def physicalRadius : ℚ := 4
def verifiedHeight : ℚ := 30000000
def heatTime : ℚ := 1 / 10 ^ 10

/-- Exact sums of ALL dyadic zero annuli for p4 and p8. -/
def dyadicPowerFour : ℚ :=
  2 * (21 / (1 - 1 / 8) + (1 / 8) / (1 - 1 / 8) ^ 2)
def dyadicPowerEight : ℚ :=
  2 * (21 / (1 - 1 / 128) + (1 / 128) / (1 - 1 / 128) ^ 2)

def powerTail : ℚ := 64800 * 10 ^ 15 / verifiedHeight ^ 3
def exponentialTail : ℚ := 24883200 * 10 ^ 40 / verifiedHeight ^ 7
def heatSourcePrice : ℚ := powerTail + exponentialTail
def heatResidualPrice : ℚ :=
  1136 * (10 ^ 15 / (3 * verifiedHeight ^ 3) +
    384 * 10 ^ 40 / (7 * verifiedHeight ^ 7))

/-- Whole-source head price, not the residual-only head price. -/
def physicalHeadPrice (K : ℕ) : ℚ :=
  (50 * 81 * 10 * 10000 / (96 * 9801)) *
    ((K : ℚ) * (K + 1) * (2 * K + 1)) / verifiedHeight ^ 3

def uniformBiasBudget : ℚ := 1 / 8 - heatSourcePrice

/-- Current entire signed residual after the single paid pair. -/
def originalResidualBudget : ℚ := 124997987 / 10 ^ 9

theorem exact_complete_dyadic_sums :
    dyadicPowerFour = 2368 / 49 ∧ dyadicPowerFour < 50 ∧
      dyadicPowerEight = 683008 / 16129 ∧ dyadicPowerEight < 50 := by
  norm_num [dyadicPowerFour, dyadicPowerEight]

theorem exact_whole_heat_source_price :
    powerTail = 3 / 1250 ∧ exponentialTail = 8 / 703125 ∧
      heatSourcePrice = 3391 / 1406250 ∧
      1 / 400 - heatSourcePrice = 997 / 11250000 ∧
      heatSourcePrice < 1 / 400 := by
  norm_num [powerTail, exponentialTail, heatSourcePrice, verifiedHeight]

theorem exact_entire_heat_residual_price :
    heatResidualPrice = 560261 / 39867187500 ∧
      1 / 70000 - heatResidualPrice = 37081 / 159468750000 ∧
      heatResidualPrice < 1 / 70000 ∧
      heatResidualPrice < originalResidualBudget := by
  norm_num [heatResidualPrice, verifiedHeight, originalResidualBudget]

theorem head_denominator_guards :
    ((10 : ℚ) * 1200000 ^ 2 / 16 + 1 / 4 < verifiedHeight ^ 2 / 100) ∧
      ((10 : ℚ) * 1500000 ^ 2 / 16 + 1 / 4 < verifiedHeight ^ 2 / 100) := by
  norm_num [verifiedHeight]

theorem exact_whole_source_head_prices :
    physicalHeadPrice 1200000 = 261818509091 / 4752000000000 ∧
      physicalHeadPrice 1200000 < 1 / 16 ∧
      physicalHeadPrice 1500000 = 4500004500001 / 41817600000000 ∧
      physicalHeadPrice 1500000 < 1 / 8 := by
  norm_num [physicalHeadPrice, verifiedHeight]

theorem verified_cutoff_strictly_inside_actual_chi3_height :
    verifiedHeight < (100000000 / 3 : ℚ) := by
  norm_num [verifiedHeight]

theorem paid_pair_and_original_residual_match_middle :
    originalResidualBudget + ConductorThreeRadiusFourPaidPacket.pairPacketPrice =
      ConductorThreeRadiusFourMiddleReturn.cleanMiddleBudget := by
  norm_num [originalResidualBudget,
    ConductorThreeRadiusFourPaidPacket.pairPacketPrice,
    ConductorThreeRadiusFourPaidPacket.singlePacketPrice,
    ConductorThreeRadiusFourMiddleReturn.cleanMiddleBudget]

/-- Reuse the COMPLETE dependent finite-data carrier, not a hash lookup. -/
abbrev RetainedEvidence := ConductorThreeRadiusFourPaidPacket.RetainedEvidence

/-- Full descriptor/proof bytes, scalar-record bytes and checker bytes. -/
theorem full_retained_evidence_roundtrip (data : RetainedEvidence) :
    ConductorThreeRadiusFourPaidPacket.decodeRetained
      (ConductorThreeRadiusFourPaidPacket.retainedCodec.encode data) = data :=
  ConductorThreeRadiusFourPaidPacket.full_roundtrip data

/-- Every countable unobserved coverage coordinate remains represented.
This scalar coverage law is distinct from the actual spectral heat proof. -/
theorem entire_unobserved_coverage (J : ℕ) :
    (∑' k : ℕ, WeightedStage.stageCoverageWeight (J + k)) = (1 / 2 : ℝ) ^ J :=
  WeightedStage.stageCoverageWeight_tail J

/-- Native target consumer. The heat-source premise is supplied at WRITTEN
scope by the proof above. The UNIFORM source-bias premise remains OPEN.
There is no assertion here that the arbitrary function argument is heat,
that its output is admissible C2, or that input and output norms coincide. -/
theorem stage_three_of_whole_heat_source_and_uniform_bias
    (heatOutput : (ℝ → ℝ) → (ℝ → ℝ))
    (hheat : ∀ f : ℝ → ℝ, Admissible modThreeQuadratic 4 f →
      -(heatSourcePrice : ℝ) * energy (liftReal f) ≤
        primitiveArithmeticValue modThreeQuadratic modThreeQuadratic_primitive
          modThreeQuadratic_nonprincipal 4 (liftReal (heatOutput f)))
    (hbias : ∀ f : ℝ → ℝ, Admissible modThreeQuadratic 4 f →
      -(uniformBiasBudget : ℝ) * energy (liftReal f) ≤
        primitiveArithmeticValue modThreeQuadratic modThreeQuadratic_primitive
          modThreeQuadratic_nonprincipal 4 (liftReal f) -
        primitiveArithmeticValue modThreeQuadratic modThreeQuadratic_primitive
          modThreeQuadratic_nonprincipal 4 (liftReal (heatOutput f))) :
    PrimitiveStageLower modThreeQuadratic modThreeQuadratic_primitive
      modThreeQuadratic_nonprincipal 3 := by
  unfold PrimitiveStageLower
  intro f hf
  norm_num at hf ⊢
  have hh := hheat f hf
  have hb := hbias f hf
  norm_num [uniformBiasBudget, heatSourcePrice, powerTail, exponentialTail,
    verifiedHeight] at hh hb
  linarith

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourVerifiedZeroHeat
