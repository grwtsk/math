/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilNormalizedPrimeWeightMidpoint

/-! # Real character samples in the normalized-code prime term -/

set_option autoImplicit false

open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open CharacterWindow FirstPrimeWindow LowSchur SourcePrimeCorrelation
open GRWTSK.RealFunctions

/-- Since the correlation samples are real, enclosing the real part of the
character suffices to replace the exact conjugated phase in the midpoint
center. The finite sum uses the original active inventory. -/
theorem abs_twistedPrime_normalizedCode_sub_realPhaseSamples_le
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) (j : ℕ) (cs : List ℚ)
    (kShift kWeight : ℕ → ℕ) {d : ℕ} (hd : 0 < d) (P D : ℕ → ℚ)
    (hPhase : ∀ n ∈ activePrimePowers ((j : ℝ) + 1),
      |(χ n).re - (P n : ℝ)| ≤ (D n : ℝ)) :
    let T : ℝ := (j : ℝ) + 1
    let A := activePrimePowers T
    let Q := fun n : ℕ => rationalStageCorrelationEnclosure j cs
      (rationalLogEnclosure n (kShift n)).1 (rationalLogEnclosure n (kShift n)).2
    let B := fun n => inventoryPrimeWeightEnclosure n (kWeight n) d
    let M := fun n => ((B n).1 + (B n).2) / 2
    let R := fun n => ((B n).2 - (B n).1) / 2
    let center : ℚ := 2 * ∑ n ∈ A, M n * (Q n).1 * P n
    |twistedPrime T χ (fun n => correlation
        (liftReal (primitiveStageMassTestOfNormalizedCode χ j cs).val) (Real.log (n : ℝ))) -
      (center : ℝ)| ≤
      (2 * ∑ n ∈ A, (B n).2 * ‖χ n‖ * ((Q n).2 : ℝ) +
        2 * ∑ n ∈ A, (R n : ℝ) * (‖χ n‖ * ‖((Q n).1 : ℂ)‖)) +
      ((2 * ∑ n ∈ A, |M n * (Q n).1| * D n : ℚ) : ℝ) := by
  intro T A Q B M R center
  let exactCenter := primeReadout A
    (fun n => ((M n : ℝ) : ℂ) * (conj (χ n) * ((Q n).1 : ℂ)))
  have hmid := abs_twistedPrime_normalizedCode_sub_weightMidpoints_le χ j cs kShift kWeight hd
  have hphaseErr : |exactCenter - (center : ℝ)| ≤
      ((2 * ∑ n ∈ A, |M n * (Q n).1| * D n : ℚ) : ℝ) := by
    dsimp only [exactCenter, center, primeReadout]
    simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, Complex.conj_re,
      Complex.ratCast_re, Complex.ratCast_im, mul_zero, zero_mul, sub_zero,
      Rat.cast_mul, Rat.cast_ofNat, Rat.cast_sum, Rat.cast_abs]
    rw [← mul_sub, ← Finset.sum_sub_distrib, abs_mul, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2)]
    refine mul_le_mul_of_nonneg_left
      ((Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum fun n hn => ?_)) (by norm_num)
    rw [show (M n : ℝ) * ((χ n).re * ((Q n).1 : ℝ)) -
        (M n : ℝ) * ((Q n).1 : ℝ) * (P n : ℝ) =
        ((M n : ℝ) * ((Q n).1 : ℝ)) * ((χ n).re - (P n : ℝ)) by ring, abs_mul]
    exact mul_le_mul_of_nonneg_left (hPhase n hn) (abs_nonneg _)
  exact (abs_sub_le _ exactCenter _).trans (add_le_add hmid hphaseErr)

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
