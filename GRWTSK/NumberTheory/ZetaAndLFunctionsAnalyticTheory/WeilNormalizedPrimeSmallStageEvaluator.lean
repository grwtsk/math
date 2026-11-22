/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilNormalizedPrimeCutoffEvaluator

/-! # Fixed cutoff certificates for the first two normalized Weil stages -/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open CharacterWindow SourcePrimeCorrelation GRWTSK.RealFunctions

/-- Choose the checked cutoff settings at stages zero and one. -/
def checkedSmallStageCoprimePrimeRadius (q j : ℕ) (cs : List ℚ)
    (kShift kWeight : ℕ → ℕ) (d : ℕ) : Option ℚ :=
  match j with
  | 0 => checkedCoprimePrimeRadius q 0 cs kShift kWeight d 7 12 12
  | 1 => checkedCoprimePrimeRadius q 1 cs kShift kWeight d 54 128 128
  | _ => none

theorem checkedSmallStageCoprimePrimeRadius_isSome (q j : ℕ) (hj : j ≤ 1)
    (cs : List ℚ) (kShift kWeight : ℕ → ℕ) {d : ℕ} (hd : 0 < d) :
    (checkedSmallStageCoprimePrimeRadius q j cs kShift kWeight d).isSome := by
  interval_cases j
  · have h : 0 < d ∧ 1 ≤ (7 : ℕ) ∧
        (rationalLogEnclosure 7 12).1 + (rationalLogEnclosure 7 12).2 < 2 * ((0 : ℚ) + 1) ∧
        2 * ((0 : ℚ) + 1) ≤ (rationalLogEnclosure 8 12).1 :=
      ⟨hd, by decide, by decide +kernel, by decide +kernel⟩
    simp only [checkedSmallStageCoprimePrimeRadius, checkedCoprimePrimeRadius]
    split
    · rfl
    · rename_i hfail
      apply (hfail ?_).elim
      simpa only [Nat.reduceAdd, Nat.cast_ofNat, Nat.cast_zero, Nat.cast_one] using h
  · have h : 0 < d ∧ 1 ≤ (54 : ℕ) ∧
        (rationalLogEnclosure 54 128).1 + (rationalLogEnclosure 54 128).2 < 2 * ((1 : ℚ) + 1) ∧
        2 * ((1 : ℚ) + 1) ≤ (rationalLogEnclosure 55 128).1 :=
      ⟨hd, by decide, by decide +kernel, by decide +kernel⟩
    simp only [checkedSmallStageCoprimePrimeRadius, checkedCoprimePrimeRadius]
    split
    · rfl
    · rename_i hfail
      apply (hfail ?_).elim
      simpa only [Nat.reduceAdd, Nat.cast_ofNat, Nat.cast_zero, Nat.cast_one] using h

theorem checkedSmallStageCoprimePrimeRadius_sound {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (j : ℕ) (cs : List ℚ)
    (kShift kWeight : ℕ → ℕ) (d : ℕ) {r : ℚ}
    (hr : checkedSmallStageCoprimePrimeRadius q j cs kShift kWeight d = some r) :
    |twistedPrime ((j : ℝ) + 1) χ (fun n => correlation
        (liftReal (primitiveStageMassTestOfNormalizedCode χ j cs).val) (Real.log (n : ℝ)))|
      ≤ (r : ℝ) := by
  match j with
  | 0 => exact checkedCoprimePrimeRadius_sound χ 0 cs kShift kWeight d 7 12 12 hr
  | 1 => exact checkedCoprimePrimeRadius_sound χ 1 cs kShift kWeight d 54 128 128 hr
  | j + 2 => simp [checkedSmallStageCoprimePrimeRadius] at hr

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
