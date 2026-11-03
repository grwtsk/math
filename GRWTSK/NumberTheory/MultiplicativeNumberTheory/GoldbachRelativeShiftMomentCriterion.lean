/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachFullBoxShiftMoment
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachWindowSecondMoment

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Exact precision required of the COMPLETE shifted weighted moment.
The moment upper bound is an explicit unsupplied arithmetic premise.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Primes.GoldbachRelativeShiftMomentCriterion
open GoldbachWeighted GoldbachWindowSecondMoment GoldbachWeightedWindowError
open GoldbachIntegerShiftReindexing GoldbachFiniteShiftMomentTransfer GoldbachFullBoxShiftMoment

theorem normalized_threshold_iff (κ V Q H hmin : ℝ) (hκ : 0 < κ)
    (hid : κ ^ 2 * V = Q - κ ^ 2 * H) :
    V < hmin ↔ Q < κ ^ 2 * (H + hmin) := by
  have hk : 0 < κ ^ 2 := sq_pos_of_pos hκ
  constructor
  · intro h
    have hp := mul_lt_mul_of_pos_left h hk
    nlinarith
  · intro h
    apply (mul_lt_mul_left hk).mp
    nlinarith

theorem prime_pairs_of_relative_full_shift_moment
    (W : Finset ℕ) (h : ℕ → ℝ) (κ ρ hmin : ℝ)
    (hκ : 0 < κ) (hρ : 0 ≤ ρ) (hm : 0 < hmin)
    (hh : ∀ N ∈ W, 0 < h N) (hmin_le : ∀ N ∈ W, hmin ≤ h N)
    (hcal : (∑ N ∈ W, goldbachLogMass N) = κ * (∑ N ∈ W, h N))
    (hshift : (∑ N ∈ W, (∑ S : ShiftedPair N, shiftedWeight S) / h N) ≤
      (1 + ρ) * κ ^ 2 * (∑ N ∈ W, h N))
    (hprecision : ρ * (∑ N ∈ W, h N) < hmin) :
    ∀ N ∈ W, ∃ p q : ℕ, Nat.Prime p ∧ Nat.Prime q ∧ p + q = N := by
  have hQ : (∑ N ∈ W, goldbachLogMass N ^ 2 / h N) ≤
      (1 + ρ) * κ ^ 2 * (∑ N ∈ W, h N) := by
    rw [full_weighted_window_eq_shift_sum]
    exact hshift
  have hid := calibrated_normalized_moment W goldbachLogMass h κ
    (fun N hN => ne_of_gt (hh N hN)) (ne_of_gt hκ) hcal
  have hk : 0 < κ ^ 2 := sq_pos_of_pos hκ
  have hp := mul_lt_mul_of_pos_left hprecision hk
  have herr : (∑ N ∈ W, h N * (goldbachLogMass N / (κ * h N) - 1) ^ 2) < hmin := by
    apply (mul_lt_mul_left hk).mp
    nlinarith
  exact prime_pairs_of_weighted_window_error W (fun N => κ * h N) h hmin
    (fun N hN => le_of_lt (hh N hN)) hmin_le herr

end GRWTSK.NumberTheory.Primes.GoldbachRelativeShiftMomentCriterion
