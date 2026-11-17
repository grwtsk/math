/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilNormalizedPrimeDyadicCutoffPrecision

/-! # Bounded precision search for the dyadic Weil prime evaluator -/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open CharacterWindow SourcePrimeCorrelation Filter

/-- Try common dyadic log truncations from zero through the supplied cap.
Return the precision and cutoff together with the certified radius. -/
def findDyadicCoprimePrimeRadiusWithPrecision (q j : ℕ) (cs : List ℚ)
    (kShift kWeight : ℕ → ℕ) (d cap : ℕ) : Option (ℕ × ℕ × ℚ) :=
  (List.range (cap + 1)).findSome? fun k =>
    (findCheckedDyadicCoprimePrimeRadius q j cs kShift kWeight d (8 ^ (j + 1) - 1) k k).map
      (fun result => (k, result))

theorem findDyadicCoprimePrimeRadiusWithPrecision_sound {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (j : ℕ) (cs : List ℚ)
    (kShift kWeight : ℕ → ℕ) (d cap : ℕ) {k N : ℕ} {r : ℚ}
    (h : findDyadicCoprimePrimeRadiusWithPrecision q j cs kShift kWeight d cap = some (k, N, r)) :
    k ≤ cap ∧ 1 ≤ N ∧ N < 8 ^ (j + 1) ∧
      |twistedPrime ((j : ℝ) + 1) χ (fun n => correlation
          (liftReal (primitiveStageMassTestOfNormalizedCode χ j cs).val) (Real.log (n : ℝ)))|
        ≤ (r : ℝ) := by
  obtain ⟨m, hm, hr⟩ := List.exists_of_findSome?_eq_some h
  cases hc : findCheckedDyadicCoprimePrimeRadius q j cs kShift kWeight d (8 ^ (j + 1) - 1) m m with
  | none => simp [hc] at hr
  | some result =>
    have heq : (m, result) = (k, N, r) := Option.some.inj (by simpa only [hc, Option.map_some] using hr)
    obtain ⟨rfl, rfl⟩ := Prod.mk.inj heq
    obtain ⟨hN, hlim, hbound⟩ := findCheckedDyadicCoprimePrimeRadius_sound
      χ j cs kShift kWeight d (8 ^ (j + 1) - 1) m m hc
    rw [List.mem_range] at hm
    exact ⟨by omega, hN, by omega, hbound⟩

/-- For a nonintegral stage cutoff a sufficiently large cap always yields
a certificate. Individual smaller caps can exhaust. -/
theorem eventually_findDyadicCoprimePrimeRadiusWithPrecision_isSome
    (q j : ℕ) (cs : List ℚ) (kShift kWeight : ℕ → ℕ) {d : ℕ} (hd : 0 < d)
    (hsep : ∀ n : ℕ, Real.exp (2 * ((j : ℝ) + 1)) ≠ (n : ℝ)) :
    ∀ᶠ cap : ℕ in atTop,
      (findDyadicCoprimePrimeRadiusWithPrecision q j cs kShift kWeight d cap).isSome := by
  filter_upwards [eventually_findCheckedDyadicCoprimePrimeRadius_isSome_of_noninteger
    q j cs kShift kWeight hd hsep] with cap hcap
  rw [Option.isSome_iff_ne_none] at hcap ⊢
  intro hnone
  unfold findDyadicCoprimePrimeRadiusWithPrecision at hnone
  have h := List.findSome?_eq_none_iff.mp hnone cap (List.mem_range.mpr (by omega))
  exact hcap (Option.map_eq_none_iff.mp h)

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
