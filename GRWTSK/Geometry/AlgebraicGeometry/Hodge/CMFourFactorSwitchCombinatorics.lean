/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
Mathlib retains its upstream authorship and Apache-2.0 license. -/
import GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMFourBalance

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

namespace GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMFourFactorSwitchCombinatorics

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

/-- If two sign-valued columns have equal sums and are not equal, then there
is a pair of opposite mismatches available for one atomic switch. -/
theorem exists_opposite_mismatch_pair
    (x y : I → ℤ)
    (hx : ∀ r, IsSign (x r))
    (hy : ∀ r, IsSign (y r))
    (hsum : ∑ r, x r = ∑ r, y r)
    (hne : x ≠ y) :
    Nonempty (PosNegMismatch x y × NegPosMismatch x y) := by
  obtain ⟨r, hr⟩ := Function.ne_iff.mp hne
  have hcards :=
    mismatch_fintype_card_eq_of_sum_eq x y hx hy hsum
  rcases hx r with hxp | hxn <;>
  rcases hy r with hyp | hyn
  · exact False.elim (hr (by rw [hxp, hyp]))
  ·
    let i : PosNegMismatch x y := ⟨r, hxp, hyn⟩
    have hpos : 0 < Fintype.card (PosNegMismatch x y) :=
      Fintype.card_pos_iff.mpr ⟨i⟩
    have hneg : 0 < Fintype.card (NegPosMismatch x y) := by
      rwa [← hcards]
    obtain ⟨j⟩ := Fintype.card_pos_iff.mp hneg
    exact ⟨⟨i, j⟩⟩
  ·
    let j : NegPosMismatch x y := ⟨r, hxn, hyp⟩
    have hneg : 0 < Fintype.card (NegPosMismatch x y) :=
      Fintype.card_pos_iff.mpr ⟨j⟩
    have hpos : 0 < Fintype.card (PosNegMismatch x y) := by
      rwa [hcards]
    obtain ⟨i⟩ := Fintype.card_pos_iff.mp hpos
    exact ⟨⟨i, j⟩⟩
  · exact False.elim (hr (by rw [hxn, hyn]))

/-- Reachability by finitely many conjugate-paired switches at one fixed
column pair. Every nontrivial constructor records the exact mismatch pair used
at the current state. -/
inductive PairedColumnReach
    (conj : G → G) (g : G) (y : I → G → ℤ) :
    (I → G → ℤ) → (I → G → ℤ) → Prop
  | refl (x) : PairedColumnReach conj g y x x
  | step {x z}
      (i : PosNegMismatch (fun r => x r g) (fun r => y r g))
      (j : NegPosMismatch (fun r => x r g) (fun r => y r g))
      (hrest :
        PairedColumnReach conj g y
          (switchConjugatePair conj x g i.1 j.1) z) :
      PairedColumnReach conj g y x z

/-- A selected column can be completely corrected by finitely many paired
switches. The proof is well-founded on the mismatch count. -/
theorem exists_pairedColumnReach_corrects
    (x y : I → G → ℤ)
    (hxsign : ∀ r h, IsSign (x r h))
    (hysign : ∀ r h, IsSign (y r h))
    (hxodd : IsOddMatrix conj x)
    (hyodd : IsOddMatrix conj y)
    (g : G) (hg : g ≠ conj g)
    (hsum : ∑ r, x r g = ∑ r, y r g) :
    ∃ z,
      PairedColumnReach conj g y x z ∧
      (∀ r, z r g = y r g) ∧
      (∀ r, z r (conj g) = y r (conj g)) ∧
      IsOddMatrix conj z ∧
      (∀ r h, IsSign (z r h)) ∧
      (∀ h, ∑ r, z r h = ∑ r, x r h) := by
  let measure : (I → G → ℤ) → ℕ :=
    fun u => columnMismatchCount (fun r => u r g) (fun r => y r g)
  induction hm : measure x using Nat.strong_induction_on generalizing x with
  | h n ih =>
      by_cases hcol : (fun r => x r g) = fun r => y r g
      · refine ⟨x, PairedColumnReach.refl x, ?_, ?_, hxodd, hxsign, ?_⟩
        · intro r
          exact DFunLike.congr_fun hcol r
        · intro r
          rw [hxodd r g, hyodd r g]
          congr 1
          exact DFunLike.congr_fun hcol r
        · intro h
          rfl
      ·
        obtain ⟨⟨i, j⟩⟩ :=
          exists_opposite_mismatch_pair
            (fun r => x r g) (fun r => y r g)
            (fun r => hxsign r g) (fun r => hysign r g)
            hsum hcol
        let x' := switchConjugatePair conj x g i.1 j.1
        have hlt : measure x' < measure x := by
          exact columnMismatchCount_switchConjugatePair_lt conj x y g i j
        have hx'odd : IsOddMatrix conj x' :=
          switchConjugatePair_odd conj hconj x hxodd g hg i.1 j.1
        have hx'sign : ∀ r h, IsSign (x' r h) :=
          switchConjugatePair_isSign conj x hxsign g i.1 j.1
        have hx'sumg : ∑ r, x' r g = ∑ r, y r g := by
          rw [sum_switchConjugatePair conj x g i.1 j.1 g, hsum]
        have hlt' : measure x' < n := by
          simpa [hm] using hlt
        obtain ⟨z, hreach, hzg, hzgc, hzodd, hzsign, hzsum⟩ :=
          ih (measure x') hlt' x' rfl hx'sign hx'odd
            hyodd hx'sumg
        refine ⟨z, PairedColumnReach.step i j hreach,
          hzg, hzgc, hzodd, hzsign, ?_⟩
        intro h
        rw [hzsum h, sum_switchConjugatePair conj x g i.1 j.1 h]

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

/-- A matrix row packaged as an odd sign row. -/
def oddSignRowOfMatrix
    (x : I → G → ℤ)
    (hxsign : ∀ r h, IsSign (x r h))
    (hxodd : IsOddMatrix conj x)
    (r : I) :
    OddSignRow G conj where
  value := x r
  isSign := hxsign r
  odd := hxodd r

/-- The two selected rows have the same pointwise sum before and after one paired switch. -/
theorem switchConjugatePair_selectedRows_balance
    (x : I → G → ℤ)
    (g : G)
    (i j : I)
    (hij : i ≠ j) :
    ∀ h,
      x i h + x j h =
        switchConjugatePair conj x g i j i h +
          switchConjugatePair conj x g i j j h := by
  intro h
  by_cases hhg : h = g
  · subst h
    simp [switchConjugatePair, switchPair, hij, Ne.symm hij, add_comm]
  · by_cases hhcg : h = conj g
    · simp [switchConjugatePair, hhg, hhcg, switchPair, hij, Ne.symm hij, add_comm]
    · simp [switchConjugatePair, hhg, hhcg]

/-- The four old/new selected rows of one atomic switch satisfy the exact
four-label balance relation consumed by the four-factor Hodge machinery. -/
theorem atomicSwitch_fourBalance
    (x y : I → G → ℤ)
    (hxsign : ∀ r h, IsSign (x r h))
    (hxodd : IsOddMatrix conj x)
    (g : G) (hg : g ≠ conj g)
    (i : PosNegMismatch (fun r => x r g) (fun r => y r g))
    (j : NegPosMismatch (fun r => x r g) (fun r => y r g)) :
    FourBalance
      (oddSignRowOfMatrix conj x hxsign hxodd i.1)
      (oddSignRowOfMatrix conj x hxsign hxodd j.1)
      (oddSignRowOfMatrix conj
        (switchConjugatePair conj x g i.1 j.1)
        (switchConjugatePair_isSign conj x hxsign g i.1 j.1)
        (switchConjugatePair_odd conj hconj x hxodd g hg i.1 j.1)
        i.1)
      (oddSignRowOfMatrix conj
        (switchConjugatePair conj x g i.1 j.1)
        (switchConjugatePair_isSign conj x hxsign g i.1 j.1)
        (switchConjugatePair_odd conj hconj x hxodd g hg i.1 j.1)
        j.1) := by
  have hij : i.1 ≠ j.1 := by
    intro h
    have hi := i.2.1
    have hj := j.2.1
    omega
  intro h
  exact switchConjugatePair_selectedRows_balance
    conj x g i.1 j.1 hij h

/-- Rows outside the selected pair are pointwise unchanged in every column.

This is the exact support statement behind the manuscript decomposition of one
elementary transition into one four-factor switched core plus unchanged
two-factor identity tensors. -/
theorem switchConjugatePair_row_eq_of_ne
    (x : I → G → ℤ)
    (g : G) (i j r : I)
    (hri : r ≠ i) (hrj : r ≠ j) :
    ∀ h, switchConjugatePair conj x g i j r h = x r h := by
  intro h
  by_cases hhg : h = g
  · subst h
    simp [switchConjugatePair, switchPair, hri, hrj]
  · by_cases hhcg : h = conj g
    · simp [switchConjugatePair, hhg, hhcg, switchPair, hri, hrj]
    · simp [switchConjugatePair, hhg, hhcg]

/-- The row support of one atomic switch is contained in the two selected rows. -/
theorem switchConjugatePair_changedRow_subset
    (x : I → G → ℤ)
    (g : G) (i j r : I)
    (hr :
      (fun h => switchConjugatePair conj x g i j r h) ≠
        (fun h => x r h)) :
    r = i ∨ r = j := by
  by_contra h
  push_neg at h
  exact hr (funext (switchConjugatePair_row_eq_of_ne
    conj x g i j r h.1 h.2))

/-- Every unchanged row gives literal equality between its old and new sign
functions.  This is the combinatorial input consumed by the manuscript's
two-factor identity tensor for that row. -/
theorem unchangedRow_eq
    (x : I → G → ℤ)
    (g : G) (i j r : I)
    (hri : r ≠ i) (hrj : r ≠ j) :
    (fun h => switchConjugatePair conj x g i j r h) =
      (fun h => x r h) :=
  funext (switchConjugatePair_row_eq_of_ne
    conj x g i j r hri hrj)

/-- Unrelated columns remain pointwise unchanged. -/
theorem switchConjugatePair_preserves_other_column
    (x : I → G → ℤ)
    (g h : G) (i j : I)
    (hhg : h ≠ g) (hhcg : h ≠ conj g) :
    ∀ r, switchConjugatePair conj x g i j r h = x r h :=
  fun r => switchConjugatePair_eq_of_ne conj x g h i j hhg hhcg


section GlobalSwitchConnectivity

variable {G : Type*} [Fintype G] [DecidableEq G]
  (conj : G → G)
  (hconj : Function.Involutive conj)

/-- Oddness makes mismatch counts identical on conjugate columns. -/
theorem columnMismatchCount_conj_eq
    (x y : I → G → ℤ)
    (hx : IsOddMatrix conj x)
    (hy : IsOddMatrix conj y)
    (g : G) :
    columnMismatchCount (fun r => x r (conj g)) (fun r => y r (conj g)) =
      columnMismatchCount (fun r => x r g) (fun r => y r g) := by
  unfold columnMismatchCount
  apply Finset.sum_congr rfl
  intro r _
  simp [rowMismatch, hx r g, hy r g]

/-- Total number of incorrect matrix entries. -/
def matrixMismatchCount
    (x y : I → G → ℤ) : ℕ :=
  ∑ g, columnMismatchCount (fun r => x r g) (fun r => y r g)

/-- One valid conjugate-paired switch strictly decreases the global mismatch
count. This removes any need to choose representatives of conjugate columns. -/
theorem matrixMismatchCount_switchConjugatePair_lt
    (x y : I → G → ℤ)
    (hx : IsOddMatrix conj x)
    (hy : IsOddMatrix conj y)
    (g : G) (hg : g ≠ conj g)
    (i : PosNegMismatch (fun r => x r g) (fun r => y r g))
    (j : NegPosMismatch (fun r => x r g) (fun r => y r g)) :
    matrixMismatchCount
        (switchConjugatePair conj x g i.1 j.1) y <
      matrixMismatchCount x y := by
  let x' := switchConjugatePair conj x g i.1 j.1
  have hx' : IsOddMatrix conj x' :=
    switchConjugatePair_odd conj hconj x hx g hg i.1 j.1
  have hsel :
      columnMismatchCount (fun r => x' r g) (fun r => y r g) <
        columnMismatchCount (fun r => x r g) (fun r => y r g) :=
    columnMismatchCount_switchConjugatePair_lt conj x y g i j
  unfold matrixMismatchCount
  apply Finset.sum_lt_sum
  · intro h _
    by_cases hhg : h = g
    · subst h
      exact hsel.le
    · by_cases hhcg : h = conj g
      · subst h
        rw [columnMismatchCount_conj_eq conj hx' hy g,
          columnMismatchCount_conj_eq conj hx hy g]
        exact hsel.le
      ·
        rw [columnMismatchCount_switchConjugatePair_eq_of_ne
          conj x y g h i.1 j.1 hhg hhcg]
  · exact ⟨g, Finset.mem_univ _, hsel⟩

/-- If an odd sign matrix has at least one row, conjugation has no fixed
column. This is forced by x(cg) = -x(g) and x(g) in {+1,-1}. -/
theorem conj_ne_self_of_row
    (x : I → G → ℤ)
    (hxsign : ∀ r g, IsSign (x r g))
    (hxodd : IsOddMatrix conj x)
    (r : I) (g : G) :
    g ≠ conj g := by
  intro hfix
  have ho := hxodd r g
  have heq : x r g = -x r g := by
    simpa [← hfix] using ho
  rcases hxsign r g with hp | hn <;> omega

/-- Reachability by finitely many conjugate-paired switches, allowing the
selected column to vary from step to step. -/
inductive PairedMatrixReach
    (conj : G → G) (y : I → G → ℤ) :
    (I → G → ℤ) → (I → G → ℤ) → Prop
  | refl (x) : PairedMatrixReach conj y x x
  | step {x z}
      (g : G)
      (i : PosNegMismatch (fun r => x r g) (fun r => y r g))
      (j : NegPosMismatch (fun r => x r g) (fun r => y r g))
      (hrest :
        PairedMatrixReach conj y
          (switchConjugatePair conj x g i.1 j.1) z) :
      PairedMatrixReach conj y x z

/-- Full finite switch connectivity.

Two finite odd +/-1 sign matrices with identical column sums are connected by
a finite sequence of the manuscript's elementary conjugate-paired two-row
switches. The proof is strong induction on the total number of mismatching
matrix entries. -/
theorem pairedMatrixReach_of_equal_column_sums
    (x y : I → G → ℤ)
    (hxsign : ∀ r g, IsSign (x r g))
    (hysign : ∀ r g, IsSign (y r g))
    (hxodd : IsOddMatrix conj x)
    (hyodd : IsOddMatrix conj y)
    (hsum : ∀ g, ∑ r, x r g = ∑ r, y r g) :
    PairedMatrixReach conj y x y := by
  let measure : (I → G → ℤ) → ℕ := fun u => matrixMismatchCount u y
  induction hm : measure x using Nat.strong_induction_on generalizing x with
  | h n ih =>
      by_cases hxy : x = y
      · subst y
        exact PairedMatrixReach.refl x
      ·
        obtain ⟨r, hr⟩ := Function.ne_iff.mp hxy
        obtain ⟨g, hrg⟩ := Function.ne_iff.mp hr
        have hcol :
            (fun q => x q g) ≠ (fun q => y q g) := by
          intro heq
          exact hrg (DFunLike.congr_fun heq r)
        obtain ⟨⟨i, j⟩⟩ :=
          exists_opposite_mismatch_pair
            (fun q => x q g) (fun q => y q g)
            (fun q => hxsign q g) (fun q => hysign q g)
            (hsum g) hcol
        have hg : g ≠ conj g :=
          conj_ne_self_of_row conj x hxsign hxodd r g
        let x' := switchConjugatePair conj x g i.1 j.1
        have hx'odd : IsOddMatrix conj x' :=
          switchConjugatePair_odd conj hconj x hxodd g hg i.1 j.1
        have hx'sign : ∀ q k, IsSign (x' q k) :=
          switchConjugatePair_isSign conj x hxsign g i.1 j.1
        have hx'sum : ∀ k, ∑ q, x' q k = ∑ q, y q k := by
          intro k
          rw [sum_switchConjugatePair conj x g i.1 j.1 k, hsum k]
        have hlt : measure x' < measure x := by
          exact matrixMismatchCount_switchConjugatePair_lt
            conj hconj x y hxodd hyodd g hg i j
        have hlt' : measure x' < n := by
          simpa [hm] using hlt
        have hrest :
            PairedMatrixReach conj y x' y :=
          ih (measure x') hlt' x' rfl hx'sign hx'odd hx'sum
        exact PairedMatrixReach.step g i j hrest

end GlobalSwitchConnectivity

end ConjugatePairedSwitch

end

end GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMFourFactorSwitchCombinatorics
