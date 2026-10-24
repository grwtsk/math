# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CubicCoefficientCalibrationAttempt01.Variant8e61a2df1c30862ccfb9b9d6198c995e249ed8ec2a8f69ac06fe0e16e3d7ce4c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a618ec0ca6a8b8499aa8464ddcf192668ed71672` · SHA-256 `8e61a2df1c30862ccfb9b9d6198c995e249ed8ec2a8f69ac06fe0e16e3d7ce4c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceDerivativeCoefficientBound

/-!
Exact scalar certificate for the actual polynomial-source cubic proposal.
The numerator below is the paper's second-derivative-square energy polynomial.
The analytic identity connecting it to the weak derivative energy, global C4
correlation, cubic cell estimate and full Omega reconstruction is not proved
here. No arithmetic upper witness follows from these scalar certificates.
AI attribution: OpenAI Codex independent mathematical challenge.
-/

set_option autoImplicit false

namespace RH16IndependentChallengeNext

open FormalResearch.RiemannHypothesis.SourceDerivativeCoefficientBound

/-- Exact polynomial from the unchanged bump's paper second-derivative energy calculation. -/
def fourthDisplacementEnergyPolynomial (theta : ℝ) : ℝ :=
  (12288 / 5005 : ℝ) + (32768 / 77 : ℝ) * theta + 32768 * theta ^ 2

/-- A sharper coefficient on the actual large-scale parameter range. -/
theorem cubic_energy_ratio_le_sixty_seven (theta : ℝ)
    (h0 : 0 ≤ theta) (h1 : theta ≤ 1 / 8281) :
    fourthDisplacementEnergyPolynomial theta / normPolynomial theta ≤ 67 := by
  have hs : theta ^ 2 ≤ (1 / 8281 : ℝ) ^ 2 := by nlinarith
  apply (div_le_iff₀ (normPolynomial_pos theta h0)).2
  unfold fourthDisplacementEnergyPolynomial normPolynomial
  nlinarith

/-- Every real scale at least 91 satisfies the refined scalar energy coefficient. -/
theorem cubic_energy_ratio_le_sixty_seven_of_scale (A : ℝ) (hA : 91 ≤ A) :
    fourthDisplacementEnergyPolynomial ((A ^ 2)⁻¹) / normPolynomial ((A ^ 2)⁻¹) ≤ 67 := by
  apply cubic_energy_ratio_le_sixty_seven
  · positivity
  · rw [inv_eq_one_div]
    apply (div_le_iff₀ (sq_pos_of_pos (by linarith : 0 < A))).2
    nlinarith

/-- Once the analytic cubic bridge is supplied, its refined error plus 260/A² costs 3/50. -/
theorem refined_cubic_calibration_budget_lt (A : ℝ) (hA : 91 ≤ A) :
    260 / A ^ 2 + 320 * (67 : ℝ) / A ^ 3 < 3 / 50 := by
  have h2 : (91 : ℝ) ^ 2 ≤ A ^ 2 := pow_le_pow_left₀ (by norm_num) hA 2
  have h3 : (91 : ℝ) ^ 3 ≤ A ^ 3 := pow_le_pow_left₀ (by norm_num) hA 3
  have b2 := div_le_div_of_nonneg_left (by norm_num : (0 : ℝ) ≤ 260)
    (by norm_num : (0 : ℝ) < 91 ^ 2) h2
  have b3 := div_le_div_of_nonneg_left (by norm_num : (0 : ℝ) ≤ 320 * 67)
    (by norm_num : (0 : ℝ) < 91 ^ 3) h3
  norm_num at b2 b3 ⊢
  linarith

end RH16IndependentChallengeNext
```
