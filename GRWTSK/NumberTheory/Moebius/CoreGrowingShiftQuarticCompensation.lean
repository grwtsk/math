/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #713. Parent: draft PR #709 at
`84bbedccdb6d370bbcb7ac20f10b5b9264f821ce`.
-/
import GRWTSK.NumberTheory.Moebius.CoreGrowingShiftQuadraticEnvelope

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- One four-point Möbius cell arising from squaring a binary Möbius prefix. -/
def mertensTwoPointQuarticCell
    (h a b : ℕ) : ℝ :=
  (moebiusReal (a + 1) * moebiusReal (a + 1 + h)) *
    (moebiusReal (b + 1) * moebiusReal (b + 1 + h))

/-- Complete quartic rectangle attached to one shift and one prefix length. -/
def mertensTwoPointQuarticRectangle
    (h N : ℕ) : ℝ :=
  ∑ a ∈ Finset.range N,
    ∑ b ∈ Finset.range N,
      mertensTwoPointQuarticCell h a b

/-- Positive diagonal of one quartic rectangle. -/
def mertensTwoPointQuarticDiagonal
    (h N : ℕ) : ℝ :=
  ∑ a ∈ Finset.range N,
    mertensTwoPointQuarticCell h a a

/-- Signed off-diagonal remainder after removing the positive diagonal. -/
def mertensTwoPointQuarticOffDiagonal
    (h N : ℕ) : ℝ :=
  mertensTwoPointQuarticRectangle h N -
    mertensTwoPointQuarticDiagonal h N

/-- Squaring a binary Möbius prefix gives the exact four-point rectangle. -/
theorem mertensTwoPointPrefix_sq_eq_quarticRectangle
    (h N : ℕ) :
    mertensTwoPointPrefix h N ^ 2 =
      mertensTwoPointQuarticRectangle h N := by
  unfold mertensTwoPointPrefix
    mertensTwoPointQuarticRectangle
    mertensTwoPointQuarticCell
  rw [pow_two, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro a _ha
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro b _hb
  ring

/-- A diagonal quartic cell is exactly a square. -/
theorem mertensTwoPointQuarticCell_diagonal_eq_sq
    (h a : ℕ) :
    mertensTwoPointQuarticCell h a a =
      (moebiusReal (a + 1) *
        moebiusReal (a + 1 + h)) ^ 2 := by
  unfold mertensTwoPointQuarticCell
  ring

/-- Every diagonal quartic cell is nonnegative. -/
theorem mertensTwoPointQuarticCell_diagonal_nonneg
    (h a : ℕ) :
    0 ≤ mertensTwoPointQuarticCell h a a := by
  rw [mertensTwoPointQuarticCell_diagonal_eq_sq]
  exact sq_nonneg _

/-- Every diagonal quartic cell is at most one. -/
theorem mertensTwoPointQuarticCell_diagonal_le_one
    (h a : ℕ) :
    mertensTwoPointQuarticCell h a a ≤ 1 := by
  rw [mertensTwoPointQuarticCell_diagonal_eq_sq]
  have hprod :
      |moebiusReal (a + 1) *
        moebiusReal (a + 1 + h)| ≤ (1 : ℝ) := by
    rw [abs_mul]
    exact mul_le_one
      (abs_nonneg _)
      (moebiusReal_abs_le_one (a + 1))
      (moebiusReal_abs_le_one (a + 1 + h))
  have habs :
      |moebiusReal (a + 1) *
        moebiusReal (a + 1 + h)| ≤ |(1 : ℝ)| := by
    simpa using hprod
  simpa using (sq_le_sq).2 habs

/-- The diagonal of one prefix is nonnegative. -/
theorem mertensTwoPointQuarticDiagonal_nonneg
    (h N : ℕ) :
    0 ≤ mertensTwoPointQuarticDiagonal h N := by
  unfold mertensTwoPointQuarticDiagonal
  exact Finset.sum_nonneg fun a _ha =>
    mertensTwoPointQuarticCell_diagonal_nonneg h a

/-- The diagonal of one prefix is bounded by its length. -/
theorem mertensTwoPointQuarticDiagonal_le_length
    (h N : ℕ) :
    mertensTwoPointQuarticDiagonal h N ≤ (N : ℝ) := by
  unfold mertensTwoPointQuarticDiagonal
  calc
    (∑ a ∈ Finset.range N,
      mertensTwoPointQuarticCell h a a) ≤
      ∑ _a ∈ Finset.range N, (1 : ℝ) := by
        apply Finset.sum_le_sum
        intro a _ha
        exact mertensTwoPointQuarticCell_diagonal_le_one h a
    _ = (N : ℝ) := by simp

/-- Exact diagonal/off-diagonal decomposition of one quartic rectangle. -/
theorem mertensTwoPointQuarticRectangle_eq_diagonal_add_offDiagonal
    (h N : ℕ) :
    mertensTwoPointQuarticRectangle h N =
      mertensTwoPointQuarticDiagonal h N +
        mertensTwoPointQuarticOffDiagonal h N := by
  unfold mertensTwoPointQuarticOffDiagonal
  ring

/-- Active four-point rectangle energy over every genuine core cell. -/
def coreGrowingShiftQuarticRectangleEnergy
    (j : ℕ) : ℝ :=
  ∑ t ∈ coreLongDeepDepths j,
    ∑ k ∈ Finset.range (harmonicShiftCount j t),
      mertensTwoPointQuarticRectangle
        (harmonicShiftLower j t + k) (t + 1)

/-- Complete positive diagonal inside the active four-point rectangle. -/
def coreGrowingShiftQuarticDiagonalEnergy
    (j : ℕ) : ℝ :=
  ∑ t ∈ coreLongDeepDepths j,
    ∑ k ∈ Finset.range (harmonicShiftCount j t),
      mertensTwoPointQuarticDiagonal
        (harmonicShiftLower j t + k) (t + 1)

/-- Complete signed off-diagonal part of the active four-point rectangle. -/
def coreGrowingShiftQuarticOffDiagonalEnergy
    (j : ℕ) : ℝ :=
  ∑ t ∈ coreLongDeepDepths j,
    ∑ k ∈ Finset.range (harmonicShiftCount j t),
      mertensTwoPointQuarticOffDiagonal
        (harmonicShiftLower j t + k) (t + 1)

/-- The active binary-prefix square energy is exactly the quartic rectangle
energy. -/
theorem coreGrowingShiftBinaryPrefixSquareEnergy_eq_quarticRectangle
    (j : ℕ) :
    coreGrowingShiftBinaryPrefixSquareEnergy j =
      coreGrowingShiftQuarticRectangleEnergy j := by
  unfold coreGrowingShiftBinaryPrefixSquareEnergy
    coreGrowingShiftBinaryPrefixSquareDepth
    coreGrowingShiftQuarticRectangleEnergy
  apply Finset.sum_congr rfl
  intro t _ht
  apply Finset.sum_congr rfl
  intro k _hk
  exact mertensTwoPointPrefix_sq_eq_quarticRectangle
    (harmonicShiftLower j t + k) (t + 1)

/-- Exact packet-level diagonal plus signed off-diagonal decomposition. -/
theorem coreGrowingShiftBinaryPrefixSquareEnergy_eq_diagonal_add_offDiagonal
    (j : ℕ) :
    coreGrowingShiftBinaryPrefixSquareEnergy j =
      coreGrowingShiftQuarticDiagonalEnergy j +
        coreGrowingShiftQuarticOffDiagonalEnergy j := by
  rw [coreGrowingShiftBinaryPrefixSquareEnergy_eq_quarticRectangle]
  unfold coreGrowingShiftQuarticRectangleEnergy
    coreGrowingShiftQuarticDiagonalEnergy
    coreGrowingShiftQuarticOffDiagonalEnergy
  calc
    (∑ t ∈ coreLongDeepDepths j,
      ∑ k ∈ Finset.range (harmonicShiftCount j t),
        mertensTwoPointQuarticRectangle
          (harmonicShiftLower j t + k) (t + 1)) =
      ∑ t ∈ coreLongDeepDepths j,
        ∑ k ∈ Finset.range (harmonicShiftCount j t),
          (mertensTwoPointQuarticDiagonal
              (harmonicShiftLower j t + k) (t + 1) +
            mertensTwoPointQuarticOffDiagonal
              (harmonicShiftLower j t + k) (t + 1)) := by
        apply Finset.sum_congr rfl
        intro t _ht
        apply Finset.sum_congr rfl
        intro k _hk
        exact
          mertensTwoPointQuarticRectangle_eq_diagonal_add_offDiagonal
            (harmonicShiftLower j t + k) (t + 1)
    _ = ∑ t ∈ coreLongDeepDepths j,
          ((∑ k ∈ Finset.range (harmonicShiftCount j t),
              mertensTwoPointQuarticDiagonal
                (harmonicShiftLower j t + k) (t + 1)) +
            (∑ k ∈ Finset.range (harmonicShiftCount j t),
              mertensTwoPointQuarticOffDiagonal
                (harmonicShiftLower j t + k) (t + 1))) := by
        apply Finset.sum_congr rfl
        intro t _ht
        rw [Finset.sum_add_distrib]
    _ = (∑ t ∈ coreLongDeepDepths j,
          ∑ k ∈ Finset.range (harmonicShiftCount j t),
            mertensTwoPointQuarticDiagonal
              (harmonicShiftLower j t + k) (t + 1)) +
        (∑ t ∈ coreLongDeepDepths j,
          ∑ k ∈ Finset.range (harmonicShiftCount j t),
            mertensTwoPointQuarticOffDiagonal
              (harmonicShiftLower j t + k) (t + 1)) := by
        rw [Finset.sum_add_distrib]

/-- The complete active diagonal is nonnegative. -/
theorem coreGrowingShiftQuarticDiagonalEnergy_nonneg
    (j : ℕ) :
    0 ≤ coreGrowingShiftQuarticDiagonalEnergy j := by
  unfold coreGrowingShiftQuarticDiagonalEnergy
  apply Finset.sum_nonneg
  intro t _ht
  apply Finset.sum_nonneg
  intro k _hk
  exact mertensTwoPointQuarticDiagonal_nonneg
    (harmonicShiftLower j t + k) (t + 1)

/-- At one core depth, the diagonal cost is at most active-shift count times
prefix length. -/
theorem coreGrowingShiftQuarticDiagonalDepth_le
    (j t : ℕ) :
    (∑ k ∈ Finset.range (harmonicShiftCount j t),
      mertensTwoPointQuarticDiagonal
        (harmonicShiftLower j t + k) (t + 1)) ≤
      (harmonicShiftCount j t : ℝ) * (t + 1 : ℝ) := by
  calc
    (∑ k ∈ Finset.range (harmonicShiftCount j t),
      mertensTwoPointQuarticDiagonal
        (harmonicShiftLower j t + k) (t + 1)) ≤
      ∑ _k ∈ Finset.range (harmonicShiftCount j t),
        (t + 1 : ℝ) := by
          apply Finset.sum_le_sum
          intro k _hk
          exact mertensTwoPointQuarticDiagonal_le_length
            (harmonicShiftLower j t + k) (t + 1)
    _ = (harmonicShiftCount j t : ℝ) * (t + 1 : ℝ) := by
      simp

/-- Coarse deterministic scale of the positive quartic diagonal.  This is an
upper bound only; the source does not assert that the diagonal has this size. -/
theorem coreGrowingShiftQuarticDiagonalEnergy_le_four_cube
    (j : ℕ) :
    coreGrowingShiftQuarticDiagonalEnergy j ≤
      4 * (((2 ^ j : ℕ) : ℝ)) ^ 3 := by
  let X : ℕ := 2 ^ j
  let Y : ℕ := 2 ^ (j + 1)
  have hcard :
      ((coreLongDeepDepths j).card : ℝ) ≤ (Y : ℝ) := by
    exact_mod_cast coreLongDeepDepths_card_le_rightScale j
  have hYX : (Y : ℝ) = 2 * (X : ℝ) := by
    dsimp [X, Y]
    rw [Nat.pow_succ]
    norm_num
    ring
  unfold coreGrowingShiftQuarticDiagonalEnergy
  calc
    (∑ t ∈ coreLongDeepDepths j,
      ∑ k ∈ Finset.range (harmonicShiftCount j t),
        mertensTwoPointQuarticDiagonal
          (harmonicShiftLower j t + k) (t + 1)) ≤
      ∑ t ∈ coreLongDeepDepths j,
        (harmonicShiftCount j t : ℝ) * (t + 1 : ℝ) := by
          apply Finset.sum_le_sum
          intro t _ht
          exact coreGrowingShiftQuarticDiagonalDepth_le j t
    _ ≤ ∑ _t ∈ coreLongDeepDepths j,
        (X : ℝ) * (Y : ℝ) := by
          apply Finset.sum_le_sum
          intro t ht
          have hN :
              (harmonicShiftCount j t : ℝ) ≤ (X : ℝ) := by
            dsimp [X]
            exact_mod_cast harmonicShiftCount_le_leftScale j t
          have ht' := ht
          simp only [coreLongDeepDepths, Finset.mem_filter,
            Finset.mem_Ico] at ht'
          have htY : t + 1 ≤ Y := by
            dsimp [Y]
            omega
          have htYR : ((t + 1 : ℕ) : ℝ) ≤ (Y : ℝ) := by
            exact_mod_cast htY
          exact mul_le_mul hN htYR (by positivity) (by positivity)
    _ = ((coreLongDeepDepths j).card : ℝ) *
        ((X : ℝ) * (Y : ℝ)) := by simp
    _ ≤ (Y : ℝ) * ((X : ℝ) * (Y : ℝ)) := by
      apply mul_le_mul_of_nonneg_right hcard
      positivity
    _ = 4 * (X : ℝ) ^ 3 := by
      rw [hYX]
      ring
    _ = 4 * (((2 ^ j : ℕ) : ℝ)) ^ 3 := by rfl

/-- Exact off-diagonal compensation proposition.  The positive diagonal is
kept visible rather than absorbed into an unsigned square-energy name. -/
def SubpolynomialCoreGrowingShiftQuarticOffDiagonalCompensation : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      coreGrowingShiftQuarticOffDiagonalEnergy j ≤
        (C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)) ^ 2 -
            coreGrowingShiftQuarticDiagonalEnergy j

/-- The averaged prefix-square source is exactly an off-diagonal quartic
compensation statement once the positive diagonal is exposed. -/
theorem subpolynomialCoreGrowingShiftQuarticOffDiagonalCompensation_iff_prefixSquareEnergy :
    SubpolynomialCoreGrowingShiftQuarticOffDiagonalCompensation ↔
      SubpolynomialCoreGrowingShiftBinaryPrefixSquareEnergy := by
  constructor
  · intro hComp δ hδ
    obtain ⟨C, hC, hbound⟩ := hComp δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [coreGrowingShiftBinaryPrefixSquareEnergy_eq_diagonal_add_offDiagonal]
    have h := hbound j
    linarith
  · intro hEnergy δ hδ
    obtain ⟨C, hC, hbound⟩ := hEnergy δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    have h := hbound j
    rw [coreGrowingShiftBinaryPrefixSquareEnergy_eq_diagonal_add_offDiagonal] at h
    linarith

/-- Quartic off-diagonal compensation supplies the exact signed growing-shift
packet through the source-faithful quadratic comparison. -/
theorem subpolynomialCoreGrowingShiftFirstDifferencePacket_of_quarticCompensation
    (hComp :
      SubpolynomialCoreGrowingShiftQuarticOffDiagonalCompensation) :
    SubpolynomialCoreGrowingShiftFirstDifferencePacket :=
  subpolynomialCoreGrowingShiftFirstDifferencePacket_of_prefixSquareEnergy
    (subpolynomialCoreGrowingShiftQuarticOffDiagonalCompensation_iff_prefixSquareEnergy.mp
      hComp)

/-- Conditional RH endpoint stated on the explicit off-diagonal quartic
compensation source. -/
theorem riemannHypothesis_of_coreGrowingShiftQuarticCompensation
    (hComp :
      SubpolynomialCoreGrowingShiftQuarticOffDiagonalCompensation) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_coreGrowingShiftPrefixSquareEnergy
    (subpolynomialCoreGrowingShiftQuarticOffDiagonalCompensation_iff_prefixSquareEnergy.mp
      hComp)

/-- Source descriptor for a growing-family four-point theorem intended to
supply the exact active off-diagonal compensation. -/
structure GrowingShiftFourPointMobiusSource where
  sourceStatement : Prop
  activeRangeControl : Prop
  diagonalNormalization : Prop
  offDiagonalCancellation : Prop
  depthMultiplicityControl : Prop
  finiteSmallScaleControl : Prop

/-- Proof-producing boundary for Chowla, corrected Elliott, dispersion, or
another four-point source.  Names and thematic similarity supply no value. -/
structure ToCoreGrowingShiftQuarticCompensationAdapter
    (d : GrowingShiftFourPointMobiusSource) : Type where
  toCompensation :
    d.sourceStatement →
      d.activeRangeControl →
      d.diagonalNormalization →
      d.offDiagonalCancellation →
      d.depthMultiplicityControl →
      d.finiteSmallScaleControl →
      SubpolynomialCoreGrowingShiftQuarticOffDiagonalCompensation

/-- Generic conditional endpoint through an explicitly constructed
four-point compensation adapter. -/
theorem riemannHypothesis_of_growingShiftFourPointAdapter
    (d : GrowingShiftFourPointMobiusSource)
    (bridge : ToCoreGrowingShiftQuarticCompensationAdapter d)
    (hsource : d.sourceStatement)
    (hrange : d.activeRangeControl)
    (hdiag : d.diagonalNormalization)
    (hoff : d.offDiagonalCancellation)
    (hdepth : d.depthMultiplicityControl)
    (hsmall : d.finiteSmallScaleControl) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_coreGrowingShiftQuarticCompensation
    (bridge.toCompensation hsource hrange hdiag hoff hdepth hsmall)

/-- Finite hostile witness: the total square may vanish even though its
positive diagonal is nonzero, because the off-diagonal is negative. -/
theorem quarticOffDiagonalCompensation_hostileWitness :
    ((1 : ℝ) + (-1 : ℝ)) ^ 2 = 0 ∧
      ((1 : ℝ) ^ 2 + (-1 : ℝ) ^ 2) = 2 ∧
      (2 * ((1 : ℝ) * (-1 : ℝ))) = -2 ∧
      0 = 2 + (-2 : ℝ) := by
  norm_num

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.mertensTwoPointPrefix_sq_eq_quarticRectangle
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftBinaryPrefixSquareEnergy_eq_diagonal_add_offDiagonal
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftQuarticDiagonalEnergy_le_four_cube
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialCoreGrowingShiftQuarticOffDiagonalCompensation_iff_prefixSquareEnergy
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_coreGrowingShiftQuarticCompensation
