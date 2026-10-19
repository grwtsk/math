import FormalResearch.RiemannHypothesis.PhaseKernelBoundary
import FormalResearch.RiemannHypothesis.SourceScaledKernel
import FormalResearch.RiemannHypothesis.FullQuadraticObstruction
import Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral
import Mathlib.Topology.UniformSpace.HeineCantor
import Mathlib.Topology.UniformSpace.UniformConvergence

/-!
# The exact moving boundary coordinate of the actual source

The boundary coordinate retains the actual normalized source correlation and
its ninth-order endpoint scale. Fixed-distance profile limits are analytic
identities; no interchange with a growing arithmetic inventory is asserted.

AI attribution: Codex authored this module and its proofs.
-/

namespace FormalResearch.RiemannHypothesis.SourceBoundaryLayer

open MeasureTheory Filter Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization JointPhaseScaling
open FormalResearch.RiemannHypothesis.SourceScaledKernel
open FormalResearch.RiemannHypothesis.PhaseKernelBoundary

noncomputable section

/-- The actual source correlation in the cutoff boundary coordinate with its ninth-order scale. -/
def boundaryKernel (A y : ℝ) : ℝ :=
  A ^ 9 * sourceCorrelation explicitSecondDerivative A (2 * A - y)

/-- The exact boundary formula preserves all three terms at their common ninth-order scale. -/
theorem boundary_kernel_exact (A y : ℝ) (hA : 1 ≤ A) (hy : 0 ≤ y) (hyA : y ≤ 2 * A) :
    boundaryKernel A y =
      (y ^ 9 / 16 * endpointPolynomialZero (y / A) +
        y ^ 7 / 2 * endpointPolynomialOne (y / A) +
          y ^ 5 * endpointPolynomialTwo (y / A)) / sourceNormalization A := by
  have hpos : 0 < A := lt_of_lt_of_le (by norm_num) hA
  have hne : A ≠ 0 := ne_of_gt hpos
  have hs0 : 0 ≤ y / A := div_nonneg hy (le_of_lt hpos)
  have hs2 : y / A ≤ 2 := (div_le_iff₀ hpos).2 (by linarith)
  unfold boundaryKernel
  rw [show 2 * A - y = A * (2 - y / A) by field_simp,
    source_correlation_scaled_exact A hA,
    fixed_kernel_zero_endpoint (y / A) hs0 hs2,
    fixed_kernel_one_endpoint (y / A) hs0 hs2,
    fixed_kernel_two_endpoint (y / A) hs0 hs2]
  field_simp [hne, ne_of_gt (source_normalization_pos A hA)]

/-- The fixed-distance boundary profile with the actual three endpoint coefficients. -/
def boundaryProfile (y : ℝ) : ℝ :=
  ((8 / 315 : ℝ) * y ^ 9 - (512 / 35 : ℝ) * y ^ 7 + (6144 / 5 : ℝ) * y ^ 5) /
    (4096 / 109395 : ℝ)

/-- The zeroth fixed kernel alone in the same boundary coordinate and normalization. -/
def boundaryBulkKernel (A y : ℝ) : ℝ :=
  A ^ 9 * (JointPhaseScaling.fixedKernel 0 (2 - y / A) / 16) / sourceNormalization A

/-- The boundary profile obtained by discarding both derivative terms. -/
def boundaryBulkProfile (y : ℝ) : ℝ :=
  ((8 / 315 : ℝ) * y ^ 9) / (4096 / 109395 : ℝ)

/-- The bulk component alone still has its actual endpoint polynomial. -/
theorem boundary_bulk_kernel_exact (A y : ℝ) (hA : 1 ≤ A)
    (hy : 0 ≤ y) (hyA : y ≤ 2 * A) :
    boundaryBulkKernel A y =
      (y ^ 9 / 16 * endpointPolynomialZero (y / A)) / sourceNormalization A := by
  have hpos : 0 < A := lt_of_lt_of_le (by norm_num) hA
  have hne : A ≠ 0 := ne_of_gt hpos
  unfold boundaryBulkKernel
  rw [fixed_kernel_zero_endpoint (y / A) (div_nonneg hy (le_of_lt hpos))
    ((div_le_iff₀ hpos).2 (by linarith))]
  field_simp [hne, ne_of_gt (source_normalization_pos A hA)]

/-- A fixed boundary distance divided by the expanding radius tends to zero. -/
theorem distance_div_radius_tendsto_zero (y : ℝ) :
    Tendsto (fun A : ℝ ↦ y / A) atTop (nhds 0) := by
  simpa only [div_eq_mul_inv, mul_zero] using
    (tendsto_inv_atTop_zero : Tendsto (fun A : ℝ ↦ A⁻¹) atTop (nhds 0)).const_mul y

/-- Every fixed nonnegative boundary distance has the exact profile limit.
The statement is not uniform over the expanding arithmetic inventory. -/
theorem boundary_kernel_tendsto (y : ℝ) (hy : 0 ≤ y) :
    Tendsto (fun A : ℝ ↦ boundaryKernel A y) atTop (nhds (boundaryProfile y)) := by
  have hc0 : Continuous endpointPolynomialZero := by
    unfold endpointPolynomialZero
    fun_prop
  have hc1 : Continuous endpointPolynomialOne := by
    unfold endpointPolynomialOne
    fun_prop
  have hc2 : Continuous endpointPolynomialTwo := by
    unfold endpointPolynomialTwo
    fun_prop
  have h0 := hc0.continuousAt.tendsto.comp (distance_div_radius_tendsto_zero y)
  have h1 := hc1.continuousAt.tendsto.comp (distance_div_radius_tendsto_zero y)
  have h2 := hc2.continuousAt.tendsto.comp (distance_div_radius_tendsto_zero y)
  have hn := ((h0.const_mul (y ^ 9 / 16)).add (h1.const_mul (y ^ 7 / 2))).add
    (h2.const_mul (y ^ 5))
  have hr := hn.div source_normalization_tendsto (by norm_num)
  have heq : (fun A : ℝ ↦ boundaryKernel A y) =ᶠ[atTop]
      (fun A ↦ (y ^ 9 / 16 * endpointPolynomialZero (y / A) +
        y ^ 7 / 2 * endpointPolynomialOne (y / A) +
          y ^ 5 * endpointPolynomialTwo (y / A)) / sourceNormalization A) := by
    filter_upwards [eventually_ge_atTop (max 1 (y / 2))] with A hA
    have hA1 : 1 ≤ A := (le_max_left _ _).trans hA
    have hyA : y ≤ 2 * A := by have h := (le_max_right 1 (y / 2)).trans hA; linarith
    exact boundary_kernel_exact A y hA1 hy hyA
  convert hr.congr' heq.symm using 1
  norm_num [endpointPolynomialZero, endpointPolynomialOne, endpointPolynomialTwo, boundaryProfile]
  ring

/-- The bulk term has its own fixed-distance limit, which omits nonzero boundary terms. -/
theorem boundary_bulk_kernel_tendsto (y : ℝ) (hy : 0 ≤ y) :
    Tendsto (fun A : ℝ ↦ boundaryBulkKernel A y) atTop (nhds (boundaryBulkProfile y)) := by
  have hc : Continuous endpointPolynomialZero := by
    unfold endpointPolynomialZero
    fun_prop
  have hp := hc.continuousAt.tendsto.comp (distance_div_radius_tendsto_zero y)
  have hr := (hp.const_mul (y ^ 9 / 16)).div source_normalization_tendsto (by norm_num)
  have heq : (fun A : ℝ ↦ boundaryBulkKernel A y) =ᶠ[atTop]
      (fun A ↦ (y ^ 9 / 16 * endpointPolynomialZero (y / A)) / sourceNormalization A) := by
    filter_upwards [eventually_ge_atTop (max 1 (y / 2))] with A hA
    have hA1 : 1 ≤ A := (le_max_left _ _).trans hA
    have hyA : y ≤ 2 * A := by have h := (le_max_right 1 (y / 2)).trans hA; linarith
    exact boundary_bulk_kernel_exact A y hA1 hy hyA
  convert hr.congr' heq.symm using 1
  norm_num [endpointPolynomialZero, boundaryBulkProfile]
  ring

/-- The two derivative components retain their nontrivial fixed-distance contribution. -/
theorem boundary_derivative_correction_tendsto (y : ℝ) (hy : 0 ≤ y) :
    Tendsto (fun A : ℝ ↦ boundaryKernel A y - boundaryBulkKernel A y) atTop
      (nhds (boundaryProfile y - boundaryBulkProfile y)) :=
  (boundary_kernel_tendsto y hy).sub (boundary_bulk_kernel_tendsto y hy)

/-- The actual profile differs from its bulk truncation by the two derivative contributions. -/
theorem boundary_profile_sub_bulk (y : ℝ) :
    boundaryProfile y - boundaryBulkProfile y =
      (-(512 / 35 : ℝ) * y ^ 7 + (6144 / 5 : ℝ) * y ^ 5) /
        (4096 / 109395 : ℝ) := by
  unfold boundaryProfile boundaryBulkProfile
  ring

/-- The derivative correction is already nonzero at one fixed boundary distance. -/
theorem boundary_profile_ne_bulk_at_one : boundaryProfile 1 ≠ boundaryBulkProfile 1 := by
  norm_num [boundaryProfile, boundaryBulkProfile]

/-- The exact positive-half weighted polynomial observation of the limiting profile. -/
def profileExponentialMoment (k : ℕ) : ℝ :=
  ∫ y in Ioi (0 : ℝ), y ^ k * Real.exp (-y / 2) * boundaryProfile y

/-- Every polynomial power is genuinely integrable against the decaying half-line weight. -/
theorem half_exponential_power_integrable (k : ℕ) :
    IntegrableOn (fun y : ℝ ↦ y ^ k * Real.exp (-y / 2)) (Ioi 0) := by
  have h := integrableOn_rpow_mul_exp_neg_mul_rpow
    (s := (k : ℝ)) (p := 1) (b := 1 / 2) (by exact lt_of_lt_of_le (by norm_num) (Nat.cast_nonneg k))
      (by norm_num) (by norm_num)
  convert h using 1
  funext y
  simp only [Real.rpow_natCast, Real.rpow_one]
  congr 2
  ring

/-- Gamma integration gives the exact half-line power moment at every natural degree. -/
theorem half_exponential_power_integral (k : ℕ) :
    (∫ y in Ioi (0 : ℝ), y ^ k * Real.exp (-y / 2)) =
      (2 : ℝ) ^ (k + 1) * (k.factorial : ℝ) := by
  have h := Real.integral_rpow_mul_exp_neg_mul_Ioi
    (a := (k : ℝ) + 1) (r := 1 / 2) (by positivity) (by norm_num)
  have he : (fun y : ℝ ↦ y ^ k * Real.exp (-y / 2)) =
      (fun y : ℝ ↦ y ^ ((k : ℝ) + 1 - 1) * Real.exp (-((1 / 2 : ℝ) * y))) := by
    funext y
    simp only [add_sub_cancel_right, Real.rpow_natCast]
    congr 2
    ring
  rw [he, h, Real.Gamma_nat_eq_factorial]
  norm_num only [one_div, inv_div, inv_one, mul_one]
  rw [show (k : ℝ) + 1 = ((k + 1 : ℕ) : ℝ) by simp, Real.rpow_natCast]

/-- The profile observation is an exact finite combination of three polynomial moments. -/
theorem profile_moment_integrand_eq (k : ℕ) (y : ℝ) :
    y ^ k * Real.exp (-y / 2) * boundaryProfile y =
      ((8 / 315 : ℝ) * (y ^ (k + 9) * Real.exp (-y / 2)) -
        (512 / 35 : ℝ) * (y ^ (k + 7) * Real.exp (-y / 2)) +
          (6144 / 5 : ℝ) * (y ^ (k + 5) * Real.exp (-y / 2))) /
            (4096 / 109395 : ℝ) := by
  unfold boundaryProfile
  simp only [pow_add]
  ring

/-- Every limiting-profile polynomial observation is genuinely integrable. -/
theorem profile_exponential_moment_integrable (k : ℕ) :
    IntegrableOn (fun y : ℝ ↦ y ^ k * Real.exp (-y / 2) * boundaryProfile y) (Ioi 0) := by
  have hi := (((half_exponential_power_integrable (k + 9)).const_mul (8 / 315 : ℝ)).sub
    ((half_exponential_power_integrable (k + 7)).const_mul (512 / 35 : ℝ))).add
      ((half_exponential_power_integrable (k + 5)).const_mul (6144 / 5 : ℝ))
  change Integrable _ (volume.restrict (Ioi 0))
  have he := funext (profile_moment_integrand_eq k)
  rw [he]
  exact hi.div_const (4096 / 109395 : ℝ)

/-- The complete exact moment formula retains the two annihilated smooth modes. -/
theorem boundary_profile_exponential_moment (k : ℕ) :
    profileExponentialMoment k =
      ((8 / 315 : ℝ) * (2 ^ (k + 10) * ((k + 9).factorial : ℝ)) -
        (512 / 35 : ℝ) * (2 ^ (k + 8) * ((k + 7).factorial : ℝ)) +
          (6144 / 5 : ℝ) * (2 ^ (k + 6) * ((k + 5).factorial : ℝ))) /
            (4096 / 109395 : ℝ) := by
  unfold profileExponentialMoment
  simp_rw [profile_moment_integrand_eq]
  have h9 := (half_exponential_power_integrable (k + 9)).const_mul (8 / 315 : ℝ)
  have h7 := (half_exponential_power_integrable (k + 7)).const_mul (512 / 35 : ℝ)
  have h5 := (half_exponential_power_integrable (k + 5)).const_mul (6144 / 5 : ℝ)
  have h97 : IntegrableOn (fun y : ℝ ↦ (8 / 315 : ℝ) *
      (y ^ (k + 9) * Real.exp (-y / 2)) - (512 / 35 : ℝ) *
        (y ^ (k + 7) * Real.exp (-y / 2))) (Ioi 0) := h9.sub h7
  rw [integral_div, integral_add h97 h5, integral_sub h9 h7]
  simp_rw [integral_const_mul, half_exponential_power_integral]

/-- The limiting boundary profile annihilates the constant smooth density mode. -/
theorem boundary_profile_constant_moment_zero : profileExponentialMoment 0 = 0 := by
  rw [boundary_profile_exponential_moment]
  norm_num

/-- The limiting boundary profile annihilates the affine smooth density mode. -/
theorem boundary_profile_affine_moment_zero : profileExponentialMoment 1 = 0 := by
  rw [boundary_profile_exponential_moment]
  norm_num

/-- The quadratic density mode is the first nonvanishing polynomial moment. -/
theorem boundary_profile_quadratic_moment : profileExponentialMoment 2 = 8065474560 := by
  rw [boundary_profile_exponential_moment]
  norm_num

/-- The profile has the exact quartic sign polynomial after its positive endpoint scale. -/
theorem boundary_profile_factor (y : ℝ) :
    boundaryProfile y = (2431 / 3584 : ℝ) * y ^ 5 *
      (y ^ 4 - 576 * y ^ 2 + 48384) := by
  unfold boundaryProfile
  ring

/-- The profile quartic factors at the two explicit squared distances. -/
theorem boundary_profile_quartic_factor (y : ℝ) :
    y ^ 4 - 576 * y ^ 2 + 48384 =
      (y ^ 2 - (288 - 48 * Real.sqrt 15)) *
        (y ^ 2 - (288 + 48 * Real.sqrt 15)) := by
  have hs : Real.sqrt 15 ^ 2 = 15 := Real.sq_sqrt (by norm_num)
  nlinarith [sq_nonneg (y ^ 2)]

/-- On positive distances the limiting profile is positive precisely outside the two roots. -/
theorem boundary_profile_pos_iff (y : ℝ) (hy : 0 < y) :
    0 < boundaryProfile y ↔
      y ^ 2 < 288 - 48 * Real.sqrt 15 ∨ 288 + 48 * Real.sqrt 15 < y ^ 2 := by
  have hc : 0 < (2431 / 3584 : ℝ) * y ^ 5 := mul_pos (by norm_num) (pow_pos hy _)
  have hs : 0 < Real.sqrt 15 := Real.sqrt_pos.2 (by norm_num)
  rw [boundary_profile_factor, boundary_profile_quartic_factor,
    mul_pos_iff_of_pos_left hc, mul_pos_iff]
  constructor
  · rintro (⟨hlo, hhi⟩ | ⟨hlo, hhi⟩)
    · exact Or.inr (by linarith)
    · exact Or.inl (by linarith)
  · rintro (hlo | hhi)
    · exact Or.inr ⟨by linarith, by linarith⟩
    · exact Or.inl ⟨by linarith, by linarith⟩

/-- On positive distances the limiting profile is negative precisely between the roots. -/
theorem boundary_profile_neg_iff (y : ℝ) (hy : 0 < y) :
    boundaryProfile y < 0 ↔
      288 - 48 * Real.sqrt 15 < y ^ 2 ∧ y ^ 2 < 288 + 48 * Real.sqrt 15 := by
  have hc : 0 < (2431 / 3584 : ℝ) * y ^ 5 := mul_pos (by norm_num) (pow_pos hy _)
  have hs : 0 < Real.sqrt 15 := Real.sqrt_pos.2 (by norm_num)
  rw [boundary_profile_factor, boundary_profile_quartic_factor, mul_neg_iff]
  simp only [hc, not_lt_of_ge (le_of_lt hc), true_and, false_and, or_false]
  rw [mul_neg_iff]
  constructor
  · rintro (⟨hlo, hhi⟩ | ⟨hlo, hhi⟩)
    · exact ⟨by linarith, by linarith⟩
    · exfalso
      linarith
  · rintro ⟨hlo, hhi⟩
    exact Or.inl ⟨by linarith, by linarith⟩

/-- The exact zero set includes the endpoint and the two squared-distance roots. -/
theorem boundary_profile_zero_iff (y : ℝ) :
    boundaryProfile y = 0 ↔ y = 0 ∨
      y ^ 2 = 288 - 48 * Real.sqrt 15 ∨ y ^ 2 = 288 + 48 * Real.sqrt 15 := by
  rw [boundary_profile_factor, boundary_profile_quartic_factor]
  simp [mul_eq_zero, sub_eq_zero]

/-- Both nonzero squared-distance roots are strictly positive and correctly ordered. -/
theorem boundary_profile_squared_roots_ordered :
    0 < 288 - 48 * Real.sqrt 15 ∧
      288 - 48 * Real.sqrt 15 < 288 + 48 * Real.sqrt 15 := by
  have hs : 0 < Real.sqrt 15 := Real.sqrt_pos.2 (by norm_num)
  have hs2 : Real.sqrt 15 ^ 2 = 15 := Real.sq_sqrt (by norm_num)
  have hslt : Real.sqrt 15 < 6 := by nlinarith
  constructor <;> linarith

/-- One fixed boundary distance lies in the genuinely negative profile region. -/
theorem boundary_profile_seventeen_neg : boundaryProfile 17 < 0 := by
  norm_num [boundaryProfile]

/-- The actual source has a negative value at this moving boundary point for all large radii. -/
theorem source_boundary_eventually_negative :
    ∀ᶠ A : ℝ in atTop,
      sourceCorrelation explicitSecondDerivative A (2 * A - 17) < 0 := by
  have hlim := boundary_kernel_tendsto 17 (by norm_num)
  have he : ∀ᶠ A : ℝ in atTop, boundaryKernel A 17 < 0 :=
    hlim.eventually_lt tendsto_const_nhds boundary_profile_seventeen_neg
  filter_upwards [he, eventually_ge_atTop (1 : ℝ)] with A hk hA
  have hpos : 0 < A ^ 9 := pow_pos (lt_of_lt_of_le (by norm_num) hA) _
  by_contra hn
  have hge : 0 ≤ A ^ 9 * sourceCorrelation explicitSecondDerivative A (2 * A - 17) :=
    mul_nonneg (le_of_lt hpos) (le_of_not_gt hn)
  change A ^ 9 * sourceCorrelation explicitSecondDerivative A (2 * A - 17) < 0 at hk
  linarith

/-- The omitted bulk term alone has a strictly positive constant exponential moment. -/
theorem bulk_profile_constant_moment :
    (∫ y in Ioi (0 : ℝ), Real.exp (-y / 2) *
      (((8 / 315 : ℝ) * y ^ 9) / (4096 / 109395 : ℝ))) = 252046080 := by
  have he : (fun y : ℝ ↦ Real.exp (-y / 2) *
      (((8 / 315 : ℝ) * y ^ 9) / (4096 / 109395 : ℝ))) =
        (fun y : ℝ ↦ ((8 / 315 : ℝ) / (4096 / 109395 : ℝ)) *
          (y ^ 9 * Real.exp (-y / 2))) := by
    funext y
    ring
  rw [he, integral_const_mul, half_exponential_power_integral]
  norm_num

/-- The actual boundary profile limit is uniform on every fixed compact distance interval.
The interval is fixed independently of the expanding arithmetic inventory. -/
theorem boundary_kernel_tendsto_uniformly_on (L : ℝ) :
    TendstoUniformlyOn boundaryKernel boundaryProfile atTop (Icc 0 L) := by
  let F : ℝ → ℝ → ℝ := fun q y ↦
    (y ^ 9 / 16 * endpointPolynomialZero (y * q) +
      y ^ 7 / 2 * endpointPolynomialOne (y * q) +
        y ^ 5 * endpointPolynomialTwo (y * q)) /
      ((4096 / 109395 : ℝ) + (65536 / 45045 : ℝ) * q ^ 2 +
        (196608 / 5005 : ℝ) * q ^ 4)
  have hden (q : ℝ) : (4096 / 109395 : ℝ) + (65536 / 45045 : ℝ) * q ^ 2 +
      (196608 / 5005 : ℝ) * q ^ 4 ≠ 0 := ne_of_gt (by positivity)
  have hcont : Continuous (Function.uncurry F) := by
    change Continuous (fun p : ℝ × ℝ ↦
      (p.2 ^ 9 / 16 * endpointPolynomialZero (p.2 * p.1) +
        p.2 ^ 7 / 2 * endpointPolynomialOne (p.2 * p.1) +
          p.2 ^ 5 * endpointPolynomialTwo (p.2 * p.1)) /
      ((4096 / 109395 : ℝ) + (65536 / 45045 : ℝ) * p.1 ^ 2 +
        (196608 / 5005 : ℝ) * p.1 ^ 4))
    apply Continuous.div
    · unfold endpointPolynomialZero endpointPolynomialOne endpointPolynomialTwo
      fun_prop
    · fun_prop
    · intro p
      exact hden p.1
  have huc : UniformContinuousOn (Function.uncurry F) ((Icc (-1) 1) ×ˢ (Icc 0 L)) :=
    (isCompact_Icc.prod isCompact_Icc).uniformContinuousOn_of_continuous hcont.continuousOn
  have huf : TendstoUniformlyOn F (F 0) (nhdsWithin (0 : ℝ) (Icc (-1) 1)) (Icc 0 L) :=
    huc.tendstoUniformlyOn (by norm_num)
  have hq : Tendsto (fun A : ℝ ↦ A⁻¹) atTop (nhdsWithin (0 : ℝ) (Icc (-1) 1)) := by
    apply tendsto_nhdsWithin_iff.mpr
    refine ⟨tendsto_inv_atTop_zero, ?_⟩
    filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
    have hpos : 0 < A := lt_of_lt_of_le (by norm_num) hA
    constructor
    · linarith [inv_nonneg.mpr (le_of_lt hpos)]
    · exact (inv_le_one₀ hpos).mpr hA
  have hu : TendstoUniformlyOn (fun A : ℝ ↦ F A⁻¹) (F 0) atTop (Icc 0 L) :=
    fun u hu ↦ hq.eventually (huf u hu)
  have heq : ∀ᶠ A : ℝ in atTop, EqOn (F A⁻¹) (boundaryKernel A) (Icc 0 L) := by
    filter_upwards [eventually_ge_atTop (max 1 L)] with A hA
    intro y hy
    have hA1 : 1 ≤ A := (le_max_left _ _).trans hA
    have hAL : L ≤ A := (le_max_right _ _).trans hA
    rw [boundary_kernel_exact A y hA1 hy.1 (by linarith [hy.2]),
      source_normalization_inverse_square]
    unfold F
    simp only [div_eq_mul_inv, inv_pow]
    ring
  have hright : EqOn (F 0) boundaryProfile (Icc 0 L) := by
    intro y _
    norm_num [F, endpointPolynomialZero, endpointPolynomialOne, endpointPolynomialTwo,
      boundaryProfile]
    ring
  exact (hu.congr heq).congr_right hright


/-- The actual bulk truncation of the physical weighted source continuum. -/
def bulkSourceContinuum (A : ℝ) : ℝ :=
  ∫ t in (0 : ℝ)..(2 * A), Real.exp (t / 2) * fixedKernel 0 (t / A) /
    (16 * sourceNormalization A)

/-- The true zeroth endpoint polynomial is uniformly positive on one fixed boundary window. -/
theorem endpoint_zero_polynomial_window_lower_bound :
    ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A → ∀ y ∈ Icc (1 : ℝ) 2,
      (64 / 315 : ℝ) ≤ endpointPolynomialZero (y / A) := by
  have hc : Continuous endpointPolynomialZero := by unfold endpointPolynomialZero; fun_prop
  have he : ∀ᶠ s : ℝ in nhds 0, (64 / 315 : ℝ) < endpointPolynomialZero s :=
    hc.continuousAt.tendsto.eventually (eventually_gt_nhds (by norm_num [endpointPolynomialZero]))
  rcases Metric.eventually_nhds_iff.mp he with ⟨δ, hδ, hnear⟩
  refine ⟨max 1 (4 / δ), le_max_left _ _, ?_⟩
  intro A hA y hy
  have hA1 : 1 ≤ A := (le_max_left _ _).trans hA
  have hpos : 0 < A := lt_of_lt_of_le (by norm_num) hA1
  have hAL : 4 / δ ≤ A := (le_max_right _ _).trans hA
  have hmul : 4 ≤ A * δ := (div_le_iff₀ hδ).mp hAL
  have hs0 : 0 ≤ y / A := div_nonneg (by linarith [hy.1]) (le_of_lt hpos)
  have hsδ : y / A < δ := (div_lt_iff₀ hpos).2 (by nlinarith [hy.2])
  apply le_of_lt
  apply hnear
  simpa only [Real.dist_eq, sub_zero, abs_of_nonneg hs0] using hsδ

/-- A fixed positive boundary window forces actual bulk continuum growth.
This uses a lower bound on one fixed window, not a limit over the expanding interval. -/
theorem bulk_source_continuum_growth :
    ∃ c R : ℝ, 0 < c ∧ 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      c * Real.exp A / A ^ 9 ≤ bulkSourceContinuum A := by
  rcases endpoint_zero_polynomial_window_lower_bound with ⟨R, hR, hp⟩
  let c : ℝ := (64 / 315 : ℝ) / (16 * sourceNormalization 1 * Real.exp 1)
  have hZ1 : 0 < sourceNormalization 1 := source_normalization_pos 1 (by norm_num)
  have hc : 0 < c := by unfold c; positivity
  refine ⟨c, R, hc, hR, ?_⟩
  intro A hA
  have hA1 : 1 ≤ A := hR.trans hA
  have hpos : 0 < A := lt_of_lt_of_le (by norm_num) hA1
  have hne : A ≠ 0 := ne_of_gt hpos
  have hAp : 0 < A ^ 9 := pow_pos hpos _
  have hZ := source_normalization_pos A hA1
  have hZle := FullQuadraticObstruction.source_normalization_le_radius_one A hA1
  let f : ℝ → ℝ := fun t ↦ Real.exp (t / 2) * fixedKernel 0 (t / A) /
    (16 * sourceNormalization A)
  have hfc : Continuous f := by
    unfold f
    exact ((Real.continuous_exp.comp (continuous_id.div_const 2)).mul
      ((fixed_kernel_continuous 0 (by norm_num)).comp
        (continuous_id.div_const A))).div_const _
  have hfn (t : ℝ) : 0 ≤ f t := by
    unfold f
    exact div_nonneg (mul_nonneg (Real.exp_nonneg _)
      (GeneralizedPoleMoments.fixed_kernel_zero_nonneg _)) (by positivity)
  have hpt (t : ℝ) (ht : t ∈ Icc (2 * A - 2) (2 * A - 1)) :
      c * Real.exp A / A ^ 9 ≤ f t := by
    have hy : 2 * A - t ∈ Icc (1 : ℝ) 2 := ⟨by linarith [ht.2], by linarith [ht.1]⟩
    have hpoly := hp A hA (2 * A - t) hy
    have hy9 : 1 ≤ (2 * A - t) ^ 9 := one_le_pow₀ hy.1
    have hprod : (64 / 315 : ℝ) ≤ (2 * A - t) ^ 9 *
        endpointPolynomialZero ((2 * A - t) / A) := by
      nlinarith
    have heq : fixedKernel 0 (t / A) = ((2 * A - t) ^ 9 *
        endpointPolynomialZero ((2 * A - t) / A)) / A ^ 9 := by
      rw [show t / A = 2 - (2 * A - t) / A by field_simp; ring]
      rw [fixed_kernel_zero_endpoint _ (div_nonneg (by linarith [hy.1]) (le_of_lt hpos))
        ((div_le_iff₀ hpos).2 (by linarith [hy.2]))]
      field_simp
    have hk : (64 / 315 : ℝ) / A ^ 9 ≤ fixedKernel 0 (t / A) := by
      rw [heq]
      exact div_le_div_of_nonneg_right hprod (le_of_lt hAp)
    have hexp : Real.exp (A - 1) ≤ Real.exp (t / 2) :=
      Real.exp_le_exp.mpr (by linarith [ht.1])
    have hn : Real.exp (A - 1) * ((64 / 315 : ℝ) / A ^ 9) ≤
        Real.exp (t / 2) * fixedKernel 0 (t / A) :=
      mul_le_mul hexp hk (by positivity) (Real.exp_nonneg _)
    have hd : Real.exp (A - 1) * ((64 / 315 : ℝ) / A ^ 9) /
        (16 * sourceNormalization 1) ≤ f t := by
      calc
        _ ≤ Real.exp (A - 1) * ((64 / 315 : ℝ) / A ^ 9) /
            (16 * sourceNormalization A) :=
          div_le_div_of_nonneg_left (by positivity) (by positivity) (by nlinarith)
        _ ≤ f t := div_le_div_of_nonneg_right hn (by positivity)
    convert hd using 1
    unfold c
    rw [Real.exp_sub]
    ring
  have hwindow : c * Real.exp A / A ^ 9 ≤ ∫ t in (2 * A - 2)..(2 * A - 1), f t := by
    have hi := intervalIntegral.integral_mono_on (μ := volume) (by linarith : 2 * A - 2 ≤ 2 * A - 1)
      intervalIntegrable_const (hfc.intervalIntegrable _ _) hpt
    have he : (∫ _ in (2 * A - 2)..(2 * A - 1), c * Real.exp A / A ^ 9) =
        c * Real.exp A / A ^ 9 := by
      rw [intervalIntegral.integral_const]
      simp only [show (2 * A - 1) - (2 * A - 2) = 1 by ring, one_smul]
    rw [he] at hi
    exact hi
  have hwhole : (∫ t in (2 * A - 2)..(2 * A - 1), f t) ≤ ∫ t in (0 : ℝ)..(2 * A), f t :=
    intervalIntegral.integral_mono_interval (by linarith) (by linarith) (by linarith)
      (Eventually.of_forall hfn) (hfc.intervalIntegrable _ _)
  exact hwindow.trans hwhole

/-- The actual bulk weighted continuum diverges; the complete source continuum stays bounded. -/
theorem bulk_source_continuum_tendsto_at_top : Tendsto bulkSourceContinuum atTop atTop := by
  rcases bulk_source_continuum_growth with ⟨c, R, hc, _, hbound⟩
  have hlim : Tendsto (fun A : ℝ ↦ c * Real.exp A / A ^ 9) atTop atTop := by
    simpa only [mul_div_assoc] using (Real.tendsto_exp_div_pow_atTop 9).const_mul_atTop hc
  apply tendsto_atTop_mono' atTop _ hlim
  filter_upwards [eventually_ge_atTop R] with A hA
  exact hbound A hA


/-- Discarding the derivative terms has an unbounded error in the actual weighted continuum. -/
theorem bulk_truncation_error_tendsto_at_top :
    Tendsto (fun A : ℝ ↦ bulkSourceContinuum A -
      (∫ t in (0 : ℝ)..(2 * A), Real.exp (t / 2) *
        sourceCorrelation explicitSecondDerivative A t)) atTop atTop := by
  have hbase : Tendsto (fun A : ℝ ↦ bulkSourceContinuum A - 2) atTop atTop := by
    simpa only [sub_eq_add_neg] using
      tendsto_atTop_add_const_right atTop (-2 : ℝ) bulk_source_continuum_tendsto_at_top
  apply tendsto_atTop_mono' atTop _ hbase
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
  have hi := source_continuum_abs_le_two A hA
  have hle := le_abs_self (∫ t in (0 : ℝ)..(2 * A), Real.exp (t / 2) *
    sourceCorrelation explicitSecondDerivative A t)
  linarith

end
end FormalResearch.RiemannHypothesis.SourceBoundaryLayer
