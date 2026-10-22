/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported Mathlib results retain their original credits and Apache-2.0 license.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Moebius.CenteredLowGCDOrderedCorrelation
import Mathlib.Algebra.BigOperators.Group.Finset.Sigma
import Mathlib.Data.Finset.Prod
import Mathlib.Tactic

/-!
# Positive-shift reindexing of the centered low-gcd bilinear

The complete ordered square is split into its explicit diagonal and positive
shift fibers `1 <= h <= 2X-1`, `2X < n <= 4X-h`.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators ArithmeticFunction ArithmeticFunction.Moebius

namespace GRWTSK.NumberTheory.Moebius.CenteredLowGCD

open ArithmeticFunction

/-- Exact diagonal retained when passing to positive shifts. -/
def diagonalCenteredLowGCDCorrelation
    (X Y : ℕ) (w : ℕ → ℝ) : ℝ :=
  ∑ n ∈ octaveIndexSet X,
    w n ^ 2 * centeredLowGCDPairKernel X Y n n

/-- Strictly upper-triangular pairs in the octave. -/
def positiveOffDiagonalPairs (X : ℕ) : Finset (ℕ × ℕ) :=
  (octaveIndexSet X).offDiag.filter fun p => p.1 < p.2

/-- Strictly lower-triangular pairs in the octave. -/
def negativeOffDiagonalPairs (X : ℕ) : Finset (ℕ × ℕ) :=
  (octaveIndexSet X).offDiag.filter fun p => p.2 < p.1

/-- Positive shifts occurring between octave points. -/
def positiveLagSet (X : ℕ) : Finset ℕ :=
  Finset.Icc 1 (2 * X - 1)

/-- Upper-triangular pairs having exact difference `h`. -/
def positiveLagFiber
    (X h : ℕ) : Finset (ℕ × ℕ) :=
  (positiveOffDiagonalPairs X).filter fun p => p.2 - p.1 = h

/-- The exact signed positive-shift low-gcd correlation. -/
def positiveShiftCenteredLowGCDCorrelation
    (X Y : ℕ) (w : ℕ → ℝ) : ℝ :=
  ∑ h ∈ positiveLagSet X,
    ∑ n ∈ Finset.Ioc (2 * X) (4 * X - h),
      w n * w (n + h) *
        centeredLowGCDPairKernel X Y n (n + h)


@[simp]
theorem mem_positiveOffDiagonalPairs_iff
    {X : ℕ} {p : ℕ × ℕ} :
    p ∈ positiveOffDiagonalPairs X ↔
      p.1 ∈ octaveIndexSet X ∧
      p.2 ∈ octaveIndexSet X ∧
      p.1 < p.2 := by
  constructor
  · intro hp
    rcases Finset.mem_filter.mp hp with ⟨hoff, hlt⟩
    rcases Finset.mem_offDiag.mp hoff with ⟨h1, h2, hne⟩
    exact ⟨h1, h2, hlt⟩
  · rintro ⟨h1, h2, hlt⟩
    exact Finset.mem_filter.mpr
      ⟨Finset.mem_offDiag.mpr
        ⟨h1, h2, Nat.ne_of_lt hlt⟩,
       hlt⟩

@[simp]
theorem mem_negativeOffDiagonalPairs_iff
    {X : ℕ} {p : ℕ × ℕ} :
    p ∈ negativeOffDiagonalPairs X ↔
      p.1 ∈ octaveIndexSet X ∧
      p.2 ∈ octaveIndexSet X ∧
      p.2 < p.1 := by
  constructor
  · intro hp
    rcases Finset.mem_filter.mp hp with ⟨hoff, hlt⟩
    rcases Finset.mem_offDiag.mp hoff with ⟨h1, h2, hne⟩
    exact ⟨h1, h2, hlt⟩
  · rintro ⟨h1, h2, hlt⟩
    exact Finset.mem_filter.mpr
      ⟨Finset.mem_offDiag.mpr
        ⟨h1, h2, Ne.symm (Nat.ne_of_lt hlt)⟩,
       hlt⟩

/-- Coordinate swap identifies lower and upper triangular regions. -/
def negativePositiveSwapEquiv
    (X : ℕ) :
    {p : ℕ × ℕ // p ∈ negativeOffDiagonalPairs X} ≃
      {p : ℕ × ℕ // p ∈ positiveOffDiagonalPairs X} where
  toFun p :=
    ⟨(p.1.2, p.1.1), by
      rcases mem_negativeOffDiagonalPairs_iff.mp p.2 with
        ⟨h1, h2, hlt⟩
      exact mem_positiveOffDiagonalPairs_iff.mpr
        ⟨h2, h1, hlt⟩⟩
  invFun p :=
    ⟨(p.1.2, p.1.1), by
      rcases mem_positiveOffDiagonalPairs_iff.mp p.2 with
        ⟨h1, h2, hlt⟩
      exact mem_negativeOffDiagonalPairs_iff.mpr
        ⟨h2, h1, hlt⟩⟩
  left_inv p := by
    apply Subtype.ext
    rcases p.1 with ⟨a, b⟩
    rfl
  right_inv p := by
    apply Subtype.ext
    rcases p.1 with ⟨a, b⟩
    rfl

/-- The centered pair kernel is symmetric. -/
theorem centeredLowGCDPairKernel_comm
    (X Y n q : ℕ) :
    centeredLowGCDPairKernel X Y n q =
      centeredLowGCDPairKernel X Y q n := by
  unfold centeredLowGCDPairKernel genuineLowGCDPairKernel
  have hgg :
      (∑ d ∈ modulusIndexSet X,
        ∑ e ∈ modulusIndexSet X,
          if d ∣ n ∧ e ∣ q ∧ Nat.gcd d e ≤ Y then
            mobiusLogTerm n d * mobiusLogTerm q e
          else 0) =
      (∑ d ∈ modulusIndexSet X,
        ∑ e ∈ modulusIndexSet X,
          if d ∣ q ∧ e ∣ n ∧ Nat.gcd d e ≤ Y then
            mobiusLogTerm q d * mobiusLogTerm n e
          else 0) := by
    conv_lhs => rw [Finset.sum_comm]
    apply Finset.sum_congr rfl
    intro d hd
    apply Finset.sum_congr rfl
    intro e he
    rw [Nat.gcd_comm]
    by_cases hen : e ∣ n <;>
      by_cases hdq : d ∣ q <;>
      by_cases hg : Nat.gcd d e ≤ Y <;>
      simp [hen, hdq, hg] <;> ring
  rw [hgg]
  ring

/-- The complete off-diagonal pair set is the disjoint union of its two strict
triangular regions. -/
theorem offDiagonalPairs_eq_positive_union_negative
    (X : ℕ) :
    (octaveIndexSet X).offDiag =
      positiveOffDiagonalPairs X ∪ negativeOffDiagonalPairs X := by
  ext p
  constructor
  · intro hp
    rcases Finset.mem_offDiag.mp hp with ⟨h1, h2, hne⟩
    rcases lt_or_gt_of_ne hne with hlt | hgt
    · exact Finset.mem_union.mpr <|
        Or.inl <| mem_positiveOffDiagonalPairs_iff.mpr
          ⟨h1, h2, hlt⟩
    · exact Finset.mem_union.mpr <|
        Or.inr <| mem_negativeOffDiagonalPairs_iff.mpr
          ⟨h1, h2, hgt⟩
  · intro hp
    rcases Finset.mem_union.mp hp with hp | hp
    · rcases mem_positiveOffDiagonalPairs_iff.mp hp with
        ⟨h1, h2, hlt⟩
      exact Finset.mem_offDiag.mpr
        ⟨h1, h2, Nat.ne_of_lt hlt⟩
    · rcases mem_negativeOffDiagonalPairs_iff.mp hp with
        ⟨h1, h2, hlt⟩
      exact Finset.mem_offDiag.mpr
        ⟨h1, h2, Ne.symm (Nat.ne_of_lt hlt)⟩

/-- The upper and lower triangular regions are disjoint. -/
theorem positiveNegativePairs_disjoint
    (X : ℕ) :
    Disjoint
      (positiveOffDiagonalPairs X)
      (negativeOffDiagonalPairs X) := by
  rw [Finset.disjoint_left]
  intro p hp hn
  have hp' := (mem_positiveOffDiagonalPairs_iff.mp hp).2.2
  have hn' := (mem_negativeOffDiagonalPairs_iff.mp hn).2.2
  omega

/-- Lower and upper pair sums agree for the weighted centered symmetric kernel. -/
theorem negativePairSum_eq_positive
    (X Y : ℕ) (w : ℕ → ℝ) :
    (∑ p ∈ negativeOffDiagonalPairs X,
      w p.1 * w p.2 * centeredLowGCDPairKernel X Y p.1 p.2) =
    ∑ p ∈ positiveOffDiagonalPairs X,
      w p.1 * w p.2 * centeredLowGCDPairKernel X Y p.1 p.2 := by
  rw [← Finset.sum_attach, ← Finset.sum_attach]
  exact Fintype.sum_equiv
    (negativePositiveSwapEquiv X)
    (fun p =>
      w p.1.1 * w p.1.2 *
        centeredLowGCDPairKernel X Y p.1.1 p.1.2)
    (fun p =>
      w p.1.1 * w p.1.2 *
        centeredLowGCDPairKernel X Y p.1.1 p.1.2)
    (by
      intro p
      dsimp [negativePositiveSwapEquiv]
      rw [centeredLowGCDPairKernel_comm]
      ring)

/-- The ordered correlation is diagonal plus twice the upper-triangular part. -/
theorem orderedCorrelation_eq_diagonal_add_two_mul_positive
    (X Y : ℕ) (w : ℕ → ℝ) :
    orderedCenteredLowGCDCorrelation X Y w =
      diagonalCenteredLowGCDCorrelation X Y w +
        2 *
          ∑ p ∈ positiveOffDiagonalPairs X,
            w p.1 * w p.2 *
              centeredLowGCDPairKernel X Y p.1 p.2 := by
  unfold orderedCenteredLowGCDCorrelation
    diagonalCenteredLowGCDCorrelation
  rw [Finset.sum_product']
  rw [← Finset.diag_union_offDiag]
  rw [Finset.sum_union
    (Finset.disjoint_diag_offDiag (octaveIndexSet X))]
  rw [Finset.sum_diag]
  have hoff :
      (∑ p ∈ (octaveIndexSet X).offDiag,
        w p.1 * w p.2 * centeredLowGCDPairKernel X Y p.1 p.2) =
      2 *
        ∑ p ∈ positiveOffDiagonalPairs X,
          w p.1 * w p.2 * centeredLowGCDPairKernel X Y p.1 p.2 := by
    rw [offDiagonalPairs_eq_positive_union_negative]
    rw [Finset.sum_union (positiveNegativePairs_disjoint X)]
    rw [negativePairSum_eq_positive]
    ring
  rw [hoff]
  apply congrArg₂ (· + ·)
  · apply Finset.sum_congr rfl
    intro n hn
    ring
  · rfl

@[simp]
theorem mem_positiveLagFiber_iff
    {X h : ℕ} {p : ℕ × ℕ} :
    p ∈ positiveLagFiber X h ↔
      p.1 ∈ octaveIndexSet X ∧
      p.2 ∈ octaveIndexSet X ∧
      p.1 < p.2 ∧
      p.2 = p.1 + h := by
  constructor
  · intro hp
    rcases Finset.mem_filter.mp hp with ⟨hpair, hdiff⟩
    rcases mem_positiveOffDiagonalPairs_iff.mp hpair with
      ⟨h1, h2, hlt⟩
    exact ⟨h1, h2, hlt, by omega⟩
  · rintro ⟨h1, h2, hlt, heq⟩
    exact Finset.mem_filter.mpr
      ⟨mem_positiveOffDiagonalPairs_iff.mpr
        ⟨h1, h2, hlt⟩,
       by omega⟩

/-- Every positive pair difference lies in the explicit lag range. -/
theorem positivePairLag_mapsTo
    (X : ℕ) :
    ∀ p ∈ positiveOffDiagonalPairs X,
      p.2 - p.1 ∈ positiveLagSet X := by
  intro p hp
  rcases mem_positiveOffDiagonalPairs_iff.mp hp with
    ⟨h1, h2, hlt⟩
  have h1I := Finset.mem_Ioc.mp h1
  have h2I := Finset.mem_Ioc.mp h2
  exact Finset.mem_Icc.mpr ⟨by omega, by omega⟩

/-- One lag fiber is exactly the set of left endpoints
`2X < n <= 4X-h`. -/
def positiveLagFiberEquivIoc
    {X h : ℕ}
    (hh : h ∈ positiveLagSet X) :
    {p : ℕ × ℕ // p ∈ positiveLagFiber X h} ≃
      {n : ℕ // n ∈ Finset.Ioc (2 * X) (4 * X - h)} where
  toFun p :=
    ⟨p.1.1, by
      rcases mem_positiveLagFiber_iff.mp p.2 with
        ⟨h1, h2, hlt, heq⟩
      have h1I := Finset.mem_Ioc.mp h1
      have h2I := Finset.mem_Ioc.mp h2
      exact Finset.mem_Ioc.mpr ⟨h1I.1, by omega⟩⟩
  invFun n :=
    ⟨(n.1, n.1 + h), by
      have hhI := Finset.mem_Icc.mp hh
      have hnI := Finset.mem_Ioc.mp n.2
      exact mem_positiveLagFiber_iff.mpr
        ⟨Finset.mem_Ioc.mpr
            ⟨hnI.1, hnI.2.trans (Nat.sub_le _ _)⟩,
         Finset.mem_Ioc.mpr ⟨by omega, by omega⟩,
         by omega,
         rfl⟩⟩
  left_inv p := by
    apply Subtype.ext
    apply Prod.ext
    · rfl
    · rcases mem_positiveLagFiber_iff.mp p.2 with
        ⟨h1, h2, hlt, heq⟩
      exact heq.symm
  right_inv n := by
    apply Subtype.ext
    rfl

/-- The upper-triangular pair sum is exactly the positive-shift sum with all
boundary terms explicit. -/
theorem positivePairSum_eq_positiveShift
    (X Y : ℕ) (w : ℕ → ℝ) :
    (∑ p ∈ positiveOffDiagonalPairs X,
      w p.1 * w p.2 * centeredLowGCDPairKernel X Y p.1 p.2) =
      positiveShiftCenteredLowGCDCorrelation X Y w := by
  unfold positiveShiftCenteredLowGCDCorrelation
    positiveLagFiber
  rw [← Finset.sum_fiberwise_of_maps_to
    (positivePairLag_mapsTo X)]
  apply Finset.sum_congr rfl
  intro h hh
  rw [← Finset.sum_attach, ← Finset.sum_attach]
  exact Fintype.sum_equiv
    (positiveLagFiberEquivIoc hh)
    (fun p =>
      w p.1.1 * w p.1.2 *
        centeredLowGCDPairKernel X Y p.1.1 p.1.2)
    (fun n =>
      w n.1 * w (n.1 + h) *
        centeredLowGCDPairKernel X Y n.1 (n.1 + h))
    (by
      intro p
      rcases mem_positiveLagFiber_iff.mp p.2 with
        ⟨h1, h2, hlt, heq⟩
      change
        w p.1.1 * w p.1.2 *
            centeredLowGCDPairKernel X Y p.1.1 p.1.2 =
          w p.1.1 * w (p.1.1 + h) *
            centeredLowGCDPairKernel X Y p.1.1 (p.1.1 + h)
      rw [heq])

/-- Final exact low-g reindexing: the positive-shift sum, diagonal correction,
and modulus bilinear form are one finite object. -/
theorem two_mul_positiveShift_add_diagonal_eq_bilinear
    {X Y : ℕ}
    (hX : 0 < X)
    (hY : 1 ≤ Y)
    (w : ℕ → ℝ) :
    2 * positiveShiftCenteredLowGCDCorrelation X Y w +
        diagonalCenteredLowGCDCorrelation X Y w =
      centeredLowGCDBilinear X Y w := by
  calc
    2 * positiveShiftCenteredLowGCDCorrelation X Y w +
        diagonalCenteredLowGCDCorrelation X Y w =
      diagonalCenteredLowGCDCorrelation X Y w +
        2 *
          ∑ p ∈ positiveOffDiagonalPairs X,
            w p.1 * w p.2 *
              centeredLowGCDPairKernel X Y p.1 p.2 := by
                rw [positivePairSum_eq_positiveShift]
                ring
    _ = orderedCenteredLowGCDCorrelation X Y w :=
      (orderedCorrelation_eq_diagonal_add_two_mul_positive
        X Y w).symm
    _ = centeredLowGCDBilinear X Y w :=
      orderedCenteredLowGCDCorrelation_eq_bilinear hX hY w


end GRWTSK.NumberTheory.Moebius.CenteredLowGCD
