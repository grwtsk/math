# Complete source: GRWTSK.Topology.GeneralTopology.PhaseKernelBoundary.Variant18870a8600d07a5fdbacb4b72773c3d6f84b9db768b672422bc048264fa4beac

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6a497da550d16d3d51290f5b93e29f0e27545c30` · SHA-256 `b8bdcaec492fdd9f328e1f414d74f7f104c46f2e7106d07b55346855571a6eb3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.SourceContinuumAbsLeTwo.Variant87559466a3c80a641822ebcd414f035114358b2cc338d7238eb9be33808f6574","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"87559466a3c80a641822ebcd414f035114358b2cc338d7238eb9be33808f6574","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.SourceContinuumAbsLeTwo.Variant87559466a3c80a641822ebcd414f035114358b2cc338d7238eb9be33808f6574","mathematical_subject":"Topology.GeneralTopology","original_sha256":"87559466a3c80a641822ebcd414f035114358b2cc338d7238eb9be33808f6574","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/87559466a3c80a641822ebcd414f035114358b2cc338d7238eb9be33808f6574.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.JointPhaseScaling
import FormalResearch.RiemannHypothesis.PhaseDeformationQuantities
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceCorrectionEstimate

/-!
# Continuous-model cancellation and fixed-prime kernel boundaries

The two proved pole moments bound the exponentially growing continuous model
by the decaying model, uniformly in the actual source radius. The same moment
cancellation and the value one at zero force the actual scaled kernel to take
a negative value. Neither conclusion bounds the discrete weighted prime and
prime-square sum. The exact three-component density also proves that every
fixed-index kernel observation tends to one as the radius grows. Thus each
fixed prime and prime-square block is eventually positive. Its threshold depends
on the prime; this is no uniform statement over the growing source inventory.

AI attribution: Codex authored this module and its proofs.
-/


namespace GRWTSK.Topology.GeneralTopology.SourceContinuumAbsLeTwo.Variant87559466a3c80a641822ebcd414f035114358b2cc338d7238eb9be33808f6574

namespace FormalResearch.RiemannHypothesis.PhaseKernelBoundary

open MeasureTheory Filter
open FormalResearch.RiemannHypothesis.SourcePairing
open JointPhaseScaling
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity PrimePowerPhaseDefect EstimateHigherPrimePowers

noncomputable section

/-- Pole cancellation uniformly controls the actual continuous prime-density model. -/
theorem source_continuum_abs_le_two (A : ℝ) (hA : 1 ≤ A) :
    |∫ t in 0..2 * A, Real.exp (t / 2) *
      sourceCorrelation explicitSecondDerivative A t| ≤ 2 := by
  have hab : (0 : ℝ) ≤ 2 * A := by linarith
  have hc := (sourceCorrelation_contDiff A (by linarith)).continuous
  have he : Continuous (fun t : ℝ ↦ Real.exp (-t / 2)) := by fun_prop
  have hp : (∫ t in 0..2 * A, Real.exp (-t / 2)) = 2 - 2 * Real.exp (-A) := by
    have hd (t : ℝ) : HasDerivAt (fun x : ℝ ↦ -2 * Real.exp (-x / 2))
        (Real.exp (-t / 2)) t := by
      apply ((((hasDerivAt_id t).neg.div_const 2).exp).const_mul (-2)).congr_deriv
      simp only [Pi.neg_apply, id_eq]
      ring
    rw [intervalIntegral.integral_eq_sub_of_hasDerivAt
      (fun t _ ↦ hd t) (he.intervalIntegrable _ _)]
    simp only [neg_zero, zero_div, Real.exp_zero, mul_one]
    rw [show -(2 * A) / 2 = -A by ring]
    ring
  have hbound : |∫ t in 0..2 * A, Real.exp (-t / 2) *
      sourceCorrelation explicitSecondDerivative A t| ≤ 2 := by
    calc
      _ ≤ ∫ t in 0..2 * A, |Real.exp (-t / 2) *
          sourceCorrelation explicitSecondDerivative A t| :=
        intervalIntegral.abs_integral_le_integral_abs hab
      _ ≤ ∫ t in 0..2 * A, Real.exp (-t / 2) := by
        apply intervalIntegral.integral_mono_on hab
          ((he.mul hc).abs.intervalIntegrable _ _) (he.intervalIntegrable _ _)
        intro t _
        change |Real.exp (-t / 2) * sourceCorrelation explicitSecondDerivative A t| ≤
          Real.exp (-t / 2)
        rw [abs_mul, abs_of_pos (Real.exp_pos _)]
        simpa only [mul_one] using mul_le_mul_of_nonneg_left
          (EstimateCorrelation.actual_correlation_abs_le_one A t hA) (Real.exp_pos _).le
      _ = 2 - 2 * Real.exp (-A) := hp
      _ ≤ 2 := by linarith [Real.exp_pos (-A)]
  have hpole := CorrelationMoment.pole_correlation_certificate A hA
  have heq : (∫ t in 0..2 * A, Real.exp (t / 2) *
      sourceCorrelation explicitSecondDerivative A t) =
      -(∫ t in 0..2 * A, Real.exp (-t / 2) *
        sourceCorrelation explicitSecondDerivative A t) := by linarith
  rw [heq, abs_neg]
  exact hbound

/-- The actual scaled kernel cannot be nonnegative everywhere: its pole moment is zero. -/
theorem scaled_kernel_has_negative_value (A : ℝ) (hA : 1 ≤ A) :
    ∃ s : ℝ, scaledKernel A s < 0 := by
  by_contra h
  push Not at h
  have hc : Continuous (fun s : ℝ ↦ Real.exp (A * s / 2) * scaledKernel A s) :=
    (by fun_prop : Continuous (fun s : ℝ ↦ Real.exp (A * s / 2))).mul
      (scaled_kernel_continuous A hA)
  have hnonneg : 0 ≤ (fun s : ℝ ↦ Real.exp (A * s / 2) * scaledKernel A s) :=
    fun s ↦ mul_nonneg (Real.exp_pos _).le (h s)
  have hzero : Real.exp (A * (0 : ℝ) / 2) * scaledKernel A 0 ≠ 0 := by
    simp [scaled_kernel_at_zero A hA]
  have hpos := integral_pos_of_integrable_nonneg_nonzero hc
    (scaled_kernel_exponential_moment_integrable A hA) hnonneg hzero
  rw [scaled_kernel_exponential_moment_zero A hA] at hpos
  linarith

/-- Each admitted fixed moment kernel is continuous by dominated convergence. -/
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

/-- The scaled logarithm of one fixed arithmetic index tends to zero. -/
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

/-- The actual normalization tends to its strictly positive constant term. -/
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

/-- Every fixed-index observation of the actual radius-dependent kernel tends to one.
This is not a uniform limit over the radius-dependent arithmetic inventory. -/
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

/-- The actual von Mangoldt weight at a prime is strictly positive. -/
theorem prime_weight_pos {p : ℕ} (hp : p.Prime) : 0 < primeWeight p := by
  unfold primeWeight
  rw [ArithmeticFunction.vonMangoldt_apply_prime hp]
  apply div_pos
  · apply Real.log_pos
    exact_mod_cast hp.one_lt
  · apply Real.sqrt_pos.2
    exact_mod_cast hp.pos

/-- Every fixed prime and its square form an eventually positive integrated block.
The eventual radius threshold depends on the prime, so this rules out termwise
nonpositive blocks without bounding the full growing sum. -/
theorem integrated_prime_square_block_eventually_pos {p : ℕ} (hp : p.Prime) :
    ∀ᶠ A : ℝ in atTop,
      1 ≤ A ∧ p ∈ lowerPowerInventory A ∧ p ^ 2 ∈ lowerPowerInventory A ∧
        0 < primeWeight p * scaledKernel A (Real.log p / A) +
        primeWeight (p ^ 2) * scaledKernel A (Real.log (p ^ 2 : ℕ) / A) := by
  have h := ((scaled_kernel_fixed_index_tendsto p).const_mul (primeWeight p)).add
    ((scaled_kernel_fixed_index_tendsto (p ^ 2)).const_mul (primeWeight (p ^ 2)))
  have hpos : 0 < primeWeight p * 1 + primeWeight (p ^ 2) * 1 := by
    simpa only [mul_one] using add_pos_of_pos_of_nonneg (prime_weight_pos hp)
      (primeWeight_nonneg (p ^ 2))
  have hpositive := (tendsto_const_nhds :
    Tendsto (fun _ : ℝ ↦ (0 : ℝ)) atTop (nhds 0)).eventually_lt h hpos
  have hcut (n : ℕ) (hn : 0 < n) : ∀ᶠ A : ℝ in atTop,
      1 ≤ A ∧ (n : ℝ) < Real.exp (2 * A) := by
    filter_upwards [eventually_ge_atTop (max 1 (Real.log n + 1))] with A hA
    have hAone : 1 ≤ A := (le_max_left _ _).trans hA
    have hlog : Real.log n + 1 ≤ A := (le_max_right _ _).trans hA
    refine ⟨hAone, (Real.log_lt_iff_lt_exp (by exact_mod_cast hn)).mp ?_⟩
    linarith
  filter_upwards [hpositive, hcut p hp.pos, hcut (p ^ 2) (pow_pos hp.pos 2)] with A hb hpA hp2A
  exact ⟨hpA.1, PhaseDeformationQuantities.prime_mem_lower_power_inventory hp A hpA.2,
    PhaseDeformationQuantities.prime_square_mem_lower_power_inventory hp A hp2A.2, hb⟩


end
end FormalResearch.RiemannHypothesis.PhaseKernelBoundary
```
