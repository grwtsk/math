import FormalResearch.RiemannHypothesis.SourceLaplaceDetection
import FormalResearch.RiemannHypothesis.PhaseKernelBoundary
import Mathlib.Analysis.SpecialFunctions.Exp

/-!
# Exact endpoint formula and asymptotics of the actual bump transform

The original degree-eight source polynomial gives a finite antiderivative.
The positive-real-part ray asymptotic keeps its exact fourth boundary jet 384.
These are individual source-transform results, not an arithmetic tail bound.

AI attribution: Codex authored this module and its proofs.
-/

namespace FormalResearch.RiemannHypothesis.SourceLaplaceEndpoint

open MeasureTheory Filter
open SourceBumpLaplace SourceLaplaceDetection
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

noncomputable section

private def endpointPrimitive (z w : ℂ) : ℂ :=
  (w ^ 8 - 4 * w ^ 6 + 6 * w ^ 4 - 4 * w ^ 2 + 1) / z -
    (8 * w ^ 7 - 24 * w ^ 5 + 24 * w ^ 3 - 8 * w) / z ^ 2 +
    (56 * w ^ 6 - 120 * w ^ 4 + 72 * w ^ 2 - 8) / z ^ 3 -
    (336 * w ^ 5 - 480 * w ^ 3 + 144 * w) / z ^ 4 +
    (1680 * w ^ 4 - 1440 * w ^ 2 + 144) / z ^ 5 -
    (6720 * w ^ 3 - 2880 * w) / z ^ 6 +
    (20160 * w ^ 2 - 2880) / z ^ 7 -
    40320 * w / z ^ 8 + 40320 / z ^ 9

set_option maxHeartbeats 800000 in
-- The nine polynomial jets in the exact antiderivative require additional ring normalization.
private theorem endpoint_antiderivative (z : ℂ) (hz : z ≠ 0) (w : ℂ) :
    HasDerivAt (fun w ↦ Complex.exp (z * w) * endpointPrimitive z w)
      ((1 - w ^ 2) ^ 4 * Complex.exp (z * w)) w := by
  have h := hasDerivAt_id w
  have h2 := h.pow 2
  have h3 := h.pow 3
  have h4 := h.pow 4
  have h5 := h.pow 5
  have h6 := h.pow 6
  have h7 := h.pow 7
  have h8 := h.pow 8
  have h0 := (((h8.sub (h6.const_mul 4)).add (h4.const_mul 6)).sub
    (h2.const_mul 4)).add_const 1
  have h1 := (((h7.const_mul 8).sub (h5.const_mul 24)).add
    (h3.const_mul 24)).sub (h.const_mul 8)
  have h2j := (((h6.const_mul 56).sub (h4.const_mul 120)).add
    (h2.const_mul 72)).sub_const 8
  have h3j := ((h5.const_mul 336).sub (h3.const_mul 480)).add (h.const_mul 144)
  have h4j := ((h4.const_mul 1680).sub (h2.const_mul 1440)).add_const 144
  have h5j := (h3.const_mul 6720).sub (h.const_mul 2880)
  have h6j := (h2.const_mul 20160).sub_const 2880
  have hp := ((((((((h0.div_const z).sub (h1.div_const (z ^ 2))).add
    (h2j.div_const (z ^ 3))).sub (h3j.div_const (z ^ 4))).add
    (h4j.div_const (z ^ 5))).sub (h5j.div_const (z ^ 6))).add
    (h6j.div_const (z ^ 7))).sub ((h.const_mul 40320).div_const (z ^ 8))).add_const
    (40320 / z ^ 9)
  have he := (h.const_mul z).cexp
  convert he.mul hp using 1 <;> try rfl
  all_goals
    try funext u
    simp only [id_eq, Pi.pow_apply, Pi.sub_apply, Pi.add_apply]
    norm_num
    field_simp [hz]
    ring


/-- The native bump transform has an exact finite endpoint formula away from zero. -/
theorem bump_laplace_endpoint_formula (z : ℂ) (hz : z ≠ 0) :
    bumpLaplace z =
      384 / z ^ 9 * (Complex.exp z * (z ^ 4 - 10 * z ^ 3 + 45 * z ^ 2 - 105 * z + 105) -
        Complex.exp (-z) * (z ^ 4 + 10 * z ^ 3 + 45 * z ^ 2 + 105 * z + 105)) := by
  unfold bumpLaplace
  have hd (x : ℝ) := (endpoint_antiderivative z hz (x : ℂ)).comp_ofReal
  have heq (x : ℝ) : (((1 - x ^ 2) ^ 4 : ℝ) : ℂ) = (1 - (x : ℂ) ^ 2) ^ 4 := by
    norm_cast
  simp_rw [heq]
  have hi : IntervalIntegrable (fun x : ℝ ↦ (1 - (x : ℂ) ^ 2) ^ 4 *
      Complex.exp (z * (x : ℂ))) volume (-1) 1 :=
    (by fun_prop : Continuous _).intervalIntegrable _ _
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun x _ ↦ hd x) hi]
  norm_num [endpointPrimitive]
  field_simp [hz]
  ring


private def endpointProfile (w : ℂ) : ℂ := 1 - 10 * w + 45 * w ^ 2 - 105 * w ^ 3 + 105 * w ^ 4

private theorem endpoint_profile_continuous : Continuous endpointProfile := by
  unfold endpointProfile
  fun_prop

/-- The reciprocal of any fixed complex ray tends to zero. -/
theorem reciprocal_ray_tendsto_zero (z : ℂ) :
    Tendsto (fun A : ℝ ↦ ((A : ℂ) * z)⁻¹) atTop (nhds 0) := by
  have hr : Tendsto (fun A : ℝ ↦ ((A : ℂ)⁻¹)) atTop (nhds 0) := by
    simpa [Function.comp_def] using Complex.continuous_ofReal.continuousAt.tendsto.comp
      (tendsto_inv_atTop_zero : Tendsto (fun A : ℝ ↦ A⁻¹) atTop (nhds 0))
  simpa only [mul_inv_rev, mul_zero] using hr.const_mul z⁻¹

/-- The opposite endpoint exponential decays on every ray in the open right half-plane. -/
theorem negative_ray_exp_tendsto_zero (z : ℂ) (hz : 0 < z.re) :
    Tendsto (fun A : ℝ ↦ Complex.exp (-2 * (A : ℂ) * z)) atTop (nhds 0) := by
  apply Complex.tendsto_exp_nhds_zero_iff.mpr
  have ht : Tendsto (fun A : ℝ ↦ (2 * z.re) * A) atTop atTop :=
    (tendsto_id : Tendsto (fun A : ℝ ↦ A) atTop atTop).const_mul_atTop (by positivity)
  convert tendsto_neg_atTop_atBot.comp ht using 1
  ext A
  simp [Complex.mul_re]
  ring

private theorem profile_endpoint_tendsto_one (z : ℂ) (hz : 0 < z.re) :
    Tendsto (fun A : ℝ ↦ endpointProfile (((A : ℂ) * z)⁻¹) -
      Complex.exp (-2 * (A : ℂ) * z) * endpointProfile (-((A : ℂ) * z)⁻¹))
      atTop (nhds 1) := by
  have h1 := endpoint_profile_continuous.continuousAt.tendsto.comp
    (reciprocal_ray_tendsto_zero z)
  have h2 := endpoint_profile_continuous.continuousAt.tendsto.comp
    (reciprocal_ray_tendsto_zero z).neg
  simpa [endpointProfile] using h1.sub ((negative_ray_exp_tendsto_zero z hz).mul h2)

/-- The endpoint ratio divides by the exact positive-endpoint leading term. -/
def bumpEndpointRatio (z : ℂ) : ℂ :=
  bumpLaplace z * z ^ 5 / (384 * Complex.exp z)

set_option maxHeartbeats 800000 in
-- Clearing the nine endpoint powers requires additional polynomial normalization.
/-- The endpoint ratio is exactly one finite inverse-power profile and the opposite endpoint. -/
private theorem bump_endpoint_ratio_eq_profile (z : ℂ) (hz : z ≠ 0) :
    bumpEndpointRatio z = endpointProfile z⁻¹ -
      Complex.exp (-2 * z) * endpointProfile (-z⁻¹) := by
  unfold bumpEndpointRatio
  rw [bump_laplace_endpoint_formula z hz]
  have he : Complex.exp (-2 * z) = Complex.exp (-z) / Complex.exp z := by
    rw [← Complex.exp_sub]
    congr 1
    ring
  rw [he]
  unfold endpointProfile
  field_simp [hz, Complex.exp_ne_zero]
  ring

/-- The actual leading endpoint ratio tends to one on every ray in the right half-plane. -/
theorem bump_endpoint_ratio_tendsto_one (z : ℂ) (hz : 0 < z.re) :
    Tendsto (fun A : ℝ ↦ bumpEndpointRatio ((A : ℂ) * z)) atTop (nhds 1) := by
  have hne : z ≠ 0 := by intro h; simp [h] at hz
  have he : (fun A : ℝ ↦ bumpEndpointRatio ((A : ℂ) * z)) =ᶠ[atTop]
      (fun A ↦ endpointProfile (((A : ℂ) * z)⁻¹) -
        Complex.exp (-2 * (A : ℂ) * z) * endpointProfile (-((A : ℂ) * z)⁻¹)) := by
    filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
    have hane : (A : ℂ) ≠ 0 := by exact_mod_cast (ne_of_gt (by linarith : 0 < A))
    simpa [mul_assoc] using bump_endpoint_ratio_eq_profile ((A : ℂ) * z) (mul_ne_zero hane hne)
  exact (profile_endpoint_tendsto_one z hz).congr' he.symm

/-- The existing normalization agrees with the exact rational closed form on admitted radii. -/
theorem source_normalization_closed_form (A : ℝ) (hA : 1 ≤ A) :
    sourceNormalization A =
      4096 * (7 * A ^ 4 + 272 * A ^ 2 + 7344) / (765765 * A ^ 4) := by
  have ha : A ≠ 0 := ne_of_gt (by linarith : 0 < A)
  unfold sourceNormalization
  field_simp [ha]
  ring

set_option maxHeartbeats 800000 in
-- Clearing source, scale and pole denominators requires additional polynomial normalization.
/-- The exact endpoint ratio gives the actual normalized source response with its A⁻⁹ factor. -/
theorem source_laplace_scaled_eq_ratio (A : ℝ) (z : ℂ) (hA : 1 ≤ A) (hz : z ≠ 0) :
    sourceLaplace A z * (A : ℂ) ^ 9 * Complex.exp (-2 * (A : ℂ) * z) =
      147456 / (sourceNormalization A : ℂ) * (z ^ 2 - 1 / 4) ^ 2 / z ^ 10 *
        bumpEndpointRatio ((A : ℂ) * z) ^ 2 := by
  have hAne : (A : ℂ) ≠ 0 := by exact_mod_cast (ne_of_gt (by linarith : 0 < A))
  have hZne : (sourceNormalization A : ℂ) ≠ 0 := by
    exact_mod_cast (ne_of_gt (source_normalization_pos A hA))
  have he : Complex.exp (-2 * (A : ℂ) * z) = (Complex.exp ((A : ℂ) * z) ^ 2)⁻¹ := by
    rw [show -2 * (A : ℂ) * z = -(2 * ((A : ℂ) * z)) by ring, Complex.exp_neg]
    congr 1
    rw [two_mul, Complex.exp_add, pow_two]
  rw [source_laplace_eq_bump_square A z hA, he]
  unfold bumpEndpointRatio
  field_simp [hAne, hZne, hz, Complex.exp_ne_zero]
  ring

/-- The actual fixed complex source response has the exact exponential and A⁻⁹ leading limit. -/
theorem source_laplace_scaled_tendsto (z : ℂ) (hz : 0 < z.re) :
    Tendsto (fun A : ℝ ↦ sourceLaplace A z * (A : ℂ) ^ 9 *
      Complex.exp (-2 * (A : ℂ) * z)) atTop
      (nhds ((147456 / (4096 / 109395) : ℂ) * (z ^ 2 - 1 / 4) ^ 2 / z ^ 10)) := by
  have hne : z ≠ 0 := by intro h; simp [h] at hz
  have hZ : Tendsto (fun A : ℝ ↦ (sourceNormalization A : ℂ)) atTop
      (nhds (4096 / 109395 : ℂ)) := by
    simpa [Function.comp_def] using Complex.continuous_ofReal.continuousAt.tendsto.comp
      PhaseKernelBoundary.source_normalization_tendsto
  have hratio := (bump_endpoint_ratio_tendsto_one z hz).pow 2
  have hc : Tendsto (fun _ : ℝ ↦ (147456 : ℂ)) atTop (nhds 147456) := tendsto_const_nhds
  have hmain := ((hc.div hZ (by norm_num)).mul_const
    ((z ^ 2 - 1 / 4) ^ 2 / z ^ 10)).mul hratio
  have ht : Tendsto (fun A : ℝ ↦ 147456 / (sourceNormalization A : ℂ) *
      (z ^ 2 - 1 / 4) ^ 2 / z ^ 10 * bumpEndpointRatio ((A : ℂ) * z) ^ 2) atTop
      (nhds ((147456 / (4096 / 109395) : ℂ) * (z ^ 2 - 1 / 4) ^ 2 / z ^ 10)) := by
    simpa only [one_pow, mul_one, mul_div_assoc, Pi.div_apply] using hmain
  apply ht.congr'
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
  exact (source_laplace_scaled_eq_ratio A z hA hne).symm

/-- The actual source response has the same leading magnitude with its exact real exponential. -/
theorem source_laplace_norm_scaled_tendsto (z : ℂ) (hz : 0 < z.re) :
    Tendsto (fun A : ℝ ↦ A ^ 9 * Real.exp (-2 * A * z.re) * ‖sourceLaplace A z‖) atTop
      (nhds ‖(147456 / (4096 / 109395) : ℂ) * (z ^ 2 - 1 / 4) ^ 2 / z ^ 10‖) := by
  apply (source_laplace_scaled_tendsto z hz).norm.congr'
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
  have he : (-2 * (A : ℂ) * z).re = -2 * A * z.re := by simp [Complex.mul_re]
  rw [norm_mul, norm_mul, norm_pow, Complex.norm_real, Real.norm_eq_abs,
    abs_of_nonneg (by linarith : 0 ≤ A), Complex.norm_exp, he]
  ring

end
end FormalResearch.RiemannHypothesis.SourceLaplaceEndpoint
