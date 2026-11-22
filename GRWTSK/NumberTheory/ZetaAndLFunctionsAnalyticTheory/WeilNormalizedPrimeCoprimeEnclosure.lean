/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilNormalizedPrimeRationalRadius

/-! # A baseline rational enclosure on the native prime inventory -/

set_option autoImplicit false

open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open CharacterWindow LowSchur SourcePrimeCorrelation
open GRWTSK.RealFunctions

/-- Zero is an exact phase sample at a nonunit and has error at most one
at a unit. This supplies a baseline enclosure without character tables. -/
theorem abs_twistedPrime_normalizedCode_le_coprimeRadius
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) (j : ℕ) (cs : List ℚ)
    (kShift kWeight : ℕ → ℕ) {d : ℕ} (hd : 0 < d) :
    let T : ℝ := (j : ℝ) + 1
    let A := activePrimePowers T
    let Q := fun n : ℕ => rationalStageCorrelationEnclosure j cs
      (rationalLogEnclosure n (kShift n)).1 (rationalLogEnclosure n (kShift n)).2
    let B := fun n => inventoryPrimeWeightEnclosure n (kWeight n) d
    let M := fun n => ((B n).1 + (B n).2) / 2
    let R := fun n => ((B n).2 - (B n).1) / 2
    let U := fun n => (if Nat.Coprime n q then 1 else 0 : ℚ)
    let radius : ℚ := (2 * ∑ n ∈ A, (B n).2 * U n * (Q n).2) +
      (2 * ∑ n ∈ A, R n * (U n * |(Q n).1|)) +
      (2 * ∑ n ∈ A, |M n * (Q n).1| * U n)
    |twistedPrime T χ (fun n => correlation
        (liftReal (primitiveStageMassTestOfNormalizedCode χ j cs).val) (Real.log (n : ℝ)))| ≤
      (radius : ℝ) := by
  dsimp only
  have hPhase (n : ℕ) :
      |(χ n).re - ((0 : ℚ) : ℝ)| ≤ ((if n.Coprime q then 1 else 0 : ℚ) : ℝ) := by
    rw [Rat.cast_zero, sub_zero, ← norm_dirichletCharacter_natCast_eq_coprime χ n]
    exact Complex.abs_re_le_norm _
  simpa only [mul_zero, Finset.sum_const_zero, Rat.cast_zero, sub_zero] using
    abs_twistedPrime_normalizedCode_sub_rationalRadius_le χ j cs kShift kWeight hd
      (fun _ => 0) (fun n => if n.Coprime q then 1 else 0) (fun n _ => hPhase n)

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
