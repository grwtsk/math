/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors

Source baseline: grwtsk/math 9404b5698d0da5ee97d289a830f76ab75e3ef84f.
Inspected current source: 654cefad38292ca96e54439902602e823382103a.
The consumed ComplementTail, StageChain and CompactFilterReturn files are
unchanged between these two revisions. Canonical Noe proof-automation
instructions were read in grwtsk/noeaaeue at
7d296238ef384288431b9c2b8c876349e6aa2554. No Noe execution was dispatched.

Primary inputs: D. J. Platt, Numerical Computations Concerning the GRH,
arXiv:1305.3087v1, Theorem 7.1; M. A. Bennett, G. Martin, K. O'Bryant
and A. Rechnitzer, Counting Zeros of Dirichlet L-Functions,
arXiv:2005.02989v1, Theorem 1.1; NIST DLMF 5.9.15 and 5.9.16.
The individual primitive compact explicit formula is the source-normalized
argument in WeilDirichletCompactFilterReturn, section 1, also compared
there to Fiorilli--Miller, Low-lying zeros of Dirichlet L-functions,
author manuscript June 18, 2012, equation (2.2), before family averaging.

WRITTEN_ANALYTIC_PROOF / HUMAN_INDEPENDENT_REVIEW_NOT_RUN
EXACT_SCALAR_ARITHMETIC_PASS_AT_RECORDED_SCRATCH_SCOPE
LEAN_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN
TRANSITIVE_AXIOM_AUDIT_NOT_RUN
-/

import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeComplementTail

/-!
# A compact low filter and the exact remaining conductor-three annulus

This file gives a complete WRITTEN proof of a new whole low-source bound,
then restricts it to the EXISTING `finiteAnnulusValue` domain with the
correct inequality signs. The declarations below are definitions and
finite rational lemmas only. They do not formalize the universal analytic
proof, the published finite zero verification, or the remaining annulus
sign. No desired analytic conclusion is introduced as an axiom or field.

## 1. Original types, normalization and consuming branch

Use `DirichletStageChain.Admissible modThreeQuadratic 3 f`, not a new
test carrier. Thus f is REAL, odd, C2, compactly supported in [-3,3],
has finite PHYSICAL Lebesgue L2 mass, and is in the actual parity-one
gamma form domain. Set

  E = energy (DirichletStageChain.liftReal f) = integral |f(t)|^2 dt,
  F(z) = integral f(t) exp(i*z*t) dt,
  J_D(w) = (1/(2*pi)) integral_D w(xi)|F(xi)|^2 dxi.

This is the native positive-angular Fourier convention. All multipliers
below are even, so a negative-angular convention would give the same
integrals, but no convention is changed in the definitions.

Reuse `ConductorThreeComplementTail.gammaSymbol`, `primeSymbol`,
`sourceMultiplier`, `spectralFilter`, `criticalAnnulus`, `fourierMass`
and `finiteAnnulusValue`. Write A, P_arith, m, P_H for them:

  A(xi) = log(3/pi) + Re psi(3/4+i*xi/2),
  P_arith(xi) = 2 sum_(n=p^e<=403,p!=3)
        log(p)/sqrt(n) chi3(n) cos(xi*log n),
  h=1/3000000, V(xi)=1-sinc(h*xi)^12,
  m=V*(A-P_arith),
  M_H=7990, K_H=2820, h_H=1/2000000000,
  P_H(xi)=sum_(j=K_H)^M_H choose(M_H,j)
       t_H(xi)^j(1-t_H(xi))^(M_H-j),
  t_H(xi)=sinc(h_H*xi)^2.

The character is the actual real odd primitive nonprincipal character
modulo 3, of conductor 3 and gamma parity 1. The fixed prime inventory
contains 93 nonzero unramified prime powers. There is no principal pole.
The infinite gamma term is not replaced by a finite numerical matrix.

Let B_k be the source's symmetric radius-100 bands about positive and
negative c_k, where

  c_0=5941908399/16,
  c_1=7870097212203/10000,
  c_2=371368841677/1000.

Put B=B_0 union B_1 union B_2 and

  Dprime={xi:10000<|xi|<3500000000} outside B.

This is EXACTLY `criticalAnnulus`. Endpoints can be assigned to either
side because all integrations are against Lebesgue measure and the
endpoint sets are finite. This does not permit dropping intervals.

The old unresolved obligation was

  finiteAnnulusValue f = J_Dprime(m*P_H^2)
                 >= -(98136331/500000000) E.                     (A)

This file proves the low part and reduces (A) to the following genuinely
smaller, still UNPROVED, source sign:

  J_Dscan(m*P_H^2*(1-P_L^2))
                 >= -(97136331/500000000) E,                     (B)
  Dscan={xi:30000000<|xi|<3500000000} outside B.

All claims are for EVERY original Admissible f. No finite family of f's
is substituted for that quantifier. The exact branch path is

  Admissible chi3 3
    -> finiteAnnulusValue and missing (B)
    -> original complementary bound (7)
    -> PrimitiveStageLower chi3 hp hn 2
    -> the appropriate entry of SmallConductorStages
    -> cofinalDirichletGRH.

Here `cofinalDirichletGRH` is a branch identifier, not an invented Lean
declaration: its actual consumer is
`DirichletStageChain.dirichletGRH_of_source_chains`. That consumer still
needs the SEPARATE zeta RH source, PrimitiveNegativeWitness, and EVERY
primitive nonprincipal character's cofinal SmallConductorStages. The
GRH family is precisely `Conditional.DirichletGRH`: for every positive
modulus N, every complex Dirichlet character modulo N, and every actual
L-function zero with 0<Re(s)<1, Re(s)=1/2. Principal primitive means
zeta; imprimitive return uses the inducing-character Euler identity.
Hecke, general Dedekind and automorphic families are not covered.

## 2. Construct the low filter and retain its physical support

Take

  H=100000000/3, Hsafe=H-1,
  M_L=40000, K_L=3000, h_L=153/2000000000,
  t_L(z)=sinc(h_L*z)^2,
  P_L(z)=sum_(j=K_L)^M_L choose(M_L,j)
              t_L(z)^j(1-t_L(z))^(M_L-j).

On the real axis t_L is in [0,1], and P_L is an ordinary binomial
upper-tail probability, so 0<=P_L<=1. The same holds for P_H.

The sinc factor is the Fourier transform of a probability box. Thus
t_* is the transform of the convolution of TWO boxes of radius h_*.
Each degree-M polynomial monomial in t_* and 1-t_* is the transform of
a finite real even signed measure of radius at most 2M*h_*; this follows
by expanding products of that two-box measure and delta_0 minus it.
Consequently both filters have actual compact signed-measure instances,
not hypothetical positive spectral projections.

Let v be f convolved with both signed measures. Let mu be the wide
SIX-box probability measure of box radius h, and let S have law mu.
For each S put u_S=(delta_S-mu)*v. This auxiliary test is REAL compact
C2, not necessarily odd. Its physical radius is at most

  Tlow=3+2M_L*h_L+2M_H*h_H+6h
      =300612999/100000000=3.00612999.                            (C)

The exact scalar guard is exp(2*Tlow)<409. The possible new integers
404..408 are 2^2*101, 3^4*5, 2*7*29, 11*37, 2^3*3*17, respectively.
None is a prime power, so each new von Mangoldt coefficient is ZERO.
For a supported test C_u(r)=0 when r>=2*Tlow, including equality by the
null overlap. The actual primitive arithmetic source therefore still
has precisely the original active 93 powers through 403. This is the
source-return law that permits (C). It does NOT apply the earlier
radius-3.00001 physical Schur theorem to a radius-3.00613 test.

Convolution by finite signed measures and translation preserve compact
C2 regularity and physical L2. For every such u,

  ||u(.+r)-u||_2^2 <= min(r^2||u'||_2^2,4||u||_2^2).

The original parity-one gamma kernel is O(1/r) at zero and decreases
exponentially at infinity. These estimates prove its entire required
form-domain integral finite. They are uniform over S in [-6h,6h].

The individual primitive compact explicit formula of CompactFilterReturn
applies to every REAL compact C2 test u as a product, without needing
oddness:

  Q_chi3(u)=sum_(z in Z_chi3) mult(z)*U(z)*U(-z),
  z=(rho-1/2)/i.                                                (D)

The compact formula is obtained there from the primitive functional
equation and residue theorem, equivalently the unaveraged explicit
formula with autocorrelation C_u. The product test is symmetric in
z and -z; the prime coefficient is Re chi3(n). For real u and real
z, U(-z)=conj U(z). Hence verified critical-line terms in (D) are
NONNEGATIVE even though u_S need not be odd. There is NO factor 1/2
on the individual-character divisor. The character, conductor, gamma
parity, source norm and source inventory match the original ones.

On the real Fourier line, averaging the genuine signed shifts gives

  E_S |exp(i*xi*S)-muhat(xi)|^2 = 1-muhat(xi)^2 = V(xi).

The gamma and finite-prime Fourier source therefore satisfies the exact
variance identity

  E_S Q_chi3(u_S) = J_R(m*P_H^2*P_L^2).                         (E)

One can verify the Fourier source directly: for parity one the jump
energy multiplier is
2 integral_0^infty exp(-3r/2)/(1-exp(-2r))*(1-cos(xi*r))dr,
which is Re psi(3/4+i*xi/2)-psi(3/4) by the digamma difference integral.
The remaining constant gives log(3/pi)+psi(3/4), and Plancherel gives
the stated A. Each real correlation shift contributes cos(xi*log n),
with exactly the source coefficient. Finite signed kernels have finite
total variation; C2 decay and these gamma-domain estimates justify this
real-line identity. The zero side retains U(z)U(-z), not |U(z)|^2 at
unknown complex ordinates. Its full summable majorant is proved next.

## 3. Published finite-zero input, with exact count carrier

Platt, arXiv:1305.3087v1 Theorem 7.1, verifies primitive characters of
modulus q<=400000 through max(10^8/q,3.75*10^7/q+200) for odd q.
For q=3 this is H. Use the strictly interior Hsafe=H-1, so no endpoint
interpretation of that published verification is needed. The theorem
is imported at its stated rigorous finite scope; it is not rerun here.
Reality supplies the negative-ordinate reflection. There is no real
nontrivial zero of chi3: for real sigma>0,

 L(sigma,chi3)=sum_(k>=0)((3k+1)^(-sigma)-(3k+2)^(-sigma))>0.

The paired terms are positive and O_sigma(k^(-sigma-1)); the paired
series converges locally normally on Re(s)>0 and agrees with L on
Re(s)>1, hence with its continuation. Thus every zero with
|Im rho|<=Hsafe is verified critical-line, including the zero-ordinate
case by exclusion.

BMOR, arXiv:2005.02989v1 Theorem 1.1, counts BOTH ordinate signs,
with their original multiplicities, in 0<Re(rho)<1. For Y>=20 its
conditions q>1, Y>=5/7 and ell=log(3(Y+2)/(2*pi))>1.567 hold. Put
L0=log(3(Y+2)). Their main term is <=(Y/3)L0; their logarithmic error
is <=3L0; the remaining constant for odd chi3 is 1/4-1/2<0.
Since Y/3+3<Y for Y>=20, their result gives

  N(Y,chi3) <= Y log(3(Y+2)).                                   (F)

The primitive completed divisor in (D) is the SAME divisor: Euler
nonvanishing, nonvanishing on Re(s)=1, and the primitive functional
equation put all its zeros in the OPEN strip. In the current native
library the whole line fact is `LFunction_ne_zero_of_one_le_re`;
nonvanishing only at the real point 1 would not suffice. Thus
|Im z|<1/2; no strip-boundary divisor is silently omitted.

In particular N(10Hsafe)<10^10. For EVERY integer j>=0, the entire
annulus 10Hsafe*2^j<|Re z|<=20Hsafe*2^j contains fewer than

  10^9*2^j*(22+j)                                               (G)

zeros with multiplicity. Indeed 20H<10^9,
3(20Hsafe*2^j+2)<=66H*2^j, exp(22)>66H and log(2)<1.
All endpoints are assigned once; (G) includes every unobserved annulus.

## 4. All-lobe sinc and exact binomial estimates

For x>=x0=2.5499999, |sinc x|<=11/50. On [x0,pi], positive sinc is
decreasing, and its alternating upper polynomial through x^8/9! is
<11/50 at x0. On [pi,5], write u=x-pi. Concavity of sin on [0,pi]
gives its tangent bound at u0=27/20. Alternating Taylor guards give

 cos u0<11/50,
 sin u0-u0*cos u0<(11/50)*(157/50)<(11/50)*pi.

Thus sin u<=(11/50)(u+pi), proving the second interval. For x>=5 use
|sinc x|<=1/x<=1/5. Evenness covers negative x. This is an ENTIRE
real stop law, not just a first-lobe endpoint check.

Now h_L*Hsafe>x0. On the pass interval |xi|<=30000000 we have
h_L*|xi|<=459/200=2.295, and the alternating LOWER sinc polynomial
through -x^6/7! has square >21/200 there. Its value is positive, and
first-lobe monotonicity gives t_L>=21/200 throughout that interval.

For a Binomial(M,p) random variable X and r in (0,1), s>1,

 Pr(X<=K-1)<=r^(-(K-1))*(1-p+p*r)^M,
 Pr(X>=K)<=s^(-K)*(1-p+p*s)^M.                                 (H)

These follow from applying Markov to r^X and s^X, respectively; their
expectations are the binomial generating function. Monotonicity in p
is obtained by coupling M Bernoulli variables using the same uniforms.
Exact integer cross-multiplication in the companion checker proves

 (1-(21/200)+(21/200)*(7/10))^40000/(7/10)^2999 <10^-80,
 (1-(49/1000)+(49/1000)*(3/2))^40000/(3/2)^3000 <10^-80.

Writing eps_L=10^-80, we obtain the real pass law

  P_L(xi)>=1-eps_L  for |xi|<=30000000.                         (I)

To control the ACTUAL complex divisor, use the integral representation
of sinc. If |Im w|<=h_*/2, then
|sinc(w)|<=exp(|Im w|), |sinc'(w)|<=exp(|Im w|)/2. Integration
along the vertical segment from x=Re w yields

 |sinc(w)^2-sinc(x)^2| <=(h_*/2)exp(h_*)<h_*.

Let t=sinc(w)^2, t0=sinc(x)^2 in [0,1], R0=|t|+|1-t| and
p0=|t|/R0. The triangle inequality gives 1<=R0<=1+2h_*, and

 |P_*(z)|<=R0^M_* Pr(Binomial(M_*,p0)>=K_*).

The binomial expansion and choose(M,j)<=M^j give
(1+2h_*)^M<=1/(1-2Mh_*). Consequently the high filter obeys
|P_H(z)|<1001/1000 on the WHOLE closed half-width strip. The low
filter has the analogous bound 1007/1000. If |Re z|>=Hsafe,
p0<=|t|< (11/50)^2+h_L<49/1000. Apply (H) to obtain

  |P_L(z)|<(1007/1000)*eps_L                                   (J)

on the ENTIRE unverified region. On the real axis the prefactor R0 is
1, so in particular P_L(xi)<=eps_L whenever |xi|>=Hsafe.

For the infinite far tail, a constant stop error is insufficient.
Instead |sinc(h_L*z)|<=exp(h_L/2)/(h_L*|Re z|). The elementary
factorial-moment estimate
Pr(X>=K)<=E choose(X,K)=choose(M,K)*p^K, together with
choose(M_L,K_L)<(3M_L/K_L)^K_L=40^K_L and 40exp(h_L)<41, proves

 |P_L(z)|^2 <=(1007/1000)^2
              [41/(h_L*|Re z|)^2]^6000.                        (K)

At |Re z|>=10Hsafe, h_L*|Re z|>25 and 41/625<1/15. The full
polynomial tail (K), not a constant bound repeated infinitely, will
pay every annulus (G).

## 5. Full signed unknown-zero tail and the whole low-source result

For the ORIGINAL f, Cauchy--Schwarz on [-3,3] gives uniformly on the
closed half-width strip

 |F(z)F(-z)|<=6exp(3)E<126E.

The wide signed factor exp(i*z*S)-muhat(z) has modulus at most
2exp(3h), so the product of the two factors at z and -z has modulus
at most 4exp(6h)<5. Therefore the entire near unknown divisor
Hsafe<|Re z|<=10Hsafe has absolute contribution bounded by

 126*5*(1001/1000)^2*(1007/1000)^2*10^10*10^-160 E
                                                    <10^-145 E. (L)

For the far j-th annulus, (K), (G) and the same factors bound the
sum by 10^12*15^-6000*(22+j)*2^(-11999*j) E. The complete geometric
sum is <23, and exact integers give

  23*10^12*15^-6000 <10^-145.                                  (M)

This includes EVERY zero in EVERY outer annulus, both signs and all
multiplicities. It is uniform in S, so it also justifies the zero
sum and probability interchange. The finite verified head in (D) is
nonnegative. Equations (L), (M) give

 E_S Q_chi3(u_S)>=-10^-144 E.

Together with (E), this proves the following WRITTEN theorem:

  J_R(m*P_H^2*P_L^2)>=-eta E, eta=10^-144,                     (N)

for EVERY original Admissible chi3 3 test. This is not a GRH
assumption, and unknown off-line terms were paid by absolute values,
not falsely identified with positive real squares.

## 6. Upper bounds on removed regions: exact Dprime low deduction

The already source-bound finite arithmetic gives the COMPLETE scalar
prime half-mass <181/5, hence |P_arith(xi)|<362/5<74 for every real
xi. No sign of an individual prime cosine is assumed. Binet's formula
DLMF 5.9.15 with z=u+iv, u=3/4, gives

 psi(z)=log z-1/(2z)-2 integral_0^infty
            t/((t^2+z^2)(exp(2*pi*t)-1))dt.

Since |t^2+z^2|>=2u|v| and integral t/(exp(2*pi*t)-1)dt=1/24,
its last term has modulus <=1/(18|v|). Thus, for v=|xi|/2>0,

 Re psi(u+iv) <= log v+9/(32v^2)+1/(18v).

Together with the lower bound and the special value at zero, as checked
in ComplementTail, this gives A>=-2 globally, A<=log|xi|+1 for
|xi|>=100, and A nondecreasing in |xi|. The latter follows directly
from the digamma difference series: each term is
v^2/((n+u)((n+u)^2+v^2)), increasing in |v|. The elementary guards
exp(10)>10000, exp(21)>10^9 imply

 A<11 for |xi|<=10000, and A<22 for |xi|<=10^9.

Consequently the source satisfies m>=-76 everywhere; on the inner
interval s=A-P_arith<85; and m<=96 on |xi|<=10^9. The wide
variance obeys 0<=V<=2h^2*xi^2: indeed
1-sinc(h*xi)^12 <=6(1-sinc(h*xi)^2)<=2h^2*xi^2, the last
inequality being the two-independent-box second-moment bound.

Put mu_low=m*P_H^2*P_L^2. Restricting a whole-line LOWER bound
requires UPPER bounds on each removed part. They are as follows.

INNER: on |xi|<=10000, multiplication by factors in [0,1] gives
mu_low<=85*V<=17/9000. For negative m the same upper bound remains
valid. Thus its entire integral is at most (17/9000)E.

BANDS: all three B_k lie strictly above Hsafe and below 10^9 in
absolute frequency. By (J) on the REAL line, mu_low<=96*eps_L^2
there. The entire union costs at most 96*eps_L^2 E, charged ONCE
using Plancherel. No multiplication of this cost by the number of
bands or packets is needed.

OUTER: put R=3500000000, Y=8000000000. The previously constructed
high filter has P_H<=eps_H=10^-10 on the ENTIRE real |xi|>=R.
For R<=|xi|<=Y, exp(23)>Y gives m<=log Y+75<98, so
mu_low<=98*eps_H^2. For x=|xi|>=Y, t_H<=1/(h_H*x)^2 and the
binomial expansion gives P_H<=2^M_H*t_H^K_H. Since h_H*Y=4,

 P_H(x)^2 <= 2^(2M_H)*(h_H*x)^(-4K_H),
 P_H(Y)^2 <=2^(-6580), 6580=8K_H-2M_H.

The function (log x+75)*x^(-11280) decreases for x>=Y, because
its derivative has sign 1-11280(log x+75)<0. Therefore the ENTIRE
outer region has the uniform upper bound

 mu_low <=98*10^-20 <8*10^-11.                                (O)

This proves an integral upper bound without trying to sum infinitely
many copies of a constant pointwise stop error: Plancherel pays the
whole outer Fourier mass once. The same upper bound applies to
mu_high=m*P_H^2*(1-P_L^2).

Subtracting precisely these three UPPER bounds from (N) proves

 J_Dprime(mu_low)>=-c_low E,
 c_low=eta+17/9000+96*10^-160+8*10^-11 <1/500.                 (P)

The three sets partition the complement of Dprime up to null
endpoints. In particular a lower bound on a removed band would have
been in the WRONG direction for (P).

## 7. Frequencies below the scalar scan and the exact remaining budget

The real pass law (I) gives 1-P_L^2<=2eps_L below 30000000. From
m>=-76 we obtain

 J_(Dprime intersect {|xi|<=30000000})(mu_high)
                                      >=-152eps_L E.            (Q)

It is important to retain (Q); replacing it by zero would silently
discard a negative term. The exact scalar inequality is

 c_low+152eps_L <1/500.

Combining (P), (Q) with the EXACT multiplier identity
m*P_H^2=mu_low+mu_high now yields

 finiteAnnulusValue f >= J_Dscan(mu_high)-(1/500)E.              (R)

Since 98136331/500000000-97136331/500000000=1/500, (B) supplies
EXACTLY (A), without an unrecorded tiny error or a budget change.
This discharges the low-source portion of the original annulus
obligation; (B) itself remains unproved.

For a cover whose endpoint packets extend below 30000000 or above R,
the correct removed-piece UPPER costs are, respectively,
192eps_L E (using m<=96 below 30000000) and 8*10^-11 E from (O).
The stronger exact guard

 c_low+152eps_L+192eps_L+8*10^-11 <1/500                       (S)

shows that BOTH endpoint extensions may be paid within the same
reserve, ONCE over their union. This is not a license to charge every
packet separately or to remove interior bands for free.

All real source integrals above are absolutely integrable. Original
compact C2 f has F=O((1+|xi|)^(-2)), A=O(log(2+|xi|)), and the
prime sum is bounded. The filters are bounded on the real axis.
Thus restrictions, finite partitions and the displayed identities are
valid Lebesgue integral operations, not formal manipulations of
undefined signed integrals.

## 8. Exact packet masks are mandatory at B0, B1 and B2

The eps_L^2 upper cost on B controls ONLY mu_low. On those bands
1-P_L^2 is close to ONE, so it gives no small cost for mu_high.
For any full packet I and target set D,

 J_(I intersect D)(mu_high)=J_I(mu_high)-J_(I outside D)(mu_high).

A lower bound on J_I or on the removed term cannot upper-bound the
latter. A full-packet positive matrix can use positive anchors which
are deleted by a band mask; its masked matrix need not be positive.

There are exactly three justified ways to use a packet here:
(i) prove it is entirely inside Dscan;
(ii) freshly certify the actual masked physical head matrix;
(iii) prove and pay an UPPER bound on its removed part. In (ii), with
physical basis Phi_n, replace each head entry by

 integral_(s: c+s in Dscan) ell(s)*Phi_n(s)*conj(Phi_m(s)) ds/(2*pi).

The physical rank-tail bounds and disjoint-packet aggregation survive
restriction (norms decrease), but the finite head sign must be checked
for THIS masked matrix. Quadrature must split at the rational band
endpoints; the original smooth integrand remainder cannot be applied
across an indicator jump. If ell<=0 on the removed piece, then the
masked head is >= the full head in quadratic-form order, but this
requires that ACTUAL pointwise sign proof. It is not automatic.

For comparison, on a removed fragment A of these bands, original
physical Cauchy--Schwarz gives |F|^2<=6E and mu_high<=96, hence
J_A(mu_high)<=288*measure(A)/pi E<96*measure(A) E. This is a valid
upper bound, generally far too costly to ignore. B1 and B2 can be
reintroduced only by explicitly changing the decomposition and
removing their old separate paid costs. B0 is the actual complement
exclusion in the requested (7). No packet cover is certified here.

## 9. Heat coverage and lossless typed representable evidence

Reuse the exact typed finite-description interface in
`WeilDirichletCompactFilterReturn` and its native
`WeightedStage.dependentProofCodec`. For EVERY mathematical type
used here the descriptor retains its original carrier and binding
context: physical L2 with Lebesgue norm, compact C2 source tests,
actual primitive zero divisor with multiplicity and half-width strip,
finite signed measures, binomial polynomials, spectral integrals,
finite head matrices, and the five target branch identifiers in
section 1. A descriptor denotes source syntax, not an arbitrary real
function encoded by finitely many binary samples.

Extend the existing finite Packet record by retaining: both source
revisions; source declaration identities; exact chi3 table and parity;
Fourier and norm tags; M_L,K_L,h_L,H,Hsafe and M_H,K_H,h_H,h;
support radii and no-new-prime-power proof; published input identifiers
and endpoint scope; both Chernoff rational inequalities; every sinc
Taylor remainder; the complex-strip majorants; near-zero count and
error; the ENTIRE dyadic count/tail laws (G),(K),(M); domain masks and
their endpoints; eta,c_low and every reserve in (P)--(S); proof syntax,
shared source dependencies and distinct evidence statuses. Such data
are finite tagged products/lists/syntax trees, so are Encodable as in
the reused interface. The actual parameters above give a genuine
instance; no existence of an off-line zero is asserted.

Apply the existing dependent codec to Sigma Packet. Its law is
decode(encode x)=some x; on the encoder image the uniquely successful
decode gives decodeImage(encode x)=x. This preserves ALL fields,
dependent branch/context tags, source identities and error data.
Compression does not verify Platt's computation, prove (D), remove the
unobserved zeros, or create a proof of (B).

Heat has ONLY the role of exhaustive branch coverage. Enumerate every
valid finite description by its natural Encodable code, retaining
invalid codes with their status. Each actual description is reached
because decode of its encode returns it. Use pi_n=2^(-n-1), with
positive weights, total mass 1 and ENTIRE tail after J equal 2^(-J).
For summable x, Kx=(x+(sum x)pi)/2 preserves mass and
x=2Kx-(sum Kx)pi pointwise. The geometric sum and substitution prove
the coverage and source-return laws. The finite-description instance
x=c*pi+r with rational c and finitely supported rational r, and its
invertible k-step law, are exactly the existing CompactFilterReturn
instance. None of these positive coverage weights asserts a Weil
arithmetic sign. The random finite convolution used in (E) is a
different, explicitly constructed variance identity, not a spectral
heat semigroup or a finite Euler sign certificate.

## 10. Evidence, comparison and precise remaining mathematical gap

Written proof (C)--(N) uses published finite critical-line information
and pays the entire unverified divisor with explicit complex filters.
It is distinct from the physical Schur high-variance route, while
sharing the compact explicit formula, literal chi3 source, and the
already constructed high filter. It does not share an assumed sign
for the annulus. The outer monotone power bound supplies an independent
hostile check of the restriction signs. A positive full-packet matrix
without its mask has been identified as an invalid shortcut.

Standalone exact rational arithmetic PASS is recorded in:
low checker SHA256
b1b362a22dbf4f4f823e902b779c364688aefc326fc756134ce9cd4015dc55f5;
low canonical payload SHA256
3976f75eb5db4b7671209e77dfe78f46ef48298d05d4d9ec70793304fe626be8;
restriction checker SHA256
4152e4f35913bf174ec36bfd8838a8d01f3012fcfc66ecf9e431001993ff8825;
restriction canonical payload SHA256
3a8a7d9b977e8212bf6fe53963d7b4912b30d3dc70bbd3b998957123291dee84.
Canonical encode/readback passed for those exact scalar payloads.
They retain the finite parameters and guards, not an assertion that
their finite bytes replace the analytic proof or the published input.

The low checker performs exact integer comparisons for the two large
Chernoff fractions; rational Taylor guards for sinc and exp; support
and active-source checks; both-sign zero-count coefficients; complete
dyadic tail inequalities. The restriction checker binds both original
payload hashes and proves every rational reserve in (P)--(S).
This is exact standalone finite computation, not a new Lean receipt.
The finite Lean proofs below cover ONLY their displayed arithmetic.
Compilation, fresh kernel verification and transitive axiom audit of
this file are NOT_RUN. No independent human review is claimed. Agent
audits are mathematical feedback, not fabricated human acceptance.
Worldwide novelty is NOT_ASSESSED; the source proof and its exact
consumer are the claimed mathematical result.

The next exact missing lemma is (B) for every original Admissible f,
including an exhaustive source cover, every masked actual finite head
sign, and its uniform infinite physical tail. Neither a countable
certificate format nor finitely many passing packets supplies it.
Until (B) is proved the full chi3 radius-three stage remains open.
Until all cofinal character stages and the independent zeta branch
are supplied, RH and the stated all-Dirichlet GRH remain open here.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeLowFilter

open ConductorThreeComplementTail

/-- The constructed finite upper-tail probability polynomial. -/
def lowBinomialFilter (t : ℝ) : ℝ :=
  ∑ j ∈ Finset.Icc 3000 40000,
    (Nat.choose 40000 j : ℝ) * t ^ j * (1 - t) ^ (40000 - j)

def lowSpectralFilter (xi : ℝ) : ℝ :=
  lowBinomialFilter (Real.sinc (153 * xi / 2000000000) ^ 2)

/-- Original finite-annulus LOW part; no analytic sign is a field. -/
def finiteAnnulusLow (f : ℝ → ℝ) : ℝ :=
  (1 / (2 * Real.pi)) * ∫ xi in criticalAnnulus,
    sourceMultiplier xi * spectralFilter xi ^ 2 *
      lowSpectralFilter xi ^ 2 * fourierMass f xi

/-- Original finite-annulus HIGH part, retaining the low-filter complement. -/
def finiteAnnulusHigh (f : ℝ → ℝ) : ℝ :=
  (1 / (2 * Real.pi)) * ∫ xi in criticalAnnulus,
    sourceMultiplier xi * spectralFilter xi ^ 2 *
      (1 - lowSpectralFilter xi ^ 2) * fourierMass f xi

def scanAnnulus : Set ℝ :=
  criticalAnnulus ∩ {xi | 30000000 < |xi|}

/-- Its lower bound (B) is the outstanding mathematical obligation. -/
def scanHighValue (f : ℝ → ℝ) : ℝ :=
  (1 / (2 * Real.pi)) * ∫ xi in scanAnnulus,
    sourceMultiplier xi * spectralFilter xi ^ 2 *
      (1 - lowSpectralFilter xi ^ 2) * fourierMass f xi

def lowRestrictionPrice : ℚ :=
  1 / 10 ^ 144 + 17 / 9000 + 96 / 10 ^ 160 + 8 / 10 ^ 11

/-- Finite physical support arithmetic; the exponential guard is written above. -/
theorem low_support_exact :
    (3 : ℚ) + 2 * 40000 * (153 / 2000000000) +
      2 * 7990 / 2000000000 + 6 / 3000000 = 300612999 / 100000000 := by
  norm_num

theorem strict_interior_height :
    (153 / 2000000000 : ℚ) * (100000000 / 3 - 1) > 25499999 / 10000000 := by
  norm_num

theorem low_pass_endpoint :
    (153 / 2000000000 : ℚ) * 30000000 = 459 / 200 := by
  norm_num

theorem near_complex_probability_margin :
    (11 / 50 : ℚ) ^ 2 + 153 / 2000000000 < 49 / 1000 := by
  norm_num

theorem low_complex_factor_margin :
    (1 : ℚ) / (1 - 2 * 40000 * (153 / 2000000000)) < 1007 / 1000 := by
  norm_num

theorem high_complex_factor_margin :
    (1 : ℚ) / (1 - 2 * 7990 / 2000000000) < 1001 / 1000 := by
  norm_num

theorem no_new_prime_power_factorizations :
    404 = 2 ^ 2 * 101 ∧ 405 = 3 ^ 4 * 5 ∧ 406 = 2 * 7 * 29 ∧
      407 = 11 * 37 ∧ 408 = 2 ^ 3 * 3 * 17 := by
  norm_num

theorem inner_upper_price_exact :
    (85 : ℚ) * 2 * (1 / 3000000) ^ 2 * 10000 ^ 2 = 17 / 9000 := by
  norm_num

theorem all_band_endpoints_in_stop :
    (100000000 / 3 - 1 : ℚ) < 5941908399 / 16 - 100 ∧
    (5941908399 / 16 + 100 : ℚ) < 1000000000 ∧
    (100000000 / 3 - 1 : ℚ) < 7870097212203 / 10000 - 100 ∧
    (7870097212203 / 10000 + 100 : ℚ) < 1000000000 ∧
    (100000000 / 3 - 1 : ℚ) < 371368841677 / 1000 - 100 ∧
    (371368841677 / 1000 + 100 : ℚ) < 1000000000 := by
  norm_num

theorem far_power_exponent : 8 * 2820 - 2 * 7990 = 6580 := by
  norm_num

theorem outer_upper_relaxation :
    (98 : ℚ) / 10 ^ 20 < 8 / 10 ^ 11 := by
  norm_num

theorem low_restriction_with_omission_margin :
    lowRestrictionPrice + 152 / 10 ^ 80 < 1 / 500 := by
  norm_num [lowRestrictionPrice]

/-- This reserve includes BOTH scan endpoint extension upper costs. -/
theorem low_restriction_with_endpoints_margin :
    lowRestrictionPrice + 152 / 10 ^ 80 + 192 / 10 ^ 80 +
      8 / 10 ^ 11 < 1 / 500 := by
  norm_num [lowRestrictionPrice]

/-- Pure rational budget identity, with no universal annulus sign asserted. -/
theorem exact_remaining_high_budget :
    (98136331 / 500000000 : ℚ) - 97136331 / 500000000 = 1 / 500 := by
  norm_num

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeLowFilter
