/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
Source inspected: grwtsk/math 901c989b9899251f08b3fe8e87bae731fb465e3b.
Canonical skills read from grwtsk/noeaaeue at
8ea2845e2afb84a97f1084e8b1d3b4a5e62e557a.
Written full-domain analytic proof and conditional original-source return.
The actual remaining edge Schur sign is OPEN, not an interface field.
LEAN_COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN / AXIOM_AUDIT_NOT_RUN.
INDEPENDENT_HUMAN_REVIEW_NOT_RUN / WORLDWIDE_NOVELTY_NOT_ASSESSED.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeRadiusFourInventory
import Mathlib.Analysis.Complex.Exponential
import Mathlib.Tactic

/-!
# The actual radius-four central and edge forms

This proves a bounded mixed-gamma operator, sharp-cut preservation of the
ENTIRE finite-gamma domain, a form-domain return from the established
radius-three bound, exact degree separation of the native prime terms,
and an exact Schur consumer for the ORIGINAL radius-four target. It does
NOT prove its remaining edge sign or the requested radius-four stage.
The universal analysis is WRITTEN. Only finite counts and scalar algebra
are Lean declarations below; their existence does not formalize this
analysis or upgrade its computer-assisted source input.

## 1. Original target, source identity and evidence boundary

The target is exactly
 DirichletStageChain.PrimitiveStageLower modThreeQuadratic
   modThreeQuadratic_primitive modThreeQuadratic_nonprincipal 3.
It asks Q4(f)>=-E(f)/8 for EVERY original Admissible chi3 4 f:
real odd compact C2, pointwise zero off[-4,4], physical Lebesgue L2(dt),
and finite original parity-one gamma correction. The character is the
actual primitive nonprincipal chi3=(0,1,-1), conductor3, gamma parity1.
There is no zeta pole in this sector.

Use the ACTUAL definitions SourcePrimeCorrelation.energy/correlation,
ConductorFrontier.gammaCorrectionDensity/primitiveArithmeticValue and
DirichletStageChain.Admissible/PrimitiveStageLower. For complex inputs
the source uses the REAL part of its antilinear-first correlation:

 E(f)=integral_R |f(t)|^2 dt,
 C_f(r)=integral_R conjugate(f(t))*f(t+r) dt,
 k(r)=exp(-3r/2)/(1-exp(-2r)), r>0,
 Gamma(f)=integral_(r>0) k(r)||tau_r f-f||_2^2 dr,
 c3=log(3/pi)+psi(3/4),
 Q4(f)=c3 E(f)+Gamma(f)
       -2 sum_(n=p^e<=2980,p!=3) w_n beta_n Re C_f(log n),
 w_n=log(p)/sqrt(n)>0, beta_n=chi3(n) in{-1,1}.

The native inventory has ALL458 nonzero atoms, including ALL365 absent
at radius3. The strict cutoff and full enumeration are in
WeilConductorThreeRadiusFourInventory. No 93-atom source is substituted.
All n beyond the native cutoff have zero correlation on original
radius-four tests because log n>=8; this includes the cutoff equality
by null overlap. The gamma integral and its full infinite series are
not finite inventories and retain the analytic laws below.

The source input used for the core is ONLY the written computer-assisted
statement (C) of WeilConductorThreeFiniteAnnulus:
 Q3(f)>=-E(f)/20 for EVERY original Admissible chi3 3 f.
Consumed current file SHA256:
 9d5196cecf14a80a7d90474c80cb21dd9b42e27fda1b7111b84070ed70540617.
Its completed controlled finite computations, caches and source-return
proofs have their RECORDED scope. This file does not replay the millions
of packet heads, supply their discarded transient factors, or turn that
written input into a kernel theorem. The new analytic conclusions that
use this input inherit its written computer-assisted scope.

Other consumed source SHA256 identities at the inspected revision:
 ConductorFrontier:
  7ebb2357b464f13b4799e65ee1b083b1daa292c8a235eb7bda52804b480487eb;
 WeilDirichletStageChain:
  1582bc398d087446ac06f80c6156800ea817a37dfe97b563c7002e9ccd926726;
 WeilSourcePrimeCorrelation:
  5f59fc9fdc8748943847380020e2e58cad5ac4e43f736b178deeb5f860140dbc;
 WeilConductorThreeOddEdgeLoewner:
  98c747f815b6aec74abcb13fb970635e4f822997f67d1a05e07a615b04fb449d.

## 2. Typed physical forms and their exact normalizations

Let H_T=L2((0,T),dt;Complex), with its almost-everywhere quotient and
antilinear-first inner product. For u in H_T, define O_T u to be u on
(0,T), -u(-t) on(-T,0), and zero elsewhere, choosing zero boundary
values. This is an actual odd zero extension, independent of the chosen
representative as an L2 class. E(O_T u)=2||u||^2. Real u gives a real
odd source test; complexification will be justified separately.

Define D_T={u in H_T:Gamma(O_T u)<infinity} and
 gamma_T[u]=Gamma(O_T u)/2. Its norm is
 (||u||^2+gamma_T[u])^(1/2), not a weighted physical norm.
The gamma form is closed: physical Plancherel identifies the whole-line
form with multiplication by the nonnegative measurable multiplier

 g(xi)=sum_(j>=0) 2xi^2/[a_j(a_j^2+xi^2)], a_j=3/2+2j,        (1)

using Fourier F(xi)=integral f(t)exp(i xi t)dt and dxi/(2pi).
The series follows by expanding k into positive exponentials, applying
Tonelli to their squared translation differences, and integrating each
exponential. On a compact frequency interval the tail is bounded by
a constant times sum_j a_j^(-3), proving local finiteness and continuity.
Thus no omitted gamma component or frequency tail is
discarded. Nonnegative weighted L2 is complete, and restriction through
the closed odd supported subspace proves the asserted closedness.

For real or complex u define q_T[u]=Q_T(O_T u)/2 on D_T. Its prime
part is a FINITE sum of bounded translation/reflection forms and its
constant part is bounded, so q_T is a closed lower-semibounded form.
For complex u this is the real Hermitian extension of the actual real
source, not a phase-erased character sector. Its form domain is D_T.

In H=H_4 decompose H=H0 orthogonal-sum H1, where
 H0=L2((0,3),dt;Complex), H1=L2((3,4),dt;Complex),
by zero extension into H. These are actual orthogonal physical
projections, including the almost-everywhere interpretation at3.
Write u=u0+u1. Domain stability of these sharp projections is PROVED
next, not presumed as a regularity property of an indicator.

## 3. Entire mixed gamma kernel and its Carleman bound

For eps>0 put k_eps(r)=1_(r>=eps)k(r), and define gamma_eps by the
same nonnegative jump-energy integral. Its kernel is integrable, so
Fubini and polarization are legitimate for ALL L2 inputs. Splitting
same-side and cross-origin correlations, as in OddEdgeLoewner, gives

 gamma_eps[u0+u1]=gamma_eps[u0]+gamma_eps[u1]
                         +2 Re <u0,B_eps u1>,                (2)

where, for0<x<3<y<4, the ACTUAL normalized mixed kernel is

 B_eps(x,y)=-k_eps(y-x)+k_eps(y+x).                           (3)

The negative difference term is the same-side jump. The positive sum
term is the reflected odd jump. Omitting either term changes the
source. The coefficient in(3) is for Gamma(Ou)/2; no additional factor
of2 is absorbed into the physical norm.

For r>0,
 k(r)=exp(-r/2)/(2sinh r)<=1/(2r),
and k is decreasing. For0<a<=b one has
 |1_(a>=eps)k(a)-1_(b>=eps)k(b)|<=k(a).                      (4)
Indeed both indicators zero gives zero, both one uses monotonicity,
and a<eps<=b gives k(b)<=k(a). The remaining case is impossible.
Thus the TRUNCATED kernel has the SAME uniform bound even where the
indicator destroys the sign of the untruncated difference:

 |B_eps(x,y)|<=1/[2((3-x)+(y-3))].                           (5)

For completeness, the Carleman bound here has a direct proof. On the
positive half-line take the positive weight w(a)=a^(-1/2). Substitution
b=a t^2 gives

 integral_0^infinity w(b)/(a+b) db=pi*w(a).

The symmetric identity holds with a,b exchanged. Weighted
Cauchy--Schwarz (the Schur test) therefore bounds the integral operator
1/(a+b) on physical L2(0,infinity) by pi. Restriction to a in(0,3),
b in(0,1) only decreases its positive majorant. Setting a=3-x,b=y-3
in(5) proves

 ||B_eps||_(H1->H0)<=pi/2.                                  (6)

Moreover the product majorant in(5) is integrable against |u0(x)u1(y)|
for EVERY pair of L2 inputs, by this same Schur bound. Dominated
convergence proves the mixed limit, with no unobserved short-shift
tail, and defines the genuine bounded operator

 B_gamma(x,y)=-k(y-x)+k(y+x), ||B_gamma||<=pi/2.              (7)

Now let u be ANY member of D_4; u need not be bounded or smooth.
Equations(2),(6), positivity and monotone convergence give

 gamma_eps[u0]+gamma_eps[u1]
 <=gamma_eps[u]+pi||u0||||u1||
 <=gamma_4[u]+pi||u0||||u1||.

Each term on the left increases as eps decreases. Both complete
limits are finite, so u0 and u1 belong to their genuine finite-gamma
domains. Taking the mixed limit in(2) proves the EXACT full identity

 gamma_4[u]=gamma_4[u0]+gamma_4[u1]
                              +2 Re <u0,B_gamma u1>.         (8)

Conversely finite gamma of both pieces gives finite gamma of their
sum by the squared triangle inequality for every translation. Thus
the domain is precisely the direct sum of these two restricted form
domains. This proves sharp-cut FORM-domain preservation on the whole
carrier. It neither calls the cut C2 nor assumes a physical H1 bound.

## 4. Source-exact prime mixed block and degree separation

For r>0 define actual bounded partial maps H1->H0 by

 (S_r v)(x)=1_(3<x+r<4)v(x+r),
 (R_r v)(x)=1_(3<r-x<4)v(r-x), 0<x<3.                       (9)

Each map has operator norm at most1, by change of variables and zero
extension. Boundary choices have no integral effect. The odd
correlation identity, valid by absolute Cauchy--Schwarz integrability,
is

 Re C_(O_Tu)(r)
 =2 Re integral_0^max(T-r,0) conjugate(u(x))u(x+r)dx
   -Re integral_max(0,r-T)^min(r,T)
                         conjugate(u(x))u(r-x)dx.           (10)

Inserting(10) into the ACTUAL prime term and polarizing proves that
its mixed block is

 B_prime=sum_native458 w_n beta_n(R_(log n)-S_(log n)).       (11)

The w here is log(p)/sqrt(n), rather than the doubled prime-symbol
coefficient. The doubling is already in Q4 and the normalization
q4=Q4/2; (10)--(11) retain both factors. Beta is NEVER replaced by
its absolute value when returning this signed source.

Put B=B_gamma+B_prime. It is an actual bounded operator H1->H0,
not an assumed unknown block. The finite prime sum, native atom
list and exact exponential/logarithm/square-root syntax define it.
The operator bound(7) pays the complete gamma mixed part.

The physical geometry gives further exact source information:

* S_r on the mixed block requires0<r<4. This includes exactly21
  native atoms n<=54. Its source signs stay unchanged.
* R_r on the mixed block requires3<r<7. This includes exactly193
  native atoms 21<=n<=1096.
* A NEW atom has6<r<8. Its same-side mixed map is zero. Of the365
  new atoms, exactly110 have6<r<7 and enter the reflected mixed
  block; the remaining255 have r>7 and are purely edge-edge.
* Within H1, a same-side prime requires0<r<1. The ONLY such
  native atom is n=2. A reflected prime requires6<r<8, giving
  EXACTLY all365 new atoms. Every old atom4<=n<=403 contributes
  ZERO to the edge prime diagonal, by support, not by its sign.

The strict comparisons use2<exp1<3,20<exp3<21,54<exp4<55,
403<exp6<404,1096<exp7<1097,2980<exp8<2981. Positive rational
exponential series with the entire geometric remainder prove these
inequalities. Finite declarations below enumerate each indicated
set, including all possible exponents. There is no omitted prime
tail: correlations at and beyond the physical width vanish.

## 5. Form-density return of the radius-three source bound

This step is necessary: the core sharp cut generally is NOT C2.
It does not apply an L2 density argument to an unbounded gamma form.
Let f be ANY odd complex L2 input supported in[-3,3] with finite
Gamma. Choose a real even nonnegative C_c^infinity unit mollifier
rho_eps supported in[-eps,eps]. Such a bump is constructed by
normalizing exp(-1/(1-t^2)) on(-1,1) and scaling. Its Fourier
transform has modulus at most1 and tends pointwise to1 as eps->0.
Physical Plancherel and dominated convergence against
(1+g(xi))|F(xi)|^2 prove rho_eps*f->f in the full form norm.
Oddness is preserved and the support is[-3-eps,3+eps].

Shrink the support by setting a_eps=(3+eps)/3 and
 f_eps(t)=(rho_eps*f)(a_eps*t).
These are actual odd smooth compact inputs supported in[-3,3].
For a>=1 each summand in(1) proves g(a*xi)<=a^2*g(xi).
Consequently the dilation D_a f(t)=f(a*t) obeys
 E(D_a f)=E(f)/a, Gamma(D_a f)<=a*Gamma(f).
Dilations tend strongly to the identity in the form norm: first
prove this on continuous compactly supported Fourier data, using
local boundedness of g and a change of variables, then approximate
in weighted L2 and use the preceding uniform bounds. Such Fourier
data are dense because g is continuous and finite on compact sets
and (1+g)d xi is a positive locally finite measure. Thus f_eps->f
in the full form norm. In particular no derivative bound is claimed
uniform in eps.

For real f the approximants satisfy EVERY original Admissible chi3 3
hypothesis. Apply the recorded FiniteAnnulus(C) input. The prime
form is bounded on L2 and the gamma quadratic form is continuous in
its own form norm, so the inequality passes to the limit. For
complex f, decompose into real and imaginary odd parts: gamma,
energy and every REAL signed correlation form split as their sum.
The mixed imaginary terms cancel by real symmetry. We have proved

 Q3(f)>=-E(f)/20                                            (12)

on the ENTIRE odd supported finite-gamma form domain, at the SAME
written computer-assisted evidence level as its real smooth input.
This is a new source/domain bridge, not a fresh all-packet replay.

For a core u0, O_4u0=O_3u0 as a whole-line class. The existing
ConductorFrontier.primitiveArithmeticValue_eq_of_le and
SourcePrimeCorrelation.correlation_eq_zero_of_cutoff give
Q4(O_4u0)=Q3(O_3u0): EVERY added correlation has shift>=6 and
vanishes. This is exact source identity, not a finite sign estimate.

## 6. Actual shifted core, edge and the exact Schur consumer

Define on D_4 the ACTUAL target-shifted form
 m[u]=q4[u]+||u||^2/8.
Let m00 and m11 be its restrictions to H0 and H1, on the restricted
finite-gamma domains. Equations(8),(11) prove

 m[u0+v]=m00[u0]+2 Re <u0,Bv>+m11[v].                       (13)

Here m11 is entirely specified: its gamma is Gamma(O_4v)/2,
its onsite coefficient is c3+1/8, and its prime part is

  -2 w_2 beta_2 Re integral_(3<x<4-log2)
                                 conjugate(v(x))v(x+log2)dx
  +sum_new365 w_n beta_n Re
       integral_(max(3,log n-4)<x<min(4,log n-3))
                                 conjugate(v(x))v(log n-x)dx. (14)

The integrals in(14) have BOTH arguments in(3,4); an empty interval
contributes zero. These explicit intervals, not larger unmasked
ones, are the actual edge source. Beta_2=-1 and all
new beta_n retain the native character. No edge sign is placed in
a record or inferred from squared magnetic edges alone.

By(12), m00[u0]>=(1/8-1/20)||u0||^2=(3/40)||u0||^2.         (15)
The closed densely defined form m00 therefore has its actual
self-adjoint associated operator A0>=alpha I, alpha=3/40.
Its inverse exists as a bounded positive operator, ||A0^(-1)||<=40/3.
For v in the finite-gamma edge domain put h=A0^(-1)Bv.
Then h is in the OPERATOR domain of A0, and representation of the
closed form gives m00(u0,h)=<u0,Bv> for every form-domain u0.
Hence the exact completion, not just a scalar analogy, is

 m[u0+v]=m00[u0+h]+m11[v]-<Bv,A0^(-1)Bv>.                  (16)

It follows that the following explicit ACTUAL-SOURCE research
obligation is NECESSARY AND SUFFICIENT for m>=0:

 for EVERY v in H1 with Gamma(O_4v)<infinity,
       m11[v]>=<Bv,A0^(-1)Bv>.                              (17)

Sufficiency is(16) and m00>=0. Necessity uses the admissible form
vector u0=-h, which is legitimate by the domain statement above.
All operators and domains in(17) have been constructed and bound to
the source; (17) is openly UNPROVED. It is not hidden in a supplied
interface law. A tempting stronger algebraically sufficient
condition is

       m11[v]>=(40/3)||Bv||^2.                              (18)

Alternatively expand alpha||u0+alpha^(-1)Bv||^2 using(15) to
prove this sufficient return directly. Neither(17) nor(18) has
been proved by the finite algebra below. Section 7 proves that(18)
is FALSE for this source; it is not an open sign to assume positive.

If(17) is eventually proved, (16) gives Q4(O_4u)>=-E(O_4u)/8
for EVERY finite-gamma odd input, hence EVERY ORIGINAL Admissible
chi3 4 f. This supplies exactly PrimitiveStageLower chi3 hp hn 3,
not a newly named substitute. No smoothing, cutoff or norm price
is missing in this return. Without(17) the radius-four target is OPEN.

## 6A. The actual directional core heat and its complete time tail

There is a constructive, source-bound alternative to the false uniform
inverse replacement(18). Keep the SAME self-adjoint A0 from(15), the SAME
bounded B from(7),(11), and their actual physical carriers H0,H1. Put
alpha=3/40 and T0(t)=exp(-t*A0), t>=0. The spectral theorem gives
T0(t+s)=T0(t)T0(s), strong continuity at zero, and
||T0(t)||<=exp(-alpha*t). This is the ACTUAL core source heat, with
arithmetic form m00-||u0||^2/8. It is not reference coverage heat,
finite Euler sign heat, or a claimed stochastic kernel.

For EVERY v in H1, set z=Bv in H0. No hypothesis z in Dom(A0),
no H1 regularity and no high-frequency cutoff is required. The spectral
measure of z is finite and supported on [alpha,infinity). Tonelli for its
nonnegative integrand proves the EXACT identity

 <Bv,A0^(-1)Bv>
   = integral_0^infinity ||T0(t/2)Bv||^2 dt.                 (17a)

Indeed, on a spectral value lambda>=alpha, the scalar integral is
integral_0^infinity exp(-t*lambda)dt=1/lambda. All quantities in(17a)
therefore exist for arbitrary L2 v. Equivalently A0^(-1) is the improper
operator-norm integral of T0: omission of [0,delta] costs at most delta,
and omission of [L,infinity) costs at most alpha^(-1)exp(-alpha*L).
For positive times norm continuity follows directly from spectral calculus;
operator-norm continuity at t=0 is neither claimed nor needed.

Define the genuine bounded positive directional form

 C400[v]=integral_0^400 ||T0(t/2)Bv||^2 dt.                 (17b)

This remains an infinite-dimensional source form, not a finite matrix or
a claim that a finite-time recipe has validated all its input vectors.
Its entire unobserved time tail, however, has an explicit physical bound.
The COMPLETE inventory guard(19) gives W=sum w_n<106. Since each S_r,R_r
has norm at most one, ||B_prime||<=2W<212. Together with ||B_gamma||<=pi/2
and pi<4 this proves ||B||<214. Integrating the spectral decay in(17a)
now gives, for EVERY v in H1,

 0<=<Bv,A0^(-1)Bv>-C400[v]
   <=(40/3)exp(-30)||Bv||^2
   <=(40/3)*214^2*exp(-30)||v||^2
   <=10^(-7)||v||^2.                                     (17c)

The last two bounds are strict for nonzero v; their non-strict form retains
the zero vector. The exponential guard is exact: positivity of its series gives
 exp(1)>=1+1+1/2+1/6+1/24=65/24>27/10,
Since exp(30)=exp(1)^30, the rational integer comparison
 (40/3)*214^2 <10^(-7)*(27/10)^30
proves the last numerical allowance. The scalar Lean guards below record
these steps. No sampled frequency, eigenvalue or time value establishes(17c).

Consequently the following precise new RESEARCH OBLIGATION is sufficient
for the original sharp sign(17):

 for EVERY v in H1 with Gamma(O_4v)<infinity,
       m11[v]>=C400[v]+10^(-7)||v||^2.                     (17d)

It is OPEN. Unlike(18), it retains the actual frequency-dependent decay of
the core source in the direction Bv. It is sufficient, not asserted to be
necessary: the bound in(17c) can overpay the true tail. In particular neither
positivity of T0 as a self-adjoint spectral operator nor positive reference
coverage weights prove(17d). Any later approximation of C400 must retain its
full physical operator, all vector quantifiers and an additional proved
approximation error; the complete time tail above is not that error.

For the forward return, (17c),(17d) give the ACTUAL inequality(17). Substitute
it into(16), using the genuine form-domain vector A0^(-1)Bv, to obtain m>=0
on D_4. Then Q4(O_4u)=2m[u]-||u||^2/4 and E(O_4u)=2||u||^2 give
Q4(O_4u)>=-E(O_4u)/8, and hence precisely the original
PrimitiveStageLower chi3 hp hn 3 on every original Admissible input.
There is no change of carrier, gamma form, source prime inventory or physical
norm. The proof inherits the recorded computer-assisted core input used to
construct A0; (17a)--(17c) are new written spectral consequences, not a replay
of that input or a proof of(17d).

Representable proof data for this branch additionally retain A0,B,T0 as exact
source expressions, alpha,L=400,the B-norm214,the full integral and tail laws,
the edge domain and original normalization, every approximation error added
later, and the separate PROVED/OPEN evidence statuses. They use the SAME
lossless dependent-description and exhaustive coverage interfaces in section8.
The roundtrip retains the unresolved sign(17d) as OPEN, not as accepted evidence.

## 7. A rigorous obstruction to the cheap scalar sufficient condition

The sufficient condition(18) is in fact FALSE for this actual source.
This does NOT refute(17), m>=0, or the original radius-four stage:
replacing A0^(-1) by its uniform norm bound40/3 loses essential
high-frequency information. Here is a complete quantitative witness
argument, with the full physical gamma contribution retained.

Let
 eta(y)=K*(1-100*(y-7/2)^2)^3 for |y-7/2|<1/10,
and eta=0 elsewhere. Polynomial integration gives
 integral eta^2=1 for K^2=15015/1024,
 ||eta'||_2^2=390<100^2, ||eta||_infinity^2=15015/1024<32.
The zero extension is C2, since the polynomial vanishes to order3
at both endpoints. Set C=10^12 and v_c(y)=exp(i*c*y)eta(y),
c in[C,2C]. These are genuine finite-gamma edge tests of unit
physical norm, not abstract independent operator entries.

We use the following complete finite arithmetic guards for the actual
458 atoms and for J={2,5,7,11,13,17,19,23,29}:

 W=sum_native458 w_n
   <=118563038614037194/2^50<106,
 sum_(p in J) log(p)^2/p
   >=4587970534375541/2^50>4.                               (19)

The guards have a reproducible exact rational construction. Write
p=2^k v,1<=v<2, z=(v-1)/(v+1) in[0,1/3). Bound log v by
2 sum_(j=0)^19 z^(2j+1)/(2j+1), with positive omitted tail at most
2 z^41/[41(1-z^2)]. Bound log2 by the same formula at z=1/3.
Use floor(sqrt(n*10^18))/10^9 as a positive LOWER sqrt(n) bound,
validated by integer squares. Round every resulting upper w to
the 2^-50 grid upward and sum over the COMPLETE native inventory;
the first numerator in(19) is the resulting sum. For the second,
square each lower log bound, divide by p, round downward to the
same grid and sum over the stated nine primes. Fresh standalone
unbounded-integer/rational arithmetic obtained the displayed
numerators. These finite scalar calculations are NOT a Lean source
enclosure theorem; the logarithm's ENTIRE series tail is explicitly
paid by the formula. No floating logarithm or sqrt is trusted.

For each p in J, 3/5<log p<17/5. The endpoints follow from
exp(3/5)<2 and exp(17/5)>29 by rational exponential series;
monotonicity gives all intermediate p. Therefore S_(log p) eta has
its WHOLE support inside(0,3), and has norm1. In the mean over
c in[C,2C] of ||B_prime v_c||^2, these nine same-orientation
diagonal terms alone contribute more than4 by(19). Every other
diagonal term is nonnegative. We bound ALL off-diagonal terms.

For distinct native n,m<=2980,
 |log n-log m|>=1/2980,
by integrating1/t between consecutive integers. The average of
exp(i*c*theta) over[C,2C] has modulus at most2/(C|theta|).
Within the S orientation, the factor depending on x cancels in
the inner product; the same is true within R. Shifted/reflected
copies of eta have norm at most1. Hence the total magnitude of
all same-orientation off-diagonal means is at most

 (2*2980/C)*(W_S^2+W_R^2)
 <=4*2980*106^2/C=133933120/C<140000000/C.                   (20)

Cross-orientation products have x-phase exp(plus-or-minus2icx).
For ANY two involved copies, their product g has
 ||g'||_1<=2||eta'||_2<200.
Each of its two boundary values at x=0,3 is bounded by32.
Integration by parts on(0,3), INCLUDING both boundary terms,
therefore bounds its oscillatory integral by132/c. Summing both
ordered cross-orientations costs at most

 264 W^2/C<2966304/C<4000000/C.                             (21)

There is no assumption that the partial-shift boundary values vanish.
All character signs are retained in B_prime; absolute values are
used only to upper-bound the errors(20),(21).

The gamma mixed contribution is also small for these ACTUAL vectors.
For x in(0,3), y in support eta, y-x>=2/5. Since
 k(r)<=1/(2r), coth r<=1+1/r,
 |k'(r)|=k(r)(1/2+coth r)<=5 for r>=2/5,
we have |B_gamma(x,y)|<=5/4 and |partial_y B_gamma(x,y)|<=10.
Integration by parts against exp(icy), with the zero bump endpoints,
and Cauchy--Schwarz on its length1/5 support gives
 ||B_gamma v_c||_2<1000/c.
Also ||B_prime v_c||<=2W<212. Consequently passing from
B_prime to the WHOLE source B loses at most424000/C in the mean
squared norm. Equations(19)--(21) thus prove

 average_(C<=c<=2C) ||Bv_c||^2
 >4-(140000000+4000000+424000)/C>39/10.                      (22)

This is a statement about the entire continuous mean, with its
oscillatory off-diagonal errors bounded analytically, not sampling.
Continuity supplies some actual c in[C,2C] with ||Bv_c||^2>39/10.

For ALL these c the edge form m11[v_c]<32. To see this without
replacing gamma by its value at c, use the source Binet bound and
monotonicity, giving A(xi)<=log(100+|xi|)+1 on the WHOLE real line,
where A=c3+g. The normalized Fourier measure of O_4v_c has total
mass1 after division by E=2, and second moment c^2+390. Jensen's
inequality and Cauchy--Schwarz give the actual archimedean form

 c3+gamma_4[v_c]
 <=log(100+sqrt(c^2+390))+1
 <log(c+200)+1<30.                                        (23)

The last strict bound uses c<=2*10^12 and exp29>2*10^12+200;
exp1>8/3 and an exact integer power comparison already suffice.
Thus(23) includes both odd-reflected Fourier lobes and ALL gamma
frequencies, with no constant-gamma approximation.

The edge same-side prime n=2 vanishes because log2>1/5, exceeding
the bump's support width. A reflected atom has integral
exp(icr) integral eta(x)eta(r-x)exp(-2icx)dx.
Its product has derivative L1 norm at most2||eta'||, and zero
boundary values as a whole-line compact bump product. Integration
by parts bounds this by ||eta'||/c. Thus the ENTIRE reflected
prime contribution has modulus below10600/C. Adding the shift1/8
to(23) proves m11[v_c]<32 for every c under consideration.

For the c supplied by(22),
 (40/3)||Bv_c||^2>(40/3)*(39/10)=52>32>m11[v_c].             (24)

The quadratic difference in(24) splits into its real and imaginary
parts, so at least one actual real edge test also violates(18).
This rigorously rules out(18). The sharper actual-resolvent sign
(17) remains the exact open consumer. In particular an allegedly
proved(18) would contradict the original source, even if its finite
passing cases looked favorable. No such false sign is assumed here.

## 8. Genuine spectral heat, coverage and lossless proof data

There are two DIFFERENT heat interfaces.

The actual core form supplies a genuine spectral semigroup on H0:
 T0(t)=exp(-t A0), t>=0,
 ||T0(t)||<=exp(-3t/40), T0(t+s)=T0(t)T0(s), T0(0)=I.
It is strongly continuous; its generator is the actual A0. On
Dom(A0), A0u=-lim_(t down0)(T0(t)u-u)/t, and the core arithmetic
operator is A0-I/8 in the form sense, with full Q3 equal to TWICE
that physical half-line form. These are the exact arithmetic-source
return laws. They use the proved sign(15), not reference heat.
No entrywise-positive Markov kernel, stochastic mass law or trace-
class property is asserted for this spectral heat.

For the full shifted form, closedness and lower semiboundedness hold
already. A contraction estimate ||exp(-t M4)||<=1 is EQUIVALENT to
the still-unproved nonnegativity m>=0; it is NOT asserted here.
The bounded mixed operator has no positivity or heat-generator claim.
The inverse A0^(-1) in(17) can also be reconstructed by the convergent
operator-norm integral integral_0^infinity T0(t)dt, whose ENTIRE
unobserved tail after L costs at most(40/3)exp(-3L/40).

Separately, every mathematical type here has its existing exhaustive
branch-COVERAGE interface on representable finite descriptions. A
description retains H0,H1,H4, the complex/real embedding, physical
norm and Fourier measure, original Admissible binders, all458 atoms,
weights/phases as exact log/sqrt syntax, strict cutoff and degree
proofs, the full gamma kernel/series/domain and eps->0 limits,
mollifier/dilation laws, source declarations/revisions/hashes, the
recorded computer-assisted core input, both operators A0,B, the
inverse/source-return laws, error/tail budgets and evidence facets.
All semantic functions are typed bound variables or exact source
expressions, not sampled arbitrary L2 functions. Derived operator
and spectral-domain syntax does not eliminate its analytic proof
obligations. In particular(17) retains the status OPEN on decoding.

Construct the finite-description coding instance as finite tagged
trees: each constructor has its tag, binder/type context, length-
delimited list of children and literal rational/natural/source-byte
fields. The decoder reads these fields recursively and rejects
ill-typed dependent contexts. Structural induction gives
 decode(encode x)=some x;
the encoder-image subtype therefore has decodeImage(encode x)=x.
Dimensions, dependencies, source identity, all errors and statuses
are fields, so this roundtrip recovers the WHOLE dependent record.
This is a written coding construction reusing the native dependent
finite-description interface of CompactFilterReturn/WeightedStage;
no new Lean codec implementation or archived matrix is claimed.

Enumerate these finite typed descriptions by natural codes, keeping
invalid-code/status entries. Every representable description has
an index. Give index n reference mass pi_n=2^(-n-1); the ENTIRE
tail n>=J is exactly2^(-J). On l1 states with mass s=sum x define
Kx=(x+s*pi)/2. Absolute convergence, sum pi=1 and substitution give
sum Kx=s and EXACT source recovery x=2Kx-(sum Kx)pi. This is
coverage, not the physical spectral semigroup and not an arithmetic
sign. The reference tail does not bound an arbitrary signed data
tail. Every such tail still needs its own source estimate.

No finite Euler sign certificate is required to prove(6),(8),(15)
or their analytic consumers. Any finite compression test introduced
later must use its actual physical Gram metric, Hermitian matrix,
all observed errors, ordinary trace and proved entire complement.
No Euler test or positive-coverage weight currently discharges(17).

## 9. Comparison, evidence and original cofinal return

The mixed estimate is the classical Carleman/weighted-Schur mechanism,
proved explicitly above, applied to the actual odd gamma difference
and sum kernels. The prime edge separation uses the actual odd
same-side/reflected identity of OddEdgeLoewner. It is not an
independent second proof of the recorded radius-three packet signs:
those signs are a SHARED computer-assisted input to(12),(15).
The new full-domain statement is distinct from an H1-only estimate,
an L2-only passage through an unbounded form, and a positive-edge
graph with its onsite subtraction omitted. The radius3->4 automatic
propagation counterexample in RadiusFourInventory is respected:
its new long atom appears explicitly in(14), and the missing sign
is exactly paid only if(17) is proved.

Evidence: written analytic proof for(2)--(11) and form-density;
written computer-assisted input and analytic return for(12),(15);
finite enumeration/scalar Lean candidates below, NOT_RUN until
actual compilation/kernel evidence is recorded. This file supplies
no numerical experiment, new all-head run or human review. The
static companion records source identity and these distinct facets.
No theorem-level novelty or worldwide novelty is claimed.

Even a future proof of(17) supplies only the original chi3 j=3
coordinate. DirichletStageChain.dirichletGRH_of_source_chains still
requires independent RH, PrimitiveNegativeWitness and the entire
cofinal SmallConductorStages family for EVERY primitive nonprincipal
character. Its exact GRH family is all complex Dirichlet characters
modulo every positive integer, zeros in0<Re(s)<1. Primitive principal
conductor1 is the actual zeta/RH sector; the native imprimitive
Euler-factor return is retained. No other L-function family or
unproved cofinal tail is silently substituted.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourEdgeSchur

open ConductorThreeRadiusFourInventory

theorem actual_core_shift_gap : (1 / 8 : ℚ) - 1 / 20 = 3 / 40 := by
  norm_num

theorem actual_core_inverse_price : (3 / 40 : ℚ) * (40 / 3) = 1 := by
  norm_num

/-- Exact degree-four exponential Taylor comparison; finite arithmetic only. -/
theorem directional_heat_taylor_guard :
    (27 / 10 : ℚ) < 1 + 1 + 1 / 2 + 1 / 6 + 1 / 24 := by
  norm_num

/-- The positive exponential series supplies the actual lower bound on e.
This scalar theorem does not formalize the spectral time-tail argument. -/
theorem directional_heat_exp_one_lower : (27 / 10 : ℝ) < Real.exp 1 := by
  have h := Real.sum_le_exp_of_nonneg (x := 1) (by norm_num) 5
  norm_num [Finset.sum_range_succ] at h
  linarith

/-- Exact guard for the ENTIRE directional time tail after L=400. -/
theorem directional_heat_tail_guard :
    (40 / 3 : ℚ) * 214 ^ 2 < (1 / 10 ^ 7) * (27 / 10) ^ 30 := by
  norm_num

/-- Scalar arithmetic only; the polynomial integral and its normalization
are the written calculation in section 7. -/
theorem hostile_bump_scalar_guards :
    (15015 / 1024 : ℚ) * (1024 / 15015) = 1 ∧
      (15015 / 1024 : ℚ) < 32 ∧ (390 : ℚ) < 100 ^ 2 := by
  norm_num

/-- The actual logarithm/square-root enclosure algorithm is written in (19).
These declarations check its displayed rational aggregate margins only. -/
theorem hostile_source_aggregate_guards :
    (118563038614037194 / 2 ^ 50 : ℚ) < 106 ∧
      (4 : ℚ) < 4587970534375541 / 2 ^ 50 := by
  norm_num

theorem hostile_full_mean_guard :
    (39 / 10 : ℚ) <
      4 - (140000000 + 4000000 + 424000) / 10 ^ 12 := by
  norm_num

theorem hostile_archimedean_power_guard :
    (2 * 10 ^ 12 + 200 : ℕ) * 3 ^ 29 < 8 ^ 29 := by
  norm_num

theorem hostile_easy_schur_failure_margin :
    (32 : ℚ) < (40 / 3 : ℚ) * (39 / 10 : ℚ) := by
  norm_num

theorem core_edge_square (x b : ℝ) :
    (3 / 40 : ℝ) * x ^ 2 + 2 * x * b + (40 / 3 : ℝ) * b ^ 2 =
      (3 / 40 : ℝ) * (x + (40 / 3 : ℝ) * b) ^ 2 := by
  ring

theorem mixed_same_side_atom_count :
    ((inventory 2980).filter (fun a => decide (a.2.2 ≤ 54))).length = 21 := by
  decide

theorem mixed_reflected_atom_count :
    ((inventory 2980).filter
      (fun a => decide (21 ≤ a.2.2 ∧ a.2.2 ≤ 1096))).length = 193 := by
  decide

theorem new_mixed_reflected_atom_count :
    ((inventory 2980).filter
      (fun a => decide (403 < a.2.2 ∧ a.2.2 ≤ 1096))).length = 110 := by
  decide

theorem new_pure_edge_atom_count :
    ((inventory 2980).filter (fun a => decide (1096 < a.2.2))).length = 255 := by
  decide

theorem edge_reflected_atom_count :
    ((inventory 2980).filter (fun a => decide (403 < a.2.2))).length = 365 := by
  decide

theorem edge_same_side_inventory :
    (inventory 2980).filter (fun a => decide (a.2.2 ≤ 2)) = [(2, 1, 2)] := by
  decide

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourEdgeSchur
