/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSexticPrimitive
import Mathlib.Analysis.SpecialFunctions.Log.Basic

set_option autoImplicit false

/-!
# Exact cutoff-two regrouping of the maintained sextic source

No new primitive, tail, or zeta approximation is defined. The existing finiteModel
at N=2 is regrouped into (s-1)+2^(-s)*coefficient(s), with ALL endpoint corrections
retained. The general-cutoff tail theorem, not a cutoff-one improvement, is used.
The weight inequality keeps the actual real part in |2^(-s)|. It follows from
log(2)>=1/2 and exp(z)>=1+z, not a numerical logarithm or power sample.

This reference vanishes at s=1, so the later reference homotopy is admitted ONLY
on a high band away from that point. SOURCE SCRIPTS / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.CutoffTwo
open Complex Set
noncomputable section

def power (s : ℂ) : ℂ := (2 : ℂ) ^ (-s)

def coefficient (s : ℂ) : ℂ :=
  (s+3)/2 + s*(s-1)/24 - CubicPrimitive.multiplier s/5760 +
    QuarticPrimitive.multiplier s*(s+4)/967680

def scaledCoefficient (s : ℂ) : ℂ :=
  s^6 + 9*s^5 - 143*s^4 - 321*s^3 + 40462*s^2 + 443832*s + 1451520

lemma coefficient_eq_scaled (s : ℂ) : coefficient s = scaledCoefficient s / 967680 := by
  unfold coefficient scaledCoefficient QuarticPrimitive.multiplier CubicPrimitive.multiplier
  ring

lemma negative_shift (s : ℂ) (k : ℕ) :
    (2 : ℂ) ^ (-(s+(k : ℂ))) = power s / (2 : ℂ)^k := by
  rw [show -(s+(k : ℂ)) = -s-(k : ℂ) by ring,
    Complex.cpow_sub _ _ (by norm_num : (2 : ℂ) ≠ 0), Complex.cpow_natCast]
  rfl

/-- Every term in the inherited finite source is retained, including N^(1-s). -/
theorem finiteModel_two (s : ℂ) : finiteModel 2 s = (s-1) + power s*coefficient s := by
  have h1 := negative_shift s 1
  have h3 := negative_shift s 3
  have h5 := negative_shift s 5
  norm_num only [Nat.cast_one, Nat.cast_ofNat] at h1 h3 h5
  have hend : (2 : ℂ) ^ (1-s) = 2*power s := by
    rw [show 1-s = (1 : ℂ) + -s by ring,
      Complex.cpow_add _ _ (by norm_num : (2 : ℂ) ≠ 0), Complex.cpow_one]
    rfl
  have hsum : finiteDirichletPowerSum 2 s = 1+power s := by
    rw [finiteDirichletPowerSum, show Finset.Icc (1 : ℕ) 2 = {1,2} from by decide]
    simp [power]
  unfold finiteModel QuarticPrimitive.finiteModel CubicPrimitive.finiteModel
    CenteredMellin.finiteModel finitePowerPoleModel
  norm_num only [Nat.cast_ofNat]
  rw [hsum, hend, h1, h3, h5]
  unfold power coefficient
  ring

/-- The exact residual remains attached to the existing sextic tail at cutoff two. -/
theorem source_residual {s : ℂ} (hs : 0 < s.re) :
    poleNormalizedZeta s - ((s-1)+power s*coefficient s) = -multiplier s*tail 2 s := by
  rw [← finiteModel_two]
  exact finiteModel_residual (by decide : 1 ≤ (2 : ℕ)) hs

lemma power_norm (s : ℂ) : ‖power s‖ = (2 : ℝ)^(-s.re) := by
  unfold power
  rw [Complex.norm_cpow_eq_rpow_re_of_pos (by norm_num : (0 : ℝ) < 2)]
  simp only [Complex.neg_re]

lemma log_two_lower : (1/2 : ℝ) ≤ Real.log 2 := by
  have h := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < (2 : ℝ)⁻¹)
  rw [Real.log_inv] at h
  norm_num at h
  linarith

/-- Retaining x in the weight avoids a false constant bound for the coefficient. -/
lemma real_power_weight {x : ℝ} (hx : (1/2 : ℝ) ≤ x) :
    ((2 : ℝ)^(-x))^2 * (2*x+1) ≤ 1 := by
  have ha : 0 ≤ 2*x-1 := by linarith
  have he := Real.add_one_le_exp ((2*x-1)*Real.log 2)
  have hl := mul_le_mul_of_nonneg_left log_two_lower ha
  have hlow : x+1/2 ≤ (2 : ℝ)^(2*x-1) := by
    rw [Real.rpow_def_of_pos (by norm_num : (0 : ℝ) < 2)]
    rw [mul_comm (Real.log 2) (2*x-1)]
    linarith
  have h2 : 2*x+1 ≤ (2 : ℝ)^(2*x) := by
    have h := mul_le_mul_of_nonneg_left hlow (by norm_num : (0 : ℝ) ≤ 2)
    have hr : (2 : ℝ)*(2 : ℝ)^(2*x-1) = (2 : ℝ)^(2*x) := by
      calc
        _ = (2 : ℝ)^(1 : ℝ)*(2 : ℝ)^(2*x-1) := by rw [Real.rpow_one]
        _ = (2 : ℝ)^((1 : ℝ)+(2*x-1)) := (Real.rpow_add (by norm_num) _ _).symm
        _ = _ := by congr 1; ring
    rw [hr] at h
    linarith
  have hc : ((2 : ℝ)^(-x))^2 * (2 : ℝ)^(2*x) = 1 := by
    rw [pow_two, ← Real.rpow_add (by norm_num : (0 : ℝ) < 2),
      ← Real.rpow_add (by norm_num : (0 : ℝ) < 2)]
    norm_num [show -x + -x + 2*x = 0 by ring]
  calc
    _ ≤ ((2 : ℝ)^(-x))^2 * (2 : ℝ)^(2*x) :=
      mul_le_mul_of_nonneg_left h2 (sq_nonneg _)
    _ = 1 := hc

theorem power_weight {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) :
    ‖power s‖^2 * (2*s.re+1) ≤ 1 := by
  rw [power_norm]
  exact real_power_weight hx

/-- A rational square-root majorant, derived only after the signs are supplied. -/
lemma weighted_product_bound {p q w a d : ℝ}
    (hp : 0 ≤ p) (hq : 0 ≤ q) (ha : 0 ≤ a) (hd : 0 ≤ d)
    (hweight : p^2*w ≤ 1) (hsize : 2*q^2 ≤ a^2*w*d^2) :
    p*q ≤ (99/140 : ℝ)*a*d := by
  have h1 := mul_le_mul_of_nonneg_left hsize (sq_nonneg p)
  have h2 := mul_le_mul_of_nonneg_right hweight
    (mul_nonneg (sq_nonneg a) (sq_nonneg d))
  have hsquare : 2*(p*q)^2 ≤ (a*d)^2 := by nlinarith
  apply (sq_le_sq₀ (mul_nonneg hp hq) (by positivity : 0 ≤ (99/140 : ℝ)*a*d)).mp
  nlinarith [sq_nonneg (a*d)]

/-- The factor s-1 is reserved for the actual high-band reference. -/
def shiftedProduct (s : ℂ) : ℝ :=
  ‖s‖*‖s+1‖*‖s+2‖*‖s+3‖*‖s+4‖*‖s+5‖

def tailCoefficient (s : ℂ) : ℝ := shiftedProduct s/(967680*(s.re+5))

lemma multiplier_norm (s : ℂ) : ‖multiplier s‖ = shiftedProduct s*‖s-1‖ := by
  simp only [multiplier, QuarticPrimitive.multiplier, CubicPrimitive.multiplier,
    norm_mul, shiftedProduct]
  ring

lemma cutoff_power (x : ℝ) : (2 : ℝ)^(-(x+5)) = (2 : ℝ)^(-x)/32 := by
  rw [show -(x+5) = -x + (-(5 : ℝ)) by ring, Real.rpow_add (by norm_num)]
  norm_num [Real.rpow_neg]
  ring

/-- No cutoff-one norm saving is used in this cutoff-two error theorem. -/
theorem source_error {s : ℂ} (hs : 0 < s.re) :
    ‖poleNormalizedZeta s-finiteModel 2 s‖ ≤
      ‖power s‖*tailCoefficient s*‖s-1‖ := by
  have h := finiteModel_error (N := 2) (σ := s.re) (by decide) hs le_rfl
  norm_num only [Nat.cast_ofNat] at h
  rw [cutoff_power, ← power_norm, multiplier_norm] at h
  refine h.trans_eq ?_
  unfold tailCoefficient
  have hd : s.re+5 ≠ 0 := ne_of_gt (by linarith : 0 < s.re+5)
  field_simp [hd] <;> ring

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.CutoffTwo
