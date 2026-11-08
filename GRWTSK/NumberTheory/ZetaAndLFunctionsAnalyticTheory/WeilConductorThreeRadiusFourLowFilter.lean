/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
Source inspected: grwtsk/math c779a67fa824da8f9b75384f7d61c46baeb2ce1f.
Canonical structural-intelligence, typed-port-routing, finite-diffusion and
noe-proof-automation skills read from the grwtsk/noeaaeue checkout.
WRITTEN_ANALYTIC_PROOF_COMPLETE_FOR_THE_LOW_SOURCE_LEAF.
FINITE_EXACT_RATIONAL_GUARDS_REPLAYED; universal analytic Lean proof NOT_CLAIMED.
Compilation, fresh kernel and axiom evidence apply only to declarations actually
checked, as separately recorded in the static verification target.
INDEPENDENT_HUMAN_REVIEW_NOT_RUN / WORLDWIDE_NOVELTY_NOT_ASSESSED.
-/
import Mathlib.Tactic
import Mathlib.Data.Rat.Encodable
import Mathlib.Logic.Equiv.List

/-!
# A source-exact radius-four conductor-three low filter

## Actual consumer and result

The ORIGINAL target is
`DirichletStageChain.PrimitiveStageLower modThreeQuadratic
 modThreeQuadratic_primitive modThreeQuadratic_nonprincipal 3`.
By its actual definition this asks, for EVERY
`DirichletStageChain.Admissible modThreeQuadratic 4 f`,

  primitiveArithmeticValue chi3 hp hn 4 (liftReal f) >= -E(f)/8.

The carrier is real odd compact C2, zero off [-4,4], with physical Lebesgue
L2(dt) mass E and the original finite parity-one gamma form. No H1 ratio,
weighted mass, finite sine sector or assumed arithmetic positivity replaces it.
This file proves the following COMPLETE WRITTEN low-source theorem:

  J_R(s4 * P_L^2) >= -10^(-66) E.                         (L)

Here F(z)=integral f(t)exp(i*z*t)dt, J_D(b)=integral_D b|F|^2/(2*pi),
s4=A-P4, A=log(3/pi)+Re psi(3/4+i*xi/2), and P4 is the ACTUAL
`CharacterWindow.twistedPrime 4 chi3` cosine multiplier:

 P4(xi)=2 sum_(n=p^e<exp(8),p!=3)
                 log(p) chi3(n) cos(xi*log n)/sqrt(n).

It contains 458 nonzero source atoms, n<=2980. It is NOT the radius-three
`ConductorThreeComplementTail.primeSymbol`, which contains only 93 atoms.
The actual character is (0,1,-1) modulo 3, primitive nonprincipal of conductor 3,
gamma parity 1, with NO principal pole. The full source identity is

 primitiveArithmeticValue chi3 hp hn 4 (liftReal f)=J_R(s4). (S)

Its gamma multiplier is
2 integral_0^infinity exp(-3r/2)(1-cos(xi*r))/(1-exp(-2r))dr.
Putting u=2r gives Re psi(3/4+i*xi/2)-psi(3/4); the actual gamma constant
restores A. Plancherel sends each correlation to the displayed cosine term.
Compact C2 gives F=O((1+|xi|)^(-2)) on fixed horizontal strips; A grows
logarithmically and P4 is bounded, so all these signed real integrals converge
absolutely. This is the same source-normalized return as CompactFilterReturn.

The proof of (L) below is analytic and computer-assisted only in its explicitly
listed finite rational guards. The Lean bodies formalize scalar arithmetic and
finite-data reconstruction, not (L), the compact explicit formula or Platt's
published verification. The static target keeps those evidence levels separate.

## 1. Concrete compact filter and exact inventory slack

Take M=19000, K=1425, h=153/2000000000, epsilon=10^(-40),

 t(z)=sinc(h*z)^2,
 P_L(z)=sum_(j=K)^M choose(M,j)t(z)^j(1-t(z))^(M-j).

On R this is the actual Binomial(M,t) upper tail, so 0<=P_L<=1. Let eta
be uniform probability on [-h,h]. Its Fourier transform is sinc(h*z).
Let mu=eta*eta. For EACH j, the finite real even signed measure
mu^(convolution j) * (delta_0-mu)^(convolution (M-j)) has transform
t^j(1-t)^(M-j) and support radius <=2Mh. Their finite binomial sum is an
actual finite signed measure nu_L with transform P_L and radius 2Mh=.002907.
Its mass is P_L(0)=1; no assertion that it is a positive measure is made.
Its finite total variation and that of every derivative-convolved input are
finite. Thus v=f*nu_L is real odd compact C2, support radius <=4.002907,
and has finite original gamma energy: the difference norm is bounded by
min(r^2||v'||_2^2,4||v||_2^2), integrable against the parity-one kernel.

For an OPTIONAL existing high filter M_H=7990,K_H=2820,h_H=1/(2*10^9),
the radius of f*nu_H*nu_L is exactly
 Traw=4+2M_H*h_H+2Mh=400291499/100000000=4.00291499.
An OPTIONAL wide six-box variance component adds 6/3000000, giving
 Twide=400291699/100000000=4.00291699.

These radii have the rigorously checked source slack

 log(2999)-2*Twide >1/5000; 2980<exp(8)<2981.              (1)

For reproducibility, to enclose log n write n=2^k v, 1<=v<2, and use
24 terms of 2 sum_(j>=0) y^(2j+1)/(2j+1), y=(v-1)/(v+1), for log v;
use y=1/3 for log 2. The entire omitted tail is bounded above by
2*y^49/[49*(1-y^2)]. Exact rational comparisons give (1).
There are NO new prime powers 2981,...,2998. Explicit coprime factors are
 2981=11*271, 2982=2*1491, 2983=19*157, 2984=8*373,
 2985=3*995, 2986=2*1493, 2987=29*103, 2988=4*747,
 2989=49*61, 2990=2*1495, 2991=3*997, 2992=16*187,
 2993=41*73, 2994=2*1497, 2995=5*599, 2996=4*749,
 2997=81*37, 2998=2*1499.
Each displayed pair is coprime with both factors >1. Therefore every possible
new von Mangoldt coefficient is zero. The same ORIGINAL 458 atoms consequently
give the native arithmetic source of v and of the optional wider components.
Correlation at shifts >= twice the true support radius is zero, including the
endpoint up to a null set. No prime-power or overlap tail is omitted.

In particular the radius-three M_L=40000 filter CANNOT simply be transported:
its support increase would encounter new radius-four atoms such as 2999.

## 2. Real pass law and entire complex-strip stop law

The all-lobe sinc estimates from the full elementary proof in
WeilConductorThreeLowFilter apply to this SAME h. Explicitly:
* for |xi|<=30000000, |h*xi|<=459/200; the alternating lower polynomial
  1-x^2/6+x^4/120-x^6/5040 is positive there and its square at 459/200
  exceeds 21/200. First-lobe monotonicity gives t(xi)>=21/200;
* for |x|>=x0=2.5499999, |sinc x|<=11/50. On [x0,pi] use the alternating
  upper polynomial through x^8/9! and decreasing positive sinc. On [pi,5]
  use concavity of sin and its tangent at 27/20, with the exact Taylor guards
  cos(27/20)<11/50 and sin(27/20)-(27/20)cos(27/20)<(11/50)*(157/50).
  For |x|>=5 use |sinc x|<=1/|x|. These cover ALL lobes, not a sample.

Let Hsafe=100000000/3-1. Exact arithmetic gives h*Hsafe>x0.
For X~Binomial(M,p), Markov's inequality applied to r^X, 0<r<1, and
s^X, s>1, gives

 Pr(X<=K-1)<=(1-p+p*r)^M/r^(K-1),
 Pr(X>=K)<=(1-p+p*s)^M/s^K.

Monotonicity in p follows by coupling Bernoulli trials with common uniforms.
With r=7/10,s=3/2 the two complete exact guards are

 (1937/2000)^19000/(7/10)^1424 <10^(-40),
 (2049/2000)^19000/(3/2)^1425 <10^(-40).                    (2)

They were checked by integer cross multiplication, respectively
1937^19000*10^1464 <2000^19000*7^1424 and
2049^19000*2^1425*10^40 <2000^19000*3^1425.
Thus P_L>=1-epsilon throughout |xi|<=30000000.

For the ACTUAL complex divisor, |Im z|<=1/2. The box integral gives
|sinc(w)|<=exp(|Im w|), |sinc'(w)|<=exp(|Im w|)/2. Integrating the
derivative of sinc^2 on the vertical segment gives
|t(z)-t(Re z)|<h. Put R0=|t|+|1-t| and p0=|t|/R0. Then
1<=R0<=1+2h, and the polynomial triangle inequality gives

 |P_L(z)|<=R0^M Pr(Binomial(M,p0)>=K).

The binomial expansion, choose(M,j)<=M^j, and a geometric series give
R0^M<=1/(1-2Mh)<1003/1000=:c. This holds on the WHOLE closed strip.
If |Re z|>=Hsafe then p0<=|t|<(11/50)^2+h<49/1000. Equation (2) gives

 |P_L(z)|<c*epsilon.                                     (3)

The ENTIRE far tail requires a decreasing law, not (3) repeated infinitely.
The box/sinc identity gives |t(z)|<=exp(h)/(h|Re z|)^2. The factorial
moment bound Pr(X>=K)<=choose(M,K)p0^K, together with
choose(M,K)<(3M/K)^K=40^K and 40exp(h)<41, proves

 |P_L(z)|^2 <= c^2 [41/(h|Re z|)^2]^2850.                (4)

For the optional existing high filter, the identical strip argument gives
|P_H(z)|<1001/1000, since 1/(1-2M_H*h_H)<1001/1000.
It may therefore be included in every estimate below at that explicit price.

## 3. Actual primitive zero divisor and the full unknown tail

Let Z be the completed primitive chi3 zero divisor in z=(rho-1/2)/i coordinates,
with original positive multiplicities. Euler nonvanishing, whole-line
nonvanishing on Re rho=1, and the primitive functional equation put it in
|Im z|<1/2. No boundary roots or trivial roots are silently inserted/removed.
The individual compact explicit formula of WeilDirichletCompactFilterReturn,
with its native source and no extra factor 1/2, applies to v and gives

 Q_chi3(v)=sum_(z in Z) mult(z) F(z)F(-z)P_L(z)P_L(-z)
         =J_R(s4*P_L^2).                                 (5)

The Fourier product at an unknown complex ordinate is NOT an absolute square.
The compact formula's absolute convergence follows from C2 decay on the strip;
the following uniform majorant additionally controls the entire unknown tail.

Platt, arXiv:1305.3087v1, Theorem 7.1, verifies primitive odd moduli q<=400000
through max(10^8/q,3.75*10^7/q+200). At q=3 this is 10^8/3. Use Hsafe one
unit inside that height. Reality gives the negative-ordinate reflection.
There is no real zero for sigma>0: the locally normally convergent paired
series sum_(k>=0)[(3k+1)^(-sigma)-(3k+2)^(-sigma)] is positive and agrees with
the analytic continuation. Every divisor term with |Re z|<=Hsafe is therefore
verified critical-line. For real v and real z its product is |V(z)|^2>=0.

BMOR, arXiv:2005.02989v1, Theorem 1.1, counts BOTH ordinate signs and all
multiplicities and implies N(Y)<=Y log(3(Y+2)) for Y>=20, as derived with all
constants in CompactFilterReturn. Consequently the entire near unknown region
Hsafe<|Re z|<=10Hsafe contains fewer than 10^10 zeros. For EVERY j>=0 the far
annulus 10Hsafe*2^j<|Re z|<=20Hsafe*2^j contains fewer than
10^9*2^j*(22+j) zeros. This follows from 20H<10^9, exp(22)>66H, log2<1.
Endpoints are assigned once and the annuli exhaust the whole unknown divisor.

For ORIGINAL f, Cauchy--Schwarz on [-4,4] gives
 |F(z)F(-z)|<=8exp(4)E<648E
throughout |Im z|<=1/2. Since P_L is even, (3) bounds the entire near unknown
contribution, even INCLUDING the optional high filter, by

 648*(1001/1000)^2*c^2*10^10*10^(-80) E <10^(-67) E.      (6)

For the far annuli h*10Hsafe>25 and 41/625<1/15. Using (4), the j-th far
annulus is bounded by
 10^12*15^(-2850)*(22+j)*2^(-5699*j) E.
Summing ALL j>=0 gives less than
 23*10^12*15^(-2850) E <10^(-67) E.                       (7)
The geometric sum is <23 because its ratio is 2^(-5699). The last guard is the
exact integer inequality 23*10^79<15^2850. Thus (6)--(7) preserve EVERY unknown
zero, both signs and every multiplicity. Together with the nonnegative verified
head, (5) proves (L), because 2*10^(-67)<10^(-66).
The SAME proof gives J_R(s4*P_H^2*P_L^2)>=-10^(-66)E for the optional old high
filter; only its stated complex bound and support allowance were used.
An optional wide variance factor contributes at most 4exp(6/3000000)<5 to the
complex product, giving the separately weaker allowance 10^(-65)E.
No full GRH assumption is made for any unverified zero.

## 4. Forward return and precisely remaining middle sign

Equation (S) and 1=P_L^2+(1-P_L^2) give a genuine sharpened reduction:
the original j=3 target follows if, for EVERY original admissible f,

 J_R(s4*(1-P_L^2)) >= -(1/8-10^(-66))*E.                 (M)

This file DOES NOT prove (M). Positive filter/variance weights do not prove it.
For reference, complete exact log/square-root enclosure of all 458 source atoms
gives sum|2log(p)chi3(n)/sqrt(n)|<2106102645586/10^10<211. Each log uses the
24-term bounds above, rounded upward on 10^12; each square root uses the lower
integer sqrt(n*10^24)/10^12; each coefficient is rounded upward on 10^10.
Thus s4>=-213 globally. Below L=30000000, 1-P_L^2<=2*10^(-40), so that ENTIRE
region costs at most 426*10^(-40)E. Binet gives A>=log|xi|-3/4 for |xi|>=100;
log2>693/1000 implies s4>=0 when |xi|>=2^306. This pays the whole exterior,
but the resulting immense finite frequency region is NOT advertised as a
feasible scan or a completed middle proof. A genuine joint operator estimate
must close (M); this reduction has not manufactured its sign.

The source remains the original 458-atom radius-four source, with ALL gamma,
prime, support, quantifier and physical-norm data. The old 93-atom packet matrices
and their transient historical Gram factors cannot certify (M). No discarded
historical factor is claimed reconstructed by a new encoding.

## 5. Heat, lossless finite proof data and evidence

Heat here is ONLY the existing WeightedStage branch coverage instance. Finite
typed proof descriptions carry the source pin/declaration, character table,
primitive/nonprincipal/parity context, original Admissible binder, dt norm and
Fourier measure, every parameter above, exact guards, zero-count law, all tail
annuli and evidence statuses. Natural codes exhaust these descriptions. The
actual pi_n=2^(-n-1) has total mass one and complete unobserved tail 2^(-J).
For summable branch states the native Kx=(x+(sum x)pi)/2 satisfies
x=2Kx-(sum Kx)pi. These exact laws supply coverage and reconstruction only.
The signed measure nu_L and the positive variance realization of 1-P_L^2 are
different objects: for the latter, expand 1-p^2=(1-p)+(1-p)p in nonnegative
Bernstein monomials. A monomial t^a(1-t)^b is the expected squared transform of
a one-box convolutions and b independent (delta_S-eta) factors, radius
(a+b)h<=2Mh. This constructs the positive coefficient family and proves its
source multiplier and physical averaged-mass law <=E, without inferring a sign.

The finite descriptor/payload below is a concrete Encodable instance. Both are
encoded together, including source and norm/role tokens; decode after encode
returns the WHOLE pair. The repository's WeightedStage.dependentProofCodec
applies to the richer dependent finite syntax described in CompactFilterReturn.
On the encoder image its total inverse obeys decodeImage(encode x)=x, by the
same partial-decoder roundtrip and injectivity. Exact source references and
finite proof syntax represent universal binders, not invented binary values for
arbitrary L2 functions or zeros. Coding does not validate the mathematical
truth of an unchecked proof, and a finite recipe removes no analytical tail.
The static target binds the full written proof source bytes and exact finite
guards separately from this small explicit parameter-packet roundtrip.

Primary sources: DLMF 5.9.16; Platt arXiv:1305.3087v1 Theorem 7.1;
Bennett--Martin--O'Bryant--Rechnitzer arXiv:2005.02989v1 Theorem 1.1;
the source-normalized individual compact formula in CompactFilterReturn,
compared there with Fiorilli--Miller (2012), equation (2.2).
Independent analytic comparison: the inventory/slack check detects why simply
reusing the old filter fails. The new complex-divisor estimate is a direct
raw-source proof; no older wide smoothing estimate or radius-three matrix sign
is an input. Standard filter/explicit-formula methods; no novelty claim.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourLowFilter

/- Source strings are genuinely reconstructed, not replaced by opaque hashes. -/
local instance : Encodable Char :=
  Encodable.ofLeftInverse Char.toNat Char.ofNat Char.ofNat_toNat

local instance : Encodable String :=
  Encodable.ofLeftInverse String.toList String.ofList
    (fun _ => String.ofList_toList)

def lowOrder : ℕ := 19000
def lowThreshold : ℕ := 1425
def lowBoxRadius : ℚ := 153 / 2000000000
def lowEpsilon : ℚ := 1 / 10 ^ 40
def lowSourceAllowance : ℚ := 1 / 10 ^ 66
def rawSupportRadius : ℚ := 4 + 2 * 7990 / 2000000000 +
  2 * (lowOrder : ℚ) * lowBoxRadius
def wideSupportRadius : ℚ := rawSupportRadius + 6 / 3000000

theorem source_support_exact :
    rawSupportRadius = 400291499 / 100000000 ∧
      wideSupportRadius = 400291699 / 100000000 := by
  norm_num [rawSupportRadius, wideSupportRadius, lowOrder, lowBoxRadius]

theorem complex_strip_prefactor :
    1 / (1 - 2 * (lowOrder : ℚ) * lowBoxRadius) < 1003 / 1000 := by
  norm_num [lowOrder, lowBoxRadius]

theorem exact_binomial_bases :
    (1 - 21 / 200 + (21 / 200) * (7 / 10) : ℚ) = 1937 / 2000 ∧
      (1 - 49 / 1000 + (49 / 1000) * (3 / 2) : ℚ) = 2049 / 2000 := by
  norm_num

theorem near_unknown_guard :
    (648 : ℚ) * (1001 / 1000) ^ 2 * (1003 / 1000) ^ 2 *
      10 ^ 10 * (1 / 10 ^ 40) ^ 2 < 1 / 10 ^ 67 := by
  norm_num

theorem low_tail_budget : (2 : ℚ) / 10 ^ 67 < lowSourceAllowance := by
  norm_num [lowSourceAllowance]

theorem original_stage_allowance : lowSourceAllowance < (1 / 2 : ℚ) ^ 3 := by
  norm_num [lowSourceAllowance]

/-- A finite source descriptor and exact payload, encoded TOGETHER.
This is the parameter/evidence packet, not an encoding of arbitrary functions. -/
def finiteProofData :
    (String × String × String) × (List ℕ × List ℚ) :=
  (("grwtsk/math", "c779a67fa824da8f9b75384f7d61c46baeb2ce1f",
    "DirichletStageChain.PrimitiveStageLower/modThreeQuadratic/j=3;physical-L2-dt;angular-Fourier;written-low-source-leaf"),
   ([3, 1, 4, 3, lowOrder, lowThreshold, 458, 2980, 2999, 2850],
    [0, 1, -1, lowBoxRadius, lowEpsilon, lowSourceAllowance,
      100000000 / 3 - 1, 21 / 200, 49 / 1000, 7 / 10, 3 / 2,
      1003 / 1000, rawSupportRadius, wideSupportRadius]))

theorem finiteProofData_roundtrip :
    Encodable.decode (Encodable.encode finiteProofData) = some finiteProofData :=
  Encodable.encodek finiteProofData

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourLowFilter
