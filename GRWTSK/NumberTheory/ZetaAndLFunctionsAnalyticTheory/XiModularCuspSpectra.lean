/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiToeplitzHilbertPolyaCriterion
import Mathlib.NumberTheory.Harmonic.ZetaAsymp
import Mathlib.NumberTheory.LSeries.HurwitzZetaValues
import Mathlib.Analysis.Real.Pi.Bounds

/-! # Recovering the actual completed xi function from two cusp heights

The weighted constant term is (45) of Lagarias–Suzuki, arXiv:math/0412039v4,
after s=1/2+w and division by the height square root.
The spectral realization by the surface quadratic forms is in the companion note.
-/
noncomputable section
namespace GRWTSK.NumberTheory.XiModularCuspSpectra

open Complex XiToeplitzHilbertPolyaCriterion

/-- Twice w times the pole-cleared constant term at log height L. -/
def weightedConstant (L w : ℂ) : ℂ :=
  (w-1/2)*exp (L*w)*sourceXi (1+2*w) + (w+1/2)*exp (-(L*w))*sourceXi (1-2*w)

theorem weightedConstant_neg (L w : ℂ) :
    weightedConstant L (-w) = -weightedConstant L w := by
  unfold weightedConstant
  rw [show 1+2*(-w) = 1-2*w by ring, show 1-2*(-w) = 1+2*w by ring]
  simp only [mul_neg, neg_neg]
  ring

private theorem source_eq_completed (z : ℂ) (hz : z ≠ 0) (h1 : z ≠ 1) :
    sourceXi z = (1/2)*z*(z-1)*completedRiemannZeta z := by
  rw [completedRiemannZeta_eq]
  unfold sourceXi
  field_simp [hz, sub_ne_zero.mpr h1.symm]
  ring

/-- Identification with the actual Eisenstein constant-term expression away
from the poles of the factors. -/
theorem weightedConstant_eq_completed (L w : ℂ)
    (h₁ : 1+2*w ≠ 0) (h₂ : 1+2*w ≠ 1) (h₃ : 1-2*w ≠ 0) (h₄ : 1-2*w ≠ 1) :
    weightedConstant L w = 2*w*(w^2-1/4)*
      (exp (L*w)*completedRiemannZeta (1+2*w) +
       exp (-(L*w))*completedRiemannZeta (1-2*w)) := by
  unfold weightedConstant
  rw [source_eq_completed _ h₁ h₂, source_eq_completed _ h₃ h₄]
  ring

/-- The incoming amplitude at the two heights cancels identically. -/
theorem two_height_identity (L M w : ℂ) :
    exp (-(L*w))*weightedConstant M w - exp (-(M*w))*weightedConstant L w =
      (2*sinh ((M-L)*w))*(w-1/2)*sourceXi (1+2*w) := by
  rw [Complex.two_sinh]
  have h₁ : exp ((M-L)*w) = exp (-(L*w))*exp (M*w) := by
    rw [← Complex.exp_add]; congr 1; ring
  have h₂ : exp (-((M-L)*w)) = exp (-(M*w))*exp (L*w) := by
    rw [← Complex.exp_add]; congr 1; ring
  rw [h₁,h₂]
  unfold weightedConstant
  ring

/-- The coordinate change from the modular scattering parameter to the
usual xi ordinate restricts neither variable. -/
def cuspParameter (z : ℂ) : ℂ := -1/4+I*z/2

theorem two_height_xi (L M z : ℂ) :
    exp (-(L*cuspParameter z))*weightedConstant M (cuspParameter z) -
    exp (-(M*cuspParameter z))*weightedConstant L (cuspParameter z) =
      (2*sinh ((M-L)*cuspParameter z))*(cuspParameter z-1/2)*sourceXiOnLine z := by
  rw [two_height_identity]
  have h : 1+2*cuspParameter z = 1/2+I*z := by unfold cuspParameter; ring
  rw [h,sourceXiOnLine]

/-- The height derivative isolates the same original xi using one constant
term and its first variation. -/
theorem height_derivative (L w : ℂ) :
    HasDerivAt (fun M => weightedConstant M w)
      (2*w*(w-1/2)*exp (L*w)*sourceXi (1+2*w) - w*weightedConstant L w) L := by
  have p := ((hasDerivAt_id L).mul_const w)
  have a := ((p.cexp.const_mul (w-1/2)).mul_const (sourceXi (1+2*w)))
  have b := ((p.neg.cexp.const_mul (w+1/2)).mul_const (sourceXi (1-2*w)))
  convert a.add b using 1
  · rfl
  · simp only [Pi.neg_apply, id_eq, one_mul, weightedConstant]
    ring

theorem sinh_ne_zero_of_re_ne_zero {w : ℂ} (hw : w.re ≠ 0) : sinh w ≠ 0 := by
  intro h
  have e := Complex.two_sinh w
  rw [h, mul_zero] at e
  have hn := congrArg norm (sub_eq_zero.mp e.symm)
  rw [Complex.norm_exp, Complex.norm_exp, Complex.neg_re] at hn
  exact hw (by linarith [Real.exp_injective hn])

/-- In the resonance half-plane neither prefactor creates a spurious zero. -/
theorem zero_iff {L M : ℝ} (hl : L < M) {w : ℂ} (hw : w.re < 0) :
    exp (-((L:ℂ)*w))*weightedConstant M w = exp (-((M:ℂ)*w))*weightedConstant L w ↔
      sourceXi (1+2*w) = 0 := by
  have hs : sinh (((M:ℂ)-(L:ℂ))*w) ≠ 0 := by
    apply sinh_ne_zero_of_re_ne_zero
    rw [← ofReal_sub, re_ofReal_mul]
    exact mul_ne_zero (sub_ne_zero.mpr hl.ne') hw.ne
  have hh : w-1/2 ≠ 0 := by
    intro e
    have he := congrArg re (sub_eq_zero.mp e)
    norm_num at he
    linarith
  rw [← sub_eq_zero, two_height_identity]
  exact mul_eq_zero_iff_left (mul_ne_zero (mul_ne_zero two_ne_zero hs) hh)
private theorem source_two : sourceXi 2 = (Real.pi : ℂ)/6 := by
  have hg : Gammaℝ (2 : ℂ) = (Real.pi : ℂ)⁻¹ := by
    rw [Gammaℝ_def, show -(2 : ℂ)/2 = -1 by norm_num, show (2:ℂ)/2 = 1 by norm_num,
      cpow_neg, cpow_one, Gamma_one, mul_one]
  have hpi : (Real.pi : ℂ) ≠ 0 := by exact_mod_cast Real.pi_ne_zero
  have h := riemannZeta_def_of_ne_zero (show (2:ℂ) ≠ 0 by norm_num)
  rw [hg, riemannZeta_two] at h
  rw [source_eq_completed _ (by norm_num) (by norm_num), ← (eq_div_iff (inv_ne_zero hpi)).mp h]
  field_simp
  norm_num

private theorem source_deriv_at_zero : HasDerivAt sourceXi (-(completedRiemannZeta₀ 0)/2) 0 := by
  have d := ((((hasDerivAt_id (0:ℂ)).mul ((hasDerivAt_id (0:ℂ)).sub_const 1)).mul
    (differentiable_completedZeta₀ 0).hasDerivAt).const_add 1).div_const 2
  unfold sourceXi
  simpa using d

private theorem source_differentiable : Differentiable ℂ sourceXi := by
  unfold sourceXi
  exact (((differentiable_id.mul (differentiable_id.sub_const 1)).mul
    differentiable_completedZeta₀).const_add 1).div_const 2

/-- The logarithmic derivative at w=1/2, after removing the extra w in
the weighted constant. The cusp operator trace is the spectral application. -/
theorem trace_at_half (L : ℂ) :
    deriv (weightedConstant L) (1/2) / weightedConstant L (1/2) - 2 =
      (Real.pi:ℂ)*exp L/3 + 1 + Real.eulerMascheroniConstant - log (4*Real.pi) - L := by
  let u : ℂ := 1/2
  have hplus : 1+2*u = 2 := by norm_num [u]
  have hminus : 1-2*u = 0 := by norm_num [u]
  have dp := (source_differentiable (1+2*u)).hasDerivAt.comp u
    (((hasDerivAt_id u).const_mul 2).const_add 1)
  have dm₀ : HasDerivAt sourceXi (-(completedRiemannZeta₀ 0)/2) (1-2*u) :=
    by rw [hminus]; exact source_deriv_at_zero
  have dm := dm₀.comp u (((hasDerivAt_id u).const_mul 2).const_sub 1)
  have e := (hasDerivAt_id u).const_mul L
  have a := (((hasDerivAt_id u).sub_const (1/2)).mul e.cexp).mul dp
  have b := (((hasDerivAt_id u).add_const (1/2)).mul e.neg.cexp).mul dm
  have dh := (a.add b).deriv
  change deriv (weightedConstant L) u / weightedConstant L u - 2 = _
  change deriv (weightedConstant L) u = _ at dh
  rw [dh]
  unfold weightedConstant
  simp only [Function.comp_apply, Pi.neg_apply, id_eq, hplus, hminus, one_mul, mul_one]
  have h0 : sourceXi 0 = 1/2 := by norm_num [sourceXi]
  rw [source_two, h0, completedRiemannZeta₀_zero]
  dsimp [u]
  have hex : exp L = exp (L*(1/2))*exp (L*(1/2)) := by
    rw [← Complex.exp_add]; congr 1; ring
  rw [hex, Complex.exp_neg]
  field_simp
  ring

/-- Positivity of the exact nonzero eigenvalue of the resolvent difference
at modular truncation heights two and three. -/
theorem green_difference_pos : 0 < 2+Real.pi/3-6*Real.log (3/2) := by
  have h := Real.log_lt_sub_one_of_pos (show 0 < (3/2:ℝ) by norm_num) (by norm_num)
  linarith [Real.pi_gt_three]

end GRWTSK.NumberTheory.XiModularCuspSpectra
