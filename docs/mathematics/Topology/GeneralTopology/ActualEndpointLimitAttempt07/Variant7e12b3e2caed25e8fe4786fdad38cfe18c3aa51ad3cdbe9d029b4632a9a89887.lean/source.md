# Complete source: GRWTSK.Topology.GeneralTopology.ActualEndpointLimitAttempt07.Variant7e12b3e2caed25e8fe4786fdad38cfe18c3aa51ad3cdbe9d029b4632a9a89887

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f3daf8cedfb39952dbb48574216622766ecedb67` · SHA-256 `7e12b3e2caed25e8fe4786fdad38cfe18c3aa51ad3cdbe9d029b4632a9a89887`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ActualEndpointCorrelation
import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics

/-! A genuine actual source endpoint excursion and mass-ratio limit.
Direction: grwtsk contributors. Scratch construction: OpenAI Codex.
No differentiated endpoint remainder, arithmetic intercept or signed budget. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualEndpointLimit
open MeasureTheory Set Filter
open scoped Interval Topology
open ActualEndpointCorrelation EndpointProfile ActualPhaseCurvature
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel
open FormalResearch.RiemannHypothesis.SourcePairedPrimeWork
open FormalResearch.RiemannHypothesis.SourcePairedPrimeAverages
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

-- Exact normalization proof reused from P8 ActualRealMode8c5d0496,
-- isolated from its unrelated Laplace import closure.
private theorem sourceNormalization_tendsto :
    Tendsto sourceNormalization atTop (𝓝 (4096/109395 : ℝ)) := by
  have h1 : Tendsto (fun A : ℝ => A⁻¹) atTop (𝓝 0) := tendsto_inv_atTop_zero
  have hc : Tendsto (fun _ : ℝ => (4096/109395 : ℝ)) atTop (𝓝 (4096/109395 : ℝ)) := tendsto_const_nhds
  have h := (hc.add ((h1.pow 2).const_mul (65536/45045 : ℝ))).add
    ((h1.pow 4).const_mul (196608/5005 : ℝ))
  convert h using 1
  · ext A; unfold sourceNormalization; simp only [inv_pow]; ring
  · norm_num

/-- Genuine continuity of a finite compact-interval polynomial integral. -/
theorem endpointPolynomialCorrelation_continuous (y : ℝ) :
    Continuous (fun a => endpointPolynomialCorrelation a y) := by
  apply intervalIntegral.continuous_parametric_intervalIntegral_of_continuous'
  unfold Function.uncurry endpointInteriorPolynomial
  fun_prop

theorem endpointPolynomialCorrelation_at_zero (y : ℝ) :
    endpointPolynomialCorrelation 0 y=endpointLeadingCorrelation y := by
  unfold endpointPolynomialCorrelation
  simp_rw [endpointInteriorPolynomial_at_zero]
  exact endpoint_leading_convolution y

/-- Fixed physical endpoint distance, through every real scale atTop. -/
theorem actual_endpoint_scaled_tendsto {y : ℝ} (hy : 0≤y) :
    Tendsto (fun A : ℝ =>
      sourceCorrelation explicitSecondDerivative A (2*A-y)*(A^9*sourceNormalization A))
      atTop (𝓝 (endpointLeadingCorrelation y)) := by
  have ht := (endpointPolynomialCorrelation_continuous y).continuousAt.tendsto.comp
    (tendsto_inv_atTop_zero : Tendsto (fun A : ℝ => A⁻¹) atTop (𝓝 (0:ℝ)))
  rw [endpointPolynomialCorrelation_at_zero] at ht
  apply ht.congr'
  filter_upwards [eventually_ge_atTop (max (1:ℝ) (y/2))] with A hA
  have hp : 1≤A := (le_max_left _ _).trans hA
  have hm : y≤2*A := by have hh := (le_max_right (1:ℝ) (y/2)).trans hA;linarith
  exact (actual_endpoint_polynomial_correlation hp ⟨hy,hm⟩).symm

theorem actual_endpoint_normalized_tendsto {y : ℝ} (hy : 0≤y) :
    Tendsto (fun A : ℝ => A^9*sourceCorrelation explicitSecondDerivative A (2*A-y))
      atTop (𝓝 (endpointLeadingCorrelation y/(4096/109395:ℝ))) := by
  have ht := (actual_endpoint_scaled_tendsto hy).div
    sourceNormalization_tendsto (by norm_num : (4096/109395:ℝ)≠0)
  apply ht.congr'
  filter_upwards [eventually_ge_atTop (1:ℝ)] with A hA
  have hZ := (source_normalization_pos A hA).ne'
  dsimp only [Pi.div_apply]
  field_simp [hZ]

/-- The literal source has a growing excursion at one fixed physical endpoint distance. -/
theorem actual_endpoint_excursion_tendsto :
    Tendsto (fun A : ℝ => criticalPrimeTest A (2*A-1)) atTop atTop := by
  have hn := actual_endpoint_normalized_tendsto (y:=1) (by norm_num)
  have hpos : 0<endpointLeadingCorrelation 1/(4096/109395:ℝ) := by
    norm_num [endpointLeadingCorrelation]
  have he : Tendsto (fun A : ℝ => Real.exp (A-1/2)/A^9) atTop atTop := by
    have hh := (tendsto_exp_mul_div_rpow_atTop (9:ℝ) 1 (by norm_num)).const_mul_atTop
      (Real.exp_pos (-(1/2:ℝ)))
    simp only [one_mul, Real.rpow_ofNat] at hh
    convert hh using 1
    ext A
    rw [←mul_div_assoc,←Real.exp_add]
    congr 1
    ring
  have hh := hn.pos_mul_atTop hpos he
  apply hh.congr'
  filter_upwards [eventually_ge_atTop (1:ℝ)] with A hA
  unfold criticalPrimeTest
  have hne : A≠0 := by linarith
  field_simp [hne]

/-- Actual growing source variation, derived without arithmetic or zero information. -/
theorem actual_positiveMass_tendsto : Tendsto positiveMass atTop atTop := by
  apply tendsto_atTop_mono' (l:=atTop)
    (f₁:=fun A : ℝ => criticalPrimeTest A (2*A-1)-1)
  · filter_upwards [eventually_ge_atTop (1:ℝ)] with A hA
    exact actual_excursion_le_positiveMass hA ⟨by linarith,by linarith⟩
  · simpa only [sub_eq_add_neg] using
      tendsto_atTop_add_const_right atTop (-1:ℝ) actual_endpoint_excursion_tendsto

theorem actual_negativeMass_tendsto : Tendsto negativeMass atTop atTop := by
  apply (tendsto_atTop_add_const_right atTop (1:ℝ) actual_positiveMass_tendsto).congr'
  filter_upwards [eventually_ge_atTop (1:ℝ)] with A hA
  exact (negativeMass_eq_positive_add_one hA).symm

/-- Exact mass deficit and actual excursion give the original ratio limit. -/
theorem actual_massRatio_tendsto :
    Tendsto (fun A : ℝ => positiveMass A/negativeMass A) atTop (𝓝 (1:ℝ)) := by
  have hi := tendsto_inv_atTop_zero.comp actual_negativeMass_tendsto
  have ht : Tendsto (fun A : ℝ => 1-(negativeMass A)⁻¹) atTop (𝓝 (1:ℝ)) := by
    simpa using (tendsto_const_nhds (x:=(1:ℝ))).sub hi
  apply ht.congr'
  filter_upwards [eventually_ge_atTop (1:ℝ)] with A hA
  have hd := actual_massRatio_deficit hA
  simp only [one_div] at hd
  linarith

end ContinuousResearch.ActualEndpointLimit
```
