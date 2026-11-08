/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
Requested source baseline: grwtsk/math
12e3471d075669ca7ff09c41b8df7e5ab64f18fc.
Source inspected before writing: 445401c9714cafb94ff619d71be0195f017ac4bc.
Canonical skills read in grwtsk/noeaaeue at
7376f433ae7573f7c02d47facb799337de6e0215.
WRITTEN_ANALYTIC_PROOF_COMPLETE_FOR_THE_LOCAL_EDGE_LEAF.
The published finite zero verification is an explicit computer-assisted input.
LEAN_COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN / AXIOM_AUDIT_NOT_RUN.
INDEPENDENT_HUMAN_REVIEW_NOT_RUN / WORLDWIDE_NOVELTY_NOT_ASSESSED.
-/
import Mathlib.Tactic
import Mathlib.Data.Rat.Encodable
import Mathlib.Logic.Equiv.List

/-!
# A source-exact, coercive local conductor-three edge form

## 1. Consumer, carrier, constants and exact source

The original consumer remains
`DirichletStageChain.PrimitiveStageLower modThreeQuadratic
 modThreeQuadratic_primitive modThreeQuadratic_nonprincipal 3`.
It asks Q4(f)>=-E(f)/8 for EVERY original Admissible chi3 4 f.
This file proves a NEW LOCAL LEAF, not that entire assertion:

 q0[w]>=-10^(-39)||w||_2^2,
 L[w]:=q0[w]+||w||_2^2/8 >= ||w||_2^2/10.                (1)

Here w is ANY complex physical L2(dt) class supported in an interval of
length1, with finite ORIGINAL parity-one gamma energy. No oddness, H1
ratio, Fourier cutoff, finite sine span or weighted norm is assumed.
All intervals, including translated intervals, are covered by the same
constants. Null-set choices of representatives and interval endpoints
have no effect on any of the forms below.

Use the actual character chi3=(0,1,-1), conductor3, primitive,
nonprincipal, gamma parity1. It has NO zeta/principal pole correction.
With the antilinear-first physical correlation and angular transform put

 E(w)=integral_R |w(t)|^2 dt,
 C_w(r)=integral_R conjugate(w(t))*w(t+r)dt,
 W(z)=integral_R w(t)exp(i*z*t)dt,
 k(r)=exp(-3r/2)/(1-exp(-2r)), r>0,
 Gamma(w)=integral_(r>0) k(r)||w(.+r)-w||_2^2 dr,
 c3=log(3/pi)+psi(3/4), w2=log2/sqrt2,
 q0[w]=c3 E(w)+Gamma(w)+2w2 Re C_w(log2).                 (2)

The PLUS sign in the last term is chi3(2)=-1 inserted into the
source's NEGATIVE doubled prime sum. This is not an absolute-value
prime replacement. For any supported interval of length d, C_w(r)=0
for r>=d, including equality by null overlap. For d=1 all native atoms
except n=2 vanish: n=3 is ramified, and log n>1 for n>=4. Thus (2) is
the actual ordinary, single-interval restriction of the 458-atom
radius-four source, not a new arithmetic source. It does NOT assert
that an odd test on the TWO intervals (-4,-3) and (3,4) has one atom.
The full odd edge block and all365 new reflected atoms return in §7.

For J(b)=integral_R b(xi)|W(xi)|^2 dxi/(2pi), Plancherel gives

 q0[w]=J(s0),
 s0(xi)=A(xi)+sqrt2*log2*cos(xi*log2),
 A(xi)=log(3/pi)+Re psi(3/4+i*xi/2).                       (3)

Indeed, expand k(r)=sum_(j>=0) exp(-a_j r), a_j=3/2+2j.
Tonelli on nonnegative squared differences and physical Plancherel give

 Gamma(w)=J(g), g(xi)=sum_(j>=0)
                     2xi^2/[a_j(a_j^2+xi^2)]
                  =Re psi(3/4+i*xi/2)-psi(3/4).           (4)

The series tail is locally bounded by a constant times sum a_j^(-3).
It defines a finite continuous nonnegative function on every compact
frequency interval. The digamma equality follows either from its
convergent difference series or by substituting u=2r into its integral.
No gamma component, small-shift limit or frequency tail is removed.
Equation (3) is valid for EVERY finite-Gamma input by (4) and the
bounded correlation multiplier, not only for smooth functions.

Translation by a sends W(z) to exp(i*a*z)W(z), preserves E, Gamma,
correlations and q0, and leaves W(z)W(-z) unchanged even for nonreal z.
We can therefore center the original interval at zero, obtaining
support [-1/2,1/2]. Throughout |Im z|<=1/2, Cauchy--Schwarz gives

                    |W(z)W(-z)|<=exp(1/2)E<2E.           (5)

The underlying mathematical types are the supported physical L2 Hilbert
space, its dense finite-Gamma form domain with norm
(E+Gamma)^(1/2), real smooth compact initial tests, the actual completed
zero divisor with integer multiplicities, a finite signed compact
convolution measure, and the finite exact parameter/proof syntax.
Their coverage and representable-data coding interfaces are in §9.

## 2. A genuine compact filter with no new local arithmetic atom

Use the SAME concrete filter as the current radius-four LowFilter:

 M=19000, K=1425, h=153/2000000000, eps=10^(-40), c=1003/1000,
 t(z)=sinc(h*z)^2,
 P(z)=sum_(j=K)^M choose(M,j)t(z)^j(1-t(z))^(M-j).         (6)

Let eta be uniform probability on [-h,h], mu=eta*eta. The finite real
even signed measure

 nu=sum_(j=K)^M choose(M,j) mu^{*j}*(delta0-mu)^{*(M-j)}

has transform P, mass P(0)=1, finite total variation, and support radius
2Mh=2907/1000000. This constructs the filter, rather than assuming an
entire-function support theorem. Positivity of nu is NOT asserted.
For centered real w in C_c^infinity(-1/2,1/2), v=w*nu is real smooth
compact and has support radius <=502907/1000000. Its total width is
502907/500000=1.005814<log4, since log2>693/1000.
Thus v has precisely the SAME sole nonzero local source atom n=2;
n=3 remains ramified and all n>=4 have zero correlation. The finite
derivatives of v are L2, and
||v(.+r)-v||^2<=min(r^2||v'||^2,4||v||^2) proves finite Gamma on the
ENTIRE positive r-domain. No lost support slack or prime tail is hidden.

For clarity the full quantitative filter laws consumed here are:

 0<=P(xi)<=1 for real xi;
 P(xi)>=1-eps for |xi|<=30000000;
 |P(z)|<c on |Im z|<=1/2;
 |P(z)|<c*eps there when |Re z|>=Hsafe:=100000000/3-1;
 |P(z)|^2<=c^2[41/(h|Re z|)^2]^2850 on the far strip.     (7)

These are the current LowFilter's proved all-lobe laws, not a sampled
filter response. Its proof is recalled to specify the entire interface.
The alternating lower sinc polynomial through x^6 at459/200 gives
t>=21/200 below30000000. For |x|>=2.5499999, the alternating upper
polynomial to x^8 on the first lobe, the concave sine tangent at27/20
on [pi,5], and |sinc x|<=1/|x| beyond5 give |sinc x|<=11/50.
Also hHsafe>2.5499999. Binomial Chernoff with r=7/10,s=3/2 gives

 (1937/2000)^19000/(7/10)^1424<eps,
 (2049/2000)^19000/(3/2)^1425<eps.                         (8)

These are exact integer comparisons, respectively
1937^19000*10^1464<2000^19000*7^1424 and
2049^19000*2^1425*10^40<2000^19000*3^1425, recorded as replayed
finite rational guards in the consumed source. They are not substituted
for a universal analytic theorem. The binomial tail is monotone in its
real parameter by the common-uniform Bernoulli coupling.

The box integral gives |sinc z|<=exp(|Im z|) and
|sinc' z|<=exp(|Im z|)/2. On the strip the vertical difference in t
is <h. Thus R=|t|+|1-t| lies between1 and1+2h, with
R^M<=1/(1-2Mh)<c. The triangle inequality gives |P| bounded by R^M
times the binomial tail at p=|t|/R. In the stop region p<49/1000,
so (8) proves its entire complex-strip law. Finally
|t(z)|<=exp(h)/(h|Re z|)^2 and the factorial-moment bound
Pr(X>=K)<=choose(M,K)p^K, with choose(M,K)<40^K and40exp(h)<41,
prove the LAST law of(7). This decreasing law controls infinitely many
far annuli; a constant stop bound repeated infinitely often would not.

## 3. Nonodd individual explicit formula, derived before its use

The native CompactFilterReturn states its negative-witness application
for REAL ODD inputs. We do not silently extend that declaration. For
real smooth compact v the autocorrelation C_v is REAL EVEN, regardless
of whether v is odd. Its positive angular transform is

                     H(z)=V(z)V(-z).

It is even entire and decreases faster than every inverse power on
each fixed horizontal strip. Apply the individual primitive Guinand--
Weil explicit formula to this even autocorrelation. Here is the
source-normalization derivation. For the ACTUAL entire completion

 Lambda3(s)=(3/pi)^((s+1)/2) Gamma((s+1)/2)L(s,chi3)

integrate its logarithmic derivative against
D(s)=H((s-1/2)/i), which satisfies D(1-s)=D(s). Residues are the
ACTUAL single-chi3 zero divisor, with original positive multiplicities.
The primitive functional equation reflects the left contour into the
right one. Its two Euler logarithmic derivatives give the doubled
coefficient -2log(p)chi3(p^e)/sqrt(p^e) times C_v(log(p^e)); there is
no averaging or extra one-half. The conductor/gamma terms give
log(3/pi)+Re psi(3/4+i xi/2) under dxi/(2pi), by r=2u in the
digamma difference integral, precisely (3)--(4). The entire primitive
nonprincipal completion contributes NO pole term.

All contour limits are justified: smooth compact autocorrelation gives
rapid strip decay; the classical O(Y log(3(Y+2))) zero count permits
heights avoiding zeros and yields an absolutely convergent residue sum.
The Euler expansion is used only on its absolutely convergent right
line before reflection. This is the standard individual explicit
formula BEFORE any family average or GRH-dependent density assertion;
compare Fiorilli--Miller, Algebra Number Theory9(2015),13--52,
DOI10.2140/ant.2015.9.13, proof of Proposition3.1, individual formula
in section3. Thus the extension from odd v has been proved using its
real even autocorrelation, not assumed as an interface premise.

Writing z=(rho-1/2)/i for completed zeros, (2),(6) now give exactly

 J(s0 P^2)=Q_chi3(v)=sum_(z in Z3) m_z W(z)W(-z)P(z)^2.  (9)

At an UNKNOWN nonreal z the product in(9) is NOT an absolute square.
For real z and real w it IS |W(z)P(z)|^2. The use of real initial
tests in this step is essential; complexification is justified in §6.

## 4. Complete signed zero tail and the local low-piece bound

Euler nonvanishing, nonvanishing on the whole line Re s=1, and the
primitive functional equation put every completed zero in0<Re s<1,
equivalently |Im z|<1/2. Trivial L-zeros are not inserted as completed
zeros. For real sigma>0 the paired series
sum_(k>=0)((3k+1)^(-sigma)-(3k+2)^(-sigma)) is positive. It converges
locally normally for Re s>0 by the integral difference bound and
agrees with L(s,chi3) by continuation. Thus there is no real zero;
no zero at ordinate0 is excluded merely by convention.

Platt, arXiv:1305.3087v1, Theorem7.1, verifies primitive odd q<=400000
up to max(10^8/q,3.75*10^7/q+200). For q=3 use Hsafe one unit inside
10^8/3. Reality supplies the negative-height reflection. Every actual
zero with |Re z|<=Hsafe is therefore on the critical line and its
term in(9) is nonnegative. This published computer-assisted finite
verification, not GRH for unverified zeros, is the input.

Bennett--Martin--O'Bryant--Rechnitzer, arXiv:2005.02989v1, Theorem1.1,
counts BOTH signs and ALL multiplicities and gives
N(Y)<=Ylog(3(Y+2)) for Y>=20, with its explicit error bound absorbed
as in CompactFilterReturn. Hence the near unknown window
Hsafe<|Re z|<=10Hsafe contains fewer than10^10 zeros. The j-th far
annulus10Hsafe*2^j<|Re z|<=20Hsafe*2^j contains fewer than
10^9*2^j*(22+j), for EVERY integer j>=0. The annuli are disjoint
with endpoints assigned once and exhaust the whole unknown divisor.

By(5),(7) the ABSOLUTE near contribution is less than
2*c^2*10^10*10^(-80)E<10^(-67)E. For the far region use
h*10Hsafe>25,41/625<1/15. Its complete sum is bounded by

 10^12*15^(-2850) sum_(j>=0)(22+j)2^(-5699j) E
 <23*10^12*15^(-2850)E<10^(-67)E.                         (10)

The sum follows from sum r^j=1/(1-r) and sum j r^j=r/(1-r)^2;
r=2^(-5699)<1/1024 makes it less than23. The last comparison is
the exact guard23*10^79<15^2850. Thus all unobserved complex zeros,
both signs and every multiplicity, are bounded absolutely, giving

                  J(s0 P^2)>=-10^(-66)E.                (11)

No finite passing zero set has been promoted to a universal zero theorem.

## 5. The entire complementary multiplier and local coercivity

The elementary digamma value psi(3/4)=-EulerGamma+pi/2-3log2 and
log3>1, log pi<6/5, EulerGamma<1, pi>3, log2<7/10 give c3>-9/5.
Equation(4) gives A>=c3>-2. Also sqrt2<10/7 and log2<7/10 give
sqrt2*log2<1. Consequently s0>=-3 on the ENTIRE real line.

For completeness the high comparison retains the original conductor
and gamma parity. Binet's formula for z=3/4+iy gives
Re psi(z)>=log y-3/(8y^2)-1/(18y): the full positive Binet moment
integral_0^infinity t/(exp(2pi t)-1)dt=1/24 and
|t^2+z^2|>=3y/2 bound its correction. With y=|xi|/2,

 A(xi)>=log|xi|+log(3/(2pi))-3/(2xi^2)-1/(9|xi|)
       >=log|xi|-3/4 for |xi|>=100.                       (12)

Here log(3/(2pi))>log(21/44)>-149/200. To verify the latter with
no numerical logarithm oracle, take u=23/65 in log(44/21)=2atanh u.
Its first three terms plus the ENTIRE positive tail majorant are
2(u+u^3/3+u^5/5)+2u^7/[7(1-u^2)]<149/200. The remaining Binet
correction at100 is <1/200. These are exact rational comparisons.
Thus s0>=log100-7/4>0 for EVERY |xi|>=100. No high-frequency
truncation or pointwise positivity below100 is asserted.

Below100, (7) gives0<=1-P^2<=2eps; above100 its product with s0
is nonnegative. Therefore the FULL complementary integral satisfies

 J(s0(1-P^2))>=-6*10^(-40)E.                             (13)

Equations(11),(13) and the identity1=P^2+(1-P^2) prove
q0>=-(6*10^(-40)+10^(-66))E>-10^(-39)E. Adding E/8 gives(1),
with a strict margin above E/10. Positivity here came from a SIGNED
explicit-formula head plus an absolutely paid entire tail, not from
positive coverage weights or reference heat.

## 6. Every finite-Gamma physical input and the actual local heat

The real proof initially used C_c^infinity in the open interval.
The multiplier s0 P^2 is bounded: it is continuous on compact sets,
s0=O(log(2+|xi|)), and the real far law in(7) makes its product
decrease to zero. Therefore its bounded quadratic form is continuous
in ordinary physical L2. Density of real C_c^infinity extends(11)
to ALL real L2 supported in the interval, without assuming that an
unbounded gamma form is L2-continuous. For a real finite-Gamma input
(3)--(4) hold by Tonelli, and its complementary integral is absolutely
integrable since Gamma is finite and the other terms are bounded.
The pointwise proof of(13) applies unchanged. This proves(1) for the
entire real finite-Gamma domain, including nonsmooth sharp cuts.

For complex w=u+i v the physical norm, Gamma and Re C split as the
sums of their real-component forms; u and v have finite Gamma by
the same nonnegative difference integral. Hence (1) follows by adding
the two real inequalities. We never use complex W(z)W(-z) as a
nonnegative verified-zero value. The norm remains physical dt.

On H_I=L2(I,dt;Complex), extended by zero, let D_I={Gamma<infinity}.
It is dense because it contains C_c^infinity(I). It is complete in
E+Gamma by the weighted Fourier representation(4), since support
in I is a closed L2 condition. Thus Gamma is a densely defined closed
nonnegative form. Its correlation term is the bounded selfadjoint
compression of (tau_log2+tau_-log2)/2; its norm is at most1. The
constant and prime parts are bounded form perturbations. Consequently
L is a genuine closed selfadjoint lower-semibounded physical form.
The representation theorem defines its actual selfadjoint operator
mathsf L_I>=I/10, with EXACT form-generator return

 q0[w]=||mathsf L_I^(1/2)w||^2-E(w)/8, w in D_I.          (14)

Its genuine spectral heat S_I(t)=exp(-t mathsf L_I), t>=0, obeys
S(0)=I, S(t+s)=S(t)S(s), strong continuity and
||S(t)||<=exp(-t/10). On the operator domain its derivative at zero
is -mathsf L_I; (14) returns this heat to the arithmetic source.
Also mathsf L_I^(-1)=integral_0^infinity S_I(t)dt in operator norm,
with whole tail after T bounded by10exp(-T/10). Translation is a
physical unitary intertwining these operators on all length1 intervals.
No Markov mass law or entrywise positivity is claimed for this heat.

## 7. Positive reflected gamma with its entire rank tail; actual m11

Let H1=L2((3,4),dt;Complex), g its ordinary zero extension, and O v
its odd extension on the two edge caps, as in EdgeSchur. Then
E(Ov)=2||v||^2. Splitting the translation correlation exactly gives

 Gamma(Ov)/2=Gamma(g)+H_gamma[v],
 H_gamma[v]=integral_3^4 integral_3^4
                k(x+y) conjugate(v(x))v(y)dxdy.           (15)

There is NO factor2 missing: Gamma contains -2Re C, odd correlation
is2C_g minus the reflected correlation, and normalization is Gamma/2.
Since x+y>=6, expand its entire kernel into exponentials. With
e_j(x)=exp(-a_j x), a_j=3/2+2j, this constructs the ACTUAL operator

 H_gamma=sum_(j>=0) |e_j><e_j| >=0,
 H_gamma[v]=sum_(j>=0)|integral_3^4 e_j(x)v(x)dx|^2.       (16)

The series converges in trace norm, since
||e_j||^2=(exp(-6a_j)-exp(-8a_j))/(2a_j). For EVERY J>=0 its
ENTIRE unobserved rank tail has the explicit bound

 ||sum_(j>=J)|e_j><e_j|||_trace
 <=exp(-6a_J)/[2a_J(1-exp(-12))].                         (17)

Uniform absolute kernel convergence or this positive trace sum proves
all interchanges in(15)--(16), for EVERY L2 v by Cauchy--Schwarz.
This positivity does not depend on choosing real v or a finite rank.

Let Nnew be the ACTUAL365 native nonramified prime powers404<=n<=2980,
with n=p^e, w_n=log(p)/sqrt(n)>0, beta_n=chi3(n) in{-1,1}.
Their exact enumeration is in RadiusFourInventory; all have6<log n<8.
For r=log n define the actual reflected edge form

 R_n[v]=Re integral_max(3,r-4)^min(4,r-3)
                          conjugate(v(x))v(r-x)dx.

The exact original shifted edge diagonal is

 m11[v]=L[g]+H_gamma[v]+sum_(n in Nnew) w_n beta_n R_n[v]. (18)

The ordinary same-side prime is ONLY n=2, already in L; old atoms
4<=n<=403 have zero edge diagonal. ALL365 signed reflected terms
remain in(18); neither their signs nor their integration masks are
replaced by positive weights. Equation(1) proves the genuine joint
archimedean-plus-native2 subleaf L>=I/10. Equations(16)--(17) prove
the extra reflected gamma contribution nonnegative with full tail.
They do NOT prove that the signed365-term sum is nonnegative.

The actual bounded mixed block is still
B=B_gamma+sum_native458 w_n beta_n(R_log n-S_log n)
on the original physical core/edge spaces, with exactly the partial
translation/reflection masks and gamma kernel of EdgeSchur. All110
new mixed reflected atoms and all255 purely edge atoms are retained.
The established core A0>=3I/40 has its stated written computer-assisted
radius-three input. The exact first remaining sign is

 m11[v]>=<Bv,A0^(-1)Bv> for EVERY v in its entire form domain. (19)

Only if(19) is proved does completing the square with the actual
core inverse return Q4(f)>=-E(f)/8 to EVERY original Admissible test.
The stronger easy scalar inverse replacement was refuted in EdgeSchur;
the successful LOCAL inverse bound10 does not replace A0^(-1) in(19).
Thus (1) is a concrete advance inside this consumer and not a claim
of its still-open arithmetic coupling sign.

## 8. Evidence, comparison and original RH/GRH return

Consumed exact source SHA256 identities:
 RadiusFourLowFilter:
 fc0c1b0520ac9df4f4941e7e529182e121add75237e6b69296e063136738070b;
 RadiusFourEdgeSchur:
 5ad8bd0e1708a3daa3801408d8ebbcc45033a83d49584bce7ac181fc86ec9a7f;
 RadiusFourInventory:
 ac13e0400afcb7f50c7959d4defebdca3c05bfd15f3db868e24c37c0625f6a54;
 DirichletCompactFilterReturn:
 73b3339a6012a1addba52c386f13c8fafc62cd7ddc8f73894bb21d2479c9ce89.

The direct source argument above is WRITTEN ANALYSIS. It consumes the
published Platt finite zero verification and the explicitly recorded
exact filter guards; these evidence roles remain separate. It does not
freshly replay that published verification or infer kernel proof from
comments. The Lean declarations below prove ONLY finite rational
parameters, scalar budgets and a concrete finite-data coding roundtrip
when actually compiled. Until that happens they retain NOT_RUN status.
Independent human review and complete universal analytic formalization
are NOT_RUN. No numerical sampling is an input to(1).

Primary sources: D. Fiorilli and S. J. Miller, the individual formula
in the proof of Proposition3.1 of Surpassing the ratios conjecture in
the 1-level density of Dirichlet L-functions, Algebra Number Theory9
(2015),13--52, https://msp.org/ant/2015/9-1/ant-v9-n1-p02-p.pdf;
D. Platt, arXiv:1305.3087v1, Theorem7.1;
M. A. Bennett, G. Martin, K. O'Bryant, A. Rechnitzer,
arXiv:2005.02989v1, Theorem1.1; NIST DLMF5.9.15--16.
The individual explicit formula is used before family averaging;
no GRH-dependent conclusion of the density paper is an input.

Mathematical comparison: this uses the same compact-filter/zero-tail
foundation as LowFilter, not an independent second proof of those
inputs. The distinct consumer is the ordinary single-edge operator,
whose source has one prime atom by width, followed by the exact
positive reflected gamma return. The full458-atom pointwise scalar
symbol has negative values, so scalar positivity cannot substitute
for(19). The local result cannot be applied independently to the two
caps and discard their new reflected primes or mixed core coupling.
The proof explicitly tests those potential false returns in(18)--(19).

The original GRH is Conditional.DirichletGRH: ALL complex Dirichlet
characters at every positive modulus, every open-strip zero on the
critical line; it is not Hecke or automorphic GRH. Primitive principal
is zeta with its separate pole-inclusive RH argument. Imprimitive
sectors return by their inducing Euler identity only after every
primitive sector is justified. This one chi3 local leaf proves neither
the radius-four stage, all higher chi3 stages, any other missing
primitive sector, the zeta stages, RH nor DirichletGRH. Replaying the
original chain stops EXACTLY at(19), then at the other cofinal stages.

## 9. Heat coverage and lossless representable proof data

Every type used here has the same explicit coverage interface on its
finite typed descriptions: natural codes enumerate context/source
declarations, supported Hilbert/form domain expressions, exact atom
lists, finite measures/filter syntax, divisor/annulus laws, rank-tail
laws, spectral operators/heat expressions and proof/evidence syntax.
Invalid descriptions have an explicit invalid status; no arbitrary
semantic L2 vector or zero ordinate is claimed finite-encodable.
Use pi_n=2^(-n-1), whose mass is1 and ENTIRE tail n>=J is2^(-J).
On summable coded branch states Kx=(x+(sum x)pi)/2 has
sum Kx=sum x and exact inverse x=2Kx-(sum Kx)pi. This gives actual
coverage and reconstructibility; positive coverage weights do not
supply the arithmetic sign(19). The physical spectral heat in §6 is
a separate actual instance with its proved source-return law(14).

Finite syntax is a tagged tree with stored dependent context, binder
domains and hypothesis references, literal integers/rationals, exact
source text identities and atom/sign masks, parameter/error/tail data,
and evidence statuses. Encoding a constructor tag followed by encoded
child lists, with lengths, and decoding recursively gives
decode(encode(x))=some x by structural induction; on its encoder image
the total decoder therefore obeys decodeImage(encode(x))=x.
Dependent typing is checked after syntactic reconstruction against
the STORED context, not forgotten by the codec. This is the existing
WeightedStage dependent-proof codec interface, not a newly claimed
implemented universal proof checker. The explicit packet below is a
genuine implemented finite instance reconstructing its ENTIRE payload,
including source and physical-normalization tokens. The richer syntax
retains the actual source bytes/identities, character/primitivity/
parity, interval/translation, physical metric, all parameters(6)--(8),
the entire zero divisor/count and annular law(10), complementary
infinite-frequency law(12)--(13), domain extension, source identities,
all rank-tail data(17), and unresolved signed365/B contract(19).
Finite recipes do not discharge these infinite-domain analytical laws;
they have been proved above exactly for the claimed local leaves.
No finite Euler certificate is required for this analytic local proof.
A future finite Euler branch would additionally need its actual
physical Gram/operator identity, signed entries and complete errors;
none is supplied or claimed to establish(19) here.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeSharpEdgeLocal

local instance : Encodable Char :=
  Encodable.ofLeftInverse Char.toNat Char.ofNat Char.ofNat_toNat

local instance : Encodable String :=
  Encodable.ofLeftInverse String.toList String.ofList
    (fun _ => String.ofList_toList)

def filterOrder : ℕ := 19000
def filterThreshold : ℕ := 1425
def boxRadius : ℚ := 153 / 2000000000
def filterEpsilon : ℚ := 1 / 10 ^ 40
def lowAllowance : ℚ := 1 / 10 ^ 66
def localLoss : ℚ := 6 * filterEpsilon + lowAllowance
def filterSupportRadius : ℚ := 2 * (filterOrder : ℚ) * boxRadius
def filteredHalfWidth : ℚ := 1 / 2 + filterSupportRadius

theorem filter_support_exact :
    filterSupportRadius = 2907 / 1000000 ∧
      filteredHalfWidth = 502907 / 1000000 := by
  norm_num [filterSupportRadius, filteredHalfWidth, filterOrder, boxRadius]

theorem filtered_width_slack :
    2 * filteredHalfWidth < (2 : ℚ) * (693 / 1000) := by
  norm_num [filteredHalfWidth, filterSupportRadius, filterOrder, boxRadius]

theorem complex_strip_prefactor :
    1 / (1 - 2 * (filterOrder : ℚ) * boxRadius) < 1003 / 1000 := by
  norm_num [filterOrder, boxRadius]

theorem near_unknown_budget :
    (2 : ℚ) * (1003 / 1000) ^ 2 * 10 ^ 10 * filterEpsilon ^ 2 <
      1 / 10 ^ 67 := by
  norm_num [filterEpsilon]

theorem low_zero_tail_budget : (2 : ℚ) / 10 ^ 67 < lowAllowance := by
  norm_num [lowAllowance]

theorem local_loss_guard : localLoss < (1 : ℚ) / 10 ^ 39 := by
  norm_num [localLoss, filterEpsilon, lowAllowance]

theorem shifted_local_margin : (1 : ℚ) / 10 < 1 / 8 - localLoss := by
  norm_num [localLoss, filterEpsilon, lowAllowance]

theorem binet_correction_guard :
    (3 : ℚ) / (2 * 100 ^ 2) + 1 / (9 * 100) < 1 / 200 := by
  norm_num

theorem conductor_log_guard :
    let u : ℚ := 23 / 65
    2 * (u + u ^ 3 / 3 + u ^ 5 / 5) +
      2 * u ^ 7 / (7 * (1 - u ^ 2)) < 149 / 200 := by
  norm_num

theorem local_high_sign_guard : (0 : ℚ) < 4 - 3 / 4 - 1 := by
  norm_num

theorem edge_inventory_retained : (93 : ℕ) + 365 = 458 ∧ 110 + 255 = 365 := by
  norm_num

/-- This finite packet stores source, norm, role, open consumer and exact
parameters together. It is not a coding of arbitrary semantic L2 functions. -/
def finiteProofData : (String × String × String) × (List ℕ × List ℚ) :=
  (("grwtsk/math",
    "12e3471d075669ca7ff09c41b8df7e5ab64f18fc;inspected=445401c9714cafb94ff619d71be0195f017ac4bc;noe=7376f433ae7573f7c02d47facb799337de6e0215",
    "chi3;primitive-nonprincipal;parity1;physical-L2-dt;angular-dxi/(2pi);width1;finiteGamma;local-leaf-written;full365-and-B-Schur-sign-OPEN;universal-Lean-NOT_RUN"),
   ([3, 1, 4, 3, filterOrder, filterThreshold, 2850, 458, 365, 110, 255],
    [0, 1, -1, 1 / 2, boxRadius, filterEpsilon, lowAllowance, localLoss,
      filterSupportRadius, filteredHalfWidth, 1003 / 1000,
      100000000 / 3 - 1, 30000000, 21 / 200, 49 / 1000,
      7 / 10, 3 / 2, 1 / 8, 1 / 10, 3 / 40]))

theorem finiteProofData_roundtrip :
    Encodable.decode (Encodable.encode finiteProofData) = some finiteProofData :=
  Encodable.encodek finiteProofData

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeSharpEdgeLocal
