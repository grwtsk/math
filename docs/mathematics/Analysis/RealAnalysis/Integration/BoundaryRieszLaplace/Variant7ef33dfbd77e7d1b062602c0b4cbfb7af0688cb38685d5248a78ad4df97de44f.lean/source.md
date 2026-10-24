# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.BoundaryRieszLaplace.Variant7ef33dfbd77e7d1b062602c0b4cbfb7af0688cb38685d5248a78ad4df97de44f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `74e97fba1a99108bd87790ed46e35351bb183617` · SHA-256 `7ef33dfbd77e7d1b062602c0b4cbfb7af0688cb38685d5248a78ad4df97de44f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.BoundaryRieszKernel
import FormalResearch.MathematicalTooling.HalfLinePolynomialLaplace

/-!
# Genuine Laplace transforms of the actual boundary polynomials

All integral identities require a Laplace parameter with positive real part.
The rational functions are independent continuations, not convergent integrals
outside that half-plane. Polynomial integrability and half-line boundary terms
are proved by the independent reusable Laplace moment helper.

AI attribution: Codex authored this module and its proofs.
-/

namespace FormalResearch.RiemannHypothesis.BoundaryRieszLaplace

open MeasureTheory Filter Set
open FormalResearch.RiemannHypothesis.SourceBoundaryLayer
open FormalResearch.RiemannHypothesis.BoundaryRieszKernel
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.MathematicalTooling.HalfLinePolynomialLaplace

noncomputable section

/-- The profile transform; convergence is asserted only in the right half-plane. -/
def boundaryProfileLaplace (s : ℂ) : ℂ :=
  ∫ y in Ioi (0 : ℝ), Complex.exp (-s * (y : ℂ)) * (boundaryProfile y : ℂ)

/-- The finite polynomial-extension transform with its genuine positive-real-part decay regime. -/
def boundaryExtensionLaplace (A : ℝ) (s : ℂ) : ℂ :=
  ∫ y in Ioi (0 : ℝ), Complex.exp (-s * (y : ℂ)) * (extendedBoundaryKernel A y : ℂ)

/-- The actual limiting integrand has the three exact polynomial moment terms. -/
theorem boundary_profile_laplace_integrand (s : ℂ) (y : ℝ) :
    Complex.exp (-s * (y : ℂ)) * (boundaryProfile y : ℂ) =
      (2431 / 3584 : ℂ) * ((y : ℂ) ^ 9 * Complex.exp (-s * (y : ℂ)) -
        576 * ((y : ℂ) ^ 7 * Complex.exp (-s * (y : ℂ))) +
          48384 * ((y : ℂ) ^ 5 * Complex.exp (-s * (y : ℂ)))) := by
  unfold boundaryProfile
  push_cast
  ring

/-- The whole limiting-profile Laplace integrand is genuinely integrable. -/
theorem boundary_profile_laplace_integrable (s : ℂ) (hs : 0 < s.re) :
    IntegrableOn (fun y : ℝ ↦ Complex.exp (-s * (y : ℂ)) * (boundaryProfile y : ℂ))
      (Ioi 0) := by
  have hi := ((half_line_polynomial_laplace_integrable 9 s hs).sub
    ((half_line_polynomial_laplace_integrable 7 s hs).const_mul 576)).add
      ((half_line_polynomial_laplace_integrable 5 s hs).const_mul 48384)
  change Integrable _ (volume.restrict (Ioi 0))
  rw [funext (boundary_profile_laplace_integrand s)]
  exact hi.const_mul (2431 / 3584 : ℂ)

/-- The exact limiting transform has the squared-pole factor and coefficient 3938220. -/
theorem boundary_profile_laplace_closed_form (s : ℂ) (hs : 0 < s.re) :
    boundaryProfileLaplace s = 3938220 * (s ^ 2 - 1 / 4) ^ 2 / s ^ 10 := by
  have h9 := half_line_polynomial_laplace_integrable 9 s hs
  have h7 := (half_line_polynomial_laplace_integrable 7 s hs).const_mul (576 : ℂ)
  have h5 := (half_line_polynomial_laplace_integrable 5 s hs).const_mul (48384 : ℂ)
  have h97 : IntegrableOn (fun y : ℝ ↦ (y : ℂ) ^ 9 * Complex.exp (-s * (y : ℂ)) -
      576 * ((y : ℂ) ^ 7 * Complex.exp (-s * (y : ℂ)))) (Ioi 0) := h9.sub h7
  unfold boundaryProfileLaplace
  simp_rw [boundary_profile_laplace_integrand]
  rw [integral_const_mul, integral_add h97 h5, integral_sub h9 h7]
  simp_rw [integral_const_mul, half_line_polynomial_laplace_integral _ s hs]
  have hne : s ≠ 0 := by intro h; simp [h] at hs
  norm_num [Nat.factorial]
  field_simp
  ring

/-- The integral transform has its exact zero at the positive pole parameter. -/
theorem boundary_profile_laplace_half_zero : boundaryProfileLaplace (1 / 2) = 0 := by
  rw [boundary_profile_laplace_closed_form _ (by norm_num)]
  norm_num

/-- One monomial after applying the native squared-pole differential polynomial. -/
def rieszMonomialPacket (j : ℕ) (s : ℂ) (y : ℝ) : ℂ :=
  ((j + 9).descFactorial 4 : ℂ) * ((y : ℂ) ^ (j + 5) * Complex.exp (-s * (y : ℂ))) -
    (((j + 9).descFactorial 2 : ℂ) / 2) *
      ((y : ℂ) ^ (j + 7) * Complex.exp (-s * (y : ℂ))) +
        (1 / 16 : ℂ) * ((y : ℂ) ^ (j + 9) * Complex.exp (-s * (y : ℂ)))

/-- Each of the finite differential packets has a genuinely integrable Laplace observation. -/
theorem riesz_monomial_packet_integrable (j : ℕ) (s : ℂ) (hs : 0 < s.re) :
    IntegrableOn (rieszMonomialPacket j s) (Ioi 0) := by
  exact (((half_line_polynomial_laplace_integrable (j + 5) s hs).const_mul _).sub
    ((half_line_polynomial_laplace_integrable (j + 7) s hs).const_mul _)).add
      ((half_line_polynomial_laplace_integrable (j + 9) s hs).const_mul _)

/-- The packet transform has the exact squared-pole factor; its boundary jets were retained. -/
theorem riesz_monomial_packet_integral (j : ℕ) (s : ℂ) (hs : 0 < s.re) :
    (∫ y in Ioi (0 : ℝ), rieszMonomialPacket j s y) =
      (s ^ 2 - 1 / 4) ^ 2 * ((j + 9).factorial : ℂ) / s ^ (j + 10) := by
  have h5 := (half_line_polynomial_laplace_integrable (j + 5) s hs).const_mul
    ((j + 9).descFactorial 4 : ℂ)
  have h7 := (half_line_polynomial_laplace_integrable (j + 7) s hs).const_mul
    (((j + 9).descFactorial 2 : ℂ) / 2)
  have h9 := (half_line_polynomial_laplace_integrable (j + 9) s hs).const_mul (1 / 16 : ℂ)
  have h57 : IntegrableOn (fun y : ℝ ↦
      ((j + 9).descFactorial 4 : ℂ) * ((y : ℂ) ^ (j + 5) * Complex.exp (-s * (y : ℂ))) -
        (((j + 9).descFactorial 2 : ℂ) / 2) *
          ((y : ℂ) ^ (j + 7) * Complex.exp (-s * (y : ℂ)))) (Ioi 0) := h5.sub h7
  unfold rieszMonomialPacket
  rw [integral_add h57 h9, integral_sub h5 h7]
  simp_rw [integral_const_mul, half_line_polynomial_laplace_integral _ s hs]
  have h4 : ((j + 9).descFactorial 4 : ℂ) * ((j + 5).factorial : ℂ) =
      ((j + 9).factorial : ℂ) := by
    have h := Nat.factorial_mul_descFactorial (n := j + 9) (k := 4) (by omega)
    rw [show j + 9 - 4 = j + 5 by omega] at h
    rw [mul_comm]
    exact_mod_cast h
  have h2 : ((j + 9).descFactorial 2 : ℂ) * ((j + 7).factorial : ℂ) =
      ((j + 9).factorial : ℂ) := by
    have h := Nat.factorial_mul_descFactorial (n := j + 9) (k := 2) (by omega)
    rw [show j + 9 - 2 = j + 7 by omega] at h
    rw [mul_comm]
    exact_mod_cast h
  have hne : s ≠ 0 := by intro h; simp [h] at hs
  simp only [show j + 5 + 1 = j + 6 by omega, show j + 7 + 1 = j + 8 by omega,
    show j + 9 + 1 = j + 10 by omega]
  rw [← mul_div_assoc, h4, div_mul_div_comm, h2, div_mul_div_comm, one_mul]
  rw [show j + 10 = j + 6 + 4 by omega, pow_add,
    show j + 8 = j + 6 + 2 by omega, pow_add]
  field_simp
  ring

/-- The actual extension integrand is its finite sum of justified differential packets. -/
theorem boundary_extension_laplace_integrand (A : ℝ) (s : ℂ) (y : ℝ) :
    Complex.exp (-s * (y : ℂ)) * (extendedBoundaryKernel A y : ℂ) =
      (∑ j ∈ Finset.range 9, ((rieszCoefficient j / A ^ j : ℝ) : ℂ) *
        rieszMonomialPacket j s y) / (sourceNormalization A : ℂ) := by
  rw [extended_boundary_kernel_eq_monomial_sum]
  push_cast
  rw [← mul_div_assoc, Finset.mul_sum]
  congr 1
  apply Finset.sum_congr rfl
  intro j _
  unfold rieszMonomialPacket
  ring

/-- The entire finite polynomial-extension transform is genuinely integrable. -/
theorem boundary_extension_laplace_integrable (A : ℝ) (s : ℂ) (hs : 0 < s.re) :
    IntegrableOn (fun y : ℝ ↦ Complex.exp (-s * (y : ℂ)) *
      (extendedBoundaryKernel A y : ℂ)) (Ioi 0) := by
  have hi : IntegrableOn (fun y : ℝ ↦ ∑ j ∈ Finset.range 9,
      ((rieszCoefficient j / A ^ j : ℝ) : ℂ) * rieszMonomialPacket j s y) (Ioi 0) := by
    exact integrable_finsetSum _ (fun j _ ↦
      (riesz_monomial_packet_integrable j s hs).const_mul _)
  change Integrable _ (volume.restrict (Ioi 0))
  rw [funext (boundary_extension_laplace_integrand A s)]
  exact hi.div_const _

/-- The independent rational continuation equals the genuine finite Laplace integral. -/
theorem boundary_riesz_transform_eq_integral (A : ℝ) (s : ℂ) (hs : 0 < s.re) :
    boundaryRieszTransform A s = boundaryExtensionLaplace A s := by
  unfold boundaryExtensionLaplace
  simp_rw [boundary_extension_laplace_integrand]
  rw [integral_div, integral_finsetSum _ (fun j _ ↦
    (riesz_monomial_packet_integrable j s hs).const_mul _)]
  simp_rw [integral_const_mul, riesz_monomial_packet_integral _ s hs]
  unfold boundaryRieszTransform
  push_cast
  rw [Finset.mul_sum, Finset.sum_div]
  apply Finset.sum_congr rfl
  intro j _
  ring

/-- The genuine finite integral transform retains the positive pole-moment cancellation. -/
theorem boundary_extension_laplace_half_zero (A : ℝ) :
    boundaryExtensionLaplace A (1 / 2) = 0 := by
  rw [← boundary_riesz_transform_eq_integral A (1 / 2) (by norm_num),
    boundary_riesz_transform_at_right_pole]

/-- The base Laplace integrand is its exact finite polynomial moment sum. -/
theorem boundary_riesz_base_laplace_integrand (A : ℝ) (s : ℂ) (y : ℝ) :
    Complex.exp (-s * (y : ℂ)) * (boundaryRieszBase A y : ℂ) =
      ∑ j ∈ Finset.range 9, ((rieszCoefficient j / A ^ j : ℝ) : ℂ) *
        ((y : ℂ) ^ (j + 9) * Complex.exp (-s * (y : ℂ))) := by
  rw [boundary_riesz_base_eq_monomial_sum]
  push_cast
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro j _
  ring

/-- The base polynomial's Laplace integrand is genuinely integrable in the right half-plane. -/
theorem boundary_riesz_base_laplace_integrable (A : ℝ) (s : ℂ) (hs : 0 < s.re) :
    IntegrableOn (fun y : ℝ ↦ Complex.exp (-s * (y : ℂ)) *
      (boundaryRieszBase A y : ℂ)) (Ioi 0) := by
  change Integrable _ (volume.restrict (Ioi 0))
  rw [funext (boundary_riesz_base_laplace_integrand A s)]
  exact integrable_finsetSum _ (fun j _ ↦
    (half_line_polynomial_laplace_integrable (j + 9) s hs).const_mul _)

/-- The base polynomial's genuine Laplace transform is the unmultiplied finite Riesz sum. -/
theorem boundary_riesz_base_laplace_integral (A : ℝ) (s : ℂ) (hs : 0 < s.re) :
    (∫ y in Ioi (0 : ℝ), Complex.exp (-s * (y : ℂ)) * (boundaryRieszBase A y : ℂ)) =
      ∑ j ∈ Finset.range 9, (rieszCoefficient j : ℂ) * ((j + 9).factorial : ℂ) /
        ((A : ℂ) ^ j * s ^ (j + 10)) := by
  have hi (j : ℕ) : IntegrableOn (fun y : ℝ ↦
      ((rieszCoefficient j / A ^ j : ℝ) : ℂ) *
        ((y : ℂ) ^ (j + 9) * Complex.exp (-s * (y : ℂ)))) (Ioi 0) :=
    (half_line_polynomial_laplace_integrable (j + 9) s hs).const_mul _
  simp_rw [boundary_riesz_base_laplace_integrand]
  rw [integral_finsetSum _ (fun j _ ↦ hi j)]
  simp_rw [integral_const_mul, half_line_polynomial_laplace_integral _ s hs]
  apply Finset.sum_congr rfl
  intro j _
  push_cast
  rw [show j + 9 + 1 = j + 10 by omega]
  ring

/-- The exact finite transform preserves the pole operator's factor and all nine zero jets. -/
theorem boundary_extension_laplace_eq_pole_factor (A : ℝ) (s : ℂ) (hs : 0 < s.re) :
    boundaryExtensionLaplace A s =
      ((s ^ 2 - 1 / 4) ^ 2 / (sourceNormalization A : ℂ)) *
        (∫ y in Ioi (0 : ℝ), Complex.exp (-s * (y : ℂ)) * (boundaryRieszBase A y : ℂ)) := by
  rw [← boundary_riesz_transform_eq_integral A s hs, boundary_riesz_base_laplace_integral A s hs]
  rfl

/-- Every fixed nonzero parameter has the limiting rational transform.
This is a finite coefficient limit, not an interchange over a growing integration domain. -/
theorem boundary_riesz_transform_tendsto (s : ℂ) (_hs : s ≠ 0) :
    Tendsto (fun A : ℝ ↦ boundaryRieszTransform A s) atTop
      (nhds (3938220 * (s ^ 2 - 1 / 4) ^ 2 / s ^ 10)) := by
  have hi : Tendsto (fun A : ℝ ↦ (A⁻¹ : ℂ)) atTop (nhds 0) := by
    simpa only [Function.comp_def, Complex.ofReal_zero, Complex.ofReal_inv] using
      Complex.continuous_ofReal.continuousAt.tendsto.comp
        (tendsto_inv_atTop_zero : Tendsto (fun A : ℝ ↦ A⁻¹) atTop (nhds 0))
  have hj (j : ℕ) : Tendsto
      (fun A : ℝ ↦ (rieszCoefficient j : ℂ) * ((j + 9).factorial : ℂ) /
        ((A : ℂ) ^ j * s ^ (j + 10))) atTop
      (nhds (if j = 0 then (rieszCoefficient j : ℂ) * ((j + 9).factorial : ℂ) /
        s ^ (j + 10) else 0)) := by
    by_cases hz : j = 0
    · subst j
      simp only [pow_zero, one_mul]
      exact tendsto_const_nhds
    · have hp := (hi.pow j).const_mul
        ((rieszCoefficient j : ℂ) * ((j + 9).factorial : ℂ) / s ^ (j + 10))
      convert hp using 1
      · funext A
        simp only [div_eq_mul_inv, mul_inv_rev, inv_pow]
        ring
      · simp [hz]
  have hsum := tendsto_finsetSum (Finset.range 9) (fun j _ ↦ hj j)
  have hZ : Tendsto (fun A : ℝ ↦ (sourceNormalization A : ℂ)) atTop
      (nhds ((4096 / 109395 : ℝ) : ℂ)) := by
    exact Complex.continuous_ofReal.continuousAt.tendsto.comp
      FormalResearch.RiemannHypothesis.PhaseKernelBoundary.source_normalization_tendsto
  have hfactor := (tendsto_const_nhds : Tendsto
    (fun _ : ℝ ↦ (s ^ 2 - 1 / 4) ^ 2) atTop (nhds ((s ^ 2 - 1 / 4) ^ 2))).div
      hZ (by norm_num)
  have he : (s ^ 2 - 1 / 4) ^ 2 / ((4096 / 109395 : ℝ) : ℂ) *
      (∑ j ∈ Finset.range 9, if j = 0 then (rieszCoefficient j : ℂ) *
        ((j + 9).factorial : ℂ) / s ^ (j + 10) else 0) =
        3938220 * (s ^ 2 - 1 / 4) ^ 2 / s ^ 10 := by
    norm_num [Finset.sum_range_succ, Finset.sum_range_zero, rieszCoefficient]
    ring
  have ht := hfactor.mul hsum
  rw [he] at ht
  exact ht

/-- The actual finite integral transforms converge in the genuine right half-plane. -/
theorem boundary_extension_laplace_tendsto (s : ℂ) (hs : 0 < s.re) :
    Tendsto (fun A : ℝ ↦ boundaryExtensionLaplace A s) atTop
      (nhds (boundaryProfileLaplace s)) := by
  have hne : s ≠ 0 := by intro h; simp [h] at hs
  simpa only [boundary_riesz_transform_eq_integral _ s hs,
    boundary_profile_laplace_closed_form s hs] using boundary_riesz_transform_tendsto s hne

/-- The locally analytic factor remaining after the limiting transform double zero. -/
private def profilePoleFactor (s : ℂ) : ℂ :=
  3938220 * (s + 1 / 2) ^ 2 / s ^ 10

/-- The genuine integral transform has its rational double-zero factor near the positive pole. -/
private theorem profile_laplace_eventually_factor :
    boundaryProfileLaplace =ᶠ[nhds (1 / 2 : ℂ)]
      (fun s ↦ (s - 1 / 2) ^ 2 * profilePoleFactor s) := by
  have he : ∀ᶠ s : ℂ in nhds (1 / 2), 0 < s.re :=
    Complex.continuous_re.continuousAt.tendsto.eventually
      (eventually_gt_nhds (by norm_num : (0 : ℝ) < (1 / 2 : ℂ).re))
  filter_upwards [he] with s hs
  rw [boundary_profile_laplace_closed_form s hs]
  unfold profilePoleFactor
  ring

/-- The actual limiting transform has zero first complex derivative at the positive pole. -/
theorem boundary_profile_laplace_first_derivative_zero :
    deriv boundaryProfileLaplace (1 / 2 : ℂ) = 0 := by
  have hf : ContDiffAt ℂ 1 (fun s : ℂ ↦ (s - 1 / 2) ^ 2) (1 / 2) := by fun_prop
  have hg : ContDiffAt ℂ 1 profilePoleFactor (1 / 2) := by
    unfold profilePoleFactor
    fun_prop (disch := norm_num)
  rw [← iteratedDeriv_one, profile_laplace_eventually_factor.iteratedDeriv_eq 1,
    iteratedDeriv_fun_mul hf hg]
  simp only [Finset.sum_range_succ]
  norm_num [iteratedDeriv_pow]

/-- The second complex derivative matches the first nonvanishing native profile moment. -/
theorem boundary_profile_laplace_second_derivative :
    iteratedDeriv 2 boundaryProfileLaplace (1 / 2 : ℂ) = 8065474560 := by
  have hf : ContDiffAt ℂ 2 (fun s : ℂ ↦ (s - 1 / 2) ^ 2) (1 / 2) := by fun_prop
  have hg : ContDiffAt ℂ 2 profilePoleFactor (1 / 2) := by
    unfold profilePoleFactor
    fun_prop (disch := norm_num)
  have hshift : iteratedDeriv 2 (fun s : ℂ ↦ (s - 1 / 2) ^ 2) (1 / 2) = 2 := by
    have h := congrFun (iteratedDeriv_comp_sub_const
      (f := fun w : ℂ ↦ w ^ 2) (s := (1 / 2 : ℂ)) (n := 2)) (1 / 2)
    norm_num [iteratedDeriv_pow, Nat.descFactorial] at h
    exact h
  rw [profile_laplace_eventually_factor.iteratedDeriv_eq 2, iteratedDeriv_fun_mul hf hg]
  simp only [Finset.sum_range_succ, Finset.sum_range_zero]
  norm_num [iteratedDeriv_pow, profilePoleFactor, iteratedDeriv_zero, hshift]


/-- The second derivative is genuinely nonzero; the positive-pole zero is not of higher order. -/
theorem boundary_profile_laplace_second_derivative_ne_zero :
    iteratedDeriv 2 boundaryProfileLaplace (1 / 2 : ℂ) ≠ 0 := by
  rw [boundary_profile_laplace_second_derivative]
  norm_num

/-- The rational structural explanation is consistent with all three compiled native moments. -/
theorem boundary_profile_laplace_moment_consistency :
    boundaryProfileLaplace (1 / 2) = (profileExponentialMoment 0 : ℂ) ∧
      deriv boundaryProfileLaplace (1 / 2 : ℂ) = -(profileExponentialMoment 1 : ℂ) ∧
        iteratedDeriv 2 boundaryProfileLaplace (1 / 2 : ℂ) =
          (profileExponentialMoment 2 : ℂ) := by
  rw [boundary_profile_laplace_half_zero, boundary_profile_laplace_first_derivative_zero,
    boundary_profile_laplace_second_derivative, boundary_profile_constant_moment_zero,
    boundary_profile_affine_moment_zero, boundary_profile_quadratic_moment]
  norm_num

end
end FormalResearch.RiemannHypothesis.BoundaryRieszLaplace
```
