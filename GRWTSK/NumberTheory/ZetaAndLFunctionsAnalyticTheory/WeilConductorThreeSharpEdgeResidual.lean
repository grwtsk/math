/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
Source inspected: grwtsk/math 12e3471d075669ca7ff09c41b8df7e5ab64f18fc.
Canonical skills read from LIVE grwtsk/noeaaeue
7376f433ae7573f7c02d47facb799337de6e0215, not a stale skill symlink.
WRITTEN_ANALYTIC_PROOF_COMPLETE_FOR_THE_RESIDUAL_AND_ACTION_TAIL_LAWS.
ACTUAL_DIRECTIONAL_FINITE_ACCEPTANCE_OPEN; UNIVERSAL_SHARP_EDGE_SIGN_OPEN.
Numerical locators are separate, uncertified floating evidence.
LEAN_COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN / AXIOM_AUDIT_NOT_RUN.
INDEPENDENT_HUMAN_REVIEW_NOT_RUN / WORLDWIDE_NOVELTY_NOT_ASSESSED.
-/
import Mathlib.Tactic
import Mathlib.Data.Rat.Encodable
import Mathlib.Logic.Equiv.List

/-!
# An actual source residual paying the entire conductor-three core

## 1. Consumer, source and full physical domains

The ORIGINAL target is still
`DirichletStageChain.PrimitiveStageLower modThreeQuadratic
 modThreeQuadratic_primitive modThreeQuadratic_nonprincipal 3`:
Q4(f)>=-E(f)/8 for every original Admissible chi3 4 f.
The sharper open consumer is radiusFour.sharpEdgeSchur, equation(17) of
WeilConductorThreeRadiusFourEdgeSchur. This file proves new source/action
and full-core-complement laws. It DOES NOT assert that open consumer.

Retain H0=L2((0,3),dt;Complex), H1=L2((3,4),dt;Complex), the actual odd zero
extension O4, and the physical antilinear-first inner product. Write
E(O4 u)=2||u||^2, Gamma(f)=integral_(r>0) k(r)||tau_r f-f||^2 dr,
k(r)=exp(-3r/2)/(1-exp(-2r)), and c3=log(3/pi)+psi(3/4).
The native original source is
 Q4(f)=c3 E(f)+Gamma(f)-2 sum_native458 w_n beta_n Re C_f(log n),
 w_n=log(p)/sqrt(n), beta_n=chi3(n), n=p^e<=2980, p!=3.
The character is the actual primitive nonprincipal (0,1,-1) modulo3,
conductor3, parity1, with no principal pole. All458 atoms are retained.
The half-line form is q4[u]=Q4(O4u)/2, and m=q4+||u||^2/8.

Use the actual closed core restriction m00, its self-adjoint A0>=3I/40,
and the actual bounded mixed B=B_gamma+B_prime from EdgeSchur. Their
source return, sharp-cut domain preservation and inherited radius-three
computer-assisted input keep their recorded evidence level. In particular
 A0 has form domain {u in H0:Gamma(O3u)<infinity},
 B_gamma(x,y)=-k(y-x)+k(y+x),
 B_prime=sum_native458 w_n beta_n(R_log_n-S_log_n).
No unknown positivity is part of the admissible carrier. The remaining sign is
 m11[v]>=D(v):=<Bv,A0^(-1)Bv>
for EVERY v in H1 with finite original gamma energy. It is openly UNPROVED.

## 2. Complete residual identity on the unchanged source

For EVERY such v, and ANY actual h in the OPERATOR domain Dom(A0), put
 z=Bv, r=z-A0h. These are genuine H0 vectors. Expanding the quadratic form
of the bounded positive A0^(-1), and using A0h in H0, gives EXACTLY

 D(v)=2 Re<z,h>-m00[h]+<r,A0^(-1)r>.                       (1)

Indeed the last term expands as D(v)-2 Re<z,h>+<h,A0h>, and the form
representation identifies <h,A0h>=m00[h]. Thus, with EVERY omitted core
direction included,

 D(v)<=2 Re<Bv,h>-m00[h]+(40/3)||Bv-A0h||^2.               (2)

This is not a projected inverse. Neither a finite Galerkin solve nor a vanishing
finite residual is substituted for the full H0 norm in(2). Binary64 trial
coefficients can be treated as their exact dyadic reals; no exact-solve premise
then occurs. Their true source head must use
 m11[v]-2 Re<Bv,h>+m00[h]-(40/3)||r||^2,
including both source pairings and the true trial form. A numerical equation
A_finite*h=b_finite may not be used to cancel these terms without its error.

If this true head is nonnegative for a specified v, (2) proves the actual sharp
inequality for that v. Complex linearity and Hermitian homogeneity extend it to
the ENTIRE complex span of v. Together with EdgeSchur's exact completion it then
controls EVERY finite-gamma core component u0 paired with that edge span.
This still does not control arbitrary edge v, and cannot prove the full target
without its remaining edge complement.

## 3. Genuine step trials and an explicit whole-line gamma action

Let u be a finite step function on (0,3), with arbitrary finite complex values,
extended oddly and then by zero. It is in Dom(A0), not merely its form domain.
Its Fourier transform is O(1/|xi|), and the actual gamma multiplier
 g(xi)=sum_(j>=0) 2xi^2/[a_j(a_j^2+xi^2)], a_j=3/2+2j,
is O(log(2+|xi|)). Therefore g*F is in L2; the whole gamma operator acts in
physical L2. Restriction to the core gives the associated core operator through
the form representation. The constant and finite native prime operators are
bounded on L2 and do not change this operator-domain conclusion.

There is no unevaluated singular integral hidden in this instance. Directly
expanding the positive kernel and integrating gives

 H(r)=integral_r^infinity k(s)ds
     =sum_(j>=0) exp(-a_j*r)/a_j
     =atanh(exp(-r/2))-atan(exp(-r/2)), r>0.                (3)

For the last equality set x=exp(-r/2): atanh x-atan x is twice the sum
x^(4j+3)/(4j+3), exactly the displayed series. In particular H'=-k.
For a positive interval [a,b], the whole-line gamma operator on its indicator is
 sign(x-a)H(|x-a|)-sign(x-b)H(|x-b|).
Inside the interval this is H(x-a)+H(b-x); outside it is the negative integral
of k against that indicator. Direct integration of the defining operator proves
the formula away from the two endpoints, which suffice as an L2 identity.

Suppose the positive core step has endpoints b0=0<b1<...<bM=3 and values uj.
Define Delta_j=u_j-u_(j-1) at interior endpoints and Delta_M=-u_(M-1), the
ACTUAL final jump to zero. Its odd extension has jump2u0 at0 and Delta_j at
BOTH the positive and negative b_j. Thus on the entire physical core, almost everywhere,

 G_core u(x)=2u0 H(x)+sum_(j=1)^M Delta_j
       [sign(x-b_j)H(|x-b_j|)+H(x+b_j)].                   (4)

Every logarithmic endpoint singularity in(4) is square integrable. Omitting
the last jump or using only the form norm would invalidate the trial.
The native prime action is its actual bounded partial shift/reflection action;
all458 terms can be evaluated, with geometrically zero terms justified by their
support. Formula(4), the original onsite coefficient and those prime maps
construct A0u itself, so the full residual in(2) is an explicit L2 function.

For a full gamma-action tail, put R_J(r)=sum_(j>=J)exp(-a_j*r)/a_j and a=a_J.
A decreasing integral comparison gives
 R_J(r)<=exp(-a*r)/a+(1/2)E1(a*r),
where E1(y)=integral_y^infinity exp(-t)/t dt. Tonelli proves
 integral_0^infinity E1(y)^2dy=2log2:
split the two t variables into their ordered regions to obtain
2 integral_0^infinity (exp(-t)-exp(-2t))/t dt=2log2.
The last equality also follows by Tonelli from integral_1^2 exp(-s*t)ds.
Squaring with (p+q)^2<=2p^2+2q^2 gives the COMPLETE law

 ||R_J||_(L2(0,infinity))^2<=a^(-3)+(log2)/a.              (5)

Hence the entire omitted action in(4) is bounded in H0 by
 [2|u0|+(1+sqrt2)sum_j|Delta_j|]*sqrt(a^(-3)+(log2)/a).
The absolute-difference term has two half-line pieces and costs sqrt2; the sum
term costs one. This is a physical L2 error bound, not a reference heat tail or
a pointwise bound at the singularity. The closed expression(3) is also available.

## 4. A smooth actual edge and an explicit rational DD core trial

The smoother actual edge direction is

 v*(y)=4/sqrt5 * sin(pi*(y-3))^3 on(3,4), zero elsewhere.  (6)

Its zero extension is C2, since it vanishes to order3 at both endpoints. Its
odd extension is an original Admissible chi3 4 input. Physical norm is EXACTLY
one: integral_0^1 sin(pi*t)^6dt=5/16. It is equivalently
 [3sin(pi*t)-sin(3pi*t)]/sqrt5, t=y-3.

For k=1,...,32 set kappa_k=pi*k/3 and choose
 h*(x)=sum_k d_k sin(kappa_k*x), 0<x<3,
with d_k=the k-th integer in coreTrialNumerators below divided by10^8.
These are specified EXACT rational coefficients, not assertions that a
floating linear solve was exact. This sine basis is UNNORMALIZED:
 ||h*||^2=(3/2)sum_k d_k^2 in physical dt. No Euclidean coefficient norm is
silently substituted. h* vanishes at0 and3; its zero/odd extension is H1 and
in Dom(A0). Equivalently its Fourier decay and the logarithmic multiplier give
the required operator-domain statement directly.

The coefficients were chosen from the root's exploratory 32-mode locator,
then rounded to a NEW rational trial. Historical floating arrays are not claimed
decoded from this rounding. The source and finite data retain both identities.
Finite exact arithmetic, with pi<22/7, proves

 sum|d_k|<1/5, S1=sum|d_k|kappa_k<12/5,
 S2=sum|d_k|kappa_k^2<33.                                 (7)

These give ||h*||_infinity<1/5 and ||h*'||_infinity<12/5. They do not prove
the arithmetic sign or an accuracy claim for the locator.

## 5. Exact DD gamma action and all unobserved components

For one sine h_k=sin(kappa_k*x) on(0,3), its ACTUAL core gamma action is

 G_core h_k(x)=g(kappa_k)sin(kappa_k*x)
  +kappa_k*(-1)^k sum_(j>=0)
     [exp(-a_j*(3-x))-exp(-a_j*(3+x))]/(a_j^2+kappa_k^2). (8)

To verify every coefficient, for one exponential component integrate its
whole-line kernel on the positive interval. The positive-positive resolvent
integral is
 [2a sin(kappa*x)+kappa exp(-a*x)
       -kappa*(-1)^k exp(-a*(3-x))]/(a^2+kappa^2).
The odd reflected kernel adds
 kappa exp(-a*x)[1-(-1)^k exp(-3a)]/(a^2+kappa^2).
The actual component is (2/a)h minus the first integral plus the reflected
integral. Cancellation gives (8), with no factor2 or missing boundary term.
This also proves the formula by the elementary resolvent ODE. Summing is valid
in L2 and uniformly in the displayed boundary series; the form representation
identifies the result with the actual closed source operator.

Put E_j(x)=exp(-a_j*(3-x))-exp(-a_j*(3+x)), so 0<=E_j<=1, and
 A_j=sum_k d_k kappa_k*(-1)^k/(a_j^2+kappa_k^2).
Then G_core h*=sum d_k g(kappa_k)sin(kappa_k*x)+sum A_j E_j(x).

For v* the exact positive Laplace moment is
 V(a)=integral_0^1 exp(-a*t)v*(3+t)dt
     =24pi^3(1+exp(-a))/[sqrt5*(a^2+pi^2)*(a^2+9pi^2)].   (9)
Thus the ACTUAL mixed gamma vector is
 B_gamma v*(x)=-sum_(j>=0) V(a_j)E_j(x).                  (10)
The sign is negative difference plus positive odd-reflection kernel. Finite
series alone do not establish (10): Tonelli for the positive moment, followed
by the explicit uniform tail below, proves the full identity.

All tails can be paid explicitly. For a_j=2j+3/2, exact telescoping yields

 sum_(j>=J) a_j^(-2)<=1/(4J+1),
 sum_(j>=J) a_j^(-3)<=1/(4J+1)^2.                         (11)

For the first compare1/a^2 to1/(a^2-1)=(1/2)[1/(a-1)-1/(a+1)]. For the second
compare1/a^3 to(1/4)[1/(a-1)^2-1/(a+1)^2]. The successive a differ by2,
so finite sums telescope; their remaining positive endpoints tend to zero.
Consequently, for EVERY k and J,

 0<=g(kappa_k)-sum_(j<J)2kappa_k^2/[a_j(a_j^2+kappa_k^2)]
       <=2kappa_k^2/(4J+1)^2,
 sup_x |sum_(j>=J) A_j E_j(x)|<=S1/(4J+1).               (12)

Also V(a)<=48pi^3/(sqrt5*a^4). The convex midpoint integral comparison
sum_(j>=J)a_j^(-4)<=4/[3(4J+1)^3] follows by integrating over each symmetric
unit interval about j, where the convex function's mean dominates its midpoint.
It proves the COMPLETE uniform mixed tail

 sup_x |sum_(j>=J)V(a_j)E_j(x)|
       <=64pi^3/[sqrt5*(4J+1)^3].                         (13)

These laws retain every gamma component and every physical x, including the
limits toward0 and3. They do not infer an arithmetic sign from positive terms.

## 6. One genuine finite source approximation and its full error

Let h_odd be h* oddly extended from(0,3), and v0 be v* zero-extended from(3,4).
The exact residual r*=Bv*-A0h* on(0,3) is

 sum_native458 w_n beta_n[v0(log n-x)-v0(x+log n)]
 +sum_native458 w_n beta_n[h_odd(x+log n)+h_odd(x-log n)]
 -(c3+1/8)h*(x)-sum_k d_k g(kappa_k)sin(kappa_k*x)
 -sum_(j>=0)(A_j+V(a_j))E_j(x).                           (14)

The plus sign in the second sum subtracts the core's NEGATIVE prime operator.
Every source phase is retained. Native support masks make h_odd terms for
new atoms vanish and make the255 purely edge-edge atoms vanish from B, but
their zero is geometric, not an unrecorded truncation of the458 inventory.
The physical joined function (-h*,v*) has zero value traces at the origin,
at the interface3 and at4. Thus the logarithmic VALUE jumps of a discontinuous
trial cancel; no unproved differentiability at the cut is required.

Construct r_fin by using the first1024 summands for each g(kappa_k) and the
first256 summands in the final boundary series. Keep the same true finite
prime sums and true constants; any later numerical approximation adds its own
separate error. Equations(7),(12),(13), sqrt5>2 and pi<22/7 give

 sup_(0<x<3)|r*(x)-r_fin(x)|
 <=66/4097^2+(12/5)/1025+32*(22/7)^3/1025^3
 <1/400.                                                (15)

This is a COMPLETED uniform approximation theorem for an ACTUAL constructed
source instance. Its unobserved gamma-action tail is fully paid. It is not a
completed sign or a statement that finite frequency samples certify r_fin.
Its finite trigonometric/exponential expression can be checked by interval
evaluation with complete interpolation/rounding bounds; that acceptance is OPEN.

## 7. Exact remaining directional acceptance and forward return

The following three concrete source inequalities have NOT been certified:

 m11[v*]>=9/50,
 |<Bv*,h*>|<=13/200,
 sup_(0<x<3)|r_fin(x)|<=3/100.                            (16)

They concern the explicitly specified v*, rational h*, original458 atoms,
physical norm, source constants and finite gamma sums. They are not generic
interface fields or an assumed target. Equation(15) would make the true residual
at most13/400<1/30 pointwise, hence ||r*||^2<=3*(1/30)^2=1/300.
The already proved A0>=3I/40 gives m00[h*]>=0. Therefore (1)--(2),(16) would give

 m11[v*]-D(v*)
 >=9/50-2*(13/200)-(40/3)*(1/300)=1/180>0.                (17)

For EVERY complex scalar c the SAME actual source then has
 m11[c*v*]-D(c*v*)>=|c|^2/180.
Schur completion returns the original radius-four bound for EVERY finite-gamma
core component u0 coupled to this complete complex edge span. This remains a
proper subset of all edge vectors. Neither (16), arbitrary-edge Schur positivity,
PrimitiveStageLower j=3, RH nor complete Dirichlet GRH is claimed proved here.
The exact next local lemma is (16) with rigorous true-source enclosures. The
entire arbitrary-edge complement remains an additional mathematical obligation.

## 8. Numerical evidence, heat, coding and retained data

The root's smooth32 locator reports m11 about.1893480184, b.h about.0630018458,
and full residual squared about2.4915e-5 for its unrounded floating trial.
Those values suggest large margin for (16) but are NOT interval certificates.
Its archive is grwtsk/noeaaeue
 .cache/chi3-sharp-edge-20261107-root/smooth_sine_locator_N32.json,
SHA256 230022a576bb526c49ae0db3d498f46a313164e8cecc811e39d137ba7b745723.
The new rational trial below is a separate explicitly chosen object. Earlier
box-step trials and trace-correcting ramps failed the coarse residual bound;
their passing finite compressions do not validate the full inverse.
No new computation is claimed to prove (16), and the universal edge sign stays
OPEN. Scalar Lean declarations below have only their actually recorded status.

The actual source heat is T0(t)=exp(-tA0) on H0. For the TRUE residual r in(1),
 <r,A0^(-1)r>=integral_0^infinity ||T0(t/2)r||^2dt,
and the entire tail after L is at most(40/3)exp(-3L/40)||r||^2. Tonelli for the
nonnegative spectral measure proves this for arbitrary r in H0, without an
operator-domain assumption on r. This is the exact source return to(1), not
reference heat or a Markov interpretation of the signed prime operator.

Separately use the native exhaustive branch-coverage instance on representable
dependent descriptions: pi_n=2^(-n-1), complete reference tail2^(-J), and
x=2Kx-(sum Kx)pi for summable branch states. Positive coverage gives no sign.
The finite descriptions retain the source pin/declarations, chi3 and parity,
all458 exact log/sqrt atoms, H0/H1 and physical metric, every original binder,
the actual A0,B,m11 and residual identity, chosen trial and its basis/normalization,
all32 rational coefficients, all cut masks, all gamma sums/tails/errors,
approximation procedures and separate evidence/OPEN statuses.
Use CompactFilterReturn/WeightedStage's dependent finite-syntax interface.
Finite tagged source trees encode binders and definitions, not invented finite
values for arbitrary L2 functions. Structural reconstruction preserves the
dependent pair: decode(encode x)=some x; on its image decodeImage(encode x)=x.
No finite recipe eliminates the analytical laws(1)--(15).

The concrete packet below additionally demonstrates exact reconstruction of
the source/role strings, integer trial coefficients and rational error parameters.
It encodes those fields TOGETHER. The source file's complete written proof and
external locator bytes retain their own identities; this small packet does not
claim to encode discarded historical Gram factors or every external observation.
All errors and all unresolved acceptance statements remain present on decoding.

Comparison: the residual law is exact quadratic completion with a positive
resolvent; the actions are derived from the actual exponential gamma kernel.
The independent step/Fourier domain check and the Robin-resolvent DD calculation
agree on the SAME normalization. They share the same inherited core lower bound,
not a second independent proof of its old multi-million-packet computation.
Classical source references are DLMF5.9.16 and the native EdgeSchur source;
no theorem-level novelty or human review is asserted.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeSharpEdgeResidual

def coreTrialNumerators : List ℤ :=
  [-10158, 19128, -24863, 22575, 1543, -100713, 680146, 3101701,
   -1653447, 2822644, 6823048, -1224399, 596617, -346836, 6106, -41425,
   -400673, -500839, 63850, -413278, 203110, -133407, 95134, -28573,
   -150788, -164344, 23611, -449, -120933, -46859, -24824, 63808]

theorem coreTrial_length : coreTrialNumerators.length = 32 := by decide

def coefficientAbsPrice : ℚ :=
  (coreTrialNumerators.map (fun n => |(n : ℚ)|)).sum / 10 ^ 8

theorem coefficientAbsPrice_exact :
    coefficientAbsPrice = 19909829 / 10 ^ 8 ∧ coefficientAbsPrice < 1 / 5 := by
  norm_num [coefficientAbsPrice, coreTrialNumerators]

def coefficientDerivativePrice (power : ℕ) : ℚ :=
  ((coreTrialNumerators.zipIdx).map
    (fun t => |(t.1 : ℚ)| * ((t.2 + 1 : ℕ) : ℚ) ^ power)).sum /
      10 ^ 8 * (22 / 21) ^ power

/-- Both derivative prices are recomputed from the ACTUAL encoded coefficient
list. The analytical pi<22/7 return to S1,S2 is the written proof in (7). -/
theorem coefficientDerivativePrice_exact :
    coefficientDerivativePrice 1 = 5025154442 / 2100000000 ∧
      coefficientDerivativePrice 2 = 360384324971 / 11025000000 := by
  norm_num [coefficientDerivativePrice, coreTrialNumerators, List.zipIdx]

theorem coefficient_derivative_prices :
    coefficientDerivativePrice 1 < 12 / 5 ∧
      coefficientDerivativePrice 2 < 33 := by
  rw [coefficientDerivativePrice_exact.1, coefficientDerivativePrice_exact.2]
  norm_num

/-- Entire unknown gamma-action tail for the specified trial and truncations. -/
theorem full_action_tail_price :
    (66 / 4097 ^ 2 + (12 / 5) / 1025 +
      32 * (22 / 7) ^ 3 / 1025 ^ 3 : ℚ) < 1 / 400 := by
  norm_num

theorem finite_to_true_residual_price :
    (3 / 100 + 1 / 400 : ℚ) = 13 / 400 ∧
      (13 / 400 : ℚ) < 1 / 30 ∧
      (3 : ℚ) * (1 / 30) ^ 2 = 1 / 300 := by
  norm_num

theorem directional_acceptance_margin :
    (9 / 50 - 2 * (13 / 200) - (40 / 3) * (1 / 300) : ℚ) = 1 / 180 := by
  norm_num

/-- This scalar consumer does not assert any of its actual-source sign inputs. -/
theorem residual_sufficient_scalar (m b a e : ℝ)
    (hm : 9 / 50 ≤ m) (hb : |b| ≤ 13 / 200)
    (ha : 0 ≤ a) (he : e ≤ 1 / 300) :
    1 / 180 ≤ m - 2 * b + a - (40 / 3) * e := by
  have hbu := (abs_le.mp hb).2
  linarith

local instance : Encodable Char :=
  Encodable.ofLeftInverse Char.toNat Char.ofNat Char.ofNat_toNat

local instance : Encodable String :=
  Encodable.ofLeftInverse String.toList String.ofList
    (fun _ => String.ofList_toList)

def trialPacket :
    (String × String × String) × (List ℤ × List ℚ) :=
  (("grwtsk/math", "12e3471d075669ca7ff09c41b8df7e5ab64f18fc",
    "radiusFour.sharpEdgeSchur;physical-L2-dt;core-DD-unnormalized;directional-acceptance-OPEN"),
   (coreTrialNumerators,
    [3, 4, 10 ^ 8, 1024, 256, 3 / 40, 40 / 3,
     1 / 400, 3 / 100, 9 / 50, 13 / 200, 1 / 300, 1 / 180]))

theorem trialPacket_roundtrip :
    Encodable.decode (Encodable.encode trialPacket) = some trialPacket :=
  Encodable.encodek trialPacket

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeSharpEdgeResidual
