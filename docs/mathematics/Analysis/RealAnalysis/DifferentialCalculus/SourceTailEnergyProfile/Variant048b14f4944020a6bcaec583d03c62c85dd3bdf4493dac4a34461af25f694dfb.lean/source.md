# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceTailEnergyProfile.Variant048b14f4944020a6bcaec583d03c62c85dd3bdf4493dac4a34461af25f694dfb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2c932f28ff47e93e0996a0652071ddc3f4158314` · SHA-256 `048b14f4944020a6bcaec583d03c62c85dd3bdf4493dac4a34461af25f694dfb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceCorrelationCurvature

/-!
Exact monotone radius calibration for the actual derivative energy.
This improves the existing F7 mean consumer; no arithmetic mean is constructed.
Research direction and conceptual origin: grwtsk contributors.
Finite algebra, source application and native proof construction: OpenAI Codex.
-/

set_option autoImplicit false
noncomputable section

namespace RH16TailEnergy

open MeasureTheory
open FormalResearch.RiemannHypothesis
open SourcePairing SourceDerivativeEnergy SourceDerivativeCoefficientBound
open SourceCorrelationEnergy SourceCorrelationCurvature
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

/-- Exact physical derivative energy coefficient, preserving source normalization. -/
def tailEnergyCoefficient (R : ℝ) : ℝ :=
  derivativePolynomial ((R ^ 2)⁻¹) / normPolynomial ((R ^ 2)⁻¹)

/-- The cross-multiplied ratio comparison has strictly positive coefficients. -/
theorem exact_ratio_comparison (x y : ℝ) :
    derivativePolynomial y * normPolynomial x -
      derivativePolynomial x * normPolynomial y =
    (y - x) * ((134217728 / 285073425 : ℝ) +
      (94757715968 / 3832653825 : ℝ) * (x + y) +
      (2147483648 / 4601025 : ℝ) * x * y) := by
  unfold derivativePolynomial normPolynomial
  ring

/-- Monotonicity holds on the full nonnegative parameter axis. -/
theorem exact_ratio_mono {x y : ℝ} (hx : 0 ≤ x) (hxy : x ≤ y) :
    derivativePolynomial x / normPolynomial x ≤
      derivativePolynomial y / normPolynomial y := by
  have hy : 0 ≤ y := hx.trans hxy
  apply (div_le_div_iff₀ (normPolynomial_pos x hx) (normPolynomial_pos y hy)).mpr
  have hnon : 0 ≤ (y - x) * ((134217728 / 285073425 : ℝ) +
      (94757715968 / 3832653825 : ℝ) * (x + y) +
      (2147483648 / 4601025 : ℝ) * x * y) := by positivity
  rw [← exact_ratio_comparison] at hnon
  linarith

theorem tailEnergyCoefficient_pos (R : ℝ) : 0 < tailEnergyCoefficient R := by
  unfold tailEnergyCoefficient derivativePolynomial
  exact div_pos (by positivity) (normPolynomial_pos _ (inv_nonneg.mpr (sq_nonneg R)))

/-- A larger physical radius has a smaller exact energy coefficient. -/
theorem tailEnergyCoefficient_antitone {R A : ℝ} (hR : 0 < R) (hRA : R ≤ A) :
    tailEnergyCoefficient A ≤ tailEnergyCoefficient R := by
  have hA : 0 < A := hR.trans_le hRA
  apply exact_ratio_mono (inv_nonneg.mpr (sq_nonneg A))
  apply inv_le_inv₀ (sq_pos_of_pos hA) (sq_pos_of_pos hR) |>.mpr
  nlinarith

/-- The exact energy, not the all-radius majorant, is applied to actual bytes. -/
theorem actual_derivative_energy_le_tail {R A : ℝ} (hR : 0 < R) (hRA : R ≤ A) :
    (∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x) ^ 2) ≤
      tailEnergyCoefficient R / A ^ 2 := by
  have hA : 0 < A := hR.trans_le hRA
  apply (le_div_iff₀ (sq_pos_of_pos hA)).mpr
  rw [mul_comm, actual_derivative_energy_eq hA]
  exact tailEnergyCoefficient_antitone hR hRA

/-- Exact Cauchy-Schwarz with the unchanged unit norm gives the first derivative. -/
theorem actual_correlation_deriv_abs_le_tail {R A : ℝ} (hR : 1 ≤ R)
    (hRA : R ≤ A) (t : ℝ) :
    |deriv (sourceCorrelation explicitSecondDerivative A) t| ≤
      Real.sqrt (tailEnergyCoefficient R) / A := by
  have hRp : 0 < R := by linarith
  have hAp : 0 < A := hRp.trans_le hRA
  apply abs_le_of_sq_le_sq ?_ (by positivity)
  rw [div_pow, Real.sq_sqrt (tailEnergyCoefficient_pos R).le]
  exact (sourceCorrelation_deriv_square_le_energy (hR.trans hRA) t).trans
    (actual_derivative_energy_le_tail hRp hRA)

/-- The same actual energy controls curvature at every separation. -/
theorem actual_correlation_second_deriv_abs_le_tail {R A : ℝ} (hR : 1 ≤ R)
    (hRA : R ≤ A) (t : ℝ) :
    |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t| ≤
      tailEnergyCoefficient R / A ^ 2 := by
  have hRp : 0 < R := by linarith
  exact (sourceCorrelation_second_deriv_abs_le_energy (hRp.trans_le hRA) t).trans
    (actual_derivative_energy_le_tail hRp hRA)

/-- The exactly evaluated coefficient at the existing source consumer radius. -/
theorem tailEnergyCoefficient_ninety_one :
    tailEnergyCoefficient 91 = (2362115626 / 482284503 : ℝ) := by
  norm_num [tailEnergyCoefficient, derivativePolynomial, normPolynomial]

theorem tailEnergyCoefficient_ninety_one_lt_five : tailEnergyCoefficient 91 < 5 := by
  rw [tailEnergyCoefficient_ninety_one]
  norm_num

/-- A convenient rational majorant for any source radius at least 91. -/
theorem tailEnergyCoefficient_le_five {R : ℝ} (hR : 91 ≤ R) :
    tailEnergyCoefficient R ≤ 5 :=
  (tailEnergyCoefficient_antitone (by norm_num : (0 : ℝ) < 91) hR).trans
    tailEnergyCoefficient_ninety_one_lt_five.le

/-- Both physical derivatives retain their exact simultaneous radius calibration. -/
theorem actual_correlation_derivative_bounds {R A : ℝ} (hR : 1 ≤ R)
    (hRA : R ≤ A) (t : ℝ) :
    |deriv (sourceCorrelation explicitSecondDerivative A) t| ≤
        Real.sqrt (tailEnergyCoefficient R) / A ∧
      |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t| ≤
        tailEnergyCoefficient R / A ^ 2 :=
  ⟨actual_correlation_deriv_abs_le_tail hR hRA t,
    actual_correlation_second_deriv_abs_le_tail hR hRA t⟩

/-- The simple tail-only bounds requested by the integrating mean consumer. -/
theorem tail_physical_derivative_bounds (A t : ℝ) (hA : 91 ≤ A) :
    |deriv (sourceCorrelation explicitSecondDerivative A) t| ≤ Real.sqrt 5 / A ∧
      |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t| ≤ 5 / A ^ 2 := by
  have hp : 0 < A := by linarith
  have h := actual_correlation_derivative_bounds (by norm_num : (1 : ℝ) ≤ 91) hA t
  constructor
  · exact h.1.trans (div_le_div_of_nonneg_right
      (Real.sqrt_le_sqrt tailEnergyCoefficient_ninety_one_lt_five.le) hp.le)
  · exact h.2.trans (div_le_div_of_nonneg_right
      tailEnergyCoefficient_ninety_one_lt_five.le (sq_nonneg A))

end RH16TailEnergy
```
