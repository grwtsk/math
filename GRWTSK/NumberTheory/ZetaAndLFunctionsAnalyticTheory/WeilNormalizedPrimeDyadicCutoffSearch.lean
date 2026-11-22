/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilNormalizedPrimeCutoffEvaluator

/-! # Bounded dyadic cutoff search for the normalized-code signed prime term -/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open CharacterWindow SourcePrimeCorrelation

/-- Search cutoffs 1 through `limit` at the supplied precisions. Retain the
accepted integer with its certified baseline radius. -/
def findCheckedDyadicCoprimePrimeRadius (q j : ℕ) (cs : List ℚ)
    (kShift kWeight : ℕ → ℕ) (d limit k l : ℕ) : Option (ℕ × ℚ) :=
  (List.range' 1 limit).findSome? fun N =>
    (checkedDyadicCoprimePrimeRadius q j cs kShift kWeight d N k l).map (fun r => (N, r))

/-- A successful search returns a candidate in the requested range and a
radius bounding the native normalized-code signed prime term. -/
theorem findCheckedDyadicCoprimePrimeRadius_sound {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (j : ℕ) (cs : List ℚ)
    (kShift kWeight : ℕ → ℕ) (d limit k l : ℕ) {N : ℕ} {r : ℚ}
    (h : findCheckedDyadicCoprimePrimeRadius q j cs kShift kWeight d limit k l = some (N, r)) :
    1 ≤ N ∧ N ≤ limit ∧
      |twistedPrime ((j : ℝ) + 1) χ (fun n => correlation
          (liftReal (primitiveStageMassTestOfNormalizedCode χ j cs).val) (Real.log (n : ℝ)))|
        ≤ (r : ℝ) := by
  obtain ⟨m, hm, hresult⟩ := List.exists_of_findSome?_eq_some h
  cases hc : checkedDyadicCoprimePrimeRadius q j cs kShift kWeight d m k l with
  | none => simp [hc] at hresult
  | some radius =>
    have heq : (m, radius) = (N, r) := Option.some.inj (by simpa only [hc, Option.map_some] using hresult)
    obtain ⟨rfl, rfl⟩ := Prod.mk.inj heq
    rw [List.mem_range'_1] at hm
    exact ⟨by omega, by omega, checkedDyadicCoprimePrimeRadius_sound χ j cs kShift kWeight d m k l hc⟩

/-- Exhaustion says precisely that the supplied range and precisions found no
accepted cutoff. -/
theorem findCheckedDyadicCoprimePrimeRadius_eq_none_iff (q j : ℕ) (cs : List ℚ)
    (kShift kWeight : ℕ → ℕ) (d limit k l : ℕ) :
    findCheckedDyadicCoprimePrimeRadius q j cs kShift kWeight d limit k l = none ↔
      ∀ N : ℕ, 1 ≤ N → N ≤ limit →
        checkedDyadicCoprimePrimeRadius q j cs kShift kWeight d N k l = none := by
  simp only [findCheckedDyadicCoprimePrimeRadius, List.findSome?_eq_none_iff, List.mem_range'_1,
    Option.map_eq_none_iff]
  constructor
  · intro h N hN hlimit
    exact h N ⟨hN, by omega⟩
  · intro h N hN
    exact h N (by omega) (by omega)

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
