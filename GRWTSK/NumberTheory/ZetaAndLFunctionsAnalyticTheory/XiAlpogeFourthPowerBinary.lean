/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiAlpogeFourthPowerWindowCriterion
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiAlpogeBinaryBudget

/-!
# A single binary test on fourth powers in cofinal windows

Taking an integer window start k⁸ places its upper integer endpoint at k¹².
Both boundary tests are then fourth-power samples. The arithmetic supplier
therefore quantifies only over the roots j between k² and k³ inclusive.
-/

namespace GRWTSK.XiAlpogeFourthPowerBinary
open XiAlpogeBinaryBudget XiAlpogeFourthPowerWindowCriterion

/-- One fixed prime-product comparison, with integer inputs and no extra
endpoint tests or exponent parameters. -/
def BinaryFourthPowerWindows : Prop :=
  ∀ L : ℕ, ∃ k ≥ L, ∀ j : ℕ, k^2 ≤ j → j ≤ k^3 → binaryTest (j^4)

/-- The start and the upper integer endpoint are both exact fourth powers. -/
theorem aligned_endpoints (k : ℕ) :
    k^8 = (k^2)^4 ∧ Nat.sqrt ((k^8)^3) = (k^3)^4 := by
  constructor
  · rw [← pow_mul]
  · rw [show (k^8)^3 = ((k^3)^4)^2 by simp only [← pow_mul], Nat.sqrt_eq']

/-- Every guarded probe in this window has a fourth root in the desired
inclusive interval. -/
theorem guard_has_root {k n : ℕ} (hl : k^8 ≤ n) (hu : n^2 ≤ (k^8)^3)
    (hg : Guard (k^8) n) :
    ∃ j : ℕ, k^2 ≤ j ∧ j ≤ k^3 ∧ n = j^4 := by
  obtain ⟨hlo,hhi⟩ := aligned_endpoints k
  obtain ⟨j,hj⟩ : ∃ j : ℕ, n = j^4 := by
    rcases hg with h | h | h
    · exact ⟨k^2,h.trans hlo⟩
    · exact ⟨k^3,h.trans hhi⟩
    · exact h
  refine ⟨j,?_,?_,hj⟩
  · exact (Nat.pow_le_pow_iff_left (by decide : (4:ℕ) ≠ 0)).mp (hlo ▸ hj ▸ hl)
  · have hend := Nat.le_sqrt'.mpr hu
    rw [hj,hhi] at hend
    exact (Nat.pow_le_pow_iff_left (by decide : (4:ℕ) ≠ 0)).mp hend

/-- The single cofinal binary comparison implies every required guarded
integer window at all supercritical rational exponents. -/
theorem fourthPowerWindows_of_binary (h : BinaryFourthPowerWindows) : FourthPowerWindows := by
  intro a b hb hab L
  obtain ⟨k,hk,hpass⟩ := h (max L 64)
  have hk8 : k ≤ k^8 := Nat.le_pow (by decide)
  refine ⟨k^8, ((Nat.le_max_left _ _).trans hk).trans hk8, ?_⟩
  intro n hn hn' hg
  obtain ⟨j,hj,hj',h₄⟩ := guard_has_root hn hn' hg
  exact rounded_of_binary ((((Nat.le_max_right _ _).trans hk).trans hk8).trans hn)
    hb hab.le (h₄ ▸ hpass j hj hj')

/-- Return to the complete real 3/2-window ceiling for the centered
von Mangoldt statistic, with no real or spectral premise. -/
theorem centered_windows_of_binary_fourth (h : BinaryFourthPowerWindows) :
    XiAlpogeOrdinaryRamp.WindowCeilings XiAlpogeFiniteRampScore.centeredRamp (3/2) :=
  centeredRamp_windows_iff_fourthPowerWindows.mpr (fourthPowerWindows_of_binary h)

/-- Eventual success at all fourth-power orders also provides the cofinal
window supplier. -/
theorem binary_windows_of_eventual {j₀ : ℕ}
    (h : ∀ j : ℕ, j₀ ≤ j → binaryTest (j^4)) : BinaryFourthPowerWindows := by
  intro L
  refine ⟨max L j₀, Nat.le_max_left _ _, ?_⟩
  intro j hj _
  exact h j (((Nat.le_max_right _ _).trans (Nat.le_pow (by decide : 0 < 2))).trans hj)

end GRWTSK.XiAlpogeFourthPowerBinary
