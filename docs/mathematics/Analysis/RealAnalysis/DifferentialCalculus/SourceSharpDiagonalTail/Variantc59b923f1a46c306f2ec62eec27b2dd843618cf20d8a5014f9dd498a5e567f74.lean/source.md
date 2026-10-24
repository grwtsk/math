# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceSharpDiagonalTail.Variantc59b923f1a46c306f2ec62eec27b2dd843618cf20d8a5014f9dd498a5e567f74

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ad70fca06768266d3e17312d181230123910dc41` · SHA-256 `c59b923f1a46c306f2ec62eec27b2dd843618cf20d8a5014f9dd498a5e567f74`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceExactTailEnergy
import SourceDiagonalAbelReview
import FormalResearch.RiemannHypothesis.SourceDiagonalShortWindow
import FormalResearch.RiemannHypothesis.SourceDiagonalMainTerm
import Mathlib.Analysis.Complex.ExponentialBounds

/-!
Exact source-energy replacement for the actual prime diagonal's variation and
moving-floor lower window. The elementary prime constant is inherited; no
uniform signed arithmetic readout witness is supplied.
Direction and conceptual origin: grwtsk contributors.
Source calculation and native formalization: OpenAI Codex assistance.
-/
set_option autoImplicit false
noncomputable section
namespace RH16SharpDiagonalTail
open MeasureTheory Set
open RH16ExactTailEnergy
open FormalResearch.RiemannHypothesis
open SourcePairing SourceCorrelationCurvature SourceDiagonalPrimeAbel
open SourceDiagonalShortWindow SourceDiagonalMainTerm WeightedPrimeAbel VaughanDiagonalAbelReview
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanTranslationGate
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateCorrelation

private theorem actual_deriv_zero (A : ℝ) (hA : 0 < A) :
    deriv (sourceCorrelation explicitSecondDerivative A) 0 = 0 := by
  have hc := ((contDiff_one_iff_deriv.mp (sourceCorrelation_contDiff A hA)).1 0).hasDerivAt
  have hcn : HasDerivAt (sourceCorrelation explicitSecondDerivative A)
      (deriv (sourceCorrelation explicitSecondDerivative A) 0) (-(0 : ℝ)) := by
    simpa only [neg_zero] using hc
  have hn : HasDerivAt (fun u : ℝ => sourceCorrelation explicitSecondDerivative A (-u))
      (-deriv (sourceCorrelation explicitSecondDerivative A) 0) 0 := by
    simpa only [neg_zero, mul_neg_one, Function.comp_def] using
      hcn.comp 0 (hasDerivAt_neg (0 : ℝ))
  have he : (fun u : ℝ => sourceCorrelation explicitSecondDerivative A (-u)) =
      sourceCorrelation explicitSecondDerivative A := funext (sourceCorrelation_even A)
  rw [he] at hn
  linarith [hc.unique hn]

/-- The exact radius energy calibrates the actual quadratic remainder at zero. -/
theorem actual_zero_taylor_tail {Q A : ℝ} (hQ : 1 ≤ Q) (hQA : Q ≤ A) (t : ℝ) :
    |sourceCorrelation explicitSecondDerivative A t - 1| ≤
      tailEnergyCoefficient Q / A ^ 2 * t ^ 2 / 2 := by
  have hp : 0 < A := by linarith
  by_cases ht : t = 0
  · subst t
    rw [actual_correlation_at_zero A (hQ.trans hQA)]
    norm_num
  have hne : (0 : ℝ) ≠ t := Ne.symm ht
  have hf := sourceCorrelation_contDiff_two hp
  obtain ⟨z, _, hz⟩ := taylor_mean_remainder_lagrange_iteratedDeriv (n := 1) hne hf.contDiffOn
  have he : taylorWithinEval (sourceCorrelation explicitSecondDerivative A) 1
      (uIcc 0 t) 0 t = (1 : ℝ) := by
    rw [show (1 : ℕ) = 0 + 1 from rfl, taylorWithinEval_succ]
    simp only [taylor_within_zero_eval, Nat.cast_zero, zero_add, Nat.factorial_zero,
      Nat.cast_one, mul_one, inv_one, one_mul, pow_one, smul_eq_mul, iteratedDerivWithin_one,
      sub_zero]
    rw [((hf.differentiable (by norm_num)) 0).derivWithin
      ((uniqueDiffOn_uIcc hne) 0 (left_mem_uIcc)), actual_deriv_zero A hp,
      actual_correlation_at_zero A (hQ.trans hQA)]
    ring
  rw [he] at hz
  simp only [iteratedDeriv_succ, iteratedDeriv_zero, Nat.factorial_succ,
    Nat.factorial_zero, Nat.cast_mul, mul_one, sub_zero] at hz
  have heq : sourceCorrelation explicitSecondDerivative A t - 1 =
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) z * t ^ 2 / 2 := by
    linarith [hz]
  rw [heq, abs_div, abs_mul, abs_of_nonneg (sq_nonneg t),
    abs_of_pos (by norm_num : (0 : ℝ) < 2)]
  gcongr
  exact actual_correlation_second_deriv_abs_le_tail hQ hQA z

/-- Exact simultaneous radius control of the actual diagonal derivative. -/
theorem diagonal_deriv_abs_le_tail {Q A : ℝ} (hQ : 1 ≤ Q) (hQA : Q ≤ A) (t : ℝ) :
    |deriv (diagonalCorrelation A) t| ≤ 2 * Real.sqrt (tailEnergyCoefficient Q) / A := by
  rw [diagonalCorrelation_deriv A t (by linarith), abs_mul,
    abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2)]
  calc
    _ ≤ 2 * (Real.sqrt (tailEnergyCoefficient Q) / A) :=
      mul_le_mul_of_nonneg_left (actual_correlation_deriv_abs_le_tail hQ hQA (2*t))
        (by norm_num)
    _ = _ := by ring

/-- A subwindow of the physical diagonal support costs at most twice sqrt(delta). -/
theorem diagonal_variation_le_tail {Q A a b : ℝ} (hQ : 1 ≤ Q) (hQA : Q ≤ A)
    (ha : 0 ≤ a) (hab : a ≤ b) (hb : b ≤ A) :
    (∫ t in a..b, |deriv (diagonalCorrelation A) t|) ≤
      2 * Real.sqrt (tailEnergyCoefficient Q) := by
  have hc := (diagonalCorrelation_contDiff A (by linarith)).continuous_deriv_one.abs
  have hi : (∫ t in a..b, |deriv (diagonalCorrelation A) t|) ≤
      ∫ t in a..b, (2 * Real.sqrt (tailEnergyCoefficient Q) / A : ℝ) :=
    intervalIntegral.integral_mono_on hab (hc.intervalIntegrable a b)
      (continuous_const.intervalIntegrable a b) (fun t _ => diagonal_deriv_abs_le_tail hQ hQA t)
  rw [intervalIntegral.integral_const] at hi
  simp only [smul_eq_mul] at hi
  have hp : 0 < A := by linarith
  apply hi.trans
  rw [← mul_div_assoc]
  apply (div_le_iff₀ hp).mpr
  nlinarith [Real.sqrt_nonneg (tailEnergyCoefficient Q)]

/-- The actual lower correction is cubic in its unaltered physical logarithmic endpoint. -/
theorem diagonal_short_integral_error_tail {Q A : ℝ} (hQ : 1 ≤ Q) (hQA : Q ≤ A)
    (L : ℝ) (hL : 0 ≤ L) :
    |(∫ t in 0..L, diagonalCorrelation A t) - L| ≤
      2 * tailEnergyCoefficient Q * L ^ 3 / (3 * A ^ 2) := by
  have hc := (diagonalCorrelation_contDiff A (by linarith)).continuous
  have he : (∫ t in 0..L, diagonalCorrelation A t) - L =
      ∫ t in 0..L, diagonalCorrelation A t - 1 := by
    rw [intervalIntegral.integral_sub (hc.intervalIntegrable _ _)
      (continuous_const.intervalIntegrable _ _), intervalIntegral.integral_const]
    simp
  have ht (t : ℝ) : |diagonalCorrelation A t - 1| ≤
      (2 * tailEnergyCoefficient Q / A ^ 2) * t ^ 2 := by
    have h := actual_zero_taylor_tail hQ hQA (2*t)
    change |diagonalCorrelation A t - 1| ≤ _ at h
    convert h using 1
    ring
  rw [he]
  calc
    _ ≤ ∫ t in 0..L, |diagonalCorrelation A t - 1| :=
      intervalIntegral.abs_integral_le_integral_abs hL
    _ ≤ ∫ t in 0..L, (2 * tailEnergyCoefficient Q / A ^ 2) * t ^ 2 :=
      intervalIntegral.integral_mono_on hL
        ((hc.sub continuous_const).abs.intervalIntegrable _ _)
        ((continuous_const.mul (continuous_id.pow 2)).intervalIntegrable _ _)
        (fun t _ => ht t)
    _ = _ := by
      rw [intervalIntegral.integral_const_mul, integral_pow]
      norm_num
      ring

private theorem log_ge_three_halves {x : ℝ} (hx : 91 ≤ x) : 3 / 2 ≤ Real.log x := by
  have hm := Real.log_le_log (by norm_num : (0 : ℝ) < 8) (by linarith : (8 : ℝ) ≤ x)
  have he : Real.log (8 : ℝ) = 3 * Real.log 2 := by
    rw [show (8 : ℝ) = 2 ^ 3 by norm_num, Real.log_pow]
    norm_num
  rw [he] at hm
  linarith [Real.log_two_gt_d9]

/-- The needed logarithmic quotient is monotone on the admitted real tail. -/
theorem log_cube_div_square_le {Q A : ℝ} (hQ : 91 ≤ Q) (hQA : Q ≤ A) :
    Real.log A ^ 3 / A ^ 2 ≤ Real.log Q ^ 3 / Q ^ 2 := by
  let f := fun x : ℝ => Real.log x ^ 3 / x ^ 2
  have hd (x : ℝ) (hx : 91 ≤ x) : HasDerivAt f
      (Real.log x ^ 2 * (3 - 2 * Real.log x) / x ^ 3) x := by
    have hx0 : x ≠ 0 := by linarith
    have ht := ((Real.hasDerivAt_log hx0).pow 3).div ((hasDerivAt_id x).pow 2)
      (pow_ne_zero 2 hx0)
    convert ht using 1
    all_goals field_simp
    all_goals ring
  have hf : ContinuousOn f (Ici 91) := by
    intro x hx
    exact (hd x hx).continuousAt.continuousWithinAt
  have hm : AntitoneOn f (Ici 91) :=
    antitoneOn_of_hasDerivWithinAt_nonpos (convex_Ici 91) hf
      (fun x hx => (hd x ((interior_subset hx))).hasDerivWithinAt)
      (fun x hx => by
        have hxx : 91 ≤ x := interior_subset hx
        have hx0 : 0 < x := by linarith
        have hl := log_ge_three_halves hxx
        exact div_nonpos_of_nonpos_of_nonneg
          (mul_nonpos_of_nonneg_of_nonpos (sq_nonneg _) (by linarith)) (by positivity))
  exact hm hQ (hQ.trans hQA) hQA

/-- Moving floor retained, with an explicit radius-dependent replacement for eighty. -/
theorem floor_square_short_error_tail {Q A : ℝ} (hQ : 91 ≤ Q) (hQA : Q ≤ A) :
    |(∫ t in 0..Real.log (⌊A ^ 2⌋₊ : ℝ), diagonalCorrelation A t) -
      Real.log (⌊A ^ 2⌋₊ : ℝ)| ≤
      16 * tailEnergyCoefficient Q * Real.log Q ^ 3 / (3 * Q ^ 2) := by
  have hQ1 : 1 ≤ Q := by linarith
  have hA1 := hQ1.trans hQA
  have hL0 := (floor_square_log_bounds A hA1).1
  have hfloor : (1 : ℝ) ≤ ⌊A ^ 2⌋₊ := by
    exact_mod_cast (Nat.one_le_floor_iff _).mpr (by nlinarith : (1 : ℝ) ≤ A ^ 2)
  have hLA : Real.log (⌊A ^ 2⌋₊ : ℝ) ≤ 2 * Real.log A := by
    calc
      _ ≤ Real.log (A ^ 2) := Real.log_le_log (by linarith) (Nat.floor_le (sq_nonneg A))
      _ = _ := by rw [Real.log_pow]; norm_num
  have hcube : Real.log (⌊A ^ 2⌋₊ : ℝ) ^ 3 ≤ (2 * Real.log A) ^ 3 :=
    pow_le_pow_left₀ hL0 hLA 3
  have hg := (tailEnergyCoefficient_pos Q).le
  have hlog := log_cube_div_square_le hQ hQA
  calc
    _ ≤ 2 * tailEnergyCoefficient Q * Real.log (⌊A ^ 2⌋₊ : ℝ) ^ 3 / (3 * A ^ 2) :=
      diagonal_short_integral_error_tail hQ1 hQA _ hL0
    _ ≤ 2 * tailEnergyCoefficient Q * (2 * Real.log A) ^ 3 / (3 * A ^ 2) :=
      div_le_div_of_nonneg_right (mul_le_mul_of_nonneg_left hcube (by positivity))
        (by positivity)
    _ = (16 * tailEnergyCoefficient Q / 3) * (Real.log A ^ 3 / A ^ 2) := by ring
    _ ≤ (16 * tailEnergyCoefficient Q / 3) * (Real.log Q ^ 3 / Q ^ 2) :=
      mul_le_mul_of_nonneg_left hlog (by positivity)
    _ = _ := by ring

/-- Existing elementary prime error, actual support and exact lower correction compose. -/
theorem retainedPrimeDiagonal_tail_error_of_primeLogError (CM : ℝ) (hCM0 : 0 ≤ CM)
    (hCM : ∀ t : ℝ, 0 ≤ t → |primeLogError t| ≤ CM)
    {Q A : ℝ} (hQ : 91 ≤ Q) (hQA : Q ≤ A) :
    |retainedPrimeDiagonal A + diagonalMainCoefficient A * A -
      Real.log (⌊A ^ 2⌋₊ : ℝ)| ≤
      CM * (1 + 2 * Real.sqrt (tailEnergyCoefficient Q)) +
        16 * tailEnergyCoefficient Q * Real.log Q ^ 3 / (3 * Q ^ 2) := by
  have hQ1 : 1 ≤ Q := by linarith
  have hA1 := hQ1.trans hQA
  have hp : 0 < A := by linarith
  have hlo := floor_square_log_bounds A hA1
  have hc := (diagonalCorrelation_contDiff A hp).continuous
  have he := primeLogWindow_error_le (Real.log (⌊A ^ 2⌋₊ : ℝ)) A hlo.1 hlo.2
    (diagonalCorrelation A) (diagonalCorrelation_contDiff A hp) CM hCM
  have hv := diagonal_variation_le_tail hQ1 hQA hlo.1 hlo.2 le_rfl
  have hleft := diagonalCorrelation_abs_le_one A (Real.log (⌊A ^ 2⌋₊ : ℝ)) hA1
  rw [diagonalCorrelation_at_upper A hp, abs_zero, add_zero] at he
  have heb : |retainedPrimeDiagonal A +
      (∫ t in Real.log (⌊A ^ 2⌋₊ : ℝ)..A, diagonalCorrelation A t)| ≤
      CM * (1 + 2 * Real.sqrt (tailEnergyCoefficient Q)) := by
    rw [retainedPrimeDiagonal_eq_window A hA1]
    have hs : |-primeLogWindow (Real.log (⌊A ^ 2⌋₊ : ℝ)) A (diagonalCorrelation A) +
        (∫ t in Real.log (⌊A ^ 2⌋₊ : ℝ)..A, diagonalCorrelation A t)| =
        |primeLogWindow (Real.log (⌊A ^ 2⌋₊ : ℝ)) A (diagonalCorrelation A) -
          (∫ t in Real.log (⌊A ^ 2⌋₊ : ℝ)..A, diagonalCorrelation A t)| := by
      rw [← abs_neg]
      congr 1
      ring
    rw [hs]
    exact he.trans (mul_le_mul_of_nonneg_left (add_le_add hleft hv) hCM0)
  have hs := floor_square_short_error_tail hQ hQA
  have hadd := intervalIntegral.integral_add_adjacent_intervals
    (hc.intervalIntegrable (μ := volume) 0 (Real.log (⌊A ^ 2⌋₊ : ℝ)))
    (hc.intervalIntegrable (μ := volume) (Real.log (⌊A ^ 2⌋₊ : ℝ)) A)
  rw [diagonalCorrelation_integral A hA1] at hadd
  calc
    _ = |(retainedPrimeDiagonal A +
      (∫ t in Real.log (⌊A ^ 2⌋₊ : ℝ)..A, diagonalCorrelation A t)) +
      ((∫ t in 0..Real.log (⌊A ^ 2⌋₊ : ℝ), diagonalCorrelation A t) -
        Real.log (⌊A ^ 2⌋₊ : ℝ))| := by congr 1; linarith [hadd]
    _ ≤ _ := abs_add_le _ _
    _ ≤ _ := add_le_add heb hs

/-- One inherited elementary arithmetic constant works for every admitted tail radius. -/
theorem retainedPrimeDiagonal_sharp_tail_error :
    ∃ CM : ℝ, 0 ≤ CM ∧ ∀ Q A : ℝ, 91 ≤ Q → Q ≤ A →
      |retainedPrimeDiagonal A + diagonalMainCoefficient A * A -
        Real.log (⌊A ^ 2⌋₊ : ℝ)| ≤
      CM * (1 + 2 * Real.sqrt (tailEnergyCoefficient Q)) +
        16 * tailEnergyCoefficient Q * Real.log Q ^ 3 / (3 * Q ^ 2) := by
  obtain ⟨CM, hCM0, hCM⟩ := primeLogError_uniformly_bounded
  exact ⟨CM, hCM0, fun Q A hQ hQA =>
    retainedPrimeDiagonal_tail_error_of_primeLogError CM hCM0 hCM hQ hQA⟩

/-- A separately proved complete proper-power error composes without changing its source. -/
theorem typeTwoDiagonal_tail_error_of_proper_bound (CM : ℝ) (hCM0 : 0 ≤ CM)
    (hCM : ∀ t : ℝ, 0 ≤ t → |primeLogError t| ≤ CM)
    {Q A : ℝ} (hQ : 91 ≤ Q) (hQA : Q ≤ A) (g : ℝ)
    (hproper : |typeTwoDiagonal A - retainedPrimeDiagonal A| ≤ g) :
    |typeTwoDiagonal A + diagonalMainCoefficient A * A -
      Real.log (⌊A ^ 2⌋₊ : ℝ)| ≤
      g + CM * (1 + 2 * Real.sqrt (tailEnergyCoefficient Q)) +
        16 * tailEnergyCoefficient Q * Real.log Q ^ 3 / (3 * Q ^ 2) := by
  have hp := retainedPrimeDiagonal_tail_error_of_primeLogError CM hCM0 hCM hQ hQA
  calc
    _ = |(typeTwoDiagonal A - retainedPrimeDiagonal A) +
        (retainedPrimeDiagonal A + diagonalMainCoefficient A * A -
          Real.log (⌊A ^ 2⌋₊ : ℝ))| := by congr 1; ring
    _ ≤ _ := abs_add_le _ _
    _ ≤ _ := by linarith [add_le_add hproper hp]

/-- Existing proper-power control gives an unconditional native full diagonal tail cost. -/
theorem actual_typeTwoDiagonal_sharp_tail_error :
    ∃ Cpp CM : ℝ, 0 ≤ Cpp ∧ 0 ≤ CM ∧ ∀ Q A : ℝ, 91 ≤ Q → Q ≤ A →
      |typeTwoDiagonal A + diagonalMainCoefficient A * A -
        Real.log (⌊A ^ 2⌋₊ : ℝ)| ≤
      Cpp + CM * (1 + 2 * Real.sqrt (tailEnergyCoefficient Q)) +
        16 * tailEnergyCoefficient Q * Real.log Q ^ 3 / (3 * Q ^ 2) := by
  obtain ⟨Cpp, hCpp0, hCpp⟩ := actual_diagonal_minus_inventory_prime_bounded
  obtain ⟨CM, hCM0, hCM⟩ := primeLogError_uniformly_bounded
  refine ⟨Cpp, CM, hCpp0, hCM0, ?_⟩
  intro Q A hQ hQA
  have hA1 : 1 ≤ A := by linarith
  have hp := hCpp A hA1
  rw [inventoryPrimeDiagonal_eq_retainedPrimeDiagonal A hA1] at hp
  exact typeTwoDiagonal_tail_error_of_proper_bound CM hCM0 hCM hQ hQA Cpp hp

end RH16SharpDiagonalTail
```
