# Complete source: GRWTSK.Topology.GeneralTopology.SourceActualTiltProjectedGrowth.Variantd8670098b9a0f4a885a31440df1952fc971d55854281dbc700a0088b9140b035

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `058ca796d79eb86ab5c3c9d5c23508230a1c2ff8` · SHA-256 `d8670098b9a0f4a885a31440df1952fc971d55854281dbc700a0088b9140b035`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualTiltBandProjection
import SourceActualEulerCentralFrequency

/-!
The genuine positive central block forces growth of the actual band state.
This energy comparison keeps the signed central density on its true source;
it does not replace the complete signed head by an unsigned energy bound.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualTiltProjectedGrowth
open MeasureTheory Filter Set FourierTransform Complex
open scoped FourierTransform Topology
open SourceActualTiltEnergy SourceActualTiltL2State SourceActualTiltFourierDictionary
open SourceActualTiltBandProjection SourceActualEulerCentralFrequency
open SourceActualEulerSupportHead SourceActualRightBumpTail
open SourceActualInitialPrimeContour SourceActualPrimeBumpDictionary
open SourceActualBumpMovingHeight SourceReflectionDuality

private theorem spectrum_continuous {A : ℝ} (hA : 1 ≤ A) :
    Continuous (actualTiltStandardSpectrum A) := by
  have hh : Continuous (𝓕 (fun x => (actualUnitTilt A x : ℂ))) :=
    VectorFourier.fourierIntegral_continuous Real.continuous_fourierChar
      (innerSL ℝ).continuous₂ (actualUnitTilt_complex_integrable hA)
  have he : (𝓕 (fun x => (actualUnitTilt A x : ℂ))) = actualTiltStandardSpectrum A :=
    funext (actualUnitTilt_fourier_eq hA)
  rwa [he] at hh

private theorem mellin_eq_spectrum_sq {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    actualInitialPrimeMellin A ((3 / 2 : ℂ) + (t : ℂ) * I) =
      actualTiltStandardSpectrum A (-t / (2 * Real.pi)) ^ 2 := by
  have he : 2 * Real.pi * (-t / (2 * Real.pi)) = -t := by field_simp
  rw [actualTiltStandardSpectrum_sq_eq_weight hA, he]
  simp only [Complex.ofReal_neg, neg_mul, sub_neg_eq_add]
  exact actualInitialPrimeMellin_eq_bumpMellinWeight hA _

private theorem polynomial_continuous (A : ℝ) :
    Continuous (fun t : ℝ => actualClosedPrimeDirichletPolynomial A
      ((3 / 2 : ℂ) + (t : ℂ) * I)) := by
  unfold actualClosedPrimeDirichletPolynomial
  apply continuous_finsetSum
  intro n _
  rcases eq_or_ne n 0 with rfl | hn
  · simp only [LSeries.term_zero]
    exact continuous_const
  · simp only [LSeries.term_of_ne_zero hn]
    refine continuous_const.div ?_ (fun _ => ?_)
    · exact Continuous.const_cpow (by fun_prop) (Or.inl (by exact_mod_cast hn))
    · exact cpow_ne_zero_iff.mpr (Or.inl (by exact_mod_cast hn))

private theorem polynomial_norm_le (A t : ℝ) :
    ‖actualClosedPrimeDirichletPolynomial A ((3 / 2 : ℂ) + (t : ℂ) * I)‖ ≤
      actualRightLineMass (3 / 2) := by
  unfold actualClosedPrimeDirichletPolynomial actualRightLineMass
  calc
    _ ≤ ∑ n ∈ Finset.range (⌊Real.exp (2 * A)⌋₊ + 1),
        ‖LSeries.term actualMangoldtCoefficients ((3 / 2 : ℂ) + (t : ℂ) * I) n‖ :=
      norm_sum_le _ _
    _ = ∑ n ∈ Finset.range (⌊Real.exp (2 * A)⌋₊ + 1),
        ‖LSeries.term actualMangoldtCoefficients ((3 / 2 : ℝ) : ℂ) n‖ := by
      apply Finset.sum_congr rfl
      intro n _
      simp [LSeries.norm_term_eq]
    _ ≤ _ := (actualRightLineMass_summable (3 / 2) (by norm_num)).sum_le_tsum
      _ (fun n _ => norm_nonneg _)

private theorem density_upper {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    actualClosedFrequencyDensity A t ≤ actualRightLineMass (3 / 2) *
      ‖actualTiltStandardSpectrum A (-t / (2 * Real.pi))‖ ^ 2 := by
  unfold actualClosedFrequencyDensity
  calc
    _ ≤ ‖actualInitialPrimeMellin A ((3 / 2 : ℂ) + (t : ℂ) * I) *
        actualClosedPrimeDirichletPolynomial A ((3 / 2 : ℂ) + (t : ℂ) * I)‖ :=
      Complex.re_le_norm _
    _ = ‖actualTiltStandardSpectrum A (-t / (2 * Real.pi))‖ ^ 2 *
        ‖actualClosedPrimeDirichletPolynomial A ((3 / 2 : ℂ) + (t : ℂ) * I)‖ := by
      rw [norm_mul, mellin_eq_spectrum_sq hA, norm_pow]
    _ ≤ _ := by
      simpa only [mul_comm] using mul_le_mul_of_nonneg_left (polynomial_norm_le A t)
        (sq_nonneg ‖actualTiltStandardSpectrum A (-t / (2 * Real.pi))‖)

private theorem spectrum_energy_angular (A T : ℝ) :
    (1 / (2 * Real.pi)) * (∫ t in -T..T,
      ‖actualTiltStandardSpectrum A (-t / (2 * Real.pi))‖ ^ 2) =
      ∫ ξ in -T / (2 * Real.pi)..T / (2 * Real.pi),
        ‖actualTiltStandardSpectrum A ξ‖ ^ 2 := by
  have he (t : ℝ) : -t / (2 * Real.pi) = t / (-2 * Real.pi) := by ring
  simp_rw [he]
  rw [intervalIntegral.integral_comp_div (fun ξ : ℝ => ‖actualTiltStandardSpectrum A ξ‖ ^ 2)
    (a := -T) (b := T) (c := -2 * Real.pi) (by positivity : (-2 * Real.pi : ℝ) ≠ 0)]
  simp only [smul_eq_mul]
  rw [intervalIntegral.integral_symm]
  field_simp

/-- The actual signed central mass is paid by the true projected norm at its own height. -/
theorem actualCentralFrequencyMass_le_band_energy {A : ℝ} (hA : 1 ≤ A) :
    actualCentralFrequencyMass A ≤ actualRightLineMass (3 / 2) *
      ‖actualTiltBandState A (actualCentralFrequencyRadius A)‖ ^ 2 := by
  have hr : 0 ≤ actualCentralFrequencyRadius A := by
    unfold actualCentralFrequencyRadius
    positivity
  have hc := spectrum_continuous hA
  have hs : Continuous (fun t : ℝ =>
      actualTiltStandardSpectrum A (-t / (2 * Real.pi))) := hc.comp (by fun_prop)
  have hd : Continuous (actualClosedFrequencyDensity A) := by
    unfold actualClosedFrequencyDensity
    simp_rw [mellin_eq_spectrum_sq hA]
    exact Complex.continuous_re.comp ((hs.pow 2).mul (polynomial_continuous A))
  have hh := intervalIntegral.integral_mono_on (μ := volume) (by linarith :
      -actualCentralFrequencyRadius A ≤ actualCentralFrequencyRadius A)
    (hd.intervalIntegrable _ _) (((hs.norm.pow 2).const_mul _).intervalIntegrable _ _)
    (fun t _ => density_upper hA t)
  have hb := mul_le_mul_of_nonneg_left hh (show 0 ≤ 1 / (2 * Real.pi) by positivity)
  unfold actualCentralFrequencyMass
  apply hb.trans_eq
  rw [intervalIntegral.integral_const_mul]
  simp only [Pi.pow_apply]
  rw [show (1 / (2 * Real.pi)) * (actualRightLineMass (3 / 2) *
      (∫ t in -actualCentralFrequencyRadius A..actualCentralFrequencyRadius A,
        ‖actualTiltStandardSpectrum A (-t / (2 * Real.pi))‖ ^ 2)) =
      actualRightLineMass (3 / 2) * ((1 / (2 * Real.pi)) *
      (∫ t in -actualCentralFrequencyRadius A..actualCentralFrequencyRadius A,
        ‖actualTiltStandardSpectrum A (-t / (2 * Real.pi))‖ ^ 2)) by ring]
  rw [spectrum_energy_angular, actualTiltBandState_norm_sq hA]
  unfold actualStandardBand
  rw [intervalIntegral.integral_of_le (by
    exact div_le_div_of_nonneg_right (by linarith) (by positivity)),
    integral_Icc_eq_integral_Ioc]

/-- Actual band energies increase with angular height, with no new source assumption. -/
theorem actualTiltBandState_norm_sq_mono {A T U : ℝ} (hA : 1 ≤ A) (hTU : T ≤ U) :
    ‖actualTiltBandState A T‖ ^ 2 ≤ ‖actualTiltBandState A U‖ ^ 2 := by
  rw [actualTiltBandState_norm_sq hA, actualTiltBandState_norm_sq hA]
  apply setIntegral_mono_set (actualTiltStandardSpectrum_norm_sq_integrable hA).integrableOn
    (Eventually.of_forall fun ξ => sq_nonneg _) ?_
  apply Eventually.of_forall
  intro ξ hξ
  exact ⟨(div_le_div_of_nonneg_right (neg_le_neg hTU) (by positivity)).trans hξ.1,
    hξ.2.trans (div_le_div_of_nonneg_right hTU (by positivity))⟩

/-- The true moving-height band carries the exponential central growth, with its norm retained. -/
theorem actualTiltBandState_moving_energy_eventually_lower :
    ∀ᶠ A : ℝ in atTop, actualCentralFrequencyConstant * Real.exp (2 * A) / A ^ 10 ≤
      actualRightLineMass (3 / 2) *
        ‖actualTiltBandState A (actualBumpMovingHeight A (3 / 2))‖ ^ 2 := by
  filter_upwards [eventually_ge_atTop (1 : ℝ),
    actualCentralFrequencyMass_eventually_lower] with A hA hh
  exact hh.trans ((actualCentralFrequencyMass_le_band_energy hA).trans
    (mul_le_mul_of_nonneg_left (actualTiltBandState_norm_sq_mono hA
      (actualCentralFrequencyRadius_le_height hA)) (actualRightLineMass_nonneg _)))

end FormalResearch.RiemannHypothesis.SourceActualTiltProjectedGrowth
```
