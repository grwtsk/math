# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualPsiFloorDensitySigns.Variantd697a94ed817702685f8d3b62b3f96b0db46d910cef542fbceff2b1c239e226f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `47cdb1523e3422d5fbbf28f2692a74a7c9dcf038` · SHA-256 `d697a94ed817702685f8d3b62b3f96b0db46d910cef542fbceff2b1c239e226f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceFiveFullKappaShortReduction
import SourceActualPoleMomentAnnihilation
import SourceActualPsiFloorSignBlocks

/-!
The genuine signed Psi-minus-floor pairing density has both signs on actual
closed arithmetic blocks. Curvature five controls its true physical test
below twenty at every real scale at least ninety-one. This supplies a precise
obstruction to discarding sign sectors, not a uniform pairing witness.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualPsiFloorDensitySigns
open Set SourcePairing SourcePositiveSampling
open SourceFiveFullKappaShortReduction SourceActualPoleMomentAnnihilation
open SourceActualPsiFloorSignBlocks
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity
noncomputable section

/-- The actual physical profile derivative is negative on the complete initial block. -/
theorem actual_plain_profile_derivative_neg_on_twenty {A x : ℝ}
    (hA : 91 ≤ A) (hx : 1 ≤ x) (hx20 : x ≤ 20) :
    deriv (plainProfile A 1) x < 0 := by
  have hp : 0 < A := by linarith
  have hxp : 0 < x := by linarith
  have he2 : (5 : ℝ) ≤ Real.exp 2 := by
    nlinarith [Real.quadratic_le_exp_of_nonneg (by norm_num : (0 : ℝ) ≤ 2)]
  have he4 : (25 : ℝ) ≤ Real.exp 4 := by
    rw [show (4 : ℝ) = 2 + 2 by norm_num, Real.exp_add]
    nlinarith [Real.exp_pos (2 : ℝ)]
  have hl20 : Real.log (20 : ℝ) ≤ 4 :=
    (Real.log_le_iff_le_exp (by norm_num : (0 : ℝ) < 20)).2 (by linarith)
  have ht0 : 0 ≤ Real.log x := Real.log_nonneg hx
  have ht4 : Real.log x ≤ 4 := (Real.log_le_log hxp hx20).trans hl20
  have ht2 : (Real.log x) ^ 2 ≤ 16 := by nlinarith
  have hC := actualCorrelation_sub_one_abs_le_five hA (Real.log x)
  have hD := actualCorrelation_first_abs_le_five hA (Real.log x)
  rw [abs_of_nonneg ht0] at hD
  have hc : 1 - sourceCorrelation explicitSecondDerivative A (Real.log x) ≤
      (5 / 2 : ℝ) * (Real.log x) ^ 2 / A ^ 2 := by
    have hh := (abs_le.mp hC).1
    calc
      _ ≤ (5 / 2 : ℝ) / A ^ 2 * (Real.log x) ^ 2 := by linarith
      _ = _ := by ring
  have hd : deriv (sourceCorrelation explicitSecondDerivative A) (Real.log x) ≤
      5 * Real.log x / A ^ 2 := by
    calc
      _ ≤ 5 / A ^ 2 * Real.log x := (abs_le.mp hD).2
      _ = _ := by ring
  have hcp := (le_div_iff₀ (by positivity : 0 < A ^ 2)).mp hc
  have hdp := (le_div_iff₀ (by positivity : 0 < A ^ 2)).mp hd
  have hq : (8281 : ℝ) ≤ A ^ 2 := by nlinarith
  have hi : deriv (sourceCorrelation explicitSecondDerivative A) (Real.log x) -
      sourceCorrelation explicitSecondDerivative A (Real.log x) / 2 < 0 := by
    have hm : (deriv (sourceCorrelation explicitSecondDerivative A) (Real.log x) -
        sourceCorrelation explicitSecondDerivative A (Real.log x) / 2) * A ^ 2 < 0 := by
      nlinarith
    nlinarith [sq_pos_of_pos hp]
  rw [(plainProfile_hasDerivAt hp 1 hxp).deriv]
  simp only [Real.log_one, zero_add]
  exact mul_neg_of_pos_of_neg (div_pos (Real.exp_pos _) hxp) hi

/-- Actual closed Psi powers make this real block strictly negative in the signed pairing. -/
theorem actual_signed_psi_floor_negative_block {A x : ℝ}
    (hA : 91 ≤ A) (hx : 6 ≤ x) (hx7 : x < 7) :
    -actualPsiFloorDensity A x < 0 := by
  have hd := actual_plain_profile_derivative_neg_on_twenty hA
    (by linarith : 1 ≤ x) (by linarith : x ≤ 20)
  have hp := actual_psi_floor_negative_block x hx hx7
  have hm : 0 < actualPsiFloorDensity A x := by
    change 0 < actualPsiFloorDiscrepancy x * deriv (plainProfile A 1) x
    exact mul_pos_of_neg_of_neg (by linarith) hd
  linarith

/-- The true closed nineteen atom makes this real block strictly positive. -/
theorem actual_signed_psi_floor_positive_block {A x : ℝ}
    (hA : 91 ≤ A) (hx : 19 ≤ x) (hx20 : x < 20) :
    0 < -actualPsiFloorDensity A x := by
  have hd := actual_plain_profile_derivative_neg_on_twenty hA
    (by linarith : 1 ≤ x) hx20.le
  have hp := actual_psi_floor_positive_block x hx hx20
  have hm : actualPsiFloorDensity A x < 0 := by
    change actualPsiFloorDiscrepancy x * deriv (plainProfile A 1) x < 0
    exact mul_neg_of_pos_of_neg (by linarith) hd
  linarith

/-- The exact integrand of the true pairing has both signs inside its genuine physical support. -/
theorem actual_signed_psi_floor_pairing_density_both_signs {A : ℝ} (hA : 91 ≤ A) :
    (∃ x ∈ Ioo (1 : ℝ) (Real.exp (2 * A)), 0 < -actualPsiFloorDensity A x) ∧
      (∃ x ∈ Ioo (1 : ℝ) (Real.exp (2 * A)), -actualPsiFloorDensity A x < 0) := by
  have he := Real.add_one_le_exp (2 * A)
  constructor
  · refine ⟨19, ⟨by norm_num, by linarith⟩, ?_⟩
    exact actual_signed_psi_floor_positive_block hA (by norm_num) (by norm_num)
  · refine ⟨6, ⟨by norm_num, by linarith⟩, ?_⟩
    exact actual_signed_psi_floor_negative_block hA (by norm_num) (by norm_num)

end
end FormalResearch.RiemannHypothesis.SourceActualPsiFloorDensitySigns
```
