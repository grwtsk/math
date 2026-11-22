/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilSignedPrimeWeightMidpoint

/-! # Sample and weight enclosures for the normalized-code prime term -/

set_option autoImplicit false

open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open CharacterWindow FirstPrimeWindow LowSchur SourcePrimeCorrelation
open GRWTSK.RealFunctions

/-- The native normalized-code prime term admits a center built from rational
correlation samples and rational weight midpoints. The center retains the
exact character phase and the original active inventory. -/
theorem abs_twistedPrime_normalizedCode_sub_weightMidpoints_le {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (j : ℕ) (cs : List ℚ)
    (kShift kWeight : ℕ → ℕ) {d : ℕ} (hd : 0 < d) :
    let T : ℝ := (j : ℝ) + 1
    let Q := fun n : ℕ => rationalStageCorrelationEnclosure j cs
      (rationalLogEnclosure n (kShift n)).1 (rationalLogEnclosure n (kShift n)).2
    let B := fun n => inventoryPrimeWeightEnclosure n (kWeight n) d
    let M := fun n => ((B n).1 + (B n).2) / 2
    let R := fun n => ((B n).2 - (B n).1) / 2
    |twistedPrime T χ (fun n => correlation
        (liftReal (primitiveStageMassTestOfNormalizedCode χ j cs).val) (Real.log (n : ℝ))) -
      primeReadout (activePrimePowers T)
        (fun n => ((M n : ℝ) : ℂ) * (conj (χ n) * ((Q n).1 : ℂ)))| ≤
      2 * ∑ n ∈ activePrimePowers T, (B n).2 * ‖χ n‖ * ((Q n).2 : ℝ) +
        2 * ∑ n ∈ activePrimePowers T, (R n : ℝ) * (‖χ n‖ * ‖((Q n).1 : ℂ)‖) := by
  dsimp only
  refine abs_twistedPrime_sub_weightMidpoints_le _ χ _ _ _ kWeight hd ?_
  intro n hn
  have hn1 : 1 ≤ n := by
    have hn2 : 2 ≤ n := ((Finset.mem_filter.mp hn).2).1
    omega
  obtain ⟨hs, hlo, hhi⟩ :=
    rationalLogEnclosure_correct (n : ℚ) (by exact_mod_cast hn1) (kShift n)
  apply norm_normalizedCode_correlation_log_sub_sample_le χ j cs n _ _ hs
  rw [abs_of_nonneg]
  · simpa only [Rat.cast_natCast] using hhi
  · simpa only [Rat.cast_natCast] using sub_nonneg.mpr hlo

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
