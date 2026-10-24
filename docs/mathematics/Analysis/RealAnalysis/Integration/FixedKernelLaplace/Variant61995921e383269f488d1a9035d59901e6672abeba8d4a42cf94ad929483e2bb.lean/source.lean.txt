import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.MeasureTheory.Group.Integral
import Mathlib.Analysis.PSeries
import Mathlib.Analysis.SpecialFunctions.Pow.Complex

set_option autoImplicit false
namespace FixedKernelLaplaceScratch
open MeasureTheory Set Filter FixedSourceFilterScratch FixedSourceKernelScratch
open scoped Topology
noncomputable section

/-- The fixed source with its actual Laplace exponential. -/
def weightedSource (z : ℂ) (x : ℝ) : ℂ :=
  (v x : ℂ) * Complex.exp ((-z) * (x : ℂ))

/-- A single original integer sample in the Laplace integral. -/
def laplaceSample (z : ℂ) (n : ℕ) (t : ℝ) : ℂ :=
  (logSample t (n + 1) : ℂ) * Complex.exp ((-z) * (t : ℂ))

/-- The exact exponential translation coefficient, before identification with a Dirichlet weight. -/
def sampleCoefficient (z : ℂ) (n : ℕ) : ℂ :=
  (Real.exp (-Real.log (n + 1 : ℝ) / 2) : ℂ) *
    Complex.exp ((-z) * (1 + (Real.log (n + 1 : ℝ) : ℂ)))

/-- A genuine finite source norm integral used as a separated majorant. -/
def sourceNormIntegral (z : ℂ) : ℝ := ∫ x : ℝ, ‖weightedSource z x‖

/-- The actual fixed bilateral transform is even. -/
theorem V_even (z : ℂ) : V (-z) = V z := by
  unfold V
  rw [← integral_neg_eq_self (fun x : ℝ ↦ (v x : ℂ) * Complex.exp (z * (x : ℂ))) volume]
  apply integral_congr_ae
  filter_upwards [] with x
  rw [v_even, Complex.ofReal_neg]
  congr 2
  ring

/-- Every translated weighted source has a genuinely integrable complex value. -/
theorem weightedSource_integrable (z : ℂ) : Integrable (weightedSource z) :=
  V_integrable (-z)

/-- Translation separates the actual sample index from the source coordinate. -/
theorem laplaceSample_eq_translate (z : ℂ) (n : ℕ) (t : ℝ) :
    laplaceSample z n t = sampleCoefficient z n *
      weightedSource z (t - (1 + Real.log (n + 1 : ℝ))) := by
  have ht : (-z) * (t : ℂ) =
      (-z) * (1 + (Real.log (n + 1 : ℝ) : ℂ)) +
        (-z) * ((t - (1 + Real.log (n + 1 : ℝ)) : ℝ) : ℂ) := by
    push_cast
    ring
  unfold laplaceSample logSample sampleCoefficient weightedSource
  rw [Complex.ofReal_mul, ht, Complex.exp_add]
  rw [show t - 1 - Real.log (n + 1 : ℝ) = t - (1 + Real.log (n + 1 : ℝ)) by ring]
  unfold FixedSourceFilterScratch.v
  ring

/-- No improper integral is used before individual sample admission. -/
theorem laplaceSample_integrable (z : ℂ) (n : ℕ) : Integrable (laplaceSample z n) := by
  have he : laplaceSample z n = fun t ↦ sampleCoefficient z n *
      weightedSource z (t - (1 + Real.log (n + 1 : ℝ))) :=
    funext (laplaceSample_eq_translate z n)
  rw [he]
  exact ((weightedSource_integrable z).comp_sub_right (1 + Real.log (n + 1 : ℝ))).const_mul _

/-- The complex sample vanishes on the complement of the original positive time domain. -/
theorem laplaceSample_zero_of_nonpos (z : ℂ) (n : ℕ) (t : ℝ) (ht : t ≤ 0) :
    laplaceSample z n t = 0 := by
  have hl : 0 ≤ Real.log (n + 1 : ℝ) := Real.log_nonneg (by have := Nat.cast_nonneg (α := ℝ) n; linarith)
  rw [laplaceSample, logSample_zero_of_time_le_log t _ (by linarith), Complex.ofReal_zero, zero_mul]

/-- The original half-line integral equals the full-line translated integral, with zero extension proved. -/
theorem laplaceSample_integral_Ioi (z : ℂ) (n : ℕ) :
    (∫ t : ℝ in Ioi 0, laplaceSample z n t) = sampleCoefficient z n * V z := by
  rw [setIntegral_eq_integral_of_forall_compl_eq_zero (s := Ioi (0 : ℝ)) (fun t ht ↦
    laplaceSample_zero_of_nonpos z n t (le_of_not_gt ht))]
  simp_rw [laplaceSample_eq_translate]
  rw [integral_const_mul, integral_sub_right_eq_self]
  change sampleCoefficient z n * V (-z) = _
  rw [V_even]

/-- The source norm integral is nonnegative. -/
theorem sourceNormIntegral_nonneg (z : ℂ) : 0 ≤ sourceNormIntegral z :=
  integral_nonneg (fun _ ↦ norm_nonneg _)

/-- The exact norm-integral formula retains the complete positive-time sample. -/
theorem laplaceSample_norm_integral_Ioi (z : ℂ) (n : ℕ) :
    (∫ t : ℝ in Ioi 0, ‖laplaceSample z n t‖) =
      ‖sampleCoefficient z n‖ * sourceNormIntegral z := by
  rw [setIntegral_eq_integral_of_forall_compl_eq_zero (s := Ioi (0 : ℝ)) (fun t ht ↦ by
    rw [laplaceSample_zero_of_nonpos z n t (le_of_not_gt ht), norm_zero])]
  simp_rw [laplaceSample_eq_translate, norm_mul]
  rw [integral_const_mul, integral_sub_right_eq_self (fun x : ℝ ↦ ‖weightedSource z x‖)
    (1 + Real.log (n + 1 : ℝ))]
  rfl

/-- Exact Dirichlet decay of the sample coefficient. -/
theorem sampleCoefficient_norm (z : ℂ) (n : ℕ) :
    ‖sampleCoefficient z n‖ = Real.exp (-z.re) *
      (1 / (n + 1 : ℝ) ^ (z.re + 1 / 2)) := by
  rw [sampleCoefficient, norm_mul, Complex.norm_real, Real.norm_eq_abs,
    abs_of_pos (Real.exp_pos _), Complex.norm_exp]
  simp only [Complex.mul_re, Complex.neg_re, Complex.add_re, Complex.one_re,
    Complex.ofReal_re, Complex.neg_im, Complex.add_im, Complex.one_im,
    Complex.ofReal_im, add_zero, mul_zero, sub_zero]
  rw [Real.rpow_def_of_pos (by positivity : (0 : ℝ) < n + 1), one_div, ← Real.exp_neg,
    ← Real.exp_add, ← Real.exp_add]
  congr 1
  ring

/-- Summability of the L1 norms is proved before any infinite integral interchange. -/
theorem laplaceSample_norm_integrals_summable (z : ℂ) (hz : 1 / 2 < z.re) :
    Summable (fun n : ℕ ↦ ∫ t : ℝ in Ioi 0, ‖laplaceSample z n t‖) := by
  have hs := (Real.summable_one_div_nat_add_rpow 1 (z.re + 1 / 2)).mpr (by linarith)
  have hn : Summable (fun n : ℕ ↦ 1 / (n + 1 : ℝ) ^ (z.re + 1 / 2)) := by
    convert hs using 1
    funext n
    rw [abs_of_nonneg (by positivity : (0 : ℝ) ≤ (n : ℝ) + 1)]
  simp_rw [laplaceSample_norm_integral_Ioi, sampleCoefficient_norm]
  exact (hn.mul_left (Real.exp (-z.re))).mul_right (sourceNormIntegral z)

/-- The separated coefficient is exactly the original complex Dirichlet-series weight. -/
theorem sampleCoefficient_eq_cpow (z : ℂ) (n : ℕ) :
    sampleCoefficient z n = Complex.exp (-z) * (1 / (n + 1 : ℂ) ^ (1 / 2 + z)) := by
  have hn : (n + 1 : ℂ) ≠ 0 := by
    exact_mod_cast (show (n + 1 : ℕ) ≠ 0 by omega)
  have hl : Complex.log (n + 1 : ℂ) = (Real.log (n + 1 : ℝ) : ℂ) := by
    rw [Complex.ofReal_log (by positivity : (0 : ℝ) ≤ n + 1)]
    push_cast
    rfl
  rw [sampleCoefficient, Complex.ofReal_exp, Complex.cpow_def_of_ne_zero hn, hl,
    one_div, ← Complex.exp_neg, ← Complex.exp_add, ← Complex.exp_add]
  congr 1
  push_cast
  ring

/-- The complete infinite sample sum is the unchanged real source kernel with its exponential. -/
theorem laplaceSample_tsum (z : ℂ) (t : ℝ) :
    (∑' n : ℕ, laplaceSample z n t) =
      (fixedKernel t : ℂ) * Complex.exp ((-z) * (t : ℂ)) := by
  simp only [laplaceSample, tsum_mul_right, fixedKernel, Complex.ofReal_tsum]

/-- Actual L1 source admission gives a genuine Laplace integral on the closed right half-plane. -/
theorem fixedKernel_laplace_integrable (z : ℂ) (hz : 0 ≤ z.re) :
    IntegrableOn (fun t : ℝ ↦ (fixedKernel t : ℂ) * Complex.exp ((-z) * (t : ℂ))) (Ioi 0) := by
  have hk : IntegrableOn (fun t : ℝ ↦ (fixedKernel t : ℂ)) (Ioi 0) :=
    FixedKernelAdmissionScratch.fixedKernel_integrableOn_Ioi.ofReal
  apply hk.mul_bdd
    ((Complex.continuous_exp.comp (continuous_const.mul Complex.continuous_ofReal)).aestronglyMeasurable)
    (c := 1)
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  change ‖Complex.exp ((-z) * (t : ℂ))‖ ≤ 1
  rw [Complex.norm_exp]
  apply Real.exp_le_one_iff.mpr
  simp only [Complex.mul_re, Complex.neg_re, Complex.ofReal_re,
    Complex.neg_im, Complex.ofReal_im, mul_zero, sub_zero]
  exact mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr hz) (le_of_lt ht)

/-- Summable source L1 norms justify the complete Laplace interchange in the Dirichlet half-plane. -/
theorem fixedKernel_laplace_eq_transferProduct (z : ℂ) (hz : 1 / 2 < z.re) :
    (∫ t : ℝ in Ioi 0, (fixedKernel t : ℂ) * Complex.exp ((-z) * (t : ℂ))) =
      Complex.exp (-z) * riemannZeta (1 / 2 + z) * V z := by
  have hi (n : ℕ) : IntegrableOn (laplaceSample z n) (Ioi 0) :=
    (laplaceSample_integrable z n).integrableOn
  calc
    _ = ∫ t : ℝ in Ioi 0, ∑' n : ℕ, laplaceSample z n t := by
      apply integral_congr_ae
      filter_upwards [] with t
      exact (laplaceSample_tsum z t).symm
    _ = ∑' n : ℕ, ∫ t : ℝ in Ioi 0, laplaceSample z n t :=
      (integral_tsum_of_summable_integral_norm hi (laplaceSample_norm_integrals_summable z hz)).symm
    _ = _ := by
      simp_rw [laplaceSample_integral_Ioi, sampleCoefficient_eq_cpow]
      rw [tsum_mul_right, tsum_mul_left,
        ← zeta_eq_tsum_one_div_nat_add_one_cpow (s := 1 / 2 + z) (by
          simp only [Complex.add_re, Complex.div_ofNat_re, Complex.one_re]
          linarith)]

/-- The admitted actual integral agrees with the repaired source transfer in its initial half-plane. -/
theorem fixedKernel_laplace_eq_repairedTransfer (z : ℂ) (hz : 1 / 2 < z.re) :
    (∫ t : ℝ in Ioi 0, (fixedKernel t : ℂ) * Complex.exp ((-z) * (t : ℂ))) =
      FrozenSourceTransferScratch.repairedTransfer z := by
  rw [FrozenSourceTransferScratch.repairedTransfer_eq_product z (by
    intro h
    have hr := congrArg Complex.re h
    simp only [Complex.div_ofNat_re, Complex.one_re] at hr
    linarith)]
  exact fixedKernel_laplace_eq_transferProduct z hz

end
end FixedKernelLaplaceScratch
