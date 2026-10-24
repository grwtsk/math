import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
set_option autoImplicit false
namespace TimeKernelTruncationScratch
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison
open FixedSourceKernel FixedKernelAdmission HalfLineExponential
open HalfLineOperatorScratch
noncomputable section

def truncatedKernel (N : ℝ) : ℝ → ℝ := (Icc (0 : ℝ) N).indicator fixedKernel

theorem truncatedKernel_integrable (N : ℝ) : Integrable (truncatedKernel N) :=
  fixedKernel_integrable.indicator measurableSet_Icc

theorem truncatedKernel_memLp (N : ℝ) : MemLp (truncatedKernel N) 2 volume :=
  fixedKernel_memLp_two.indicator measurableSet_Icc

theorem kernel_sub_truncated (N : ℝ) (t : ℝ) :
    fixedKernel t - truncatedKernel N t = (Ioi N).indicator fixedKernel t := by
  by_cases ht : t ≤ N
  · rw [indicator_of_notMem (show t ∉ Ioi N from not_lt.mpr ht)]
    by_cases ht0 : 0 ≤ t
    · simp only [truncatedKernel, indicator_of_mem (show t ∈ Icc 0 N from ⟨ht0, ht⟩), sub_self]
    · rw [truncatedKernel, indicator_of_notMem (show t ∉ Icc 0 N from fun h => ht0 h.1),
        fixedKernel_zero_of_nonpos t (le_of_lt (lt_of_not_ge ht0)), sub_zero]
  · rw [truncatedKernel, indicator_of_notMem (show t ∉ Icc 0 N from fun h => ht h.2),
      indicator_of_mem (show t ∈ Ioi N from lt_of_not_ge ht), sub_zero]

theorem norm_kernel_sub_truncated_integral (N : ℝ) :
    (∫ t : ℝ, ‖fixedKernel t - truncatedKernel N t‖) = ∫ t : ℝ in Ioi N, ‖fixedKernel t‖ := by
  simp_rw [kernel_sub_truncated N]
  rw [← integral_indicator measurableSet_Ioi]
  apply integral_congr_ae
  filter_upwards [] with t
  by_cases ht : t ∈ Ioi N <;> simp [ht]

theorem tail_majorant_integrable (N : ℝ) :
    IntegrableOn (fun t : ℝ => Real.exp ((1 - t) / 2) * derivativeBudget) (Ioi N) := by
  have hi := (integrableOn_exp_mul_Ioi (a := -(1 / 2 : ℝ)) (by norm_num) N).const_mul
    (Real.exp (1 / 2) * derivativeBudget)
  change Integrable (fun t : ℝ => Real.exp ((1 - t) / 2) * derivativeBudget)
    (volume.restrict (Ioi N))
  convert hi using 1
  funext t
  rw [show (1 - t) / 2 = 1 / 2 + -(1 / 2) * t by ring, Real.exp_add]
  ring

theorem tail_majorant_integral (N : ℝ) :
    (∫ t : ℝ in Ioi N, Real.exp ((1 - t) / 2) * derivativeBudget) =
      2 * derivativeBudget * Real.exp ((1 - N) / 2) := by
  have he (t : ℝ) : Real.exp ((1 - t) / 2) * derivativeBudget =
      (Real.exp (1 / 2) * derivativeBudget) * Real.exp (-(1 / 2) * t) := by
    rw [show (1 - t) / 2 = 1 / 2 + -(1 / 2) * t by ring, Real.exp_add]
    ring
  simp_rw [he]
  rw [integral_const_mul, integral_exp_mul_Ioi (a := -(1 / 2 : ℝ)) (by norm_num) N]
  rw [show (1 - N) / 2 = 1 / 2 + -(1 / 2) * N by ring, Real.exp_add]
  ring

theorem kernel_tail_integral_le (N : ℝ) (hN : 2 ≤ N) :
    (∫ t : ℝ in Ioi N, ‖fixedKernel t‖) ≤
      2 * derivativeBudget * Real.exp ((1 - N) / 2) := by
  rw [← tail_majorant_integral]
  apply integral_mono_ae fixedKernel_integrable.norm.integrableOn (tail_majorant_integrable N)
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  simpa only [Real.norm_eq_abs] using fixedKernel_abs_le t (hN.trans ht.le)

theorem norm_kernel_sub_truncated_integral_le (N : ℝ) (hN : 2 ≤ N) :
    (∫ t : ℝ, ‖fixedKernel t - truncatedKernel N t‖) ≤
      2 * derivativeBudget * Real.exp ((1 - N) / 2) := by
  rw [norm_kernel_sub_truncated_integral N]
  exact kernel_tail_integral_le N hN

def kernelMass : ℝ := ∫ t : ℝ, ‖fixedKernel t‖

theorem kernelMass_nonneg : 0 ≤ kernelMass := integral_nonneg (fun t => norm_nonneg (fixedKernel t))

theorem truncated_norm_integral_le (N : ℝ) : (∫ t : ℝ, ‖truncatedKernel N t‖) ≤ kernelMass := by
  apply integral_mono (truncatedKernel_integrable N).norm fixedKernel_integrable.norm
  intro t
  by_cases ht : t ∈ Icc (0 : ℝ) N <;> simp [truncatedKernel, ht]

def truncatedOperator (N : ℝ) : H →L[ℂ] H :=
  halfConvolution (truncatedKernel N) (truncatedKernel_integrable N)

theorem truncatedOperator_norm_le (N : ℝ) : ‖truncatedOperator N‖ ≤ kernelMass :=
  (halfConvolution_norm_le _ _).trans (truncated_norm_integral_le N)

theorem operator_norm_sub_le (N : ℝ) (hN : 2 ≤ N) :
    ‖sourceOperator - truncatedOperator N‖ ≤
      2 * derivativeBudget * Real.exp ((1 - N) / 2) :=
  (halfConvolution_norm_sub_le _ _ fixedKernel_integrable (truncatedKernel_integrable N)).trans
    (norm_kernel_sub_truncated_integral_le N hN)

def truncatedEnergy (N : ℝ) : H →L[ℂ] H :=
  (truncatedOperator N).comp (truncatedOperator N).adjoint

theorem truncatedEnergy_isPositive (N : ℝ) : (truncatedEnergy N).IsPositive :=
  ContinuousLinearMap.isPositive_self_comp_adjoint (truncatedOperator N)

theorem norm_energy_difference (S T : H →L[ℂ] H) :
    ‖S.comp S.adjoint - T.comp T.adjoint‖ ≤ (‖S‖ + ‖T‖) * ‖S - T‖ := by
  have he : S.comp S.adjoint - T.comp T.adjoint =
      (S - T).comp S.adjoint + T.comp (S.adjoint - T.adjoint) := by
    apply ContinuousLinearMap.ext
    intro f
    simp only [ContinuousLinearMap.comp_apply, sub_apply, add_apply, map_sub]
    abel
  rw [he]
  calc
    _ ≤ ‖(S - T).comp S.adjoint‖ + ‖T.comp (S.adjoint - T.adjoint)‖ := norm_add_le _ _
    _ ≤ ‖S - T‖ * ‖S.adjoint‖ + ‖T‖ * ‖S.adjoint - T.adjoint‖ :=
      add_le_add (ContinuousLinearMap.opNorm_comp_le _ _) (ContinuousLinearMap.opNorm_comp_le _ _)
    _ = _ := by
      rw [← map_sub, LinearIsometryEquiv.norm_map, LinearIsometryEquiv.norm_map]
      ring

theorem energy_norm_sub_le (N : ℝ) (hN : 2 ≤ N) :
    ‖sourceEnergy - truncatedEnergy N‖ ≤
      4 * kernelMass * derivativeBudget * Real.exp ((1 - N) / 2) := by
  calc
    _ ≤ (‖sourceOperator‖ + ‖truncatedOperator N‖) * ‖sourceOperator - truncatedOperator N‖ :=
      norm_energy_difference _ _
    _ ≤ (kernelMass + kernelMass) * (2 * derivativeBudget * Real.exp ((1 - N) / 2)) := by
      exact mul_le_mul (add_le_add sourceOperator_norm_le (truncatedOperator_norm_le N))
        (operator_norm_sub_le N hN) (norm_nonneg _)
        (add_nonneg kernelMass_nonneg kernelMass_nonneg)
    _ = _ := by ring

def diagonalCutoff (α : ℝ) : ℝ := max 2 (1 + 4 * Real.log (1 / α))

theorem diagonalCutoff_ge_two (α : ℝ) : 2 ≤ diagonalCutoff α := le_max_left _ _

theorem diagonal_exp_le (α : ℝ) (hα : 0 < α) :
    Real.exp ((1 - diagonalCutoff α) / 2) ≤ α ^ 2 := by
  have hN : 1 + 4 * Real.log (1 / α) ≤ diagonalCutoff α := le_max_right _ _
  calc
    _ ≤ Real.exp (-2 * Real.log (1 / α)) := Real.exp_le_exp.mpr (by linarith)
    _ = α ^ 2 := by
      rw [one_div, Real.log_inv]
      have he : -2 * -Real.log α = (2 : ℕ) * Real.log α := by norm_num
      rw [he, Real.exp_nat_mul, Real.exp_log hα]

theorem diagonal_operator_error_le (α : ℝ) (hα : 0 < α) :
    ‖sourceOperator - truncatedOperator (diagonalCutoff α)‖ ≤ 2 * derivativeBudget * α ^ 2 := by
  exact (operator_norm_sub_le _ (diagonalCutoff_ge_two α)).trans
    (mul_le_mul_of_nonneg_left (diagonal_exp_le α hα)
      (mul_nonneg (by norm_num) derivativeBudget_nonneg))

theorem diagonal_energy_error_le (α : ℝ) (hα : 0 < α) :
    ‖sourceEnergy - truncatedEnergy (diagonalCutoff α)‖ ≤
      4 * kernelMass * derivativeBudget * α ^ 2 := by
  exact (energy_norm_sub_le _ (diagonalCutoff_ge_two α)).trans
    (mul_le_mul_of_nonneg_left (diagonal_exp_le α hα)
      (mul_nonneg (mul_nonneg (by norm_num) kernelMass_nonneg) derivativeBudget_nonneg))

end
end TimeKernelTruncationScratch
