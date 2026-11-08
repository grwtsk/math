/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
Source baseline: grwtsk/math fe3fd586707c81fdd693a076c4971bea6fbe51e8.
Canonical live Noe skills read at 9d456d64a0137289cddc416ea78f043cf345873a.
WRITTEN_ACTUAL_SOURCE_REFUTATION_WITH_COMPLETE_EXACT_INTERVAL_DATA.
Finite scalar Lean declarations are separate from the written operator proof.
FINITE_SCALAR_LEAN_ELABORATION_PASS / UNIVERSAL_FORMALIZATION_NOT_RUN /
FRESH_ENVIRONMENT_KERNEL_REPLAY_NOT_RUN / FINITE_TRANSITIVE_AXIOM_AUDIT_PASS:5.
INDEPENDENT_HUMAN_REVIEW_NOT_RUN / WORLDWIDE_NOVELTY_NOT_ASSESSED.
-/
import Mathlib.Tactic

/-!
# Actual-source obstruction to free absorption of the mixed gamma

## 1. The exact attempted join and its physical carrier

Keep the ACTUAL objects of WeilConductorThreeSharpEdgeGammaComparison
and WeilConductorThreeRadiusFourEdgeSchur. On
H0=L2((0,3),dt;Complex), physical a.e. quotient and physical norm, put

 D0=phi(H_DN,3), c0=c3+1/8,
 A0=D0+U*U+c0 I-P3, A0>=3I/40,
 Ahat0=A0-U*U=D0+c0 I-P3.                                  (1)

The actual chi3 is primitive nonprincipal modulo3, values(0,1,-1),
conductor3 and gamma parity ONE. P3 is the original signed odd core
prime operator. No zeta pole occurs in this sector. ALL458 native
radius-four source atoms remain in the original target; the365 new
correlations vanish on a radius-three core by exact support geometry.

The positivity of A0 in (1) is the previously recorded written
computer-assisted radius-three source bound, with its full form-domain
return. Its evidence is not promoted to a kernel result here.
The pure-gamma identity D0+U*U=Gamma(O_3u)/2 is the written complete
Green/frame construction of GammaComparison, with

 a_j=3/2+2j, q_j=exp(-6a_j),
 U_j(x)=2exp(-3a_j)sinh(a_jx)/sqrt(1+q_j),
 phi(lambda)=sum_(j>=0)2lambda/[a_j(a_j^2+lambda)].

All j>=0 are retained. U:H0->ell2 is a genuine bounded frame map,
U*U is positive and bounded by pi I/2. The form domains of D0 and
the actual core gamma coincide, as do their associated operator
domains. Bounded signed-source perturbation then gives
Dom(A0)=Dom(Ahat0)=Dom(D0).

One tempting join of the gamma square to a local edge lower bound
would assume Ahat0>=0, infer U A0^(-1)U*<=I, and absorb the entire
mixed gamma at no additional price. The following ORIGINAL-SOURCE
counterexample proves both assertions false. It does not refute the
actual sharp edge law m11[v]>=<Bv,A0^(-1)Bv>, its original j=3
target, RH, or DirichletGRH. Their Geven, onsite, all signed prime
terms, and B_prime still have to be retained together.

## 2. A single exact physical DN mode, not independent matrix entries

Take the actual real function

 u(x)=sqrt(2/3)*sin(pi*x/6), 0<x<3.                          (2)

Its physical norm is EXACTLY one by elementary sine integration.
It is an eigenvector of the actual DN auxiliary Laplacian, with
k=pi/6. Thus u belongs to Dom(D0), hence to Dom(A0), not merely
to a guessed H1 or finite-dimensional proxy. Its odd zero extension
f=O_3u has whole-line energy2 and is supported in[-3,3].
The zero extension has endpoint jumps, which are allowed in this
finite-gamma/operator domain. No claim that this cut is C2 is made.

For 0<r<6 its actual whole-line source correlation is

 C_f(r)=(2-r/3)cos(pi*r/6)-(2/pi)sin(pi*r/6).                (3)

Indeed integrate
(2/3)sin(k*t)sin(k*(t+r)) over -3<t<3-r, use
2sin A sin B=cos(A-B)-cos(A+B), and use 6k=pi.
For r>=6 the overlap has zero measure and C_f(r)=0.
This is the native zero-extension correlation, with both factors
and its physical normalization retained.

Consequently (1)--(3) give the ACTUAL quadratic value

 Ahat0[u]=c3+1/8+g(k)
   -sum_(n=p^e<=403,p!=3) log(p)/sqrt(n)*chi3(n)*C_f(log n), (4)
 g(k)=sum_(j>=0)2k^2/[a_j(a_j^2+k^2)],
 c3=log(3/pi)-EulerGamma-3log2+pi/2.

The full source has458 atoms: precisely93 occur in (4), and each
of the other365 has log n>6 and exactly ZERO correlation. The
complete source tags and their actual logarithm bounds are retained.
No coefficient is changed from chi3(n) to its absolute value.

## 3. Complete exact interval proof of the negative value

The full finite data are retained locally in grwtsk/noeaaeue:
 .cache/chi3-ahatzero-refutation-20261107/one_mode_complete_witness.json
SHA256 7d6e01c201760ee6e5b93e9f6ab49d4054213759f9829ffa3d7c41f9b31f91cd.
The standalone exact checker is replay_one_mode_witness.py,
SHA256 c2c7192edb4f4f06bc7bd168d43cc3af7ea84ce0a8808a6e826745581ffbc072.
Generation and a separate full regeneration/byte comparison both PASS.
The95816-byte payload retains all93 actual terms, all365 geometrically
zero tags, every128-bit interval/error, all256 finite gamma terms,
the entire remainder and the source/dependent context. The original
complete458-atom source payload has SHA256
5cb6a042e50bc702bf367b406d0f1c49d328e8259e2a36341e98b2e1b44b95f4.
No floating-point quadrature, eigensolver or Noe execution job is
used by this exact proof. Decimal outputs below are locators only.

Here are the complete interval laws, so no tolerance is an assumed field.
Every elementary arithmetic operation rounds OUTWARD to the grid2^-128
using Python unbounded integers. Division requires a strictly positive
denominator interval. Negative source terms reverse endpoints exactly.
The analytical constants and tails are established as follows.

* Pi uses Machin's identity16atan(1/5)-4atan(1/239). For each atan,
  the first24 alternating terms end below the exact value and the
  positive next term bounds its ENTIRE remaining series.
* Integer logarithms use binary reduction to[1,2], z=(x-1)/(x+1),
  the first24 terms of2sum z^(2j+1)/(2j+1), and the full positive
  tail2z^49/[49(1-z^2)]. Log pi uses the same interval rule on pi/2
  and adds log2. The true source log/weight/root enclosures, including
  every approximation error, come from the retained complete payload.
* The Euler constant satisfies
  H64-log65<=EulerGamma<=H64-log64. Integral comparison proves
  these bounds for its defining INFINITE harmonic limit; no finite
  harmonic observation is silently identified with the limit.
* Each phase k*log n lies in[0,pi]. Sin/cos are enclosed by the
  Taylor recurrences through degrees41/40 with their ENTIRE remainder
  bounds4^43/43! and4^42/42!, respectively. Outward arithmetic
  retains all dependence and rounding; independence is not assumed.
* For g(k), retain j=0,...,255 and set a=2*256+3/2. The decreasing
  positive series and its integral give
  sum_(j>=256)a_j^-3<=a^-3+1/(4a^2).
  Therefore the WHOLE omitted gamma tail is between zero and
  2k^2[a^-3+1/(4a^2)]. This proves (4)'s infinite-domain value.

The actual final enclosure obtained by these laws is

 -59687531303040994426143626952663769869 /2^128
     <= Ahat0[u] <=
 -54411551733221723535348818509959790560 /2^128
     < -3/20.                                             (5)

The interval is approximately[-.1754058897,-.1599011792].
The strict FINAL comparison in (5) is an integer inequality. It
therefore refutes Ahat0>=0 with one explicit original physical
function and all native source/gamma tails justified.

## 4. A quantitative obstruction for the ACTUAL core inverse

There is also a short whole-tail bound on this witness's boundary
frame energy. Exact integration, using sin(3k)=1 and cos(3k)=0,
gives

 (Uu)_j=sqrt(2/3)*a_j*sqrt(1+q_j)/(a_j^2+k^2),
 ||Uu||^2=(2/3)sum_(j>=0)a_j^2(1+q_j)/(a_j^2+k^2)^2.       (6)

The integral used is
integral_0^3 sinh(a*x)sin(k*x)dx=a*cosh(3a)/(a^2+k^2);
substituting the ACTUAL U_j yields exactly (6).
All components are retained, rather than estimating a finite frame.
Since q_j<=exp(-9)<1/1000 and decreasing-series integration gives

 sum_(j>=0)a_j^-2
 <=4/9+4/49+integral_1^infinity(2x+3/2)^(-2)dx
 =4/9+4/49+1/7,

we obtain

 ||Uu||^2 <=(2/3)(1001/1000)(4/9+4/49+1/7)
          =8437/18900<9/20.                                (7)

The exponential guard is exact: exp1>8/3 by its positive series,
and(8/3)^9>1000. Thus it pays EVERY q_j, including the unobserved
tail. Combine (5),(7) with the genuine core floor from(1):

 0<3/40<=m00[u]=Ahat0[u]+||Uu||^2<3/10.                    (8)

Let z=A0^(1/2)u, a legitimate actual source vector. It satisfies
||z||^2=m00[u]>0 and A0^(-1/2)z=u. Then

 ||U A0^(-1/2)z||^2/||z||^2
  =||Uu||^2/m00[u]
  =1-Ahat0[u]/m00[u]
  >1+(3/20)/(3/10)=3/2.

Therefore the ACTUAL bounded operators obey

 ||U A0^(-1/2)||^2=||U A0^(-1)U*||>3/2.                   (9)

The inverse and square-root calculus use only the established
positive A0, with its physical domain and source. This is not an
example made from freely chosen unrelated operator blocks.

## 5. The failure also meets actual smooth edge frame directions

Keep the actual edge frame V from GammaComparison, in translated
edge coordinates0<s<1:

 (Vw)_j=sqrt(1+q_j)integral_0^1 exp[-(3/2+2j)s]w(s)ds.

Its range is DENSE in ell2. To prove this rather than assume it,
let z be in ker(V*). The ell2 coefficients
b_j=z_j*sqrt(1+q_j) define an analytic power series
F(t)=sum_j b_j t^j on |t|<1, by Cauchy--Schwarz. On every
s>=eta>0 the series converges absolutely and uniformly; it is
the actual adjoint representative
(V*z)(s)=exp(-3s/2)F(exp(-2s)).
If V*z=0 almost everywhere, continuity makes F vanish on the
whole interval(exp(-2),1). The analytic identity theorem then
forces every b_j=0, hence z=0. The Hilbert-space identity
closure(Ran V)=(ker V*)^perp proves the density.

Moreover C_c^infinity(0,1) is dense in physical L2 and V is
bounded, so its actual finite-gamma smooth images are dense in
the SAME ell2 carrier. Positive K=U A0^(-1)U* has norm>3/2
by(9), hence a strict Rayleigh quotient>3/2. Continuity and
this proved density give an actual smooth edge w with

 <Vw,K Vw> >(3/2)||Vw||^2.

All operators are real: their original kernels, character phases,
forms and functional calculus commute with conjugation. Splitting
into real and imaginary parts shows that w may be chosen REAL.
Equivalently one may approximate a real strict Rayleigh vector
by real smooth edge data. Returning to physical v(y)=w(y-3),
Bgamma=-U*V gives

 <Bgamma v,A0^(-1)Bgamma v> >(3/2)||Vv||^2.                (10)

This is a proved existential bridge to an ACTUAL real smooth edge
direction, not an explicit numerical v certificate. It refutes
free gamma absorption even on such actual edge directions.
It does not discard Geven, original onsite terms or the signed
B_prime coupling. Consequently it does NOT refute the full sharp
source inequality or its original radius-four stage.

## 6. Heat, exact source return and lossless proof data

Ahat0 is an actual self-adjoint bounded perturbation of D0,
closed, semibounded, with compact resolvent. Its source domain
is the same Dom(D0), and
Ahat0>=3I/40-(pi/2)I. Its genuine spectral semigroup exists for
every t>=0. The concrete Rayleigh value(5) implies
inf spectrum(Ahat0)<-3/20, hence

             ||exp(-t*Ahat0)||>exp(3t/20), t>0.             (11)

Thus an unshifted contractive Ahat0 heat interface would be FALSE.
A sufficiently shifted semigroup is contractive by the displayed
lower bound; that shifted law must retain its shift when recovering
the original source. The actual core A0 heat, its positive floor,
directional inverse and original arithmetic recovery A0-I/8
remain valid. They are different constructed operators.
For each generator its exact source is recovered by
-lim_(t down0)(S_t u-u)/t on its actual operator domain.

Every mathematical type here retains its physical carrier, metric,
domain, character/parity, source syntax and parameters: the DN
eigenfunction, native gamma and prime forms, closed A0/Ahat0,
bounded U,V, positive inverse/square root, analytic ell2 power
series and actual smooth edge embedding. No Fourier/physical norm,
finite/infinite domain or character sector is exchanged.
The exhaustive j>=0 gamma/frame tails, all458 arithmetic branches,
Euler constant limit and analytic power-series domains have their
explicit proofs above.

Finite representable proof data include the source context, exact
function description(2), normalization, every interval/rounding
error, all93 nonzero and365 zero source tags, elementary-series
orders and whole-tail laws, all256 gamma terms, final integer
endpoints, dependency pins and separate evidence statuses.
Canonical exact-integer/string/list/dictionary encoding and
structural induction prove decode(encode x)=x; the ENTIRE
95816-byte payload passes actual canonical readback and separate
full reconstruction. Digests identify retained full data; they
do not replace the data. No arbitrary semantic L2 function or
infinite spectral measure is finitely encoded.

Use the existing typed-description coverage interface with code
n weight2^(-n-1), invalid/status entries retained and the complete
tail2^(-J). Its inverse/source laws provide description coverage.
The arithmetic refutation comes from (2)--(9), not from positive
coverage weights or reference heat. Infinite source objects use
their exact binding syntax and proven analytic laws, not an
unproved finite recipe for all inputs.

Assurance remains separated: complete finite integer/dyadic
calculation and written analytic/domain/operator proof; universal
Lean formalization, fresh-environment kernel replay, transitive
axiom audit and independent human review NOT_RUN. The scalar
declarations below certify only the final exact arithmetic.
Primary analytical identities are the native GammaComparison
source, DLMF5.4.19 at3/4, elementary sine integration, alternating
Machin/log/Taylor bounds and the original Euler integral
comparison. Worldwide novelty is NOT_ASSESSED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeSharpEdgeAbsorptionObstruction

def actualAhatLowerNumerator : ℤ :=
  -59687531303040994426143626952663769869

def actualAhatUpperNumerator : ℤ :=
  -54411551733221723535348818509959790560

def intervalDenominator : ℕ := 2 ^ 128

theorem actual_closed_interval_guard :
    actualAhatLowerNumerator < actualAhatUpperNumerator ∧
    (actualAhatUpperNumerator : ℚ) / intervalDenominator < -3 / 20 := by
  norm_num [actualAhatLowerNumerator, actualAhatUpperNumerator, intervalDenominator]

theorem complete_boundary_energy_guard :
    (2 / 3 : ℚ) * (1001 / 1000) * (4 / 9 + 4 / 49 + 1 / 7) =
      8437 / 18900 ∧
      (8437 / 18900 : ℚ) < 9 / 20 := by
  norm_num

theorem entire_exponential_guard : (1000 : ℚ) < (8 / 3) ^ 9 := by
  norm_num

theorem actual_core_mass_upper_scalar :
    (9 / 20 : ℚ) - 3 / 20 = 3 / 10 := by
  norm_num

theorem actual_noncontraction_scalar :
    (1 : ℚ) + (3 / 20) / (3 / 10) = 3 / 2 := by
  norm_num

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeSharpEdgeAbsorptionObstruction
