/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilNormalizedPrimeCoprimeEnclosure
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimeInventoryLogCutoff

/-! # A checked rational evaluator for the baseline signed prime radius -/

set_option autoImplicit false

open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open CharacterWindow LowSchur SourcePrimeCorrelation
open GRWTSK.RealFunctions

private def coprimeRadiusOn (q j : ℕ) (cs : List ℚ)
    (kShift kWeight : ℕ → ℕ) (d : ℕ) (A : Finset ℕ) : ℚ :=
  let Q := fun n : ℕ => rationalStageCorrelationEnclosure j cs
    (rationalLogEnclosure n (kShift n)).1 (rationalLogEnclosure n (kShift n)).2
  let B := fun n => inventoryPrimeWeightEnclosure n (kWeight n) d
  let M := fun n => ((B n).1 + (B n).2) / 2
  let R := fun n => ((B n).2 - (B n).1) / 2
  let U := fun n => (if Nat.Coprime n q then 1 else 0 : ℚ)
  (2 * ∑ n ∈ A, (B n).2 * U n * (Q n).2) +
    (2 * ∑ n ∈ A, R n * (U n * |(Q n).1|)) +
    (2 * ∑ n ∈ A, |M n * (Q n).1| * U n)

/-- Check a supplied cutoff candidate and return its baseline radius only
when the rational certificate and the positive denominator scale pass. -/
def checkedCoprimePrimeRadius (q j : ℕ) (cs : List ℚ)
    (kShift kWeight : ℕ → ℕ) (d N k l : ℕ) : Option ℚ :=
  let T : ℚ := (j : ℚ) + 1
  let lower := rationalLogEnclosure (N : ℚ) k
  let upper := rationalLogEnclosure ((N + 1 : ℕ) : ℚ) l
  if 0 < d ∧ 1 ≤ N ∧ lower.1 + lower.2 < 2 * T ∧ 2 * T ≤ upper.1 then
    some (coprimeRadiusOn q j cs kShift kWeight d (Finset.Icc 2 N))
  else none

/-- Every returned radius bounds the native signed prime term of the
original normalized code, with its genuine character and strict cutoff. -/
theorem checkedCoprimePrimeRadius_sound {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (j : ℕ) (cs : List ℚ)
    (kShift kWeight : ℕ → ℕ) (d N k l : ℕ) {r : ℚ}
    (hr : checkedCoprimePrimeRadius q j cs kShift kWeight d N k l = some r) :
    |twistedPrime ((j : ℝ) + 1) χ (fun n => correlation
        (liftReal (primitiveStageMassTestOfNormalizedCode χ j cs).val) (Real.log (n : ℝ)))|
      ≤ (r : ℝ) := by
  unfold checkedCoprimePrimeRadius at hr
  dsimp only at hr
  split at hr
  · rename_i h
    obtain ⟨hd, hN, hlo, hhi⟩ := h
    have hI := activePrimePowers_eq_Icc_of_rational_log_bracket
      ((j : ℚ) + 1) hN k l hlo hhi
    simp only [Rat.cast_add, Rat.cast_natCast, Rat.cast_one] at hI
    have hbound := abs_twistedPrime_normalizedCode_le_coprimeRadius χ j cs kShift kWeight hd
    dsimp only at hbound
    rw [hI] at hbound
    rw [← Option.some.inj hr]
    exact hbound
  · contradiction

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
