/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.SchurObserverCertificate
import Mathlib.Tactic.FieldSimp

/-!
# Rank-one positivity from a source-exact variational residual

The consumer is a real form-domain problem q(v)=a(v,v)-tau*ell(v)^2.
For the physical odd zeta pole tau=2. After an old/new Schur elimination,
tau=2/delta with the independently established old scalar margin delta>0.
The functional ell and the solution a(x,v)=ell(v) refer to the SAME source
form. No inverse existence, coercivity, or source identification is inferred
from a model label, a trial norm, or the existence of these parameters.

Primary argument. Strict positivity of a and the supplied solution imply
ell(v)^2 <= ell(x)*a(v,v), by completing the square at
v-(ell(v)/ell(x))*x; x=0 is treated separately. Testing at x proves the
converse. Thus q>=0 iff tau*ell(x)<=1 for tau>=0.

For a trial y, use the EXISTING SchurResidual.inverse_energy_defect:
  ell(x) - (2 ell(y)-a(y,y)) = a(x-y,x-y).
The actual residual functional is ell-a(y,.). Coercivity sigma*||v||^2<=a(v,v)
and its whole-domain norm bound rho give an upper error rho^2/sigma using the
EXISTING residual_energy_budget. The finite variational value alone is a
LOWER bound for the inverse energy. It cannot certify positivity of q.
Scalar observation uncertainty is added before the strict rank-one test.
An inverse-free alternative uses form Cauchy--Schwarz and the existing Young
inequality to bound ell(v)^2 by
  [(1+t)*a(y,y)+(1+1/t)*rho^2/sigma]*a(v,v), t>0.
Its strict scalar test requires no exact solution vector as certificate data.

This is mathematical interoperability with the existing source-residual
machinery, not another checker. The carrier may be a real operator form domain
with its inherited ambient norm and need not be complete. To instantiate the
canonical Weil operator, prove the form-domain realization, the full residual
bound (including EVERY tail), and the coercive floor independently. Complex
character forms are not silently converted into a one-real-functional update.

Comparison: Desogus arXiv:2609.20367v3 (6 October 2026, internally V4),
Lemmas 6.1--6.2 and the reference accounting in Corollary 8.2. No claimed
cofinal sign from that manuscript is a premise here. Standard rank-one and
variational identities; no theorem-level novelty claim.
Source baseline: grwtsk/math 41d523fbccff6a9fc6d844415632d15114bf93b2.
AI-assisted manual drafting. Elaboration, fresh kernel checking, transitive
axiom audit and independent analytical review: NOT_RUN. No RH/GRH conclusion.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.LinearAlgebra.RankOneResidual

open GRWTSK.LinearAlgebra.SchurResidual

section Algebra
variable {V : Type*} [AddCommGroup V] [Module ℝ V]

/-- The residual is defined from the actual equation, not chosen after testing. -/
def responseResidual (a : LinearMap.BilinForm ℝ V) (ell : V →ₗ[ℝ] ℝ)
    (y : V) : V →ₗ[ℝ] ℝ := ell - a y

theorem residual_on_error (a : LinearMap.BilinForm ℝ V)
    (ell : V →ₗ[ℝ] ℝ) (x y : V) (hsolve : ∀ v, a x v = ell v) :
    responseResidual a ell y (x - y) = a (x - y) (x - y) := by
  change ell (x - y) - a y (x - y) = _
  rw [← hsolve (x - y), LinearMap.BilinForm.sub_left]

/-- Strict form positivity implies nonnegativity, including the zero vector. -/
theorem positive_form_nonneg (a : LinearMap.BilinForm ℝ V)
    (hpositive : ∀ v, v ≠ 0 → 0 < a v v) (v : V) : 0 ≤ a v v := by
  by_cases hv : v = 0
  · subst v
    simp
  · exact (hpositive v hv).le

/-- The source representer supplies the dual-energy inequality. This does not
assume a bound on the scalar that the rank-one test is meant to establish. -/
theorem representer_cauchy (a : LinearMap.BilinForm ℝ V)
    (ell : V →ₗ[ℝ] ℝ) (hsym : ∀ v w, a v w = a w v)
    (hpositive : ∀ v, v ≠ 0 → 0 < a v v)
    (x : V) (hsolve : ∀ v, a x v = ell v) (v : V) :
    (ell v) ^ 2 ≤ ell x * a v v := by
  by_cases hx : x = 0
  · subst x
    have hv : ell v = 0 := by
      simpa only [LinearMap.BilinForm.zero_left] using (hsolve v).symm
    simp [hv]
  · have he : 0 < ell x := by rw [← hsolve x]; exact hpositive x hx
    have hvx : a v x = ell v := by rw [hsym v x, hsolve v]
    have hid : ell x * a (v - (ell v / ell x) • x)
        (v - (ell v / ell x) • x) = ell x * a v v - (ell v) ^ 2 := by
      simp only [LinearMap.BilinForm.sub_left, LinearMap.BilinForm.sub_right,
        LinearMap.BilinForm.smul_left, LinearMap.BilinForm.smul_right, hvx, hsolve]
      field_simp [ne_of_gt he]
      <;> ring
    have hp := mul_nonneg he.le
      (positive_form_nonneg a hpositive (v - (ell v / ell x) • x))
    rw [hid] at hp
    linarith

/-- An independently proved upper bound for the inverse energy gives a lower
bound for the original rank-one-perturbed form, with the correct direction. -/
theorem rankOne_lower_of_inverse_upper
    (a : LinearMap.BilinForm ℝ V) (ell : V →ₗ[ℝ] ℝ)
    (hsym : ∀ v w, a v w = a w v)
    (hpositive : ∀ v, v ≠ 0 → 0 < a v v)
    (x : V) (hsolve : ∀ v, a x v = ell v)
    {tau U : ℝ} (htau : 0 ≤ tau) (hupper : ell x ≤ U) (v : V) :
    (1 - tau * U) * a v v ≤ a v v - tau * (ell v) ^ 2 := by
  have hc := representer_cauchy a ell hsym hpositive x hsolve v
  have hu := mul_le_mul_of_nonneg_right hupper (positive_form_nonneg a hpositive v)
  have hm := mul_le_mul_of_nonneg_left (hc.trans hu) htau
  nlinarith

/-- Exact operator-to-scalar criterion, conditional on the supplied realization
and variational solution, not on the desired scalar sign. -/
theorem rankOne_nonnegative_iff
    (a : LinearMap.BilinForm ℝ V) (ell : V →ₗ[ℝ] ℝ)
    (hsym : ∀ v w, a v w = a w v)
    (hpositive : ∀ v, v ≠ 0 → 0 < a v v)
    (x : V) (hsolve : ∀ v, a x v = ell v)
    {tau : ℝ} (htau : 0 ≤ tau) :
    (∀ v, 0 ≤ a v v - tau * (ell v) ^ 2) ↔ tau * ell x ≤ 1 := by
  constructor
  · intro h
    by_cases hx : x = 0
    · subst x
      simp
    · have he : 0 < ell x := by rw [← hsolve x]; exact hpositive x hx
      have hh := h x
      rw [hsolve x] at hh
      apply (mul_le_mul_left he).mp
      nlinarith [hh]
  · intro h v
    have hl := rankOne_lower_of_inverse_upper a ell hsym hpositive x hsolve htau
      (le_refl (ell x)) v
    have hp := mul_nonneg (sub_nonneg.mpr h) (positive_form_nonneg a hpositive v)
    exact hp.trans hl

/-- Equality in the scalar test gives an actual null direction, not strict positivity. -/
theorem rankOne_threshold_null
    (a : LinearMap.BilinForm ℝ V) (ell : V →ₗ[ℝ] ℝ)
    (x : V) (hsolve : ∀ v, a x v = ell v)
    {tau : ℝ} (hthreshold : tau * ell x = 1) :
    a x x - tau * (ell x) ^ 2 = 0 := by
  rw [hsolve x]
  calc
    ell x - tau * (ell x) ^ 2 = ell x * (1 - tau * ell x) := by ring
    _ = 0 := by rw [hthreshold]; ring

end Algebra

section NormedForm
variable {V : Type*} [NormedAddCommGroup V] [NormedSpace ℝ V]

/-- Full-domain coercivity, not positivity of a finite compression. -/
theorem positive_of_coercive (a : LinearMap.BilinForm ℝ V)
    {sigma : ℝ} (hsigma : 0 < sigma)
    (hcoerc : ∀ v, sigma * ‖v‖ ^ 2 ≤ a v v) :
    ∀ v, v ≠ 0 → 0 < a v v := by
  intro v hv
  have hn : 0 < ‖v‖ := norm_pos_iff.mpr hv
  exact (mul_pos hsigma (pow_pos hn 2)).trans_le (hcoerc v)

/-- Two-sided source inverse-energy enclosure. The finite variational value is
below the source; its WHOLE residual is needed for the upper estimate. -/
theorem inverse_energy_enclosure
    (a : LinearMap.BilinForm ℝ V) (ell : V →ₗ[ℝ] ℝ)
    (hsym : ∀ v w, a v w = a w v) (x y : V)
    (hsolve : ∀ v, a x v = ell v)
    {sigma rho : ℝ} (hsigma : 0 < sigma) (hrho : 0 ≤ rho)
    (hcoerc : ∀ v, sigma * ‖v‖ ^ 2 ≤ a v v)
    (hres : ∀ v, |responseResidual a ell y v| ≤ rho * ‖v‖) :
    2 * ell y - a y y ≤ ell x ∧
      ell x ≤ 2 * ell y - a y y + rho ^ 2 / sigma := by
  have hr := hres (x - y)
  rw [residual_on_error a ell x y hsolve] at hr
  have hd : a (x - y) (x - y) ≤ rho * ‖x - y‖ :=
    (le_abs_self _).trans hr
  have hb := residual_energy_budget hsigma (norm_nonneg (x - y)) hrho
    (hcoerc (x - y)) hd
  have hi := inverse_energy_defect a ell hsym x y hsolve
  constructor <;> linarith [hb.1, hb.2]

/-- Observation of the variational scalar has its own paid uncertainty. -/
theorem observed_inverse_upper
    (a : LinearMap.BilinForm ℝ V) (ell : V →ₗ[ℝ] ℝ)
    (hsym : ∀ v w, a v w = a w v) (x y : V)
    (hsolve : ∀ v, a x v = ell v)
    {sigma rho observed error : ℝ} (hsigma : 0 < sigma) (hrho : 0 ≤ rho)
    (hcoerc : ∀ v, sigma * ‖v‖ ^ 2 ≤ a v v)
    (hres : ∀ v, |responseResidual a ell y v| ≤ rho * ‖v‖)
    (hobs : |(2 * ell y - a y y) - observed| ≤ error) :
    ell x ≤ observed + error + rho ^ 2 / sigma := by
  have hu := (inverse_energy_enclosure a ell hsym x y hsolve hsigma hrho hcoerc hres).2
  have ho := (abs_le.mp hobs).2
  linarith

/-- Full quantitative return. The source can be an unbounded operator's form
on its actual domain; no bounded operator on the ambient space is assumed. -/
theorem rankOne_coercive_of_inverse_upper
    (a : LinearMap.BilinForm ℝ V) (ell : V →ₗ[ℝ] ℝ)
    (hsym : ∀ v w, a v w = a w v) (x : V)
    (hsolve : ∀ v, a x v = ell v)
    {sigma tau U : ℝ} (hsigma : 0 < sigma) (htau : 0 ≤ tau)
    (hcoerc : ∀ v, sigma * ‖v‖ ^ 2 ≤ a v v)
    (hupper : ell x ≤ U) (hmargin : tau * U < 1) (v : V) :
    (1 - tau * U) * sigma * ‖v‖ ^ 2 ≤ a v v - tau * (ell v) ^ 2 := by
  have hp := positive_of_coercive a hsigma hcoerc
  have hl := rankOne_lower_of_inverse_upper a ell hsym hp x hsolve htau hupper v
  have hc := mul_le_mul_of_nonneg_left (hcoerc v) (sub_nonneg.mpr hmargin.le)
  nlinarith

/-- Source-exact replacement for an unpaid reference-energy cancellation.
The old margin delta, the pole coefficient 2, observation error, and complete
residual cost all occur in the strict hypothesis before concluding positivity. -/
theorem odd_update_positive_of_residual
    (a : LinearMap.BilinForm ℝ V) (ell : V →ₗ[ℝ] ℝ)
    (hsym : ∀ v w, a v w = a w v) (x y : V)
    (hsolve : ∀ v, a x v = ell v)
    {sigma rho delta observed error : ℝ}
    (hsigma : 0 < sigma) (hrho : 0 ≤ rho) (hdelta : 0 < delta)
    (hcoerc : ∀ v, sigma * ‖v‖ ^ 2 ≤ a v v)
    (hres : ∀ v, |responseResidual a ell y v| ≤ rho * ‖v‖)
    (hobs : |(2 * ell y - a y y) - observed| ≤ error)
    (hmargin : 2 * (observed + error + rho ^ 2 / sigma) < delta) :
    ∀ v, v ≠ 0 → 0 < a v v - (2 / delta) * (ell v) ^ 2 := by
  have hu := observed_inverse_upper a ell hsym x y hsolve hsigma hrho hcoerc hres hobs
  have htau : 0 ≤ (2 / delta : ℝ) := div_nonneg (by norm_num) hdelta.le
  have hm : (2 / delta) * (observed + error + rho ^ 2 / sigma) < 1 := by
    rw [div_mul_eq_mul_div]
    exact (div_lt_one hdelta).mpr hmargin
  intro v hv
  have hl := rankOne_coercive_of_inverse_upper a ell hsym x hsolve hsigma htau
    hcoerc hu hm v
  have hn : 0 < ‖v‖ := norm_pos_iff.mpr hv
  have hp : 0 < (1 - (2 / delta) * (observed + error + rho ^ 2 / sigma)) *
      sigma * ‖v‖ ^ 2 :=
    mul_pos (mul_pos (sub_pos.mpr hm) hsigma) (pow_pos hn 2)
  exact hp.trans_le hl

/-- Inverse-free alternative: a trial and its actual residual bound the dual
energy directly. Young's tuning parameter is positive and all terms are paid.
No exact inverse or solution vector is an input to this theorem. -/
theorem trial_dual_energy_bound
    (a : LinearMap.BilinForm ℝ V) (ell : V →ₗ[ℝ] ℝ)
    (hsym : ∀ v w, a v w = a w v) (y : V)
    {sigma rho tuning : ℝ} (hsigma : 0 < sigma) (hrho : 0 ≤ rho)
    (htuning : 0 < tuning)
    (hcoerc : ∀ v, sigma * ‖v‖ ^ 2 ≤ a v v)
    (hres : ∀ v, |responseResidual a ell y v| ≤ rho * ‖v‖) (v : V) :
    (ell v) ^ 2 ≤
      ((1 + tuning) * a y y + (1 + tuning⁻¹) * rho ^ 2 / sigma) * a v v := by
  have hp := positive_of_coercive a hsigma hcoerc
  have hy := representer_cauchy a (a y) hsym hp y (fun w => rfl) v
  have hn : ‖v‖ ^ 2 ≤ a v v / sigma := by
    apply (le_div_iff₀ hsigma).mpr
    simpa only [mul_comm] using hcoerc v
  have hr : (responseResidual a ell y v) ^ 2 ≤ (rho * ‖v‖) ^ 2 := by
    apply sq_le_sq.mpr
    simpa only [abs_of_nonneg (mul_nonneg hrho (norm_nonneg v))] using hres v
  have hr' : (responseResidual a ell y v) ^ 2 ≤ (rho ^ 2 / sigma) * a v v := by
    calc
      _ ≤ rho ^ 2 * ‖v‖ ^ 2 := by simpa only [mul_pow] using hr
      _ ≤ rho ^ 2 * (a v v / sigma) := mul_le_mul_of_nonneg_left hn (sq_nonneg rho)
      _ = _ := by ring
  have he : ell v = a y v + responseResidual a ell y v := by
    change ell v = a y v + (ell v - a y v)
    ring
  calc
    (ell v) ^ 2 = (a y v + responseResidual a ell y v) ^ 2 := by rw [← he]
    _ ≤ (1 + tuning) * (a y v) ^ 2 +
        (1 + tuning⁻¹) * (responseResidual a ell y v) ^ 2 :=
      GRWTSK.LinearAlgebra.SchurObserver.weighted_square _ _ _ htuning
    _ ≤ (1 + tuning) * (a y y * a v v) +
        (1 + tuning⁻¹) * ((rho ^ 2 / sigma) * a v v) :=
      add_le_add (mul_le_mul_of_nonneg_left hy (by linarith))
        (mul_le_mul_of_nonneg_left hr' (by positivity))
    _ = _ := by ring

/-- A directly usable sufficient positivity test, without supplying an exact
inverse vector. The independently justified full coercive form and residual
are still mandatory. This may be coarser than the variational enclosure. -/
theorem odd_update_positive_of_trial
    (a : LinearMap.BilinForm ℝ V) (ell : V →ₗ[ℝ] ℝ)
    (hsym : ∀ v w, a v w = a w v) (y : V)
    {sigma rho delta tuning : ℝ}
    (hsigma : 0 < sigma) (hrho : 0 ≤ rho) (hdelta : 0 < delta)
    (htuning : 0 < tuning)
    (hcoerc : ∀ v, sigma * ‖v‖ ^ 2 ≤ a v v)
    (hres : ∀ v, |responseResidual a ell y v| ≤ rho * ‖v‖)
    (hmargin : 2 * ((1 + tuning) * a y y +
      (1 + tuning⁻¹) * rho ^ 2 / sigma) < delta) :
    ∀ v, v ≠ 0 → 0 < a v v - (2 / delta) * (ell v) ^ 2 := by
  let U := (1 + tuning) * a y y + (1 + tuning⁻¹) * rho ^ 2 / sigma
  have hm : (2 / delta) * U < 1 := by
    rw [div_mul_eq_mul_div]
    exact (div_lt_one hdelta).mpr hmargin
  have htau : 0 ≤ (2 / delta : ℝ) := div_nonneg (by norm_num) hdelta.le
  intro v hv
  have hd : (ell v) ^ 2 ≤ U * a v v :=
    trial_dual_energy_bound a ell hsym y hsigma hrho htuning hcoerc hres v
  have hmul := mul_le_mul_of_nonneg_left hd htau
  have hp := mul_pos (sub_pos.mpr hm) (positive_of_coercive a hsigma hcoerc v hv)
  nlinarith

end NormedForm

section HilbertResidual
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]

/-- A genuine residual vector supplies the full dual bound by Cauchy--Schwarz.
The representation must include omitted modes; no finite-row equality suffices. -/
theorem residual_bound_of_vector
    (a : LinearMap.BilinForm ℝ V) (ell : V →ₗ[ℝ] ℝ) (y r : V)
    (hrep : ∀ v, responseResidual a ell y v = inner ℝ r v)
    {rho : ℝ} (hnorm : ‖r‖ ≤ rho) (v : V) :
    |responseResidual a ell y v| ≤ rho * ‖v‖ := by
  rw [hrep]
  calc
    |inner ℝ r v| = ‖inner ℝ r v‖ := (Real.norm_eq_abs _).symm
    _ ≤ ‖r‖ * ‖v‖ := norm_inner_le_norm _ _
    _ ≤ rho * ‖v‖ := mul_le_mul_of_nonneg_right hnorm (norm_nonneg v)

end HilbertResidual

/-- A zero trial makes the variational lower estimate harmless even when the
true inverse-energy scalar violates the physical coefficient-2 threshold. -/
theorem zero_trial_is_not_an_upper_certificate :
    (2 : ℝ) * (2 * 0 - 0 ^ 2) < 1 ∧
      ¬ (2 : ℝ) * 1 < 1 ∧ (1 : ℝ) - 2 * 1 ^ 2 < 0 := by norm_num

end GRWTSK.LinearAlgebra.RankOneResidual
