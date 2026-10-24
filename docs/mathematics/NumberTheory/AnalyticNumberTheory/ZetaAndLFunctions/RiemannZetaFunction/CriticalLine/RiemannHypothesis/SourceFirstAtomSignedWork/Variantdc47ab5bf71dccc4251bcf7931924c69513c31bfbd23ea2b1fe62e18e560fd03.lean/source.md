# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceFirstAtomSignedWork.Variantdc47ab5bf71dccc4251bcf7931924c69513c31bfbd23ea2b1fe62e18e560fd03

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eb30bc8d1862d142502a2d99a59fb2d579d55a88` · SHA-256 `dc47ab5bf71dccc4251bcf7931924c69513c31bfbd23ea2b1fe62e18e560fd03`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceCriticalWeightMassObstruction

/-!
# Actual signed Mangoldt work before the first atom

The error below log 2 is exactly -t. The value at the closed prime-two atom
is handled by almost-everywhere interval equality, never changed pointwise.
Only this fixed head interval is bounded; all later arithmetic remains signed.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceFirstAtomSignedWork

open MeasureTheory Set
open scoped Interval
open SourceMangoldtAbel SourceFirstPrimeAbel SourceMangoldtNorm SourceCorrelationEnergy
open SourceContinuousHalfEnergy
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateCorrelation EstimateMertensResidual

noncomputable section

/-- The unchanged actual error, including its closed prime-two endpoint value. -/
def firstAtomHeadWork (A : ℝ) : ℝ :=
  ∫ t in 0..Real.log 2, mangoldtLogError t * deriv (criticalPrimeTest A) t

/-- The entire remaining original signed work, with no counterterm redefinition. -/
def remainingAtomWork (A : ℝ) : ℝ :=
  ∫ t in Real.log 2..2 * A, mangoldtLogError t * deriv (criticalPrimeTest A) t

/-- Only the null endpoint is excluded from the exact empty-prefix equality. -/
theorem firstAtomHeadWork_eq_empty_prefix (A : ℝ) :
    firstAtomHeadWork A = ∫ t in 0..Real.log 2, -t * deriv (criticalPrimeTest A) t := by
  unfold firstAtomHeadWork
  apply intervalIntegral.integral_congr_Ioo_of_le (Real.log_nonneg (by norm_num))
  intro t ht
  rw [mangoldtLogError_below_first_atom ht.2]

/-- Actual correlation normalization and derivative control give both signed bounds. -/
theorem actual_criticalPrimeTest_deriv_first_interval (A t : ℝ) (hA : 40 ≤ A)
    (ht0 : 0 ≤ t) (ht : t ≤ Real.log 2) :
    (5 / 16 : ℝ) ≤ deriv (criticalPrimeTest A) t ∧
      deriv (criticalPrimeTest A) t ≤ (5 / 4 : ℝ) := by
  have hA1 : 1 ≤ A := by linarith
  have hp : 0 < A := by linarith
  have hlog : Real.log 2 ≤ (1 : ℝ) := by
    have h := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)
    linarith
  have hc := sourceCorrelation_sub_one_abs_le hA1 t
  rw [abs_of_nonneg ht0] at hc
  have htbound : 5 * t / A ≤ (1 / 8 : ℝ) := (div_le_iff₀ hp).mpr (by linarith)
  have hcLower : (7 / 8 : ℝ) ≤ sourceCorrelation explicitSecondDerivative A t := by
    linarith [(abs_le.mp hc).1]
  have hcUpper : sourceCorrelation explicitSecondDerivative A t ≤ 1 :=
    (le_abs_self _).trans (actual_correlation_abs_le_one A t hA1)
  have hd := sourceCorrelation_deriv_abs_le_five_div hA1 t
  have hfive : 5 / A ≤ (1 / 8 : ℝ) := (div_le_iff₀ hp).mpr (by linarith)
  have hdlo : -(1 / 8 : ℝ) ≤ deriv (sourceCorrelation explicitSecondDerivative A) t := by
    linarith [(abs_le.mp hd).1]
  have hdhi : deriv (sourceCorrelation explicitSecondDerivative A) t ≤ (1 / 8 : ℝ) := by
    linarith [(abs_le.mp hd).2]
  have helo : 1 ≤ Real.exp (t / 2) := Real.one_le_exp (by linarith)
  have hehi : Real.exp (t / 2) ≤ 2 := by
    calc
      _ ≤ Real.exp (Real.log 2) := Real.exp_le_exp.mpr (by linarith)
      _ = 2 := Real.exp_log (by norm_num)
  rw [criticalPrimeTest_deriv A t hp]
  constructor
  · nlinarith
  · nlinarith [Real.exp_pos (t / 2)]

private theorem linear_integral (c b : ℝ) :
    (∫ t in 0..b, -c * t) = -c / 2 * b ^ 2 := by
  have hd (t : ℝ) : HasDerivAt (fun u : ℝ => -c / 2 * u ^ 2) (-c * t) t := by
    convert ((hasDerivAt_id t).pow 2).const_mul (-c / 2) using 1 <;> simp only [id_eq] <;> ring
  have hi := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t)
    ((by fun_prop : Continuous (fun t : ℝ => -c * t)).intervalIntegrable 0 b)
  simpa using hi

/-- The fixed first-atom head has a uniform lower budget and an actual negative sign. -/
theorem firstAtomHeadWork_signed_bounds (A : ℝ) (hA : 40 ≤ A) :
    -(5 / 8 : ℝ) ≤ firstAtomHeadWork A ∧
      firstAtomHeadWork A ≤ -(5 / 32 : ℝ) * (Real.log 2) ^ 2 := by
  have hp : 0 < A := by linarith
  have hb : 0 ≤ Real.log (2 : ℝ) := Real.log_nonneg (by norm_num)
  have hblog : Real.log (2 : ℝ) ≤ 1 := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]
  have hg := (criticalPrimeTest_contDiff A hp).continuous_deriv_one
  have hf : IntervalIntegrable (fun t : ℝ => -t * deriv (criticalPrimeTest A) t)
      volume 0 (Real.log 2) := (continuous_id.neg.mul hg).intervalIntegrable _ _
  have hlo : (∫ t in 0..Real.log 2, -(5 / 4 : ℝ) * t) ≤
      ∫ t in 0..Real.log 2, -t * deriv (criticalPrimeTest A) t := by
    apply intervalIntegral.integral_mono_on hb
      ((by fun_prop : Continuous (fun t : ℝ => -(5 / 4 : ℝ) * t)).intervalIntegrable _ _) hf
    intro t ht
    have hd := (actual_criticalPrimeTest_deriv_first_interval A t hA ht.1 ht.2).2
    nlinarith
  have hhi : (∫ t in 0..Real.log 2, -t * deriv (criticalPrimeTest A) t) ≤
      ∫ t in 0..Real.log 2, -(5 / 16 : ℝ) * t := by
    apply intervalIntegral.integral_mono_on hb hf
      ((by fun_prop : Continuous (fun t : ℝ => -(5 / 16 : ℝ) * t)).intervalIntegrable _ _)
    intro t ht
    have hd := (actual_criticalPrimeTest_deriv_first_interval A t hA ht.1 ht.2).1
    nlinarith
  rw [linear_integral] at hlo hhi
  rw [firstAtomHeadWork_eq_empty_prefix]
  constructor <;> nlinarith [sq_nonneg (Real.log (2 : ℝ))]

/-- Its sign is proved for the actual source, separately from the tail estimate. -/
theorem firstAtomHeadWork_nonpositive (A : ℝ) (hA : 40 ≤ A) :
    firstAtomHeadWork A ≤ 0 := by
  have h := (firstAtomHeadWork_signed_bounds A hA).2
  nlinarith [sq_nonneg (Real.log (2 : ℝ))]

/-- Exact split of the original finite work; the closed prime-two atom is retained. -/
theorem criticalMangoldtWork_eq_head_add_remaining (A : ℝ) (hA : 1 ≤ A) :
    criticalMangoldtWork A = firstAtomHeadWork A + remainingAtomWork A := by
  have hp : 0 < A := by linarith
  have hb : 0 ≤ Real.log (2 : ℝ) := Real.log_nonneg (by norm_num)
  have hi0 := mangoldtLogError_mul_deriv_intervalIntegrable 0 (Real.log 2) hb
    (criticalPrimeTest A) (criticalPrimeTest_contDiff A hp)
  have hi1 := mangoldtLogError_mul_deriv_intervalIntegrable (Real.log 2) (2 * A)
    (by linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)])
    (criticalPrimeTest A) (criticalPrimeTest_contDiff A hp)
  exact (intervalIntegral.integral_add_adjacent_intervals hi0 hi1).symm

/-- A future signed remaining-tail witness pays only the fixed head budget. -/
theorem criticalMangoldtWork_lower_of_remaining_lower (A D : ℝ) (hA : 40 ≤ A)
    (htail : -D ≤ remainingAtomWork A) :
    -(D + 5 / 8) ≤ criticalMangoldtWork A := by
  rw [criticalMangoldtWork_eq_head_add_remaining A (by linarith)]
  linarith [(firstAtomHeadWork_signed_bounds A hA).1]

/-- The negative actual continuous source correction creates no additional loss. -/
theorem residual_upper_of_remaining_lower (A D : ℝ) (hA : 40 ≤ A)
    (htail : -D ≤ remainingAtomWork A) :
    mertensResidual A ≤ D + 5 / 8 := by
  have hw := criticalMangoldtWork_lower_of_remaining_lower A D hA htail
  have hr := mertensResidual_lt_neg_work (by linarith : 1 ≤ A)
  linarith

/-- Explicit future lower control of the unchanged remaining work suffices at the same radius. -/
theorem estimate_of_remainingAtomWork_tail
    (D R : ℝ) (hD : 0 ≤ D) (hR : 40 ≤ R)
    (htail : ∀ A : ℝ, R ≤ A → -D ≤ remainingAtomWork A) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_mertens_residual_tail
  refine ⟨D + 5 / 8, by linarith, R, by linarith, ?_⟩
  intro A hRA
  exact residual_upper_of_remaining_lower A D (hR.trans hRA) (htail A hRA)

end
end FormalResearch.RiemannHypothesis.SourceFirstAtomSignedWork
```
