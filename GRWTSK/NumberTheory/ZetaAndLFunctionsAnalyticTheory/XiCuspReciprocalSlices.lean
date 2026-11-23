/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

/-! # Reciprocal half-plane slices of the modular xi determinant

The derivative of the symmetric logarithmic factor reduces to signed
Poisson kernels. Their exact line integral counts the transverse roots,
including the half value on a crossing. The companion note sums the
factors of the actual completed xi and proves the endpoint formulas.
-/
noncomputable section
namespace GRWTSK.NumberTheory.XiCuspReciprocalSlices
open Real MeasureTheory

/-- Signed Poisson kernel with arbitrary real center, without the factor π. -/
def kernel (h d t : ℝ) : ℝ := h / ((t-d)^2+h^2)

private theorem scaled_kernel {h : ℝ} (hh : h ≠ 0) (d t : ℝ) :
    kernel h d t = h⁻¹*(1+(h⁻¹*(t-d))^2)⁻¹ := by
  unfold kernel
  field_simp
  ring

theorem kernel_integrable (h d : ℝ) : Integrable (kernel h d) := by
  by_cases hh : h = 0
  · subst h; unfold kernel; simp
  · simp_rw [funext (scaled_kernel hh d)]
    exact ((integrable_inv_one_add_mul_sq (inv_ne_zero hh)).comp_sub_right d).const_mul _

theorem kernel_integral (h d : ℝ) : (∫ t : ℝ, kernel h d t) = π * SignType.sign h := by
  by_cases hh : h = 0
  · simp [hh,kernel]
  · simp_rw [funext (scaled_kernel hh d)]
    rw [integral_const_mul,
      integral_sub_right_eq_self (f := fun t : ℝ => (1+(h⁻¹*t)^2)⁻¹),
      integral_univ_inv_one_add_mul_sq]
    rcases lt_or_gt_of_ne hh with hneg | hpos
    · rw [sign_neg hneg,abs_of_neg (inv_lt_zero.mpr hneg)]
      simp
      field_simp
    · rw [sign_pos hpos,abs_of_pos (inv_pos.mpr hpos)]
      simp
      field_simp

/-- Half the logarithm of the squared point distance. -/
def logDistance (b x y t : ℝ) : ℝ := log ((b-x)^2+(t-y)^2)/2

theorem logDistance_deriv (b x y t : ℝ) (h : (b-x)^2+(t-y)^2 ≠ 0) :
    HasDerivAt (fun u => logDistance u x y t) (kernel (b-x) y t) b := by
  have hd : HasDerivAt (fun u : ℝ => (u-x)^2+(t-y)^2) (2*(b-x)) b := by
    simpa using (((hasDerivAt_id b).sub_const x).pow 2).add_const ((t-y)^2)
  have hl := (hd.log h).div_const 2
  unfold logDistance kernel
  convert hl using 1
  rw [add_comm ((t-y)^2)]
  ring

/-- A primitive for half the logarithm of a squared distance on the line. -/
def logPrimitive (c u : ℝ) : ℝ := u*log (u^2+c^2)/2-u+c*arctan (u/c)

private theorem logPrimitive_deriv {c : ℝ} (hc : c ≠ 0) (u : ℝ) :
    HasDerivAt (logPrimitive c) (log (u^2+c^2)/2) u := by
  have hq : u^2+c^2 ≠ 0 := by positivity
  have hp : HasDerivAt (fun v : ℝ => v^2+c^2) (2*u) u := by
    simpa using ((hasDerivAt_id u).pow 2).add_const (c^2)
  have hd := (((((hasDerivAt_id u).mul (hp.log hq)).div_const 2).sub
    (hasDerivAt_id u)).add (((hasDerivAt_arctan _).comp u
      ((hasDerivAt_id u).div_const c)).const_mul c))
  convert hd using 1
  · rfl
  · simp only [id_eq]
    field_simp
    ring

/-- Exact integral across any finite interval, including a root on the line. -/
theorem logDistance_interval (b x y l r : ℝ) :
    (∫ t in l..r, logDistance b x y t) =
      logPrimitive (b-x) (r-y) - logPrimitive (b-x) (l-y) := by
  unfold logDistance
  simp_rw [add_comm ((b-x)^2)]
  rw [intervalIntegral.integral_comp_sub_right (fun t : ℝ => log (t^2+(b-x)^2)/2)]
  by_cases hz : b-x = 0
  · simp only [hz, zero_pow (by decide : (2:ℕ) ≠ 0), add_zero,Real.log_pow, logPrimitive,
        zero_mul, div_zero, add_zero]
    norm_num only [Nat.cast_ofNat] at *
    simp only [mul_div_cancel_left₀ _ (by norm_num : (2:ℝ) ≠ 0)]
    rw [integral_log]
    ring
  · apply intervalIntegral.integral_eq_sub_of_hasDerivAt
    · intro t ht
      exact logPrimitive_deriv hz t
    · apply Continuous.intervalIntegrable
      exact (by fun_prop (disch := intro t; positivity) :
        Continuous (fun t : ℝ => log (t^2+(b-x)^2)/2))

/-- The boundary derivative of one opposite pair, already integrable on the full line. -/
def pairFlux (b x y t : ℝ) : ℝ := kernel (b-x) y t + kernel (b+x) (-y) t - 2*kernel b 0 t

theorem pairFlux_integral {b : ℝ} (hb : 0 < b) (x y : ℝ) :
    (∫ t : ℝ, pairFlux b x y t) =
     π * ((SignType.sign (b-x) : ℝ) + (SignType.sign (b+x) : ℝ) - 2) := by
  unfold pairFlux
  have hi : Integrable (fun t => kernel (b-x) y t + kernel (b+x) (-y) t) :=
    (kernel_integrable ..).add (kernel_integrable ..)
  rw [integral_sub hi ((kernel_integrable b 0).const_mul 2), integral_add (kernel_integrable ..) (kernel_integrable ..),
    integral_const_mul, kernel_integral, kernel_integral, kernel_integral,sign_pos hb]
  simp
  ring

theorem pairFlux_by_crossing {b : ℝ} (hb : 0 < b) (x y : ℝ) :
    (∫ t : ℝ, pairFlux b x y t) =
       if b < |x| then -2*π else if b = |x| then -π else 0 := by
  rw [pairFlux_integral hb]
  rcases le_or_gt 0 x with hx | hx
  · rw [abs_of_nonneg hx, sign_pos (by linarith : 0 < b+x)]
    split_ifs with h₁ h₂
    · rw [sign_neg (by linarith : b-x < 0)]; norm_num; ring
    · subst x; simp; ring
    · rw [sign_pos (by grind : 0 < b-x)]; norm_num
  · rw [abs_of_neg hx,sign_pos (by linarith : 0 < b-x)]
    split_ifs with h₁ h₂
    · rw [sign_neg (by linarith : b+x < 0)]; norm_num; ring
    · rw [show b+x=0 by linarith]; simp; ring
    · rw [sign_pos (by grind : 0 < b+x)]; norm_num

/-- The area under the contribution of a transverse distance is half its square. -/
theorem slice_area {x : ℝ} (hx : 0 ≤ x) :
    (∫ b in (0 : ℝ)..x, max (x-b) 0) = x^2/2 := by
  calc
    _ = ∫ b in (0 : ℝ)..x, x-b := by
      apply intervalIntegral.integral_congr
      intro b hb
      rw [Set.uIcc_of_le hx] at hb
      exact max_eq_left (sub_nonneg.mpr hb.2)
    _ = _ := by
      have hi : IntervalIntegrable (fun b : ℝ => b) volume 0 x := continuous_id.intervalIntegrable 0 x
      rw [intervalIntegral.integral_sub (f := fun _ : ℝ => x) (g := fun b : ℝ => b) intervalIntegrable_const hi, intervalIntegral.integral_const, integral_id]
      simp
      ring

end GRWTSK.NumberTheory.XiCuspReciprocalSlices
