/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilNormalizedPrimeRealPhase
import Mathlib.NumberTheory.DirichletCharacter.Bounds

/-! # Rational radius for the normalized-code signed prime term -/

set_option autoImplicit false

open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open CharacterWindow LowSchur SourcePrimeCorrelation
open GRWTSK.RealFunctions

/-- The modulus of a complex Dirichlet character is exactly the computable
indicator that the natural index is coprime to the conductor. -/
theorem norm_dirichletCharacter_natCast_eq_coprime {q : ℕ}
    (χ : DirichletCharacter ℂ q) (n : ℕ) :
    ‖χ n‖ = ((if n.Coprime q then 1 else 0 : ℚ) : ℝ) := by
  by_cases h : n.Coprime q
  · have hu := (ZMod.isUnit_iff_coprime n q).2 h
    simpa only [ite_eq_left h, Rat.cast_one, IsUnit.unit_spec] using χ.unit_norm_eq_one hu.unit
  · rw [χ.map_nonunit (fun hu => h ((ZMod.isUnit_iff_coprime n q).1 hu))]
    simp [h]

/-- Both the center and the radius are rational after supplying rational
real-phase samples and their pointwise errors on the native inventory. -/
theorem abs_twistedPrime_normalizedCode_sub_rationalRadius_le
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
    let U := fun n => (if Nat.Coprime n q then 1 else 0 : ℚ)
    let center : ℚ := 2 * ∑ n ∈ A, M n * (Q n).1 * P n
    let radius : ℚ := (2 * ∑ n ∈ A, (B n).2 * U n * (Q n).2) +
      (2 * ∑ n ∈ A, R n * (U n * |(Q n).1|)) +
      (2 * ∑ n ∈ A, |M n * (Q n).1| * D n)
    |twistedPrime T χ (fun n => correlation
        (liftReal (primitiveStageMassTestOfNormalizedCode χ j cs).val) (Real.log (n : ℝ))) -
      (center : ℝ)| ≤ (radius : ℝ) := by
  intro T A Q B M R U center radius
  have h := abs_twistedPrime_normalizedCode_sub_realPhaseSamples_le χ j cs kShift kWeight hd P D hPhase
  dsimp only at h
  dsimp only [radius, U]
  push_cast
  simp only [norm_dirichletCharacter_natCast_eq_coprime χ, Complex.norm_ratCast] at h
  simpa only [T, A, Q, B, M, R, U, center, Rat.cast_add, Rat.cast_mul,
    Rat.cast_ofNat, Rat.cast_sum, Rat.cast_abs] using h

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
