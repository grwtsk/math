import FormalResearch.RiemannHypothesis.Laplace.Expansion
import Mathlib.Analysis.SpecialFunctions.Exp

set_option autoImplicit false
namespace ContinuousResearch.ActualRealMode
open Filter
open scoped Topology
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open ZeroSideTargets
open FormalResearch.RiemannHypothesis.Laplace.Algebra
open FormalResearch.RiemannHypothesis.Laplace.Expansion
noncomputable section

def p (x : ℝ) : ℝ := x^4-10*x^3+45*x^2-105*x+105

def normalizedSquare (A z : ℝ) : ℝ :=
  ((bilateralTransform A (z : ℂ) / (Real.sqrt (sourceNormalization A) : ℂ))^2).re

theorem p_coe (x : ℝ) : transformPolynomial (x : ℂ) = (p x : ℂ) := by
  simp [p,transformPolynomial]

theorem actual_scaled_square_real (A : ℝ) (hA : 0 < A) (z : ℝ) (hz : z ≠ 0) :
  A^17 * sourceNormalization A * normalizedSquare A z =
    (384^2 * (z^2-1/4)^2/z^18) *
      (Real.exp (A*z)*p (A*z)-Real.exp (-(A*z))*p (-(A*z)))^2 := by
  have hZ : 0 < sourceNormalization A := by unfold sourceNormalization; positivity
  have hs : (Real.sqrt (sourceNormalization A) : ℂ) ≠ 0 := by
    exact_mod_cast (Real.sqrt_pos.mpr hZ).ne'
  have hsq : (Real.sqrt (sourceNormalization A) : ℂ)^2 = (sourceNormalization A : ℂ) := by
    exact_mod_cast Real.sq_sqrt hZ.le
  have he := actual_scaled_square A hA (z : ℂ) (by exact_mod_cast hz)
  have hc : ((A^17 * sourceNormalization A : ℝ) : ℂ) *
      (bilateralTransform A (z : ℂ) / (Real.sqrt (sourceNormalization A) : ℂ))^2 =
      ((384^2*(z^2-1/4)^2/z^18) *
        (Real.exp (A*z)*p (A*z)-Real.exp (-(A*z))*p (-(A*z)))^2 : ℝ) := by
    calc
      _ = (A : ℂ)^17 * bilateralTransform A (z : ℂ)^2 := by
        push_cast; rw [div_pow,hsq]; field_simp [show (sourceNormalization A : ℂ) ≠ 0 by exact_mod_cast hZ.ne']
      _ = _ := he
      _ = _ := by
        unfold modeCoefficient
        rw [← Complex.ofReal_mul,← Complex.ofReal_neg,← Complex.ofReal_exp,
          ← Complex.ofReal_exp,p_coe,p_coe]
        push_cast; rfl
  have hr := congrArg Complex.re hc
  simpa only [normalizedSquare, Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero] using hr

theorem p_ratio (A z : ℝ) (hA : A ≠ 0) :
    p (A*z)/A^4 = z^4-10*z^3/A+45*z^2/A^2-105*z/A^3+105/A^4 := by
  unfold p; field_simp

theorem p_ratio_tendsto (z : ℝ) :
    Tendsto (fun A : ℝ => p (A*z)/A^4) atTop (𝓝 (z^4)) := by
  have h1 : Tendsto (fun A : ℝ => 1/A) atTop (𝓝 0) := by
    simpa only [one_div] using (tendsto_inv_atTop_zero : Tendsto (fun A : ℝ => A⁻¹) atTop (𝓝 0))
  have h2 := h1.pow 2
  have h3 := h1.pow 3
  have h4 := h1.pow 4
  have hc : Tendsto (fun _ : ℝ => z^4) atTop (𝓝 (z^4)) := tendsto_const_nhds
  have ht := (((hc.sub (h1.const_mul (10*z^3))).add
    (h2.const_mul (45*z^2))).sub (h3.const_mul (105*z))).add (h4.const_mul 105)
  have he : (fun A : ℝ => p (A*z)/A^4) =ᶠ[atTop]
    (fun A : ℝ => z^4-(10*z^3)*(1/A)+(45*z^2)*(1/A)^2-(105*z)*(1/A)^3+105*(1/A)^4) := by
    filter_upwards [eventually_gt_atTop (0 : ℝ)] with A hA
    rw [p_ratio A z hA.ne']; field_simp
  apply Tendsto.congr' he.symm
  simpa using ht

theorem normalization_tendsto : Tendsto sourceNormalization atTop (𝓝 (4096/109395 : ℝ)) := by
  have h1 : Tendsto (fun A : ℝ => A⁻¹) atTop (𝓝 0) := tendsto_inv_atTop_zero
  have hc : Tendsto (fun _ : ℝ => (4096/109395 : ℝ)) atTop (𝓝 (4096/109395 : ℝ)) := tendsto_const_nhds
  have h := (hc.add ((h1.pow 2).const_mul (65536/45045 : ℝ))).add
    ((h1.pow 4).const_mul (196608/5005 : ℝ))
  convert h using 1
  · ext A; unfold sourceNormalization; simp only [inv_pow]; ring
  · norm_num

theorem exp_scaled_neg_tendsto (z : ℝ) (hz : 0 < z) :
    Tendsto (fun A : ℝ => Real.exp (-2*A*z)) atTop (𝓝 0) := by
  have h := Real.tendsto_exp_neg_atTop_nhds_zero.comp (tendsto_id.const_mul_atTop (show 0 < 2*z by positivity))
  convert h using 1; ext A; simp only [Function.comp_apply, id_eq]; congr 1; ring

theorem exp_square_rescale (x u v : ℝ) :
    Real.exp (-2*x)*(Real.exp x*u-Real.exp (-x)*v)^2 =
      (u-Real.exp (-2*x)*v)^2 := by
  have he : Real.exp (-2*x) = Real.exp (-x)^2 := by
    rw [sq,← Real.exp_add]; congr 1; ring
  have hp : Real.exp (-x)*Real.exp x=1 := by rw [← Real.exp_add,neg_add_cancel,Real.exp_zero]
  rw [he,← mul_pow, mul_sub, ← mul_assoc, hp,one_mul]
  congr 2; ring

theorem scaled_square_exact (A : ℝ) (hA : 0 < A) (z : ℝ) (hz : z ≠ 0) :
    A^9*Real.exp (-2*A*z)*normalizedSquare A z =
      (384^2*(z^2-1/4)^2/z^18) *
        (p (A*z)/A^4-Real.exp (-2*A*z)*p (-(A*z))/A^4)^2/sourceNormalization A := by
  have hZ : sourceNormalization A ≠ 0 := by unfold sourceNormalization; positivity
  have ha := hA.ne'
  have hs := actual_scaled_square_real A hA z hz
  have he := exp_square_rescale (A*z) (p (A*z)) (p (-(A*z)))
  have he' : Real.exp (-2*A*z)*(Real.exp (A*z)*p (A*z)-Real.exp (-(A*z))*p (-(A*z)))^2 =
    (p (A*z)-Real.exp (-2*A*z)*p (-(A*z)))^2 := by convert he using 1 <;> congr 1 <;> ring
  have hs' : A^17*sourceNormalization A*Real.exp (-2*A*z)*normalizedSquare A z =
      (384^2*(z^2-1/4)^2/z^18)*(p (A*z)-Real.exp (-2*A*z)*p (-(A*z)))^2 := by
    calc
      _ = Real.exp (-2*A*z)*(A^17*sourceNormalization A*normalizedSquare A z) := by ring
      _ = (384^2*(z^2-1/4)^2/z^18)*(Real.exp (-2*A*z)*
          (Real.exp (A*z)*p (A*z)-Real.exp (-(A*z))*p (-(A*z)))^2) := by rw [hs]; ring
      _ = _ := congrArg (fun v : ℝ => (384^2*(z^2-1/4)^2/z^18)*v) he' 
  rw [← sub_div,div_pow]
  apply (eq_div_iff hZ).mpr
  rw [← mul_div_assoc, ← pow_mul]
  norm_num
  apply (eq_div_iff (pow_ne_zero 8 ha)).mpr
  convert hs' using 1 <;> ring

theorem scaled_square_tendsto (z : ℝ) (hz : 0 < z) :
    Tendsto (fun A : ℝ => A^9*Real.exp (-2*A*z)*normalizedSquare A z) atTop
      (𝓝 (384^2*(z^2-1/4)^2/((4096/109395 : ℝ)*z^10))) := by
  have hp := p_ratio_tendsto z
  have hn := p_ratio_tendsto (-z)
  have he := exp_scaled_neg_tendsto z hz
  have ht := ((hp.sub (he.mul hn)).pow 2).const_mul (384^2*(z^2-1/4)^2/z^18)
  have hd := ht.div normalization_tendsto (by norm_num : (4096/109395 : ℝ) ≠ 0)
  have heq : (fun A : ℝ => A^9*Real.exp (-2*A*z)*normalizedSquare A z) =ᶠ[atTop]
    (fun A : ℝ => (384^2*(z^2-1/4)^2/z^18) *
      (p (A*z)/A^4-Real.exp (-2*A*z)*(p (A*(-z))/A^4))^2/sourceNormalization A) := by
    filter_upwards [eventually_gt_atTop (0 : ℝ)] with A hA
    rw [scaled_square_exact A hA z hz.ne',show A*(-z)=-(A*z) by ring]; ring
  apply Tendsto.congr' heq.symm
  have hv : (384^2*(z^2-1/4)^2/z^18)*(z^4-0*(-z)^4)^2/(4096/109395 : ℝ) =
      384^2*(z^2-1/4)^2/((4096/109395 : ℝ)*z^10) := by
    norm_num; field_simp [hz.ne']
  rw [← hv]
  exact hd

theorem quarter_scaled_limit :
    Tendsto (fun A : ℝ => A^9*Real.exp (-A/2)*normalizedSquare A (1/4)) atTop
      (𝓝 (145178542080 : ℝ)) := by
  have h := scaled_square_tendsto (1/4) (by norm_num)
  norm_num at h
  convert h using 1
  ext A; congr 2; ring

theorem exponential_scale_tendsto (z : ℝ) (hz : 0 < z) :
    Tendsto (fun A : ℝ => Real.exp (2*A*z)/A^9) atTop atTop := by
  have ht := (Real.tendsto_exp_div_pow_atTop 9).comp
    (tendsto_id.const_mul_atTop (show 0 < 2*z by positivity))
  have hm := ht.const_mul_atTop (show 0 < (2*z)^9 by positivity)
  convert hm using 1
  ext A
  simp only [Function.comp_apply,id_eq]
  rw [mul_pow]
  field_simp

theorem quarter_square_tendsto_atTop :
    Tendsto (fun A : ℝ => normalizedSquare A (1/4)) atTop atTop := by
  have hg := exponential_scale_tendsto (1/4) (by norm_num)
  have hf := quarter_scaled_limit.pos_mul_atTop (by norm_num : (0 : ℝ) < 145178542080) hg
  apply Tendsto.congr' _ hf
  filter_upwards [eventually_gt_atTop (0 : ℝ)] with A hA
  have he : Real.exp (-A/2)*Real.exp (2*A*(1/4))=1 := by
    rw [← Real.exp_add,show -A/2+2*A*(1/4)=0 by ring,Real.exp_zero]
  calc
    _ = (A^9/A^9)*(Real.exp (-A/2)*Real.exp (2*A*(1/4)))*normalizedSquare A (1/4) := by ring
    _ = _ := by rw [div_self (pow_ne_zero 9 hA.ne'),he]; ring

/-- This generic adapter still requires an independently proved source remainder identity. -/
theorem bounded_remainder_transfer (r R : ℝ → ℝ) (delta B : ℝ) (hd : 0 < delta)
    (heq : ∀ A : ℝ, 1 ≤ A → r A = delta/4*normalizedSquare A (1/4)-R A)
    (hR : ∀ A : ℝ, 1 ≤ A → |R A| ≤ B) : Tendsto r atTop atTop := by
  have hl := (quarter_square_tendsto_atTop.const_mul_atTop
    (show 0 < delta/4 by positivity)).atTop_add
    (tendsto_const_nhds : Tendsto (fun _ : ℝ => -B) atTop (𝓝 (-B)))
  apply tendsto_atTop_mono' atTop _ hl
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
  rw [heq A hA]
  have hu := (abs_le.mp (hR A hA)).2
  linarith

/-- The scaled remainder is genuinely negligible at the same source scale. -/
theorem scaled_bounded_remainder (R : ℝ → ℝ) (B : ℝ)
    (hR : ∀ A : ℝ, 1 ≤ A → |R A| ≤ B) :
    Tendsto (fun A : ℝ => A^9*Real.exp (-A/2)*R A) atTop (𝓝 0) := by
  have ht := (Real.tendsto_pow_mul_exp_neg_atTop_nhds_zero 9).comp
    (tendsto_id.const_mul_atTop (show (0 : ℝ) < 1/2 by norm_num))
  have hs : Tendsto (fun A : ℝ => A^9*Real.exp (-A/2)) atTop (𝓝 0) := by
    convert ht.const_mul (512 : ℝ) using 1
    · ext A; simp only [Function.comp_apply,id_eq]
      rw [show -A/2=-(1/2*A) by ring]; ring
    · norm_num
  have hB : 0 ≤ B := (abs_nonneg (R 1)).trans (hR 1 le_rfl)
  have hb : Tendsto (fun A : ℝ => B*(A^9*Real.exp (-A/2))) atTop (𝓝 0) := by
    simpa using hs.const_mul B
  apply squeeze_zero_norm' _ hb
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
  rw [Real.norm_eq_abs,abs_mul,abs_mul,abs_of_nonneg (pow_nonneg (by linarith : 0 ≤ A) 9),
    abs_of_pos (Real.exp_pos _)]
  nlinarith [hR A hA, mul_nonneg (pow_nonneg (by linarith : 0 ≤ A) 9) (Real.exp_pos (-A/2)).le]

#check p
#print axioms p
#check normalizedSquare
#print axioms normalizedSquare
#check p_coe
#print axioms p_coe
#check actual_scaled_square_real
#print axioms actual_scaled_square_real
#check p_ratio
#print axioms p_ratio
#check p_ratio_tendsto
#print axioms p_ratio_tendsto
#check normalization_tendsto
#print axioms normalization_tendsto
#check exp_scaled_neg_tendsto
#print axioms exp_scaled_neg_tendsto
#check exp_square_rescale
#print axioms exp_square_rescale
#check scaled_square_exact
#print axioms scaled_square_exact
#check scaled_square_tendsto
#print axioms scaled_square_tendsto
#check quarter_scaled_limit
#print axioms quarter_scaled_limit
#check exponential_scale_tendsto
#print axioms exponential_scale_tendsto
#check quarter_square_tendsto_atTop
#print axioms quarter_square_tendsto_atTop
#check bounded_remainder_transfer
#print axioms bounded_remainder_transfer
#check scaled_bounded_remainder
#print axioms scaled_bounded_remainder
end
end ContinuousResearch.ActualRealMode
