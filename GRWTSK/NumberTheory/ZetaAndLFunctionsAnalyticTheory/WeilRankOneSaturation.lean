/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.RankOneResidualCertificate
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring
import Mathlib.Tactic.FieldSimp

/-!
# Theta-response saturation of the full odd rank-one certificate

Outcome: the requested cofinal lower sign and a passing residual certificate
remain unproved. This increment rules out a particular attempted certificate,
not positivity of the genuine operator or a boundary-adapted construction.

Source: Connes--Consani--Moscovici arXiv:2511.22755v1 (3.5), (3.7)--(3.11),
(3.19)--(3.20), with zero extension and Fourier kernel exp(-izt). On its real
odd domain let ell(f)=integral f(t)sinh(t/2)dt and a_T=Q_T+2ell^2, operator B_T.
Oddness makes the cosh moment zero; the negative pole remains the rank-one
update. No positivity of a_T is inferred. Use phihat=Xi with Xi(i/2)=1/2,
y=-2phi', y_T=1_window y, J_T=2ell(y_T)-a_T(y_T,y_T), and d_T=1/2-J_T.
Write lambda=exp(T), b=pi*lambda^2, L=1+log(lambda), e=exp(-pi*lambda^2).

Analytical result, for constants independent of sufficiently large T:
  c lambda^11 L e^2 <= d_T <= C lambda^11 L e^2;
  c lambda^(11/2)e <= ||B_T y_T-sinh(. /2)||
                     <= C lambda^(11/2)L^(3/2)e;
  there is an odd unit w_T with ell(w_T)=0 and
  |a_T(w_T,w_T)|<=C lambda^19 L e^2.
Thus every full-domain positive coercive floor sigma obeys the last upper bound,
and every whole residual allowance rho satisfies
  rho^2/(sigma*d_T)>=c exp(2pi lambda^2)/(lambda^19 L^2) -> infinity.
The existing sufficient test 2(J_T+rho^2/sigma)<1 therefore fails for this trial.
The actual weighted inverse residual may be much smaller than rho^2/sigma.

Primary analytic argument (not a formalized operator proof):
1. The Gaussian Mellin integral and Poisson summation give the normalized even
   theta kernel; integration by parts gives ell(phi')=-1/4, ell(phi''')=-1/16,
   and ell(y)=1/2. The explicit formula gives Q(phi^(j),g)=0 because the
   transform (iz)^j Xi(z) vanishes at every zero, without RH. Smooth convolution
   with a compact piecewise smooth factor and the O(R log R) zero count justify
   the test-class passage. Hence Q_T(1_window h)=Q(1_exterior h) for the finite
   derivative combinations used. Their Fourier decay O(1/|xi|) times the actual
   logarithmic symbol is in L2, proving the canonical operator-domain return.
2. Theta differentiation gives exterior envelopes A_j exp(-bx) and derivative
   bounds C A_j b exp(-bx), A_j=lambda^(9/2+2j)e, for each fixed j. The n=1 term
   gives y(T+x)>=c A_1 on 0<=x<=1/b. A two-sided tail of amplitude A has energy
   E<=C A^2(1+log b)/b, pole cost <=C A^2 lambda/(b-1/2)^2, and correlation
   <=C A^2[exp(-br)/b+1_{r>=2T}(r-2T)exp(-b(r-2T))]. All jumps are included.
   For X>=4 and h>=max(2,c0 X), a decreasing integral comparison gives
     sum_{n>=X}(log n)/sqrt(n)*(n/X)^(-h)
       <=log(X)/sqrt(X)+sqrt(X)[log(X)/(h-1/2)+1/(h-1/2)^2].
   This works for nonintegral X. Using u exp(-bu)<=2exp(-bu/2)/(exp(1)*b)
   retains the entire opposite-tail prime sum at cost C A^2 L/(b*lambda).
   Same-tail prime cost is C A^2 2^(-b)/b. Thus |Q(tail)|<=C A^2 L/b.
3. For the odd y-tail, E>=c A_1^2 log(b)/b by integrating translations from
   K/b to 1. Opposite-tail prime terms are nonnegative; negative diagonal,
   pole and same-tail contributions are lower order. Therefore Q(y-y_T) has
   matching positive upper/lower bounds of that scale. Exactly
     d_T=Q_T(y_T)+2(ell(y_T)-1/2)^2,
   and the moment error is <=C A_1 sqrt(lambda)/b. This proves the deficit.
4. Put f_j=1_window phi^(j), c_T=ell(f_3)/ell(f_1), and normalize
   f_3-c_T f_1. Its moment is exactly zero; it tends to the nonzero function
   phi'''-phi'/4, whose transform is -iz(z^2+1/4)Xi(z). The tail estimate with
   A=C A_3 proves the actual unit-test bound. For any finite nonnegative reference
   allocations E_i on the SAME full domain, a remaining floor must obey
   sigma+sum_i E_i(w_T)<=C lambda^19 L e^2. This does not refute a collar or
   harmonic-graph estimate in another norm without its source-return theorem.
5. The distributional equation B y=sinh(. /2) gives the literal full residual
     B_T y_T(t)-sinh(t/2)=integral_exterior kappa(|u-t|)(y-y_T)(u)du
       +sum_{n>=2}Lambda(n)/sqrt(n)[(y-y_T)(t+log n)+(y-y_T)(t-log n)].
   It includes infinitely many primes. The integral costs C A_1/sqrt(b) by
   kappa(r)<=1/(2r)+exp(-r/2) and the half-line Carleman norm <=pi. For n<=Y,
   Y=lambda^2, the right-tail exponential envelopes start at T-log n, separated
   by >=1/Y. Their Gram entries are exp(-b|log n-log m|)/(2b), with row sums
   <=C/b. Their weighted squared norm is <=C/b sum_{n<=Y}Lambda(n)^2/n
   <=C(1+log Y)^3/b. For n>Y the preceding discrete bound pays the common
   envelope coefficient C(1+log Y)/sqrt(Y). Reflect for the other tail.
   This proves the complete residual upper bound. At t=T-delta, with
   1/(2b)<=delta<=1/b, the right integral is >=c A_1. The opposite integral
   costs O(A_1/(lambda*b)); all negative left prime terms together cost
   O(A_1(1+log Y)/sqrt(Y)), using X=exp(t+T). Right prime terms are nonnegative.
   Integrating this boundary lower bound proves the residual lower estimate.
6. Passing requires rho^2<sigma*d_T. Its right side is <=C lambda^30 L^2 e^4,
   whereas the left side is >=c lambda^11 e^2. Their ratio gives the obstruction.
   No lower bound on the weighted inverse residual is inferred from this.

Comparison: the earlier hard-cutoff result concerned 1_window phi as a ground
vector, not the inverse response -2 1_window phi'. Both share the normalized
theta kernel and explicit formula; neither is an independent review of those
inputs. Fresh primary reads included CCM and Desogus arXiv:2609.20367v3,
rendered pp.55--56 (internally V4). The reference-surplus identity alone does
not establish the remaining source lower sign. No refutation of that full
manuscript or theorem-level novelty is asserted. Cofinal arithmetic positivity,
RH/GRH, finite-prolate comparison and directional weighted control remain open
in this contribution. No new RH/GRH predicate is introduced.

Baseline grwtsk/math a215ea91ff945a003eebb27ee4b3ae7361751d9b. The code below
reuses RankOneResidualCertificate and proves only scalar/form implications;
none of the analytical theta/operator/tail estimates above is formalized here.
AI-assisted manual analysis and source drafting; independent review NOT_RUN.
Three exact symbolic identities and 465 exact rational scalar fixtures passed;
these are not spectral certificates. No numerical T0 is certified.
No Lean/Lake/elan or verified canonical local skill was available. The canonical
noe-proof-automation path returned 404 at noeaaeue main
53f1622af5dc87a29e20408c25f76bbb55243eb1; no dependent automation ran.
Elaboration, fresh kernel checking, transitive axiom audit and certified
arithmetic spectral computation: NOT_RUN. No root imports or pins are changed.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RankOneSaturation

/-- Exact deficit of the variational value for a coefficient-two pole. -/
theorem variational_deficit (m q : ℝ) :
    (1 / 2 : ℝ) - (2 * m - (q + 2 * m ^ 2)) =
      q + 2 * (m - 1 / 2) ^ 2 := by
  ring

/-- The source's whole-line odd moments have this ratio. Only the scalar
arithmetic is formalized here, not their integral evaluation. -/
theorem whole_line_moment_ratio :
    ((-1 / 16 : ℝ) / (-1 / 4)) = 1 / 4 := by
  norm_num

section Moment
variable {V : Type*} [AddCommGroup V] [Module ℝ V]

/-- Exact windowed cancellation uses windowed moments, not their limits. -/
theorem cancel_window_moment (ell : V →ₗ[ℝ] ℝ) (v w : V)
    (hw : ell w ≠ 0) :
    ell (v - (ell v / ell w) • w) = 0 := by
  simp only [map_sub, map_smul, smul_eq_mul]
  field_simp [hw]
  <;> ring

end Moment

/-- A positive trial energy gives a lower deficit, not operator positivity. -/
theorem deficit_bounds {m q lower upper eta : ℝ}
    (hlo : lower ≤ q) (hhi : q ≤ upper) (heta : 0 ≤ eta)
    (hm : |m - 1 / 2| ≤ eta) :
    lower ≤ (1 / 2 : ℝ) - (2 * m - (q + 2 * m ^ 2)) ∧
      (1 / 2 : ℝ) - (2 * m - (q + 2 * m ^ 2)) ≤ upper + 2 * eta ^ 2 := by
  rw [variational_deficit]
  have hs : (m - 1 / 2) ^ 2 ≤ eta ^ 2 := by
    apply sq_le_sq.mpr
    simpa only [abs_of_nonneg heta] using hm
  constructor <;> nlinarith [sq_nonneg (m - 1 / 2)]

section NormedDomain
variable {V : Type*} [NormedAddCommGroup V] [NormedSpace ℝ V]

/-- A true low-energy test constrains every full-domain coercive floor. -/
theorem floor_le_test (a : LinearMap.BilinForm ℝ V) (w : V)
    {sigma epsilon : ℝ} (hw : ‖w‖ = 1)
    (hcoerc : ∀ v, sigma * ‖v‖ ^ 2 ≤ a v v)
    (htest : |a w w| ≤ epsilon) : sigma ≤ epsilon := by
  have h := hcoerc w
  simp only [hw, one_pow, mul_one] at h
  exact h.trans ((le_abs_self _).trans htest)

/-- All reference subtractions are paid on the same actual test. This statement
requires an unchanged source domain; it is not a collar/harmonic-graph return. -/
theorem allocated_floor_le_test {I : Type*} [Fintype I]
    (a : LinearMap.BilinForm ℝ V) (E : I → V → ℝ) (w : V)
    {sigma epsilon : ℝ} (hw : ‖w‖ = 1)
    (hcoerc : ∀ v, sigma * ‖v‖ ^ 2 ≤ a v v - ∑ i, E i v)
    (htest : |a w w| ≤ epsilon) :
    sigma + ∑ i, E i w ≤ epsilon := by
  have h := hcoerc w
  simp only [hw, one_pow, mul_one] at h
  have ht := (le_abs_self (a w w)).trans htest
  linarith

/-- Nonnegative reference allocations cannot improve a full-domain floor. -/
theorem allocated_floor_le_original_test {I : Type*} [Fintype I]
    (a : LinearMap.BilinForm ℝ V) (E : I → V → ℝ) (w : V)
    {sigma epsilon : ℝ} (hw : ‖w‖ = 1)
    (hcoerc : ∀ v, sigma * ‖v‖ ^ 2 ≤ a v v - ∑ i, E i v)
    (htest : |a w w| ≤ epsilon) (hE : ∀ i, 0 ≤ E i w) :
    sigma ≤ epsilon := by
  have h := allocated_floor_le_test a E w hw hcoerc htest
  have hn : 0 ≤ ∑ i, E i w := Finset.sum_nonneg (fun i _ => hE i)
  linarith

/-- Reuse the existing inverse-energy enclosure; a near-threshold lower
variational value rules out a fixed positive rank-one safety margin. -/
theorem inverse_margin_le_trial_deficit
    (a : LinearMap.BilinForm ℝ V) (ell : V →ₗ[ℝ] ℝ)
    (hsym : ∀ v w, a v w = a w v) (x y : V)
    (hsolve : ∀ v, a x v = ell v)
    {sigma rho epsilon : ℝ} (hsigma : 0 < sigma) (hrho : 0 ≤ rho)
    (hcoerc : ∀ v, sigma * ‖v‖ ^ 2 ≤ a v v)
    (hres : ∀ v,
      |GRWTSK.LinearAlgebra.RankOneResidual.responseResidual a ell y v| ≤ rho * ‖v‖)
    (hdeficit : (1 / 2 : ℝ) - (2 * ell y - a y y) ≤ epsilon) :
    1 - 2 * ell x ≤ 2 * epsilon := by
  have hl := (GRWTSK.LinearAlgebra.RankOneResidual.inverse_energy_enclosure
    a ell hsym x y hsolve hsigma hrho hcoerc hres).1
  linarith

end NormedDomain

/-- Passing the source rank-one upper bound requires this relative accuracy. -/
theorem passing_requires_squared_accuracy {J rho sigma : ℝ}
    (hsigma : 0 < sigma) (hpass : 2 * (J + rho ^ 2 / sigma) < 1) :
    rho ^ 2 < sigma * ((1 / 2 : ℝ) - J) := by
  have h : rho ^ 2 / sigma < (1 / 2 : ℝ) - J := by linarith
  have h' := (div_lt_iff₀ hsigma).mp h
  simpa only [mul_comm] using h'

/-- A lower residual bound, upper coercive-floor bound and upper deficit bound
can refute this sufficient certificate. They do NOT refute source positivity. -/
theorem failure_of_scale_bounds {J rho sigma S D B : ℝ}
    (hsigma : 0 < sigma) (hfloor : sigma ≤ S)
    (hdeficit : (1 / 2 : ℝ) - J ≤ D) (hD : 0 ≤ D)
    (hresidual : B ≤ rho ^ 2) (hscale : S * D ≤ B) :
    ¬ 2 * (J + rho ^ 2 / sigma) < 1 := by
  intro hpass
  have hp := passing_requires_squared_accuracy hsigma hpass
  have hb : sigma * ((1 / 2 : ℝ) - J) ≤ S * D := by
    calc
      _ ≤ sigma * D := mul_le_mul_of_nonneg_left hdeficit hsigma.le
      _ ≤ S * D := mul_le_mul_of_nonneg_right hfloor hD
  linarith

/-- Exact cancellation of the common exponential and power scale. The
analytic choice e=exp(-pi*lambda^2) is not formalized by this identity. -/
theorem source_scale_product (x L e Cs Cd : ℝ) :
    (Cs * x ^ 19 * L * e ^ 2) * (Cd * x ^ 11 * L * e ^ 2) =
      (x ^ 11 * e ^ 2) * (Cs * Cd * x ^ 19 * L ^ 2 * e ^ 2) := by
  ring

/-- Consumer of the analytical source estimates. This remains an implication:
the theta estimates and their eventual scale inequality are paper proofs. -/
theorem theta_response_certificate_fails
    {J rho sigma x L e Cs Cd Cr : ℝ}
    (hsigma : 0 < sigma) (hx : 0 ≤ x) (hL : 0 ≤ L) (hCd : 0 ≤ Cd)
    (hfloor : sigma ≤ Cs * x ^ 19 * L * e ^ 2)
    (hdeficit : (1 / 2 : ℝ) - J ≤ Cd * x ^ 11 * L * e ^ 2)
    (hresidual : Cr * x ^ 11 * e ^ 2 ≤ rho ^ 2)
    (hscale : Cs * Cd * x ^ 19 * L ^ 2 * e ^ 2 ≤ Cr) :
    ¬ 2 * (J + rho ^ 2 / sigma) < 1 := by
  have hprod : (Cs * x ^ 19 * L * e ^ 2) * (Cd * x ^ 11 * L * e ^ 2) ≤
      Cr * x ^ 11 * e ^ 2 := by
    rw [source_scale_product]
    calc
      _ ≤ (x ^ 11 * e ^ 2) * Cr :=
        mul_le_mul_of_nonneg_left hscale (by positivity)
      _ = _ := by ring
  exact failure_of_scale_bounds hsigma hfloor hdeficit (by positivity) hresidual hprod

/-- Paying a valid scalar observation error cannot rescue a failed exact-value
certificate. The observed plus error quantity must genuinely majorize J. -/
theorem observation_does_not_repair_failure {J observed error rho sigma : ℝ}
    (hobs : J ≤ observed + error)
    (hfail : ¬ 2 * (J + rho ^ 2 / sigma) < 1) :
    ¬ 2 * (observed + error + rho ^ 2 / sigma) < 1 := by
  intro hp
  apply hfail
  linarith

end GRWTSK.NumberTheory.WeilQuadraticForm.RankOneSaturation
