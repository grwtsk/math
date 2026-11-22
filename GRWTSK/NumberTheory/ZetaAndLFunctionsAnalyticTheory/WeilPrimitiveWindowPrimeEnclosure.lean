/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.RealFunctions.RationalLogEnclosure
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFirstPrimeWindow
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveWindowLogEnclosure

/-! # Signed aggregation of normalized window correlation samples -/

set_option autoImplicit false

open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open CharacterWindow LowSchur SourcePrimeCorrelation FirstPrimeWindow
open GRWTSK.RealFunctions

/-- Aggregate individual errors while retaining the original conjugated
character phase in the center and the original active inventory. -/
theorem abs_twistedPrime_sub_le_weighted_errors {q : ℕ} [NeZero q]
    (T : ℝ) (χ : DirichletCharacter ℂ q) (C S : ℕ → ℂ) (E : ℕ → ℝ)
    (h : ∀ n ∈ activePrimePowers T, ‖C n - S n‖ ≤ E n) :
    |twistedPrime T χ C - twistedPrime T χ S| ≤
      2 * ∑ n ∈ activePrimePowers T, primeWeight n * ‖χ n‖ * E n := by
  have eq (D : ℕ → ℂ) :
      twistedPrime T χ D = primeReadout (activePrimePowers T) (primeAtom χ D) := by
    simp [twistedPrime, primeReadout, primeAtom, Complex.mul_re]
  rw [eq C, eq S]
  refine (abs_primeReadout_sub_le _ _ _).trans ?_
  apply mul_le_mul_of_nonneg_left _ (by norm_num)
  apply Finset.sum_le_sum
  intro n hn
  unfold primeAtom
  rw [← mul_sub, ← mul_sub, norm_mul, norm_mul, Complex.norm_real, Real.norm_eq_abs,
    abs_of_nonneg (primeWeight_nonneg n), Complex.norm_conj, ← mul_assoc]
  exact mul_le_mul_of_nonneg_left (h n hn) (mul_nonneg (primeWeight_nonneg n) (norm_nonneg _))

/-- Supply every active logarithmic shift with its own executable rational
sample and error. The output center still uses the exact arithmetic weights. -/
theorem abs_twistedPrime_normalizedCode_sub_samples_le {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (j : ℕ) (cs : List ℚ) (k : ℕ → ℕ) :
    let T : ℝ := (j : ℝ) + 1
    let sample := fun n : ℕ =>
      rationalStageCorrelationEnclosure j cs
        (rationalLogEnclosure n (k n)).1 (rationalLogEnclosure n (k n)).2
    |twistedPrime T χ (fun n => correlation
        (liftReal (primitiveStageMassTestOfNormalizedCode χ j cs).val) (Real.log (n : ℝ))) -
      twistedPrime T χ (fun n => ((sample n).1 : ℂ))| ≤
      2 * ∑ n ∈ activePrimePowers T, primeWeight n * ‖χ n‖ * ((sample n).2 : ℝ) := by
  dsimp only
  apply abs_twistedPrime_sub_le_weighted_errors
  intro n hn
  have hn2 : 2 ≤ n := ((Finset.mem_filter.mp hn).2).1
  have hn1 : 1 ≤ n := by omega
  obtain ⟨hs, hlo, hhi⟩ := rationalLogEnclosure_correct (n : ℚ) (by exact_mod_cast hn1) (k n)
  apply norm_normalizedCode_correlation_log_sub_sample_le χ j cs n _ _ hs
  rw [abs_of_nonneg]
  · simpa only [Rat.cast_natCast] using hhi
  · simpa only [Rat.cast_natCast] using sub_nonneg.mpr hlo

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
