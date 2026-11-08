/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
Actual mathematical input: grwtsk/math
fe3fd586707c81fdd693a076c4971bea6fbe51e8.
Canonical skills: LIVE grwtsk/noeaaeue
9d456d64a0137289cddc416ea78f043cf345873a.
WRITTEN_COMPUTER_ASSISTED_PROOF_COMPLETE_FOR_THE_SPECIFIED_SMOOTH_EDGE_SPAN
AND_THE_ENTIRE_FINITE_GAMMA_CORE, at the inherited core-floor evidence level.
Exact integer interval generation AND complete source-bound readback: PASS.
UNIVERSAL_ARBITRARY_EDGE_SHARP_SCHUR / ORIGINAL_STAGE / RH / GRH: OPEN.
FINITE_LEAN_COMPILATION_PASS / FINITE_AXIOM_AUDIT_PASS:19 declarations only.
CONTINUUM_FORMALIZATION_NOT_RUN / SEPARATE_FRESH_KERNEL_REPLAY_NOT_RUN.
The continuum statements in this comment are NOT Lean declarations below.
INDEPENDENT_HUMAN_REVIEW_NOT_RUN / WORLDWIDE_NOVELTY_NOT_ASSESSED.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeSharpEdgeResidual

/-!
# A proved actual smooth edge direction and every physical core direction

## 1. Exact consumer, contracts and evidence

The original target remains
`DirichletStageChain.PrimitiveStageLower modThreeQuadratic
 modThreeQuadratic_primitive modThreeQuadratic_nonprincipal 3`.
It asks Q4(f)>=-E(f)/8 for EVERY original real odd compact C2 admissible
input supported in[-4,4]. The current first unsupported universal implication
is STILL `radiusFour.sharpEdgeSchur`, equation(17) of
WeilConductorThreeRadiusFourEdgeSchur. This file discharges the three ACTUAL
finite-source obligations(16) in WeilConductorThreeSharpEdgeResidual, and
replays their result for its whole stated subspace. It does not rename or
assert the universal target.

Use physical Lebesgue dt throughout, antilinear-first complex inner products,
H0=L2((0,3),dt;Complex), H1=L2((3,4),dt;Complex), and odd zero extension O4.
E(O4u)=2||u||^2. Let D_T={u:Gamma(O_Tu)<infinity}. The original source is

 Q4(f)=c3 E(f)+Gamma(f)-2sum_native458 w_n beta_n Re C_f(log n),
 c3=log(3/pi)+psi(3/4), C_f(r)=integral conjugate(f(t))f(t+r)dt,
 Gamma(f)=integral_(r>0)k(r)||f(.+r)-f||^2dr,
 k(r)=exp(-3r/2)/(1-exp(-2r)),
 n=p^e<=2980, p prime not3, e>=1, w_n=log(p)/sqrt(n), beta_n=chi3(n).

This is the original primitive nonprincipal chi3=(0,1,-1) modulo3, conductor3,
parity1. There is no principal or zeta pole. ALL458 native atoms, including
their source signs, are retained. Prime powers at or above exp8 have zero
correlation by the actual support; ALL30 native higher powers remain in the
retained inventory, with its proved exp8 cutoff.
Define q4[u]=Q4(O4u)/2 and the shifted form m=q4+||u||^2/8. The ACTUAL blocks are

 m[u0+v]=m00[u0]+2Re<u0,Bv>+m11[v],
 B=B_gamma+sum_native458 w_n beta_n(R_log n-S_log n),
 B_gamma(x,y)=-k(y-x)+k(y+x), 0<x<3<y<4.

Here S_r v(x)=1_(3<x+r<4)v(x+r) and
R_r v(x)=1_(3<r-x<4)v(r-x). The actual associated core operator satisfies
A0>=3I/40, Dom(A0^(1/2))=D3. This is the source-bound radius-three result
of FiniteAnnulus(C), with EdgeSchur's full-domain core-density bridge. It
retains its recorded WRITTEN COMPUTER-ASSISTED evidence; this file does not
upgrade it to a new kernel theorem or claim to reconstruct discarded old
matrix factors. The bounded mixed operator and sharp-cut/full-gamma bridges
are exactly those in EdgeSchur, not a new H1-domain substitute.

The new proved branch is the following precise statement:

 FOR EVERY u0 in D3 and EVERY c in Complex,
 m[u0+c*v*]>=(3/40)||u0+c*A0^(-1)Bv*||^2+(3/40)|c|^2,    (1)

where v*(y)=4sin(pi(y-3))^3/sqrt5 on(3,4), zero elsewhere. In particular
the native source bound holds on this whole subspace. All infinite core
directions and all complex coefficients c are quantified in(1).
The arbitrary finite-gamma edge complement remains OPEN.

## 2. A genuine constructed trial and the complete analytic residual law

The zero extension of v* is C2, since both endpoint zeros have order3.
It is symmetric about7/2, and ||v*||^2=(16/5)*integral_0^1 sin(pi*t)^6dt=1.
Write w(t)=v*(3+t)=(3sin(pi*t)-sin(3pi*t))/sqrt5 for0<t<1.
The exact rational trial is the SAME original `coreTrialNumerators` from
SharpEdgeResidual, with d_k=n_k/10^8 and
h*(x)=sum_(k=1)^32 d_k sin(kappa_k*x), kappa_k=pi*k/3.
These DD sine functions are UNNORMALIZED in physical dt:
||h*||^2=(3/2)sum d_k^2. They are not the numerical locator's floating solve.
Exact enumeration of the actual32 integers gives
S0=sum|d_k|=19909829/10^8<1/5,
S1=sum|d_k|kappa_k<12/5 and S2=sum|d_k|kappa_k^2<33.
The last two use pi<22/7 and are recomputed from the source list, not
postulated aggregate constants. They are already finite Lean declarations
in SharpEdgeResidual, with their own verification scope.

The trial belongs to Dom(A0), not just its form domain: its zero/odd extension
is H1; its Fourier transform decays quadratically at infinity; the true gamma
multiplier grows O(log(2+|xi|)). Thus the full gamma action is physical L2.
The constant and finite prime operators are bounded. Equivalently the exact
uniformly convergent action below and the form representation prove this.
No operator-domain hypothesis is needed on Bv* or on the residual itself.

For a_j=3/2+2j put
 g(xi)=sum_(j>=0)2xi^2/[a_j(a_j^2+xi^2)],
 E_j(x)=exp(-a_j*(3-x))-exp(-a_j*(3+x)),
 A_j=sum_k d_k kappa_k*(-1)^k/(a_j^2+kappa_k^2),
 V(a)=24pi^3(1+exp(-a))/[sqrt5(a^2+pi^2)(a^2+9pi^2)].
Integrating the actual exponential resolvent kernel, with both odd reflected
boundaries, gives the EXACT physical identities

 G_core h*=sum_k d_k g(kappa_k)sin(kappa_k*x)+sum_(j>=0)A_j E_j(x),
 B_gamma v*=-sum_(j>=0)V(a_j)E_j(x).                      (2)

SharpEdgeResidual(8)--(14) give the complete elementary derivation, including
the boundary signs and the factor2 in the full-line gamma multiplier. In
particular these are the same gamma normalization as Q4/2. They imply

 r*=Bv*-A0h*
 =sum_native458 w_n beta_n[v0(log n-x)-v0(x+log n)]
  +sum_native458 w_n beta_n[h_odd(x+log n)+h_odd(x-log n)]
  -(c3+1/8)h*(x)-sum_k d_k g(kappa_k)sin(kappa_k*x)
  -sum_(j>=0)(A_j+V(a_j))E_j(x).                         (3)

All zero-extension masks in(3) are the actual ones. All458 atoms are
inspected even when their core/mixed maps vanish geometrically. There is
no arbitrary finite truncation of the prime measure.

Let r_fin use the first1024 terms for each g(kappa_k) and the first256 terms
of the final boundary sum, with the SAME true prime sum, c3 and pi.
Telescoping and the convex midpoint integral comparison give, for every J,

 sum_(j>=J)a_j^(-2)<=1/(4J+1),
 sum_(j>=J)a_j^(-3)<=1/(4J+1)^2,
 sum_(j>=J)a_j^(-4)<=4/[3(4J+1)^3].

For example1/a^2<=1/(a^2-1) and
1/a^3<[(a-1)^(-2)-(a+1)^(-2)]/4; consecutive a differ by2, so all
endpoints telescope to the displayed full tails. With0<=E_j<=1 and
V(a)<=48pi^3/(sqrt5*a^4), these prove the ENTIRE action-tail bound

 sup_(0<x<3)|r*-r_fin|<=delta
 =66/4097^2+(12/5)/1025+32*(22/7)^3/1025^3 <1/400.        (4)

It applies at every physical point, including limits toward either endpoint.
No unobserved frequency or gamma component is hidden in a finite recipe.

## 3. Exact elementary interval interface, including every rounding error

The new finite proofs below use rational outward intervals [l/2^80,u/2^80]
with unbounded integers. Addition is exact. A product takes the minimum and
maximum of all four integer products and rounds DOWN/UP after division by
2^80. A reciprocal first checks zero exclusion and rounds2^160/u and2^160/l
outwards. Negative intervals are handled by negation. Induction on the
expression tree proves that every returned interval contains its TRUE real
expression; no machine float or system elementary function enters this path.

All elementary instances are constructed with explicit remainders:
* pi uses Machin16atan(1/5)-4atan(1/239);40 alternating terms plus the next
  term. The tangent addition formula and the0<angle<pi/2 quadrant identify pi.
* For log n binary range reduction n=2^k v,1<=v<2 uses
  log v=2sum_(j>=0)y^(2j+1)/(2j+1), y=(v-1)/(v+1).
 64 terms and the full remainder2*rho^129/[129(1-rho^2)] are used. Each
 outward y is checked in[0,rho], rho=167/500, which also covers rounded1/3.
 log pi uses the same range reduction on the true pi interval.
* sqrt n uses integer-square bracketing at scale2^80, checked by isqrt.
* sin/cos reduce by an integer multiple of the TRUE2pi interval and CHECK
 |reduced argument|<=4. Degree41/40 term recurrences use Taylor remainders
 4^43/43! and4^42/42!, including outward arithmetic at every recurrence.
* For exp(-x),0<=x<=60, degree24 Taylor at-x/64 has error<=1/25!;
 six outward squarings return the required exponential. If x>=60 use
 [0,2^(-80)]: the positive degree4 Taylor bound exp(3/4)>2 proves this law.
 A true interval crossing60 uses monotonicity, without assuming its midpoint.
* H_10000-log10001<EulerGamma<H_10000-log10000 follows from the harmonic
 integral comparison and the two convergent Euler sequences. The same exact
 interval sums enclose H_10000. The reflection/duplication gamma formulas give
 psi(3/4)=-EulerGamma+pi/2-3log2. Consequently c3 is enclosed directly from
 its source definition, not by a tabulated floating digamma value.

These constructive laws prove the full elementary-function interface consumed
by ALL three computations. Integers/Fraction/isqrt and these algorithms are
the stated computational trust surface. The actual program bytes and exact
data are retained. The proof does not invoke an unexplained numerical epsilon
or an assumed validated-library error contract.

## 4. Complete native edge diagonal: m11[v*]>=9/50

Elementary product-to-sum integration of w gives its ordinary autocorrelation

 Cw(r)=(1-r)[9cos(pi*r)+cos(3pi*r)]/10
       +9sin(pi*r)/(20pi)+11sin(3pi*r)/(60pi), 0<=r<=1.   (5)

Expanding both sine factors and integrating each sum/difference cosine
verifies(5), including Cw(0)=1 and Cw(1)=0. Symmetry w(1-t)=w(t) identifies
the reflected edge integral at log n with Cw(|log n-7|). The native prime
contribution to m11 is therefore EXACTLY

 2w_2 Cw(log2)+sum_new365 w_n beta_n Cw(|log n-7|).        (6)

Of all458 atoms, the same-side term n=2 is the only possible ordinary
overlap; every other92 old term vanishes geometrically. ALL365 new reflected
atoms occur in(6), and their beta_n signs remain unaltered. This is neither
an unsigned Euler majorant nor an independently chosen character sector.

Put D(a)=24pi^3/[sqrt5(a^2+pi^2)(a^2+9pi^2)] and V=D(1+exp(-a)).
For the ordinary zero extension of w, direct exponential convolution of
sin(pi*t),sin(3pi*t) gives the gamma form

 (9/10)g(pi)+(1/10)g(3pi)-2sum_(j>=0)D(a_j)^2(1+exp(-a_j)).

Indeed their common endpoint boundary coefficient is
3pi/[sqrt5(a^2+pi^2)]-3pi/[sqrt5(a^2+9pi^2)]=D(a);
integration against w produces -2D*V. Orthogonality gives the two diagonal
coefficients9/10,1/10. The odd translated reflection adds the ENTIRE positive
term sum_(j>=0)exp(-6a_j)V(a_j)^2, not an omitted boundary or a doubled term.
Adding c3+1/8 and(6) is exactly the ACTUAL m11[v*].

The first1024 diagonal g terms are enclosed, with full positive tail
<=2xi^2/4097^2. The first256 negative-boundary and positive-far terms are
enclosed. For a=a_256, decreasing integral comparison gives
sum_(j>=256)a_j^(-8)<=a^(-8)+1/(14a^7).
Since sqrt5>2 and pi<22/7, EACH of the two boundary-tail absolute values is
at most T=576*(22/7)^6*[a^(-8)+1/(14a^7)]. One is nonpositive and one
nonnegative, so their COMBINED omitted term lies in[-T,T], not[0,0].
Thus all unobserved gamma terms have a justified signed error allowance.

Complete outward integer evaluation produces, at common scale Q=2^80,

 m11[v*] in[228844704102675232555077,
             228968149638567757497647]/Q, hence m11[v*]>=9/50.          (7)

The independent full replayer regenerates all expressions and compares the
complete retained data, not just the displayed bounds. Exact source inventory,
all366 active terms,92 zero terms, all gamma terms and their full errors are
retained. Its final source list is crossmatched against the independently
regenerated ALL458 inventory used in the residual and pairing proofs.

## 5. Complete actual mixed pairing: |<Bv*,h*>|<=13/200

From(2), direct integration of the DD sines gives
integral_0^3 h*(x)E_j(x)dx=-(1-exp(-6a_j))A_j. Consequently

 <B_gamma v*,h*>=sum_(j>=0)V(a_j)(1-exp(-6a_j))A_j.       (8)

All inputs here are real; the Hermitian convention therefore causes no
conjugation ambiguity. The first256 terms are enclosed. The ENTIRE remaining
tail, using |A_j|<=S1/a_j^2 and V<=48pi^3/(sqrt5*a_j^4), has absolute value

 <=768pi^3 S1/[5sqrt5*(4*256+1)^5].                     (9)

To prove(9), apply the convex midpoint comparison
sum_(j>=J)a_j^(-6)<=16/[5(4J+1)^5]. This is an analytic infinite sum law,
not an extrapolation of the first256 terms.

For EACH of all458 prime atoms the two true mixed intervals are
(log n-4,log n-3) intersect(0,3) and(3-log n,4-log n) intersect(0,3).
The two actual sine-cosine expansions retain the R and minusS signs.
All true clipped interval endpoints are outward log intervals; their ordering
and zero masks are checked. Integrate every sine product exactly:
for omega_m=pi*m/3 put
 Jc(m)=[sin(omega_m*b)-sin(omega_m*a)]/omega_m,
 Js(m)=[cos(omega_m*a)-cos(omega_m*b)]/omega_m;
Jc(0)=b-a, Js(0)=0, Jc(-m)=Jc(m), Js(-m)=-Js(m).
Then integral sin(kappa_k*x)sin(kappa_l*x)=(Jc(k-l)-Jc(k+l))/2,
and integral sin(kappa_k*x)cos(kappa_l*x)=(Js(k+l)+Js(k-l))/2.
These elementary antiderivatives account for endpoint uncertainty as well as
all phases. There is no quadrature, interpolation assumption or prime-tail cut.

The exact outward result, INCLUDING(9), is

 <Bv*,h*> in[76164558287088249377845,
              76164558298012141551342]/Q, hence abs<=13/200.          (10)

## 6. Whole physical interval residual: sup|r_fin|<=3/100

Between true zero-extension cuts, the finite expression(3) is a degree32
trigonometric polynomial sum(S_k sin(kappa_k*x)+C_k cos(kappa_k*x))
minus sum_(j<256)(A_j+V_j)E_j(x). All native cut expressions are kept as
typed exact formulas plus-or-minus log n+integer. The297 distinct cuts INCLUDING0,3
have disjoint outward brackets. Both neighboring source formulas are checked
through EVERY tiny uncertain cut strip. Definite strips have their unique
source mask. Thus no rounded-cut decision discards a possible physical point.

On each such piece the exact derivative is bounded by the outward quantity

 L=sum_k kappa_k(|S_k|+|C_k|)+2sum_(j<256)a_j|A_j+V_j|.   (11)

The exponential derivative bound holds at all0<=x<=3. For an accepted interval
[a,b], midpoint m and rho=max(m-a,b-m), a true interval enclosure I_m of the
value is computed with the elementary laws in section3. The mean value theorem
then gives |r_fin(x)|<=max(|I_m endpoints|)+L*rho for EVERY x in[a,b]. Every
fixed-point division in this interpolation allowance rounds UP. If this whole
bound is not<=3/100 the interval is bisected. There is no inference from a
passing set of physical samples to a universal sign.

The completed adaptive cover has2847 accepted intervals and4808 point
enclosures, maximum bisection depth6. A separate readback verifies EACH
interval's stored derivative and interpolation price, adjacent endpoint equality,
both uncertain-cut alternatives, and full coverage of EACH source piece.
The maximum whole-interval price is

 36267449443409213140219/Q <3/100.                        (12)

All coefficient, mask, endpoint, elementary, rounding and interpolation errors
are already in(12). Combining it with the separately proved ENTIRE action
tail(4) gives |r*|<13/400<1/30 everywhere and

              ||Bv*-A0h*||^2<=3*(1/30)^2=1/300.         (13)

The factor3 is the actual core Lebesgue length. A coefficient norm, a weighted
norm, or a truncated physical/frequency norm is not substituted for this norm.

## 7. Forward return through the ENTIRE inverse and arbitrary core

For every h in Dom(A0) and z=Bv, put r=z-A0h. Since A0>=3I/40,
its inverse exists on ALL H0, is positive and has norm<=40/3. Exact expansion
of its quadratic form proves

 <z,A0^(-1)z>=2Re<z,h>-m00[h]+<r,A0^(-1)r>.             (14)

This law uses the full inverse. It never replaces it with a finite Galerkin
inverse. Apply it to the specified actual h*, using(7),(10),(13) and
m00[h*]>=0 from the established core floor. The actual sharp gap is

 m11[v*]-<Bv*,A0^(-1)Bv*>
 >=9/50-2*(13/200)-(40/3)*(1/300)=1/180.                 (15)

This completes ALL THREE formerly open finite obligations(16) of Residual.
Complex linearity and Hermitian homogeneity prove the same gap times|c|^2
for EVERY c. Exact closed-form Schur completion is valid on D3, because
A0^(-1)Bv* belongs to Dom(A0). This first gives the weaker version of(1)
with1/180; the following exact refinements prove(1) as stated. No
unobserved core direction, residual energy or inverse tail
remains unpaid in this result. All original admissible inputs in this subspace
therefore satisfy Q4>=-E/8; arbitrary input edge projections are not in general
scalar multiples of v*, so the original universal stage is NOT closed.

## 7A. A stronger paid head from the same true residual, counted once

The completed data give a stronger bound without any new numerical premise.
Do not discard the actual trial form m00[h*]. With z=Bv*, r=z-A0h*, and
b=Re<z,h*>, exact source expansion gives
 b=m00[h*]+Re<r,h*>.
Substitution into(14) yields the different, source-exact identity

 <z,A0^(-1)z>=b+Re<r,h*>+<r,A0^(-1)r>.

The physical trial bound gives ||h*||<1/4, and(13) gives
||r||^2<=1/300<(3/50)^2. Cauchy--Schwarz therefore proves
Re<r,h*><3/200. This uses the SAME residual, not an independently
available gamma allowance. Use the actual endpoint bounds(7),(10):

 m11[v*]-<Bv*,A0^(-1)Bv*>
 > (228844704102675232555077-76164558298012141551342)/2^80
                   -3/200-(40/3)/300
 >1/15.                                                  (15a)

The final comparison is an exact rational inequality, approximately
.066849612087>1/15. Neither a floating cancellation nor an exact-solve
claim is used. Homogeneity and the original Schur completion now prove
the intermediate1/15 version of(1), for EVERY complex c and EVERY
original finite-gamma core vector.
This refinement reuses each source identity once and retains the entire
core residual. The original all-edge sign is still not asserted.

An exact physical norm calculation on the SAME32 rational coefficients
improves the bounds further:
 ||h*||^2=(3/2)sum d_k^2
        =210162652293759/20000000000000000<(103/1000)^2,
 ||r||^2<=1/300<(29/500)^2.
Therefore Re<r,h*><(103/1000)(29/500)=2987/500000. The
same exact source identity and the certified endpoints now give

 m11[v*]-<Bv*,A0^(-1)Bv*>
 > (228844704102675232555077-76164558298012141551342)/2^80
                   -2987/500000-(40/3)/300
 >3/40.                                                  (15b)

The last lower expression is approximately .075875612087. The finite
coefficient equality and both strict rational comparisons are checked
below. No extra gamma or arithmetic estimate is being added: only the
norm of the already constructed trial is evaluated more accurately.
Equations(15b) and the original completion prove(1) on its entire stated
carrier. The old1/180 and1/15 conclusions remain valid weaker bounds.

## 8. A genuine restricted source heat and its arithmetic return

Put htrue=A0^(-1)Bv*. The actual physical trial norm and(13) give

 ||h*||<103/1000, ||r||<29/500,
 ||htrue||<103/1000+(40/3)(29/500)=2629/3000<9/10.        (16)

Let K=H0 direct-sum Complex*v*, a CLOSED physical subspace of L2(0,4).
The restriction of the actual shifted form m to K has domain D3 direct-sum
Complex*v*. The native sharp-cut/gamma laws show that this is exactly the
intersection of the full form domain with K. It is dense in K and closed in
the full form norm: a form-Cauchy sequence converges in the full closed form
and its physical limit remains in the closed K. Thus its representation
operator M_K is a genuine selfadjoint source-form restriction. It is NOT
asserted that K is invariant or reducing for the unrestricted full operator.

For u=u0+c*v* set w=u0+c*htrue. Equation(16) and the physical triangle-square
inequality with weight7/5 gives

 ||u||^2=||u0||^2+|c|^2
 <=(12/5)||w||^2+[1+(12/7)(9/10)^2]|c|^2
 =(12/5)||w||^2+(418/175)|c|^2.

Here the weighted triangle-square inequality follows by expanding
||w-c*htrue||^2 and bounding its mixed term by
(7/5)||w||^2+(5/7)||c*htrue||^2. Since(1/32)(12/5)=3/40
and(1/32)(418/175)<3/40, equation(1) proves

 M_K >= (1/32)I,
 ||exp(-t M_K)||<=exp(-t/32), EVERY real t>=0.             (17)

The spectral theorem proves the full semigroup and estimate, with all spectral
tails included. This is actual arithmetic source heat on K, rather than positive
reference weights being used to claim an arithmetic sign. Its EXACT return is

 Q4(O4u)=2||M_K^(1/2)u||^2-E(O4u)/8,
 Q4(O4u)>=-(3/32)E(O4u), u in D3+Complex*v*.              (18)

There is also the unchanged full-core source heat T0(t)=exp(-tA0). For the
TRUE residual in(14), Tonelli on its nonnegative spectral measure proves
<r,A0^(-1)r>=integral_0^infinity ||T0(t/2)r||^2dt.
The entire remaining time tail after L is at most
(40/3)exp(-3L/40)||r||^2, for every r in H0, with no Dom(A0) premise on r.
This is the exact heat law returning the residual error to the arithmetic core.

## 9. Lossless full proof data, reproducibility and comparison

Representable proof data retain the source pin, original target/declarations,
character and parity, physical domains/norm/normalization, all458 triples and
signed log/sqrt weights, all32 exact trial coefficients, all gamma terms/tails,
source masks, all accepted interval coverage records, rounding/interpolation
prices and distinct evidence statuses. There is an actual constructed finite
bundle; encoding it and decoding restores EVERY filename and exact byte.
Canonical JSON reconstruction restores all dependent nested records. Gzip and
the deterministic ZIP roundtrips were checked on the WHOLE record, not just
the coefficient list. For finite tagged records, an induction on lists, pairs,
integer/rational constructors and string bytes proves decode(encode x)=x on
the declared code image. The finite Lean image codec below supplies that exact
law for its finite record type; the actual complete archive additionally has
executed byte-for-byte roundtrip evidence. No finite value or codec is asserted
for arbitrary semantic L2 functions or the actual infinite inverse.

The COMPLETE bundle is in grwtsk/noeaaeue:
 .cache/chi3-sharp-edge-certified-20261107-stage/smooth_direction_complete_bundle_stage.zip
 SHA256 a63a5a211bbd39e33d49577f3bd7a523e84a5e8741b1fac6a433ebdece19844e.
It contains all checker/helper/data bytes and the pinned mathematical source
inputs. This source's hash is to be bound by its separate static target, avoiding
a self-referential archive hash. The three exact source certificates are:
* residual_supremum_certificate_stage_v2.json.gz:
 d7a845bcc085d063c95a90d83aced62f0def3713168ca2c5c689edd5d475e310;
* bpair_certificate_stage.json.gz:
 cca3d5f9305160f8308c50fed3668b59ed18b61ff21995e08813b5d245888771;
* .cache/chi3-smooth-edge-m11-20261107/actual_m11_complete.json:
 de331cc7b5d04fcc9953ab35a4cfa25bd6058880736e196858bdb1d4b4419d2b.
The shared exact interval helper is
9113fcbe86e083587d636a8e8fc3ca36074bd9229df37d71b0e42fc453c511dd.
The bundle retains each complete checker and source hash, and its combiner
crosschecks all458 native atoms and all source normalizations. Replay rebuilds
the finite expressions and compares the entire deterministic records. All guards
use exceptions, so optimized execution cannot disable proof acceptance checks.

The separate exhaustive branch-description reference coverage has weights
2^(-j-1) and full unobserved reference tail2^(-J). It covers finite typed
descriptions, not a proof that every Hilbert vector has a finite code. Positive
coverage does not supply any of(7),(10),(12),(15). The actual source heat is
(17) and the core resolvent heat above; no finite Euler sign or physical
semigroup conclusion is inferred merely from that reference coverage.

Comparison/disposition: the primary proof is exact physical residual quadratic
completion with an infinite inverse error paid analytically. The distinct
direct scalar correlation/Laplace calculation of m11 and the native masked
antiderivative calculation of Bpair meet the SAME physical source. The core
DD-resolvent action and the whole-line Fourier domain check independently check
the trial's normalization/domain. They all share the inherited core floor;
none is an independent replay of its historical multi-million-packet proof.
The earlier floating32-mode solve only suggested this trial, and is not used
as an exact equation, enclosure or sign premise. Python integer arithmetic and
source-bound regeneration establish finite computational evidence; the analytic
coverage/tail and source-return arguments are the written proof above. The Lean
declarations below check only their displayed scalar and codec propositions.
The19 finite declarations below compiled and their transitive axiom audit found
only propext, Classical.choice and Quot.sound. Continuum kernel proof, separate
fresh kernel replay, independent human review and worldwide novelty are NOT
asserted. Classical references are DLMF5.9.16 (digamma integral),
5.5 (reflection/duplication), and native EdgeSchur/Residual for the exact source
translation. No external paper supplies an unproved signed-arithmetic premise.

## 10. Sharpened first unsupported implication, with the paid head retained

Let s[v]=m11[v]-<Bv,A0^(-1)Bv> on the ACTUAL edge domain D_edge and let
S be its associated selfadjoint semibounded operator. The form is closed,
because m11 is the closed edge gamma source plus bounded native terms and
B* A0^(-1)B is bounded. Its explicit whole-carrier heat interface does not
assume the desired sign: put W=sum_native458 w_n and
C=|c3+1/8|+2W+(40/3)(pi/2+2W)^2. The full-line prime multiplier bound2W,
the physical mixed bound||B||<=pi/2+2W and A0^(-1)<=40I/3 give S>=-CI.
Thus exp(-tS) exists on ALL H1 and has norm<=exp(Ct) for every t>=0; its
closed form returns EXACTLY s[v]=m11[v]-<Bv,A0^(-1)Bv>. This is a genuine
spectral heat law with a possible growth bound, not the unproved contraction
estimate S>=0. The actual v* is in Dom(S): its compact C2 extension
has g*Fourier(v*) in L2, and the remaining terms are bounded. Put

 a=s[v*]>=3/40, P=v* tensor v*, Q=I-P, t=Q S v* in H1.

P is the PHYSICAL orthogonal rank-one projection, distinct from the earlier
core/edge cut. Since v* is finite-Gamma, Q preserves D_edge. For EVERY w in
D_edge with <v*,w>=0 and EVERY complex c, the ACTUAL quadratic form satisfies

 s[c*v*+w]=a*|c+<t,w>/a|^2+s[w]-|<t,w>|^2/a.            (19)

This follows directly by polarization, since S v* is an actual physical L2
vector; no finite approximation of S v* or t is assumed. Thus universal
`radiusFour.sharpEdgeSchur` holds IF AND ONLY IF the precise remaining leaf

 s[w]>=|<t,w>|^2/a, EVERY finite-Gamma w orthogonal to v*, (20)

is proved. The forward direction follows by choosing c=-<t,w>/a; the reverse
follows from(19). Equation(20) is openly UNPROVED. In particular separate
diagonal positivity of the complement cannot discard this real mixed debt.
The concrete directional proof(15) and the actual source heat(17) are complete
at their stated scope; they do not imply(20). The original universal stage,
other radii and sectors, and RH/Dirichlet GRH remain open. The exact native
`Conditional.DirichletGRH` family is ALL complex Dirichlet characters modulo
EVERY positive q, including principal and imprimitive characters. Its return
uses the cofinal primitive-sector bounds together with the zeta RH premise;
the present primitive chi3 leaf alone does not discharge that conjunction.
No arbitrary automorphic or Artin family, or proof of the original targets,
is claimed.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeSharpEdgeSmoothDirection

def intervalScale : ℚ := 1208925819614629174706176

/-- These are executed ACTUAL-source enclosures. This finite rational guard
checks the displayed comparisons; the analytic source links are written above. -/
theorem actual_interval_acceptance :
    (9 / 50 : ℚ) ≤ 228844704102675232555077 / intervalScale ∧
      (76164558298012141551342 / intervalScale : ℚ) ≤ 13 / 200 ∧
      (36267449443409213140219 / intervalScale : ℚ) ≤ 3 / 100 := by
  norm_num [intervalScale]

theorem physical_trial_norm_price :
    ((3 / 2) * (1 / 5) ^ 2 : ℚ) = 3 / 50 ∧ (3 / 50 : ℚ) < (1 / 4) ^ 2 := by
  norm_num

theorem entire_inverse_correction_price :
    ((40 / 3) ^ 2 / 300 : ℚ) = 16 / 27 ∧
      (16 / 27 : ℚ) < (4 / 5) ^ 2 ∧
      (1 / 4 + 4 / 5 : ℚ) = 21 / 20 := by
  norm_num

theorem physical_restricted_norm_price :
    (2 * (21 / 20) ^ 2 + 1 : ℚ) = 641 / 200 := by
  norm_num

theorem actual_directional_margin :
    (9 / 50 - 2 * (13 / 200) - (40 / 3) * (1 / 300) : ℚ) = 1 / 180 := by
  norm_num

theorem refined_residual_norm_price : (1 / 300 : ℚ) < (3 / 50) ^ 2 := by
  norm_num

/-- Endpoint comparison for the stronger actual-source residual identity. -/
theorem refined_actual_directional_margin :
    (1 / 15 : ℚ) <
      (228844704102675232555077 - 76164558298012141551342) / intervalScale -
        3 / 200 - (40 / 3) / 300 := by
  norm_num [intervalScale]

theorem refined_actual_restricted_heat_price :
    (2 * (40 / 1923) : ℚ) < 3 / 40 ∧
      ((40 / 1923) * (641 / 200) : ℚ) = 1 / 15 := by
  norm_num

def exactTrialPhysicalNormPrice : ℚ :=
  (3 / 2) *
    ((ConductorThreeSharpEdgeResidual.coreTrialNumerators.map
      (fun n => (n : ℚ) ^ 2)).sum) / (10 ^ 8) ^ 2

theorem exact_trial_physical_norm_guard :
    exactTrialPhysicalNormPrice = 210162652293759 / 20000000000000000 ∧
      exactTrialPhysicalNormPrice < (103 / 1000) ^ 2 := by
  norm_num [exactTrialPhysicalNormPrice,
    ConductorThreeSharpEdgeResidual.coreTrialNumerators]

theorem stronger_residual_norm_price : (1 / 300 : ℚ) < (29 / 500) ^ 2 := by
  norm_num

theorem stronger_actual_directional_margin :
    (3 / 40 : ℚ) <
      (228844704102675232555077 - 76164558298012141551342) / intervalScale -
        (103 / 1000) * (29 / 500) - (40 / 3) / 300 := by
  norm_num [intervalScale]

theorem stronger_inverse_trial_norm_price :
    (103 / 1000 + (40 / 3) * (29 / 500) : ℚ) = 2629 / 3000 ∧
      (2629 / 3000 : ℚ) < 9 / 10 := by
  norm_num

theorem stronger_actual_restricted_heat_price :
    (1 + (12 / 7) * (9 / 10) ^ 2 : ℚ) = 418 / 175 ∧
      ((1 / 32) * (12 / 5) : ℚ) = 3 / 40 ∧
      ((1 / 32) * (418 / 175) : ℚ) < 3 / 40 ∧
      ((1 / 32) - (1 / 8) : ℚ) = -(3 / 32) := by
  norm_num

theorem actual_restricted_heat_price :
    (2 * (10 / 5769) : ℚ) < 3 / 40 ∧
      ((10 / 5769) * (641 / 200) : ℚ) = 1 / 180 := by
  norm_num

/-- A scalar consequence used by the written physical-form comparison. It
does not introduce a field assuming the actual universal edge sign. -/
theorem restricted_source_gap_scalar (energy w c source : ℝ)
    (hw : 0 ≤ w) (hc : 0 ≤ c)
    (henergy : energy ≤ 2 * w + (641 / 200) * c)
    (hsource : (3 / 40) * w + (1 / 180) * c ≤ source) :
    (10 / 5769) * energy ≤ source := by
  have hmul := mul_le_mul_of_nonneg_left henergy (by norm_num : (0 : ℝ) ≤ 10 / 5769)
  have hcoeff : (10 / 5769 : ℝ) * (641 / 200) = 1 / 180 := by norm_num
  nlinarith

/-- The strengthened physical norm return, separate from its source witnesses. -/
theorem refined_restricted_source_gap_scalar (energy w c source : ℝ)
    (hw : 0 ≤ w) (hc : 0 ≤ c)
    (henergy : energy ≤ 2 * w + (641 / 200) * c)
    (hsource : (3 / 40) * w + (1 / 15) * c ≤ source) :
    (40 / 1923) * energy ≤ source := by
  have hmul := mul_le_mul_of_nonneg_left henergy (by norm_num : (0 : ℝ) ≤ 40 / 1923)
  have hcoeff : (40 / 1923 : ℝ) * (641 / 200) = 1 / 15 := by norm_num
  nlinarith

theorem stronger_restricted_source_gap_scalar (energy w c source : ℝ)
    (hw : 0 ≤ w) (hc : 0 ≤ c)
    (henergy : energy ≤ (12 / 5) * w + (418 / 175) * c)
    (hsource : (3 / 40) * w + (3 / 40) * c ≤ source) :
    (1 / 32) * energy ≤ source := by
  have hmul := mul_le_mul_of_nonneg_left henergy (by norm_num : (0 : ℝ) ≤ 1 / 32)
  have hcoeff : (1 / 32 : ℝ) * (12 / 5) = 3 / 40 := by norm_num
  nlinarith

/-- The finite code carrier retains source identities/statuses together with
typed integer/rational/list proof data. Arbitrary Hilbert vectors are excluded. -/
abbrev ProofData := List String × (List ℤ × (List ℚ × List (List ℤ)))

local instance : Encodable Char :=
  Encodable.ofLeftInverse Char.toNat Char.ofNat Char.ofNat_toNat

local instance : Encodable String :=
  Encodable.ofLeftInverse String.toList String.ofList
    (fun _ => String.ofList_toList)

noncomputable def proofDataCoding : ProofData ≃ Set.range (Encodable.encode (α := ProofData)) :=
  Equiv.ofInjective _ Encodable.encode_injective

/-- Exact decode(encode x)=x on the declared image; no default decoding is used. -/
theorem proofDataCoding_roundtrip (x : ProofData) :
    proofDataCoding.symm (proofDataCoding x) = x :=
  proofDataCoding.symm_apply_apply x

def smoothDirectionPacket : ProofData :=
  (["grwtsk/math", "fe3fd586707c81fdd693a076c4971bea6fbe51e8",
    "radiusFour.sharpEdgeSchur;chi3-conductor3-parity1;native458;physical-L2-dt",
    "ALL-finite-gamma-core+Complex*vstar;vstar-unit;core-DD-unnormalized",
    "actual-restricted-source-heat;arbitrary-edge-complement-OPEN",
    "written-computer-assisted;continuum-kernel-NOT_RUN;human-review-NOT_RUN",
    "a63a5a211bbd39e33d49577f3bd7a523e84a5e8741b1fac6a433ebdece19844e"],
   (ConductorThreeSharpEdgeResidual.coreTrialNumerators,
    ([3, 4, 10 ^ 8, 1024, 256, 3 / 40, 40 / 3, 9 / 50, 13 / 200,
      3 / 100, 1 / 400, 1 / 300, 1 / 180, 21 / 20, 641 / 200, 10 / 5769,
      3 / 50, 1 / 4, 3 / 200, 1 / 15, 40 / 1923,
      103 / 1000, 29 / 500, 2987 / 500000, 2629 / 3000,
      9 / 10, 12 / 5, 418 / 175, 1 / 32, -(3 / 32)],
     [[228844704102675232555077, 228968149638567757497647],
      [76164558287088249377845, 76164558298012141551342],
      [36267449443409213140219, 1208925819614629174706176]])))

theorem smoothDirectionPacket_decode_encode :
    Encodable.decode (Encodable.encode smoothDirectionPacket) = some smoothDirectionPacket :=
  Encodable.encodek smoothDirectionPacket

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeSharpEdgeSmoothDirection
