/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimeWeightInventoryEnclosure
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveWindowPrimeEnclosure

/-! # Rational weight midpoints in the native signed Weil prime sum -/

set_option autoImplicit false

open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open CharacterWindow FirstPrimeWindow LowSchur

/-- Replace the native weights by their rational midpoints and the correlations
by supplied samples. The center keeps the exact conjugated character phase.
The error accounts separately for correlation and weight replacement. -/
theorem abs_twistedPrime_sub_weightMidpoints_le {q : ℕ} [NeZero q]
    (T : ℝ) (χ : DirichletCharacter ℂ q) (C S : ℕ → ℂ) (E : ℕ → ℝ)
    (k : ℕ → ℕ) {d : ℕ} (hd : 0 < d)
    (h : ∀ n ∈ activePrimePowers T, ‖C n - S n‖ ≤ E n) :
    let B := fun n => inventoryPrimeWeightEnclosure n (k n) d
    let M := fun n => ((B n).1 + (B n).2) / 2
    let R := fun n => ((B n).2 - (B n).1) / 2
    |twistedPrime T χ C -
      primeReadout (activePrimePowers T) (fun n => ((M n : ℝ) : ℂ) * (conj (χ n) * S n))| ≤
      2 * ∑ n ∈ activePrimePowers T, (B n).2 * ‖χ n‖ * E n +
        2 * ∑ n ∈ activePrimePowers T, (R n : ℝ) * (‖χ n‖ * ‖S n‖) := by
  intro B M R
  have hweight := fun n => inventoryPrimeWeightEnclosure_correct n (k n) d hd
  have hcor := abs_twistedPrime_sub_le_weighted_errors T χ C S E h
  have hcor' : |twistedPrime T χ C - twistedPrime T χ S| ≤
      2 * ∑ n ∈ activePrimePowers T, (B n).2 * ‖χ n‖ * E n := by
    refine hcor.trans (mul_le_mul_of_nonneg_left (Finset.sum_le_sum fun n hn => ?_) (by norm_num))
    exact mul_le_mul_of_nonneg_right
      (mul_le_mul_of_nonneg_right (hweight n).2 (norm_nonneg _))
      ((norm_nonneg _).trans (h n hn))
  have heq : twistedPrime T χ S = primeReadout (activePrimePowers T) (primeAtom χ S) := by
    simp [twistedPrime, primeReadout, primeAtom, Complex.mul_re]
  have hmid : |twistedPrime T χ S -
      primeReadout (activePrimePowers T) (fun n => ((M n : ℝ) : ℂ) * (conj (χ n) * S n))| ≤
      2 * ∑ n ∈ activePrimePowers T, (R n : ℝ) * (‖χ n‖ * ‖S n‖) := by
    rw [heq]
    refine (abs_primeReadout_sub_le _ _ _).trans
      (mul_le_mul_of_nonneg_left (Finset.sum_le_sum fun n _ => ?_) (by norm_num))
    unfold primeAtom
    rw [← sub_mul, ← Complex.ofReal_sub, norm_mul, norm_mul, Complex.norm_conj,
      Complex.norm_real, Real.norm_eq_abs]
    apply mul_le_mul_of_nonneg_right _ (mul_nonneg (norm_nonneg _) (norm_nonneg _))
    obtain ⟨hl, hu⟩ := hweight n
    change ((B n).1 : ℝ) ≤ primeWeight n at hl
    change primeWeight n ≤ ((B n).2 : ℝ) at hu
    apply abs_le.mpr
    dsimp only [M, R]
    push_cast
    exact ⟨by linarith, by linarith⟩
  exact (abs_sub_le _ (twistedPrime T χ S) _).trans (add_le_add hcor' hmid)

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
