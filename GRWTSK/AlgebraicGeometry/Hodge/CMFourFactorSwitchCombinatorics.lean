/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
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

/-- Finite counts of the two mismatch orientations. -/
def posNegCount (x y : I → ℤ) : ℕ :=
  ((Finset.univ.filter fun i => x i = 1 ∧ y i = -1)).card

def negPosCount (x y : I → ℤ) : ℕ :=
  ((Finset.univ.filter fun i => x i = -1 ∧ y i = 1)).card

/-- Summing the signed mismatch indicator counts positive-to-negative
mismatches minus negative-to-positive mismatches. -/
theorem sum_mismatchIndicator_eq_count_sub_count
    (x y : I → ℤ) :
    ∑ i, mismatchIndicator x y i =
      (posNegCount x y : ℤ) - (negPosCount x y : ℤ) := by
  classical
  unfold mismatchIndicator posNegCount negPosCount
  simp [Finset.card_eq_sum_ones, Finset.sum_filter]
/-- Equal sums of two sign-valued columns force the two mismatch orientations
to occur equally often. This is the exact pairing lemma used in one column of
the manuscript's switch reduction. -/
theorem mismatch_card_eq_of_sum_eq
    (x y : I → ℤ)
    (hx : ∀ i, IsSign (x i))
    (hy : ∀ i, IsSign (y i))
    (hsum : ∑ i, x i = ∑ i, y i) :
    posNegCount x y = negPosCount x y := by
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
  rw [sum_mismatchIndicator_eq_count_sub_count x y] at hzero
  exact_mod_cast sub_eq_zero.mp hzero

/-- Therefore the two mismatch sets admit a pairing. -/
theorem mismatch_fintype_card_eq_of_sum_eq
    (x y : I → ℤ)
    (hx : ∀ i, IsSign (x i))
    (hy : ∀ i, IsSign (y i))
    (hsum : ∑ i, x i = ∑ i, y i) :
    Fintype.card (PosNegMismatch x y) =
      Fintype.card (NegPosMismatch x y) := by
  have h := mismatch_card_eq_of_sum_eq x y hx hy hsum
  simpa [PosNegMismatch, NegPosMismatch, posNegCount, negPosCount,
    Fintype.card_subtype] using h

/-- Therefore the two mismatch sets admit a pairing. -/
noncomputable def mismatchPairing
    (x y : I → ℤ)
    (hx : ∀ i, IsSign (x i))
    (hy : ∀ i, IsSign (y i))
    (hsum : ∑ i, x i = ∑ i, y i) :
    PosNegMismatch x y ≃ NegPosMismatch x y :=
  Fintype.equivOfCardEq
    (mismatch_fintype_card_eq_of_sum_eq x y hx hy hsum)

/-- Atomic two-row switch at one column: swap the two row values. -/
def switchPair
    (x : I → ℤ) (i j : I) : I → ℤ :=
  fun k => if k = i then x j else if k = j then x i else x k

/-- A two-row switch preserves the total column sum. -/
theorem sum_switchPair
    (x : I → ℤ) (i j : I) :
    ∑ k, switchPair x i j k = ∑ k, x k := by
  classical
  have hfun :
      switchPair x i j = fun k => x (Equiv.swap i j k) := by
    funext k
    by_cases hki : k = i
    · subst k
      simp [switchPair]
    · by_cases hkj : k = j
      · subst k
        simp [switchPair, hki]
      · simp [switchPair, hki, hkj, Equiv.swap_apply_def]
  rw [hfun]
  exact Equiv.sum_comp (Equiv.swap i j) x

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


section ConjugatePairedSwitch

variable {G : Type*} [DecidableEq G]
  (conj : G → G)
  (hconj : Function.Involutive conj)

/-- A sign matrix is odd columnwise under the selected conjugation. -/
def IsOddMatrix (x : I → G → ℤ) : Prop :=
  ∀ i g, x i (conj g) = -x i g

/-- Perform the same two-row swap in one column and its conjugate column.

Using the same row transposition at both columns is exactly the "opposite swap
at the conjugate coordinate" in sign language, because oddness makes the
conjugate entries the negatives of the original entries. -/
def switchConjugatePair
    (x : I → G → ℤ)
    (g : G) (i j : I) : I → G → ℤ :=
  fun r h =>
    if h = g then switchPair (fun k => x k g) i j r
    else if h = conj g then switchPair (fun k => x k (conj g)) i j r
    else x r h

/-- Away from the selected conjugate pair, the matrix is unchanged. -/
theorem switchConjugatePair_eq_of_ne
    (x : I → G → ℤ)
    (g h : G) (i j : I)
    (hhg : h ≠ g) (hhcg : h ≠ conj g) :
    switchConjugatePair conj x g i j r h = x r h := by
  simp [switchConjugatePair, hhg, hhcg]

/-- The paired switch preserves oddness. -/
theorem switchConjugatePair_odd
    (x : I → G → ℤ)
    (hx : IsOddMatrix conj x)
    (g : G) (hg : g ≠ conj g)
    (i j : I) :
    IsOddMatrix conj (switchConjugatePair conj x g i j) := by
  intro r h
  by_cases hhg : h = g
  · subst h
    have hcg : conj g ≠ g := Ne.symm hg
    simp [switchConjugatePair, hconj g, hg, hcg, switchPair, hx]
  · by_cases hhcg : h = conj g
    · subst h
      simp [switchConjugatePair, hconj g, hg, hhg, switchPair, hx]
    · have hch_g : conj h ≠ g := by
        intro heq
        have := congrArg conj heq
        simpa [hconj h] using this
      have hch_cg : conj h ≠ conj g := by
        intro heq
        exact hhg (hconj.injective heq)
      simp [switchConjugatePair, hhg, hhcg, hch_g, hch_cg, hx]

/-- Every column sum is preserved by the paired switch. -/
theorem sum_switchConjugatePair
    (x : I → G → ℤ)
    (g : G) (i j : I)
    (h : G) :
    ∑ r, switchConjugatePair conj x g i j r h =
      ∑ r, x r h := by
  by_cases hhg : h = g
  · subst h
    simpa [switchConjugatePair] using
      sum_switchPair (fun r => x r g) i j
  · by_cases hhcg : h = conj g
    · subst h
      simpa [switchConjugatePair, hhg] using
        sum_switchPair (fun r => x r (conj g)) i j
    · simp [switchConjugatePair, hhg, hhcg]

/-- Sign-valuedness is preserved because each affected column is only
permuted in its row index. -/
theorem switchConjugatePair_isSign
    (x : I → G → ℤ)
    (hx : ∀ r h, IsSign (x r h))
    (g : G) (i j : I) :
    ∀ r h, IsSign (switchConjugatePair conj x g i j r h) := by
  intro r h
  by_cases hhg : h = g
  · subst h
    simp only [switchConjugatePair, if_pos]
    unfold switchPair
    split_ifs <;> apply hx
  · by_cases hhcg : h = conj g
    · simp [switchConjugatePair, hhg, hhcg, switchPair]
      split_ifs <;> apply hx
    · simp [switchConjugatePair, hhg, hhcg, hx]

/-- Indicator for whether one row is still incorrect at a column. -/
def rowMismatch (x y : I → ℤ) (r : I) : ℕ :=
  if x r = y r then 0 else 1

/-- Number of incorrect rows in one column. -/
def columnMismatchCount (x y : I → ℤ) : ℕ :=
  ∑ r, rowMismatch x y r

/-- A paired opposite mismatch is genuinely incorrect in both selected rows. -/
theorem rowMismatch_eq_one_of_posNeg
    (x y : I → ℤ)
    (i : PosNegMismatch x y) :
    rowMismatch x y i.1 = 1 := by
  simp [rowMismatch, i.2]

theorem rowMismatch_eq_one_of_negPos
    (x y : I → ℤ)
    (j : NegPosMismatch x y) :
    rowMismatch x y j.1 = 1 := by
  simp [rowMismatch, j.2]

/-- After switching one paired opposite mismatch, no row becomes less correct
at the selected column. -/
theorem rowMismatch_switchPair_le
    (x y : I → ℤ)
    (i : PosNegMismatch x y)
    (j : NegPosMismatch x y)
    (r : I) :
    rowMismatch (switchPair x i.1 j.1) y r ≤ rowMismatch x y r := by
  have hij : i.1 ≠ j.1 := by
    intro h
    have hi := i.2.1
    have hj := j.2.1
    omega
  by_cases hri : r = i.1
  · subst r
    have hc := (switchPair_corrects_mismatch_pair x y i j).1
    simp [rowMismatch, hc, i.2]
  · by_cases hrj : r = j.1
    · subst r
      have hc := (switchPair_corrects_mismatch_pair x y i j).2
      simp [rowMismatch, hc, j.2]
    · simp [rowMismatch, switchPair, hri, hrj]

/-- One paired opposite-mismatch switch strictly decreases the selected
column's mismatch count. This is the well-founded measure for iterating
corrections inside one column. -/
theorem columnMismatchCount_switchPair_lt
    (x y : I → ℤ)
    (i : PosNegMismatch x y)
    (j : NegPosMismatch x y) :
    columnMismatchCount (switchPair x i.1 j.1) y <
      columnMismatchCount x y := by
  unfold columnMismatchCount
  apply Finset.sum_lt_sum
  · intro r _
    exact rowMismatch_switchPair_le x y i j r
  · refine ⟨i.1, Finset.mem_univ _, ?_⟩
    have hc := (switchPair_corrects_mismatch_pair x y i j).1
    rw [rowMismatch_eq_one_of_posNeg x y i]
    simp [rowMismatch, hc]

/-- The conjugate-paired matrix switch strictly decreases the mismatch count
at the selected column. -/
theorem columnMismatchCount_switchConjugatePair_lt
    (x y : I → G → ℤ)
    (g : G)
    (i : PosNegMismatch (fun r => x r g) (fun r => y r g))
    (j : NegPosMismatch (fun r => x r g) (fun r => y r g)) :
    columnMismatchCount
        (fun r => switchConjugatePair conj x g i.1 j.1 r g)
        (fun r => y r g) <
      columnMismatchCount (fun r => x r g) (fun r => y r g) := by
  simpa [switchConjugatePair] using
    columnMismatchCount_switchPair_lt
      (fun r => x r g) (fun r => y r g) i j

/-- Unrelated columns have exactly the same mismatch count after a paired
switch. This is the "previous columns stay fixed" invariant needed by the
outer finite induction over conjugate-pair representatives. -/
theorem columnMismatchCount_switchConjugatePair_eq_of_ne
    (x y : I → G → ℤ)
    (g h : G) (i j : I)
    (hhg : h ≠ g) (hhcg : h ≠ conj g) :
    columnMismatchCount
        (fun r => switchConjugatePair conj x g i j r h)
        (fun r => y r h) =
      columnMismatchCount (fun r => x r h) (fun r => y r h) := by
  apply Finset.sum_congr rfl
  intro r _
  rw [switchConjugatePair_eq_of_ne conj x g h i j hhg hhcg]

/-- A paired opposite mismatch at the selected column is corrected by the
conjugate-paired switch. -/
theorem switchConjugatePair_corrects_selected
    (x y : I → G → ℤ)
    (g : G)
    (i : PosNegMismatch (fun r => x r g) (fun r => y r g))
    (j : NegPosMismatch (fun r => x r g) (fun r => y r g)) :
    switchConjugatePair conj x g i.1 j.1 i.1 g = y i.1 g ∧
      switchConjugatePair conj x g i.1 j.1 j.1 g = y j.1 g := by
  simpa [switchConjugatePair] using
    switchPair_corrects_mismatch_pair
      (fun r => x r g) (fun r => y r g) i j

/-- If both current and target matrices are odd, correcting the selected
mismatch pair automatically corrects the same two rows at the conjugate
column. -/
theorem switchConjugatePair_corrects_conjugate
    (x y : I → G → ℤ)
    (hx : IsOddMatrix conj x)
    (hy : IsOddMatrix conj y)
    (g : G) (hg : g ≠ conj g)
    (i : PosNegMismatch (fun r => x r g) (fun r => y r g))
    (j : NegPosMismatch (fun r => x r g) (fun r => y r g)) :
    switchConjugatePair conj x g i.1 j.1 i.1 (conj g) = y i.1 (conj g) ∧
      switchConjugatePair conj x g i.1 j.1 j.1 (conj g) = y j.1 (conj g) := by
  have hsel := switchConjugatePair_corrects_selected conj x y g i j
  have hodd :=
    switchConjugatePair_odd conj hconj x hx g hg i.1 j.1
  constructor
  · rw [hodd i.1 g, hy i.1 g, hsel.1]
  · rw [hodd j.1 g, hy j.1 g, hsel.2]

/-- Unrelated columns remain pointwise unchanged. -/
theorem switchConjugatePair_preserves_other_column
    (x : I → G → ℤ)
    (g h : G) (i j : I)
    (hhg : h ≠ g) (hhcg : h ≠ conj g) :
    ∀ r, switchConjugatePair conj x g i j r h = x r h :=
  fun r => switchConjugatePair_eq_of_ne conj x g h i j hhg hhcg

end ConjugatePairedSwitch

end

end GRWTSK.AlgebraicGeometry.Hodge.CMFourFactorSwitchCombinatorics
