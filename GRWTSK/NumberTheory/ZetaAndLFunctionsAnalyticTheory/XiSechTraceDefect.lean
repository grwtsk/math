/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds
import Mathlib.Analysis.Normed.Ring.InfiniteSum
import Mathlib.Tactic

/-! # Positivity and decay of the hyperbolic-secant test on the zero strip

The estimates apply pointwise to the actual analytic test, before summation.
The last identity converts a summable positive trace defect to a support test. -/

noncomputable section

namespace GRWTSK.NumberTheory.XiSechTraceDefect

private theorem cosh_re (z : ℂ) : (Complex.cosh z).re = Real.cosh z.re * Real.cos z.im := by
  conv_lhs => rw [← Complex.re_add_im z, Complex.cosh_add, Complex.cosh_mul_I, Complex.sinh_mul_I]
  simp [Complex.mul_re, ← Complex.ofReal_cos]

/-- The reciprocal hyperbolic cosine has positive real part on its central strip. -/
theorem inv_cosh_re_pos (z : ℂ) (hz : |z.im| < Real.pi / 2) :
    0 < (Complex.cosh z)⁻¹.re := by
  have hy := abs_lt.mp hz
  have hc : 0 < (Complex.cosh z).re := by
    rw [cosh_re]
    exact mul_pos (Real.cosh_pos _) (Real.cos_pos_of_mem_Ioo ⟨by linarith [hy.1], hy.2⟩)
  have hn : Complex.cosh z ≠ 0 := by
    intro h
    simp [h] at hc
  rw [Complex.inv_re]
  exact div_pos hc (Complex.normSq_pos.mpr hn)

/-- A nonreal quartet cannot lose all of its arithmetic mass by approaching
the critical line or either boundary of the closed zeta strip. -/
theorem inv_cosh_re_lower (z : ℂ) (hz : |z.im| ≤ Real.pi / 4) :
    Real.cos (Real.pi/4) / Real.cosh z.re ≤ (Complex.cosh z)⁻¹.re := by
  have hcos : Real.cos (Real.pi/4) ≤ Real.cos z.im := by
    rw [← Real.cos_abs z.im]
    exact Real.cos_le_cos_of_nonneg_of_le_pi (abs_nonneg _) (by linarith [Real.pi_pos]) hz
  have hpi : 0 < Real.cos (Real.pi/4) := by rw [Real.cos_pi_div_four]; positivity
  have hpos := Real.cosh_pos z.re
  have hnon : Complex.cosh z ≠ 0 := by
    have h := inv_cosh_re_pos z (lt_of_le_of_lt hz (by linarith [Real.pi_pos]))
    intro heq
    simp [heq] at h
  have hn : ‖Complex.cosh z‖ ≤ Real.cosh z.re := by
    rw [Complex.cosh, norm_div, Real.cosh_eq]
    norm_num only [Complex.norm_ofNat]
    exact div_le_div_of_nonneg_right
      ((norm_add_le _ _).trans_eq (by simp [Complex.norm_exp])) (by norm_num)
  rw [Complex.inv_re, cosh_re, div_le_div_iff₀ hpos (Complex.normSq_pos.mpr hnon),
    Complex.normSq_eq_norm_sq]
  calc
    _ ≤ Real.cos (Real.pi / 4) * Real.cosh z.re ^ 2 :=
      mul_le_mul_of_nonneg_left (pow_le_pow_left₀ (norm_nonneg _) hn 2) hpi.le
    _ ≤ Real.cos z.im * Real.cosh z.re ^ 2 :=
      mul_le_mul_of_nonneg_right hcos (sq_nonneg _)
    _ = _ := by ring

/-- A uniform exponential majorant on the closed smaller strip used in the
Guinand–Weil trace. The coordinate has already been scaled by π/2. -/
theorem norm_inv_cosh_le (z : ℂ) (hz : |z.im| ≤ Real.pi / 4) :
    ‖(Complex.cosh z)⁻¹‖ ≤ 4 * Real.exp (-|z.re|) := by
  have hcos : (1 / 2 : ℝ) ≤ Real.cos z.im := by
    rw [← Real.cos_abs]
    rw [← Real.cos_pi_div_three]
    exact Real.cos_le_cos_of_nonneg_of_le_pi (abs_nonneg _) (by linarith [Real.pi_pos]) (by linarith [Real.pi_pos])
  have hc : Real.exp |z.re| / 2 ≤ Real.cosh z.re := by
    rw [← Real.cosh_abs, Real.cosh_eq]
    linarith [Real.exp_pos (-|z.re|)]
  have hn : Real.exp |z.re| / 4 ≤ ‖Complex.cosh z‖ := by
    calc
      _ ≤ Real.cosh z.re * Real.cos z.im := by nlinarith [mul_nonneg (Real.cosh_pos z.re).le (sub_nonneg.mpr hcos)]
      _ = (Complex.cosh z).re := (cosh_re z).symm
      _ ≤ ‖Complex.cosh z‖ := Complex.re_le_norm _
  rw [norm_inv, Real.exp_neg]
  have hpos : 0 < Real.exp |z.re| / 4 := by positivity
  calc
    (‖Complex.cosh z‖)⁻¹ ≤ (Real.exp |z.re| / 4)⁻¹ := inv_anti₀ hpos hn
    _ = _ := by field_simp

/-- The polynomially weighted exponential is decreasing after cT ≥ 2. -/
theorem exp_tail_envelope (c T x : ℝ) (hT : 0 < T) (hcx : 2 ≤ c*T) (hx : T ≤ x) :
    x^2 * Real.exp (-c*x) ≤ T^2 * Real.exp (-c*T) := by
  have htx : 0 ≤ x/T - 1 := by rw [sub_nonneg, le_div_iff₀ hT]; simpa using hx
  have he : x/T ≤ Real.exp (x/T-1) := by linarith [Real.add_one_le_exp (x/T-1)]
  have hs := mul_self_le_mul_self (div_nonneg (hT.le.trans hx) hT.le) he
  have he2 : 2*(x/T-1) ≤ c*(x-T) := by
    have hprod := mul_nonneg (sub_nonneg.mpr hcx) htx
    have hident : (c*T-2)*(x/T-1) = c*(x-T)-2*(x/T-1) := by field_simp
    linarith [hident]
  have hsq : (x/T)^2 ≤ Real.exp (c*(x-T)) := by
    calc
      _ ≤ Real.exp (x/T-1) * Real.exp (x/T-1) := by simpa only [pow_two] using hs
      _ = _ := (Real.exp_add _ _).symm
      _ ≤ _ := Real.exp_le_exp.mpr (by linarith)
  rw [div_pow, div_le_iff₀ (sq_pos_of_pos hT)] at hsq
  have hmul := mul_le_mul_of_nonneg_right hsq (Real.exp_pos (-c*x)).le
  convert hmul using 1
  rw [mul_comm (Real.exp _) (T^2), mul_assoc, ← Real.exp_add]
  congr 2
  ring

/-- Summed exponential tail with multiplicities. The only measure input is a
summable reciprocal-square majorant; the height is the absolute real part of
the scaled spectral parameter divided by c. -/
theorem sech_tail_le {ι : Type*} (z : ι → ℂ) (x m : ι → ℝ)
    (c T : ℝ) (hT : 0 < T) (hcT : 2 ≤ c*T) (hx : ∀ i, T ≤ x i)
    (hm : ∀ i, 0 ≤ m i) (hre : ∀ i, |(z i).re| = c*x i)
    (him : ∀ i, |(z i).im| ≤ Real.pi/4) (hs : Summable (fun i => m i / (x i)^2)) :
    Summable (fun i => m i * ‖(Complex.cosh (z i))⁻¹‖) ∧
    ∑' i, m i * ‖(Complex.cosh (z i))⁻¹‖ ≤
      4*(T^2*Real.exp (-c*T)) * ∑' i, m i / (x i)^2 := by
  let C := 4*(T^2*Real.exp (-c*T))
  have hmaj (i : ι) : m i * ‖(Complex.cosh (z i))⁻¹‖ ≤ C * (m i / (x i)^2) := by
    have hpoint := norm_inv_cosh_le (z i) (him i)
    rw [hre i, ← neg_mul] at hpoint
    have henv := exp_tail_envelope c T _ hT hcT (hx i)
    have hpow := sq_pos_of_pos (hT.trans_le (hx i))
    have hdiv : ‖(Complex.cosh (z i))⁻¹‖ ≤ C / (x i)^2 := by
      rw [le_div_iff₀ hpow]
      have hmul := mul_le_mul_of_nonneg_right hpoint hpow.le
      dsimp [C]
      nlinarith
    calc
      _ ≤ m i * (C / (x i)^2) := mul_le_mul_of_nonneg_left hdiv (hm i)
      _ = _ := by ring
  have hs' := hs.mul_left C
  have h := hs'.of_nonneg_of_le (fun i => mul_nonneg (hm i) (norm_nonneg _)) hmaj
  exact ⟨h, (h.tsum_le_tsum hmaj hs').trans_eq tsum_mul_left⟩

/-- Nonnegative summable deficits vanish precisely when every term vanishes. -/
theorem masked_trace_zero_iff {ι : Type*} (P : ι → Prop) [DecidablePred P] (w : ι → ℝ)
    (hw : ∀ i, 0 < w i) (hs : Summable (fun i => if P i then w i else 0)) :
    (∑' i, if P i then w i else 0) = 0 ↔ ∀ i, ¬P i := by
  have hnon (i : ι) : 0 ≤ (if P i then w i else 0)  := by
    split
    · exact (hw i).le
    · exact le_rfl
  constructor
  · intro h i hi
    have hle := hs.le_tsum i (fun j _ => hnon j)
    rw [h, ite_eq_left hi] at hle
    exact (hw i).not_ge hle
  · intro h
    simp [h]

end GRWTSK.NumberTheory.XiSechTraceDefect
