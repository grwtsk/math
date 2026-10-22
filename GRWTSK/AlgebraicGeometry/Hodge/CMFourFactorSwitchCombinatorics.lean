/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
Mathlib retains its upstream authorship and Apache-2.0 license. -/
import GRWTSK.AlgebraicGeometry.Hodge.CMFourBalance

/-!
# Finite combinatorics of the four-factor switch reduction

The CM manuscript reduces equality of two lists of odd sign rows by correcting
one conjugate-pair column at a time. At one column, equal column sums imply that
the mismatches (+1,-1) and (-1,+1) occur equally often, so they can be paired
and corrected by two-row switches.

This file isolates that finite combinatorial fact. It contains no Hodge theory,
no tensor descent and no algebraicity.
-/

set_option autoImplicit false

namespace GRWTSK.AlgebraicGeometry.Hodge.CMFourFactorSwitchCombinatorics

open CMFourBalance

noncomputable section

variable {I : Type*} [Fintype I] [DecidableEq I]

/-- Rows where the current column is +1 and the target column is -1. -/
def PosNegMismatch (x y : I → ℤ) : Type* :=
  {i : I // x i = 1 ∧ y i = -1}

/-- Rows where the current column is -1 and the target column is +1. -/
def NegPosMismatch (x y : I → ℤ) : Type* :=
  {i : I // x i = -1 ∧ y i = 1}

instance (x y : I → ℤ) : Fintype (PosNegMismatch x y) :=
  Fintype.ofFinite _

instance (x y : I → ℤ) : Fintype (NegPosMismatch x y) :=
  Fintype.ofFinite _

/-- Signed mismatch indicator. Its value is +1 on (+,-), -1 on (-,+), and
zero on matching rows. -/
def mismatchIndicator (x y : I → ℤ) (i : I) : ℤ :=
  if x i = 1 ∧ y i = -1 then 1
  else if x i = -1 ∧ y i = 1 then -1
  else 0

/-- For sign-valued columns, the coordinate difference is twice the signed
mismatch indicator. -/
theorem sub_eq_two_mul_mismatchIndicator
    (x y : I → ℤ)
    (hx : ∀ i, IsSign (x i))
    (hy : ∀ i, IsSign (y i))
    (i : I) :
    x i - y i = 2 * mismatchIndicator x y i := by
  rcases hx i with hxi | hxi <;>
  rcases hy i with hyi | hyi <;>
  simp [mismatchIndicator, hxi, hyi]

/-- Summing the signed mismatch indicator counts positive-to-negative
mismatches minus negative-to-positive mismatches. -/
theorem sum_mismatchIndicator_eq_card_sub_card
    (x y : I → ℤ) :
    ∑ i, mismatchIndicator x y i =
      (Fintype.card (PosNegMismatch x y) : ℤ) -
        (Fintype.card (NegPosMismatch x y) : ℤ) := by
  classical
  simp [mismatchIndicator, PosNegMismatch, NegPosMismatch,
    Fintype.card_subtype_iff, Finset.sum_ite_irrel]

/-- Equal sums of two sign-valued columns force the two mismatch orientations
to occur equally often. This is the exact pairing lemma used in one column of
the manuscript's switch reduction. -/
theorem mismatch_card_eq_of_sum_eq
    (x y : I → ℤ)
    (hx : ∀ i, IsSign (x i))
    (hy : ∀ i, IsSign (y i))
    (hsum : ∑ i, x i = ∑ i, y i) :
    Fintype.card (PosNegMismatch x y) =
      Fintype.card (NegPosMismatch x y) := by
  have hdiff : ∑ i, (x i - y i) = 0 := by
    rw [Finset.sum_sub_distrib, hsum, sub_self]
  have hind :
      2 * (∑ i, mismatchIndicator x y i) = 0 := by
    calc
      2 * (∑ i, mismatchIndicator x y i) =
          ∑ i, 2 * mismatchIndicator x y i := by
            rw [Finset.mul_sum]
      _ = ∑ i, (x i - y i) := by
            apply Finset.sum_congr rfl
            intro i _
            rw [sub_eq_two_mul_mismatchIndicator x y hx hy i]
      _ = 0 := hdiff
  have hzero : ∑ i, mismatchIndicator x y i = 0 := by
    exact (mul_eq_zero.mp hind).resolve_left (by norm_num)
  rw [sum_mismatchIndicator_eq_card_sub_card x y] at hzero
  exact_mod_cast sub_eq_zero.mp hzero

/-- Therefore the two mismatch sets admit a pairing. -/
noncomputable def mismatchPairing
    (x y : I → ℤ)
    (hx : ∀ i, IsSign (x i))
    (hy : ∀ i, IsSign (y i))
    (hsum : ∑ i, x i = ∑ i, y i) :
    PosNegMismatch x y ≃ NegPosMismatch x y :=
  Fintype.equivOfCardEq (mismatch_card_eq_of_sum_eq x y hx hy hsum)

/-- Atomic two-row switch at one column: swap the two row values. -/
def switchPair
    (x : I → ℤ) (i j : I) : I → ℤ :=
  fun k => if k = i then x j else if k = j then x i else x k

/-- A two-row switch preserves the total column sum. -/
theorem sum_switchPair
    (x : I → ℤ) (i j : I) :
    ∑ k, switchPair x i j k = ∑ k, x k := by
  classical
  by_cases hij : i = j
  · subst j
    simp [switchPair]
  · rw [← Finset.sum_erase_add _ _ (Finset.mem_univ i)]
    rw [← Finset.sum_erase_add _ _ (Finset.mem_univ j)]
    simp [switchPair, hij, Ne.symm hij, add_comm, add_left_comm, add_assoc]

/-- Switching a paired (+,-) and (-,+) mismatch replaces the current values by
their target values at those two rows. -/
theorem switchPair_corrects_mismatch_pair
    (x y : I → ℤ)
    (i : PosNegMismatch x y)
    (j : NegPosMismatch x y) :
    switchPair x i.1 j.1 i.1 = y i.1 ∧
      switchPair x i.1 j.1 j.1 = y j.1 := by
  have hij : i.1 ≠ j.1 := by
    intro h
    have := i.2.1
    have := j.2.1
    omega
  constructor <;>
    simp [switchPair, hij, Ne.symm hij, i.2, j.2]

end

end GRWTSK.AlgebraicGeometry.Hodge.CMFourFactorSwitchCombinatorics
