/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.PickupRoughFarCutoffStrips

/-!
# Actual-Gram elimination of cutoff-loss strips

The six-region geometric decomposition contains closed-N loss regions and genuine
interior support changes. For the ACTUAL block Gram the closed-N losses vanish
identically: if a moved coordinate exceeds the source horizon
N = floor(exp T), block support makes the corresponding Gram zero.

Thus the geometric obstruction does not pay the outer N-boundary losses. The left
channel has only its surviving interior gap-crossing strip, while the remaining
nonzero changes are gains into the moved far region.

This file also gives an exact finite width bound for the left interior gap strip.
For fixed m and p >= 1 it contains at most p*m-m integers n. This is a geometric
count only; no cancellation, prime selection, asymptotic gain or RH estimate is
claimed.

SOURCE_PROOF_CANDIDATE. Compilation, fresh kernel replay, transitive axiom audit,
and expected-interface checking: NOT_RUN. No acceptance or RH claim.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.PickupRoughFarCutoffEffective

open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockEnergy
open GRWTSK.NumberTheory.Moebius.PickupRoughFarMaskCommutator
open GRWTSK.NumberTheory.Moebius.PickupRoughFarCutoffStrips

/-- The part of the left-loss region that remains inside the source box. -/
def leftGapLost (N L H p m n : ℕ) : Prop :=
  farActive N L H m n ∧ p*m ≤ N ∧ n ≤ p*m+H

theorem leftGapLost_iff_leftLost_and_inside
    {N L H p m n : ℕ} (hp : 1 ≤ p) :
    leftGapLost N L H p m n ↔
      leftLost N L H p m n ∧ p*m ≤ N := by
  rw [leftLost_iff hp]
  unfold leftGapLost
  constructor
  · rintro ⟨h, hpmN, hgap⟩
    exact ⟨⟨h, Or.inr hgap⟩, hpmN⟩
  · rintro ⟨⟨h, hbad⟩, hpmN⟩
    rcases hbad with hcut | hgap
    · omega
    · exact ⟨h, hpmN, hgap⟩

/-- The interior left-gap strip is contained in the literal interval
[m+H+1, p*m+H]. -/
theorem leftGapLost_subset_Icc (N L H p m : ℕ) :
    (Finset.Icc 1 N).filter (fun n => leftGapLost N L H p m n) ⊆
      Finset.Icc (m+H+1) (p*m+H) := by
  intro n hn
  have h := (Finset.mem_filter.mp hn).2
  unfold leftGapLost farActive at h
  exact Finset.mem_Icc.mpr ⟨by omega, h.2.2⟩

/-- Exact geometry gives at most p*m-m possible n values in the surviving
left-gap crossing strip. -/
theorem leftGapLost_count_le (N L H p m : ℕ) (hp : 1 ≤ p) :
    ((Finset.Icc 1 N).filter (fun n => leftGapLost N L H p m n)).card ≤
      p*m-m := by
  have hsub := leftGapLost_subset_Icc N L H p m
  have hc : (Finset.Icc (m+H+1) (p*m+H)).card = p*m-m := by
    rw [Nat.card_Icc]
    omega
  simpa only [hc] using Finset.card_le_card hsub

/-- A left moved Gram is zero on the closed-N loss boundary. -/
theorem gram_left_cutoff_zero
    (P : List ℕ) (hP : ∀ q ∈ P, Nat.Prime q)
    (T : ℝ) (N p m n : ℕ)
    (hN : N = ⌊Real.exp T⌋₊) (hcut : N < p*m) :
    gram P T (p*m) n = 0 := by
  apply gram_support P hP T (p*m) n
  simpa only [← hN] using hcut

/-- A right moved Gram is zero on the closed-N loss boundary. -/
theorem gram_right_cutoff_zero
    (P : List ℕ) (hP : ∀ q ∈ P, Nat.Prime q)
    (T : ℝ) (N p m n : ℕ)
    (hN : N = ⌊Real.exp T⌋₊) (hcut : N < p*n) :
    gram P T m (p*n) = 0 := by
  rw [gram_symmetric]
  apply gram_support P hP T (p*n) m
  simpa only [← hN] using hcut

/-- The simultaneous moved Gram is zero when either moved coordinate leaves
the closed source box. -/
theorem gram_both_cutoff_zero
    (P : List ℕ) (hP : ∀ q ∈ P, Nat.Prime q)
    (T : ℝ) (N p m n : ℕ)
    (hN : N = ⌊Real.exp T⌋₊)
    (hcut : N < p*m ∨ N < p*n) :
    gram P T (p*m) (p*n) = 0 := by
  rcases hcut with hleft | hright
  · exact gram_left_cutoff_zero P hP T N p m (p*n) hN hleft
  · rw [gram_symmetric]
    exact gram_left_cutoff_zero P hP T N p n (p*m) hN hright

/-- On a left-loss point the actual shifted Gram is nontrivial only on the
interior gap-crossing strip. -/
theorem leftLost_gram_eq_zero_or_gap
    (P : List ℕ) (hP : ∀ q ∈ P, Nat.Prime q)
    (T : ℝ) (N L H p m n : ℕ) (hp : 1 ≤ p)
    (hN : N = ⌊Real.exp T⌋₊)
    (hlost : leftLost N L H p m n) :
    gram P T (p*m) n = 0 ∨ leftGapLost N L H p m n := by
  rw [leftLost_iff hp] at hlost
  rcases hlost with ⟨hbase, hcut | hgap⟩
  · exact Or.inl (gram_left_cutoff_zero P hP T N p m n hN hcut)
  · by_cases hpm : p*m ≤ N
    · exact Or.inr ⟨hbase, hpm, hgap⟩
    · exact Or.inl (gram_left_cutoff_zero P hP T N p m n hN (by omega))

/-- Every right-loss contribution of the actual shifted Gram is zero. -/
theorem rightLost_gram_zero
    (P : List ℕ) (hP : ∀ q ∈ P, Nat.Prime q)
    (T : ℝ) (N L H p m n : ℕ) (hp : 1 ≤ p)
    (hN : N = ⌊Real.exp T⌋₊)
    (hlost : rightLost N L H p m n) :
    gram P T m (p*n) = 0 := by
  rw [rightLost_iff hp] at hlost
  exact gram_right_cutoff_zero P hP T N p m n hN hlost.2

/-- Every simultaneous-loss contribution of the actual shifted Gram is zero. -/
theorem bothLost_gram_zero
    (P : List ℕ) (hP : ∀ q ∈ P, Nat.Prime q)
    (T : ℝ) (N L H p m n : ℕ) (hp : 1 ≤ p)
    (hN : N = ⌊Real.exp T⌋₊)
    (hlost : bothLost N L H p m n) :
    gram P T (p*m) (p*n) = 0 := by
  rw [bothLost_iff hp] at hlost
  exact gram_both_cutoff_zero P hP T N p m n hN hlost.2

end GRWTSK.NumberTheory.Moebius.PickupRoughFarCutoffEffective
