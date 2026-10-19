import FormalResearch.RiemannHypothesis.PhaseKernelBoundary

namespace FormalResearch.RiemannHypothesis.PhaseKernelBoundary

open MeasureTheory Filter
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open JointPhaseScaling PrimePowerPhaseDefect

noncomputable section

theorem fixed_kernel_continuous (k : ℕ) (hk : k ≤ 2) : Continuous (fixedKernel k) := by
  apply continuous_of_dominated (bound := bumpMomentDensity k)
  · exact fun s ↦ (fixed_kernel_integrable k hk s).aestronglyMeasurable
  · intro s
    filter_upwards [] with u
    rw [Real.norm_eq_abs, abs_mul,
      abs_of_nonneg (bump_moment_density_nonneg k u)]
    exact mul_le_of_le_one_left (bump_moment_density_nonneg k u) (Real.abs_cos_le_one _)
  · exact bump_moment_density_integrable k hk
  · filter_upwards [] with u
    fun_prop

theorem log_div_radius_tendsto_zero (n : ℕ) :
    Tendsto (fun A : ℝ ↦ Real.log n / A) atTop (nhds 0) := by
  simpa only [div_eq_mul_inv, mul_zero] using
    (tendsto_inv_atTop_zero : Tendsto (fun A : ℝ ↦ A⁻¹) atTop (nhds 0)).const_mul
      (Real.log n)

private theorem inverse_square_coefficient_tendsto_zero :
    Tendsto (fun A : ℝ ↦ 1 / (2 * A ^ 2)) atTop (nhds 0) := by
  have h := ((tendsto_inv_atTop_zero :
    Tendsto (fun A : ℝ ↦ A⁻¹) atTop (nhds 0)).pow 2).const_mul (1 / 2 : ℝ)
  convert h using 1 <;> simp [div_eq_mul_inv, mul_inv_rev, inv_pow, mul_comm]

private theorem inverse_fourth_coefficient_tendsto_zero :
    Tendsto (fun A : ℝ ↦ 1 / A ^ 4) atTop (nhds 0) := by
  simpa only [one_div, inv_pow, zero_pow (by omega : 4 ≠ 0)] using
    (tendsto_inv_atTop_zero : Tendsto (fun A : ℝ ↦ A⁻¹) atTop (nhds 0)).pow 4

theorem source_normalization_tendsto :
    Tendsto sourceNormalization atTop (nhds (4096 / 109395 : ℝ)) := by
  have h2 := inverse_square_coefficient_tendsto_zero.const_mul (131072 / 45045 : ℝ)
  have h4 := inverse_fourth_coefficient_tendsto_zero.const_mul (196608 / 5005 : ℝ)
  have h := ((tendsto_const_nhds :
    Tendsto (fun _ : ℝ ↦ (4096 / 109395 : ℝ)) atTop (nhds (4096 / 109395 : ℝ))).add
      h2).add h4
  convert h using 1
  · funext A
    unfold sourceNormalization
    ring
  · norm_num

theorem scaled_kernel_fixed_index_tendsto (n : ℕ) :
    Tendsto (fun A : ℝ ↦ scaledKernel A (Real.log n / A)) atTop (nhds 1) := by
  have h0 := (fixed_kernel_continuous 0 (by norm_num)).continuousAt.tendsto.comp
    (log_div_radius_tendsto_zero n)
  have h1 := (fixed_kernel_continuous 1 (by norm_num)).continuousAt.tendsto.comp
    (log_div_radius_tendsto_zero n)
  have h2 := (fixed_kernel_continuous 2 (by norm_num)).continuousAt.tendsto.comp
    (log_div_radius_tendsto_zero n)
  have hn := ((h0.div_const 16).add
    (h1.mul inverse_square_coefficient_tendsto_zero)).add
    (h2.mul inverse_fourth_coefficient_tendsto_zero)
  have hr := hn.div source_normalization_tendsto (by norm_num)
  have heq : (fun A : ℝ ↦ scaledKernel A (Real.log n / A)) =ᶠ[atTop]
      (fun A ↦ (fixedKernel 0 (Real.log n / A) / 16 +
        fixedKernel 1 (Real.log n / A) * (1 / (2 * A ^ 2)) +
        fixedKernel 2 (Real.log n / A) * (1 / A ^ 4)) / sourceNormalization A) := by
    filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
    rw [scaled_kernel_eq_three_fixed_kernels A _ hA]
    ring
  convert hr.congr' heq.symm using 1
  norm_num [fixed_kernel_mass_values.1]

theorem prime_weight_pos {p : ℕ} (hp : p.Prime) : 0 < primeWeight p := by
  unfold primeWeight
  rw [ArithmeticFunction.vonMangoldt_apply_prime hp]
  apply div_pos
  · apply Real.log_pos
    exact_mod_cast hp.one_lt
  · apply Real.sqrt_pos.2
    exact_mod_cast hp.pos

theorem integrated_prime_square_block_eventually_pos {p : ℕ} (hp : p.Prime) :
    ∀ᶠ A : ℝ in atTop,
      0 < primeWeight p * scaledKernel A (Real.log p / A) +
        primeWeight (p ^ 2) * scaledKernel A (Real.log (p ^ 2 : ℕ) / A) := by
  have h := ((scaled_kernel_fixed_index_tendsto p).const_mul (primeWeight p)).add
    ((scaled_kernel_fixed_index_tendsto (p ^ 2)).const_mul (primeWeight (p ^ 2)))
  have hpos : 0 < primeWeight p * 1 + primeWeight (p ^ 2) * 1 := by
    simpa only [mul_one] using add_pos_of_pos_of_nonneg (prime_weight_pos hp)
      (primeWeight_nonneg (p ^ 2))
  exact (tendsto_const_nhds : Tendsto (fun _ : ℝ ↦ (0 : ℝ)) atTop (nhds 0)).eventually_lt h hpos

end

end FormalResearch.RiemannHypothesis.PhaseKernelBoundary
