# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceLeadingFullKappaReduction.Variant6fb1b860269c6768fba5ebd7228ae292d71a8cff47f74f0f164e0a383f713330

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f7da9ff38c347e360f5c7f0b933314e984a9600f` · SHA-256 `6fb1b860269c6768fba5ebd7228ae292d71a8cff47f74f0f164e0a383f713330`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceFullPositiveKappa
import ActualFourthCorrelationCalibration
import SourceStrictComplementaryLocalization
import SourceSignedSamplingExplicitBudget
import FormalResearch.RiemannHypothesis.SourceCorrelationCurvature

/-!
The literal full positive-axis kappa jet has a leading actual weighted Moebius
sum with a quantitative small remainder. All complementary arithmetic remains
joined to that signed sum. No boundedness witness for either term is assumed.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceLeadingFullKappaReduction

open MeasureTheory Function Set
open scoped BigOperators
open SourcePairing SourceFullPositiveKappa SourceCorrectedOmegaPeanoTaylor
open SourceCorrelationCurvature SourceDerivativeEnergy SourceDerivativeCoefficientBound
open SourceStrictComplementaryLocalization SourceSignedSamplingExplicitBudget
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateVaughanSource EstimateMertensAbel
open RH16IndependentChallengeNext

noncomputable section

private theorem deriv_odd_of_even {f : ℝ → ℝ} (hf : Differentiable ℝ f)
    (he : ∀ t, f (-t) = f t) (t : ℝ) : deriv f (-t) = -deriv f t := by
  have hn := (hf (-t)).hasDerivAt.comp t (hasDerivAt_neg t)
  have hefun : (fun u : ℝ => f (-u)) = f := funext he
  change HasDerivAt (fun u : ℝ => f (-u)) (deriv f (-t) * -1) t at hn
  rw [hefun] at hn
  have hu := (hf t).hasDerivAt.unique hn
  linarith

private theorem deriv_even_of_odd {f : ℝ → ℝ} (hf : Differentiable ℝ f)
    (he : ∀ t, f (-t) = -f t) (t : ℝ) : deriv f (-t) = deriv f t := by
  have hn := (hf (-t)).hasDerivAt.comp t (hasDerivAt_neg t)
  have hefun : (fun u : ℝ => f (-u)) = fun u => -f u := funext he
  change HasDerivAt (fun u : ℝ => f (-u)) (deriv f (-t) * -1) t at hn
  rw [hefun] at hn
  have hu := (hf t).hasDerivAt.neg.unique hn
  linarith

/-- Actual evenness and global C4 regularity retain both odd jets at the origin. -/
theorem actualCorrelation_odd_jets_zero {A : ℝ} (hA : 0 < A) :
    deriv (sourceCorrelation explicitSecondDerivative A) 0 = 0 ∧
    deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) 0 = 0 := by
  let C := sourceCorrelation explicitSecondDerivative A
  have hc := actual_correlation_contDiff_four A hA
  have hd0 : Differentiable ℝ C := hc.differentiable (by norm_num)
  have hd1 : Differentiable ℝ (deriv C) := by
    simpa only [iteratedDeriv_succ, iteratedDeriv_zero] using
      hc.differentiable_iteratedDeriv 1 (by norm_num)
  have hd2 : Differentiable ℝ (deriv (deriv C)) := by
    simpa only [iteratedDeriv_succ, iteratedDeriv_zero] using
      hc.differentiable_iteratedDeriv 2 (by norm_num)
  have he0 : ∀ t, C (-t) = C t := sourceCorrelation_even A
  have he1 := deriv_odd_of_even hd0 he0
  have he2 := deriv_even_of_odd hd1 he1
  have he3 := deriv_odd_of_even hd2 he2
  have hz1 := he1 0
  have hz3 := he3 0
  simp only [neg_zero] at hz1 hz3
  constructor <;> linarith

/-- Finite actual coefficient comparison improves the energy on the relevant scale range. -/
theorem actualDerivativeEnergy_le_twenty {A : ℝ} (hA : 91 ≤ A) :
    A ^ 2 * (∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x) ^ 2) ≤ 20 := by
  have hp : 0 < A := by linarith
  rw [actual_derivative_energy_eq hp]
  let r := (A ^ 2)⁻¹
  have hr0 : 0 ≤ r := by positivity
  have hr1 : r ≤ 1 / 100 := by
    dsimp [r]
    rw [inv_eq_one_div]
    apply (div_le_div_iff₀ (by positivity : 0 < A ^ 2) (by norm_num : (0 : ℝ) < 100)).2
    nlinarith
  apply (div_le_iff₀ (normPolynomial_pos r hr0)).2
  have hr2 : r ^ 2 ≤ r / 100 := by nlinarith
  unfold derivativePolynomial normPolynomial
  nlinarith [sq_nonneg r]

/-- The actual curvature has coefficient twenty at all real separations for A>=91. -/
theorem actualCorrelation_second_abs_le_twenty {A : ℝ} (hA : 91 ≤ A) (t : ℝ) :
    |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t| ≤ 20 / A ^ 2 := by
  apply (sourceCorrelation_second_deriv_abs_le_energy (by linarith : 0 < A) t).trans
  apply (le_div_iff₀ (by positivity : 0 < A ^ 2)).2
  simpa only [mul_comm] using actualDerivativeEnergy_le_twenty hA

/-- The third actual jet has a small increment from its genuine odd zero at the origin. -/
theorem actualCorrelation_third_abs_le {A : ℝ} (hA : 91 ≤ A) (t : ℝ) :
    |deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t| ≤
      67 / A ^ 4 * |t| := by
  have hp : 0 < A := by linarith
  have hc := actual_correlation_contDiff_four A hp
  have hd : Differentiable ℝ
      (deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A)))) := by
    simpa only [iteratedDeriv_succ, iteratedDeriv_zero] using
      hc.differentiable_iteratedDeriv 3 (by norm_num)
  have he := Convex.norm_image_sub_le_of_norm_deriv_le
    (s := Set.univ) (f := deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))))
    (fun x _ => hd x)
    (fun x _ => by simpa only [Real.norm_eq_abs] using
      actual_correlation_fourth_abs_le_sixty_seven A x hA)
    convex_univ (mem_univ (0 : ℝ)) (mem_univ t)
  simpa only [Real.norm_eq_abs, (actualCorrelation_odd_jets_zero hp).2, sub_zero] using he

/-- The genuine first jet grows only linearly from its actual zero. -/
theorem actualCorrelation_first_abs_le {A : ℝ} (hA : 91 ≤ A) (t : ℝ) :
    |deriv (sourceCorrelation explicitSecondDerivative A) t| ≤ 20 / A ^ 2 * |t| := by
  have hp : 0 < A := by linarith
  have he := Convex.norm_image_sub_le_of_norm_deriv_le
    (s := Set.univ) (f := deriv (sourceCorrelation explicitSecondDerivative A))
    (fun x _ => (sourceCorrelation_deriv_contDiff hp).differentiable (by norm_num) x)
    (fun x _ => by simpa only [Real.norm_eq_abs] using
      actualCorrelation_second_abs_le_twenty hA x)
    convex_univ (mem_univ (0 : ℝ)) (mem_univ t)
  simpa only [Real.norm_eq_abs, (actualCorrelation_odd_jets_zero hp).1, sub_zero] using he

/-- The actual normalized correlation deviates quadratically from its genuine unit value. -/
theorem actualCorrelation_sub_one_abs_le {A : ℝ} (hA : 91 ≤ A) (t : ℝ) :
    |sourceCorrelation explicitSecondDerivative A t - 1| ≤ 10 / A ^ 2 * t ^ 2 := by
  have hp : 0 < A := by linarith
  by_cases ht : t = 0
  · subst t
    simp [EstimateCorrelation.actual_correlation_at_zero A (by linarith : 1 ≤ A)]
  have hf := sourceCorrelation_contDiff_two hp
  obtain ⟨z, _, hz⟩ := taylor_mean_remainder_lagrange_iteratedDeriv
    (n := 1) (show (0 : ℝ) ≠ t from Ne.symm ht) hf.contDiffOn
  have hT : taylorWithinEval (sourceCorrelation explicitSecondDerivative A) 1
      (uIcc 0 t) 0 t = 1 := by
    rw [show (1 : ℕ) = 0 + 1 from rfl, taylorWithinEval_succ]
    simp only [taylor_within_zero_eval, Nat.cast_zero, zero_add, Nat.factorial_zero,
      Nat.cast_one, mul_one, inv_one, one_mul, pow_one, smul_eq_mul,
      iteratedDerivWithin_one, sub_zero]
    rw [((hf.differentiable (by norm_num)) 0).derivWithin
      ((uniqueDiffOn_uIcc (show (0 : ℝ) ≠ t from Ne.symm ht)) 0 left_mem_uIcc),
      (actualCorrelation_odd_jets_zero hp).1,
      EstimateCorrelation.actual_correlation_at_zero A (by linarith : 1 ≤ A)]
    simp
  rw [hT] at hz
  simp only [iteratedDeriv_succ, iteratedDeriv_zero, Nat.factorial_succ,
    Nat.factorial_zero, Nat.cast_mul, mul_one, sub_zero] at hz
  have hE : sourceCorrelation explicitSecondDerivative A t - 1 =
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) z * t ^ 2 / 2 := by
    linarith [hz]
  rw [hE, abs_div, abs_mul, abs_of_nonneg (sq_nonneg t),
    abs_of_pos (by norm_num : (0 : ℝ) < 2)]
  calc
    _ ≤ (20 / A ^ 2) * t ^ 2 / 2 := by
      gcongr
      exact actualCorrelation_second_abs_le_twenty hA z
    _ = _ := by ring

/-- Independent signed main term, with the actual cutoff and actual Moebius coefficients. -/
def actualWeightedMoebiusHalfSum (A : ℝ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d / Real.sqrt (d : ℝ)

/-- The full literal short jet inventory, before any leading-term approximation. -/
def actualFullKappaShortSector (A : ℝ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d / Real.sqrt (d : ℝ) *
    correctedFourKappaJet A (Real.log (d : ℝ))

/-- Every finite constant is a genuine full positive-axis coefficient integral. -/
def fullKappaJetRowBudget (A T : ℝ) : ℝ :=
  (10 * |fullPositiveKappa 1| * T ^ 2 + 20 * |fullPositiveKappa 2| * T +
    10 * |fullPositiveKappa 3|) / A ^ 2 +
    (67 / 6 : ℝ) * |fullPositiveKappa 4| * T / A ^ 4

/-- The actual signed four-jet row is controlled relative to its true leading coefficient. -/
theorem fullKappaJet_sub_leading_abs_le {A t T : ℝ} (hA : 91 ≤ A)
    (ht : 0 ≤ t) (htT : t ≤ T) :
    |correctedFourKappaJet A t - fullPositiveKappa 1| ≤ fullKappaJetRowBudget A T := by
  have hT : 0 ≤ T := ht.trans htT
  have hC := actualCorrelation_sub_one_abs_le hA t
  have hD := actualCorrelation_first_abs_le hA t
  have hDD := actualCorrelation_second_abs_le_twenty hA t
  have hDDD := actualCorrelation_third_abs_le hA t
  rw [abs_of_nonneg ht] at hD hDDD
  have hE : correctedFourKappaJet A t - fullPositiveKappa 1 =
      fullPositiveKappa 1 * (sourceCorrelation explicitSecondDerivative A t - 1) +
      fullPositiveKappa 2 * deriv (sourceCorrelation explicitSecondDerivative A) t +
      (fullPositiveKappa 3 / 2) *
        deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t +
      (fullPositiveKappa 4 / 6) *
        deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t := by
    rw [correctedFourKappaJet_eq_full_positive_jet]
    norm_num [Finset.sum_range_succ, iteratedDeriv_succ, iteratedDeriv_zero, Nat.factorial]
    ring
  rw [hE]
  calc
    _ ≤ |fullPositiveKappa 1| * |sourceCorrelation explicitSecondDerivative A t - 1| +
        |fullPositiveKappa 2| * |deriv (sourceCorrelation explicitSecondDerivative A) t| +
        (|fullPositiveKappa 3| / 2) *
          |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t| +
        (|fullPositiveKappa 4| / 6) *
          |deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t| := by
      let a := fullPositiveKappa 1 * (sourceCorrelation explicitSecondDerivative A t - 1)
      let b := fullPositiveKappa 2 * deriv (sourceCorrelation explicitSecondDerivative A) t
      let c := (fullPositiveKappa 3 / 2) *
        deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t
      let d := (fullPositiveKappa 4 / 6) *
        deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t
      have hs : |a + b + c + d| ≤ |a| + |b| + |c| + |d| := by
        linarith only [abs_add_le a b, abs_add_le (a + b) c, abs_add_le (a + b + c) d]
      simpa only [a, b, c, d, abs_mul, abs_div,
        abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2),
        abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 6)] using hs
    _ ≤ |fullPositiveKappa 1| * (10 / A ^ 2 * T ^ 2) +
        |fullPositiveKappa 2| * (20 / A ^ 2 * T) +
        (|fullPositiveKappa 3| / 2) * (20 / A ^ 2) +
        (|fullPositiveKappa 4| / 6) * (67 / A ^ 4 * T) := by
      apply add_le_add
      · apply add_le_add
        · apply add_le_add
          · apply mul_le_mul_of_nonneg_left _ (abs_nonneg _)
            exact hC.trans (by gcongr)
          · apply mul_le_mul_of_nonneg_left _ (abs_nonneg _)
            exact hD.trans (by gcongr)
        · exact mul_le_mul_of_nonneg_left hDD (by positivity)
      · apply mul_le_mul_of_nonneg_left _ (by positivity)
        exact hDDD.trans (by gcongr)
    _ = _ := by unfold fullKappaJetRowBudget; ring

/-- The actual row budget sums using the complete 1..U absolute mass, without a signed witness. -/
def fullKappaShortBudget (A : ℝ) : ℝ :=
  2 * A * fullKappaJetRowBudget A (Real.log (vaughanCutoff A : ℝ))

/-- All actual short jets equal their leading signed weighted sum up to this explicit error. -/
theorem actualFullKappaShort_sub_leading_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |actualFullKappaShortSector A - fullPositiveKappa 1 * actualWeightedMoebiusHalfSum A| ≤
      fullKappaShortBudget A := by
  have hA1 : 1 ≤ A := by linarith
  let U := vaughanCutoff A
  let T := Real.log (U : ℝ)
  let D := fullKappaJetRowBudget A T
  have hU : 1 ≤ U := vaughanCutoff_pos A hA1
  have hT : 0 ≤ T := Real.log_nonneg (by exact_mod_cast hU)
  have hD : 0 ≤ D := by unfold D fullKappaJetRowBudget; positivity
  have hrow (d : ℕ) (hd : d ∈ Finset.Icc 1 U) :
      |correctedFourKappaJet A (Real.log (d : ℝ)) - fullPositiveKappa 1| ≤ D := by
    have hd1 : (1 : ℝ) ≤ d := by exact_mod_cast (Finset.mem_Icc.mp hd).1
    have hdU : (d : ℝ) ≤ U := by exact_mod_cast (Finset.mem_Icc.mp hd).2
    apply fullKappaJet_sub_leading_abs_le hA (Real.log_nonneg hd1)
    exact Real.log_le_log (by linarith : (0 : ℝ) < d) hdU
  have hE : actualFullKappaShortSector A -
      fullPositiveKappa 1 * actualWeightedMoebiusHalfSum A =
      ∑ d ∈ Finset.Icc 1 U, realMoebius d / Real.sqrt (d : ℝ) *
        (correctedFourKappaJet A (Real.log (d : ℝ)) - fullPositiveKappa 1) := by
    unfold actualFullKappaShortSector actualWeightedMoebiusHalfSum
    rw [Finset.mul_sum, ← Finset.sum_sub_distrib]
    apply Finset.sum_congr rfl
    intro d _
    ring
  rw [hE]
  calc
    _ ≤ ∑ d ∈ Finset.Icc 1 U, |realMoebius d| / Real.sqrt (d : ℝ) * D := by
      apply (Finset.abs_sum_le_sum_abs _ _).trans
      apply Finset.sum_le_sum
      intro d hd
      rw [abs_mul, abs_div, abs_of_nonneg (Real.sqrt_nonneg _)]
      exact mul_le_mul_of_nonneg_left (hrow d hd) (by positivity)
    _ = (∑ d ∈ Finset.Icc 1 U, |realMoebius d| / Real.sqrt (d : ℝ)) * D :=
      (Finset.sum_mul _ _ _).symm
    _ ≤ 2 * A * D := mul_le_mul_of_nonneg_right (actualMoebiusSqrtMass_le A hA1) hD
    _ = fullKappaShortBudget A := rfl

/-- The explicit complete error has logarithmic numerator and inverse scale decay. -/
theorem fullKappaShortBudget_eq {A : ℝ} (hA : 0 < A) :
    fullKappaShortBudget A =
      (20 * |fullPositiveKappa 1| * (Real.log (vaughanCutoff A : ℝ)) ^ 2 +
        40 * |fullPositiveKappa 2| * Real.log (vaughanCutoff A : ℝ) +
        20 * |fullPositiveKappa 3|) / A +
      (67 / 3 : ℝ) * |fullPositiveKappa 4| * Real.log (vaughanCutoff A : ℝ) / A ^ 3 := by
  unfold fullKappaShortBudget fullKappaJetRowBudget
  field_simp
  ring

/-- The genuine complementary tail is joined to the literal leading signed arithmetic sum. -/
def actualLeadingKappaAndTail (A : ℝ) : ℝ :=
  fullPositiveKappa 1 * actualWeightedMoebiusHalfSum A + complementarySignedTail A

/-- Exact full-source assembly retains the separately proved early contribution. -/
theorem correctedCompleteOmega_eq_short_early_tail {A : ℝ} (hA : 1 ≤ A) :
    correctedCompleteOmega A = actualFullKappaShortSector A +
      complementaryEarlyBaseline A + complementarySignedTail A := by
  have hL := literal_L_sub_plain_eq_early_add_tail A hA
  unfold correctedCompleteOmega actualFullKappaShortSector
  linarith only [hL]

/-- The full corrected source differs from its genuine leading, early and tail terms
by the actual small error. -/
theorem correctedCompleteOmega_sub_leading_early_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |correctedCompleteOmega A -
      (actualLeadingKappaAndTail A + complementaryEarlyBaseline A)| ≤ fullKappaShortBudget A := by
  rw [correctedCompleteOmega_eq_short_early_tail (by linarith : 1 ≤ A)]
  unfold actualLeadingKappaAndTail
  convert actualFullKappaShort_sub_leading_abs_le hA using 1
  congr 1
  ring

end
end FormalResearch.RiemannHypothesis.SourceLeadingFullKappaReduction
```
