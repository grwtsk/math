import FormalResearch.RiemannHypothesis.SourceComparison.EndpointMonotonicity
import FormalResearch.RiemannHypothesis.SourceComparison.SourceUpperSupport
import Mathlib.Analysis.Complex.ExponentialBounds
import FormalResearch.RiemannHypothesis.SourceComparison.EndpointPositivity

set_option autoImplicit false
namespace UpperKernelNegativeDirectionScratch
open FormalResearch.RiemannHypothesis.SourceComparison
open Finset
noncomputable section

theorem log_thirty_two_ge_three : (3 : ℝ) ≤ Real.log 32 := by
  apply (Real.le_log_iff_exp_le (by norm_num : (0 : ℝ) < 32)).mpr
  have he : Real.exp (3 : ℝ) = (Real.exp 1) ^ 3 := by
    simp
  rw [he]
  have hp := pow_le_pow_left₀ (Real.exp_pos 1).le Real.exp_one_lt_three.le 3
  norm_num at hp
  linarith

theorem actual_upper_pair :
    23 ∈ Ioc (⌊Real.exp (Real.log (32 : ℝ))⌋₊ / 2) ⌊Real.exp (Real.log (32 : ℝ))⌋₊ ∧
    17 ∈ Ioc (⌊Real.exp (Real.log (32 : ℝ))⌋₊ / 2) ⌊Real.exp (Real.log (32 : ℝ))⌋₊ := by
  norm_num [Real.exp_log (by norm_num : (0 : ℝ) < 32), Finset.mem_Ioc]

theorem actual_diagonal_zero :
    SourceSampling.sourceSamplingKernel (Real.log 32) ((23 : ℝ) * 23) = 0 := by
  apply SourceUpperSupport.sourceSamplingKernel_zero_of_two_mul_ge
    (Real.log 32) _ (by norm_num)
  rw [two_mul (Real.log 32), Real.exp_add, Real.exp_log (by norm_num)]
  norm_num


theorem actual_offDiagonal_pos :
    0 < SourceSampling.sourceSamplingKernel (Real.log 32) ((23 : ℝ) * 17) := by
  apply EndpointPositivity.sourceSamplingKernel_upper_pos _ _ log_thirty_two_ge_three
  rw [two_mul (Real.log 32), Real.exp_add, Real.exp_log (by norm_num)]
  norm_num

theorem actual_pair_determinant_neg :
    SourceSampling.sourceSamplingKernel (Real.log 32) ((23 : ℝ) * 23) *
      SourceSampling.sourceSamplingKernel (Real.log 32) ((17 : ℝ) * 17) -
      SourceSampling.sourceSamplingKernel (Real.log 32) ((23 : ℝ) * 17) ^ 2 < 0 := by
  rw [actual_diagonal_zero, zero_mul, zero_sub]
  exact neg_neg_of_pos (sq_pos_of_pos actual_offDiagonal_pos)

theorem actual_negative_direction :
    ∃ u v : ℝ,
      u ^ 2 * SourceSampling.sourceSamplingKernel (Real.log 32) ((23 : ℝ) * 23) +
      2 * u * v * SourceSampling.sourceSamplingKernel (Real.log 32) ((23 : ℝ) * 17) +
      v ^ 2 * SourceSampling.sourceSamplingKernel (Real.log 32) ((17 : ℝ) * 17) = -1 := by
  let c := SourceSampling.sourceSamplingKernel (Real.log 32) ((23 : ℝ) * 17)
  let d := SourceSampling.sourceSamplingKernel (Real.log 32) ((17 : ℝ) * 17)
  have hc : c ≠ 0 := ne_of_gt actual_offDiagonal_pos
  refine ⟨-(d + 1) / (2 * c), 1, ?_⟩
  rw [actual_diagonal_zero]
  change (-(d + 1) / (2 * c)) ^ 2 * 0 +
    2 * (-(d + 1) / (2 * c)) * 1 * c + 1 ^ 2 * d = -1
  field_simp
  ring

theorem not_actual_pair_positiveSemidefinite :
    ¬∀ u v : ℝ,
      0 ≤ u ^ 2 * SourceSampling.sourceSamplingKernel (Real.log 32) ((23 : ℝ) * 23) +
        2 * u * v * SourceSampling.sourceSamplingKernel (Real.log 32) ((23 : ℝ) * 17) +
        v ^ 2 * SourceSampling.sourceSamplingKernel (Real.log 32) ((17 : ℝ) * 17) := by
  intro h
  obtain ⟨u, v, huv⟩ := actual_negative_direction
  have hn := h u v
  rw [huv] at hn
  norm_num at hn

end
end UpperKernelNegativeDirectionScratch
