/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Imported project and Mathlib results retain their original credits/licenses.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owners: #388 / #373 / #369 / #366 / #357 / #354 / #350 / #347 /
  #343 / #335 / #334 RH-E02.
-/
import GRWTSK.NumberTheory.Moebius.DyadicTriangularKernel

/-!
# Finite Chowla-shift packet for the dyadic triangular Möbius kernel

The exact finite kernel from the preceding module is reindexed as a packet of
signed two-point Möbius correlations.  The shift is literal: every strict pair
`a < b` is written uniquely as `(a, a + h)` with `h = b - a > 0`.

No absolute value is inserted, no shift is dropped, and no individual shift is
promoted to the complete supplier.  Cancellation both inside a shift and
between different shifts remains available.  This module is an exact finite
reduction only; it does not prove a Chowla estimate, pay a damping, or prove RH
unconditionally.

All proof scripts await exact-head Lean elaboration and transitive trust review.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

open scoped BigOperators

/-- The exact finite kernel weight at dyadic scale `X = 2^j`, written in the
piecewise form naturally supplied by the boundary/local split. -/
def dyadicMertensShiftWeight (j b : ℕ) : ℝ :=
  if b < 2 ^ j then
    (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹
  else
    (b : ℝ)⁻¹ - (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹

/-- The strict-pair presentation before grouping by the positive lag. -/
def weightedMertensDyadicStrictPairPacket (j : ℕ) : ℝ :=
  2 * ∑ b ∈ Finset.Ico 1 (2 ^ (j + 1)),
    ∑ a ∈ Finset.Ico 1 b,
      moebiusReal a * moebiusReal b * dyadicMertensShiftWeight j b

/-- One fixed positive-lag contribution.  The outer endpoint `b` remains below
`2^(j+1)`, and the condition `h < b` is retained explicitly. -/
def weightedMertensDyadicShiftContribution (j h : ℕ) : ℝ :=
  2 * ∑ b ∈ Finset.Ico 1 (2 ^ (j + 1)),
    if h < b then
      moebiusReal (b - h) * moebiusReal b *
        dyadicMertensShiftWeight j b
    else 0

/-- The complete signed Chowla-shift packet.  Every positive shift below the
right dyadic endpoint is present, including zero contributions at empty
fibres. -/
def weightedMertensDyadicShiftPacket (j : ℕ) : ℝ :=
  ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
    weightedMertensDyadicShiftContribution j h

/-- The exact shift-packet formulation of the remaining arithmetic supplier. -/
def SubpolynomialDyadicMertensShiftPacket : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      weightedMertensDyadicShiftPacket j ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

private theorem Icc_one_pred_eq_Ico_one {X : ℕ} (hX : 1 ≤ X) :
    Finset.Icc 1 (X - 1) = Finset.Ico 1 X := by
  ext n
  simp only [Finset.mem_Icc, Finset.mem_Ico]
  omega

/-- The piecewise weight is the compact max-kernel recorded in the preceding
mathematical note. -/
theorem dyadicMertensShiftWeight_eq_max (j b : ℕ) :
    dyadicMertensShiftWeight j b =
      (((max (2 ^ j) b : ℕ) : ℝ))⁻¹ -
        (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ := by
  by_cases hb : b < 2 ^ j
  · have hmax : max (2 ^ j) b = 2 ^ j := max_eq_left hb.le
    rw [dyadicMertensShiftWeight, if_pos hb, hmax,
      dyadic_left_inv_eq_two_mul_right_inv]
    ring
  · have hmax : max (2 ^ j) b = b :=
      max_eq_right (Nat.le_of_not_gt hb)
    rw [dyadicMertensShiftWeight, if_neg hb, hmax]

theorem dyadicMertensShiftWeight_of_lt {j b : ℕ}
    (hb : b < 2 ^ j) :
    dyadicMertensShiftWeight j b =
      (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ := by
  simp [dyadicMertensShiftWeight, hb]

theorem dyadicMertensShiftWeight_of_le {j b : ℕ}
    (hb : 2 ^ j ≤ b) :
    dyadicMertensShiftWeight j b =
      (b : ℝ)⁻¹ - (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ := by
  simp [dyadicMertensShiftWeight, Nat.not_lt.mpr hb]

/-- The triangular atom is the new coefficient multiplied by the complete
strictly earlier closed prefix. -/
theorem mertensTriangularAtom_eq_strictPrefix {b : ℕ} (hb : 1 ≤ b) :
    mertensTriangularAtom b =
      moebiusReal b * ∑ a ∈ Finset.Ico 1 b, moebiusReal a := by
  unfold mertensTriangularAtom pickupMertensPrefix
  rw [Icc_one_pred_eq_Ico_one hb]

/-- The exact boundary term is the constant-weight contribution of all
coefficients born before the left dyadic endpoint. -/
theorem weightedMertensDyadicTriangularBoundary_eq_earlyAtomSum (j : ℕ) :
    weightedMertensDyadicTriangularBoundary j =
      2 * ∑ b ∈ Finset.Ico 1 (2 ^ j),
        mertensTriangularAtom b *
          (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ := by
  have hX : 1 ≤ 2 ^ j := by positivity
  unfold weightedMertensDyadicTriangularBoundary
    mertensPrefixTriangularCorrelation mertensTriangularAtom
  rw [Icc_one_pred_eq_Ico_one hX, Finset.sum_mul]
  ring

/-- The complete boundary/local kernel is one finite atom sum with the exact
piecewise (equivalently max) weight. -/
theorem weightedMertensDyadicTriangularKernel_eq_atomSum (j : ℕ) :
    weightedMertensDyadicTriangularKernel j =
      2 * ∑ b ∈ Finset.Ico 1 (2 ^ (j + 1)),
        mertensTriangularAtom b * dyadicMertensShiftWeight j b := by
  have h1X : 1 ≤ 2 ^ j := by positivity
  have hXY : 2 ^ j ≤ 2 ^ (j + 1) := by
    rw [Nat.pow_succ]
    omega
  calc
    weightedMertensDyadicTriangularKernel j =
        weightedMertensDyadicTriangularBoundary j +
          weightedMertensDyadicTriangularLocal j := rfl
    _ = 2 * (∑ b ∈ Finset.Ico 1 (2 ^ j),
          mertensTriangularAtom b * dyadicMertensShiftWeight j b) +
        2 * (∑ b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)),
          mertensTriangularAtom b * dyadicMertensShiftWeight j b) := by
      rw [weightedMertensDyadicTriangularBoundary_eq_earlyAtomSum]
      unfold weightedMertensDyadicTriangularLocal
      congr 1
      · apply Finset.sum_congr rfl
        intro b hb
        rw [dyadicMertensShiftWeight_of_lt (Finset.mem_Ico.mp hb).2]
      · congr 1
        apply Finset.sum_congr rfl
        intro b hb
        rw [dyadicMertensShiftWeight_of_le (Finset.mem_Ico.mp hb).1]
    _ = 2 * ((∑ b ∈ Finset.Ico 1 (2 ^ j),
          mertensTriangularAtom b * dyadicMertensShiftWeight j b) +
        (∑ b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)),
          mertensTriangularAtom b * dyadicMertensShiftWeight j b)) := by
      ring
    _ = _ := by
      rw [Finset.sum_Ico_consecutive _ h1X hXY]

/-- Expanding the previous prefix turns the finite kernel into the complete
strict-pair packet. -/
theorem weightedMertensDyadicTriangularKernel_eq_strictPairPacket (j : ℕ) :
    weightedMertensDyadicTriangularKernel j =
      weightedMertensDyadicStrictPairPacket j := by
  rw [weightedMertensDyadicTriangularKernel_eq_atomSum]
  unfold weightedMertensDyadicStrictPairPacket
  congr 1
  apply Finset.sum_congr rfl
  intro b hb
  have hb1 : 1 ≤ b := (Finset.mem_Ico.mp hb).1
  rw [mertensTriangularAtom_eq_strictPrefix hb1]
  calc
    (moebiusReal b * (∑ a ∈ Finset.Ico 1 b, moebiusReal a)) *
        dyadicMertensShiftWeight j b =
      ∑ a ∈ Finset.Ico 1 b,
        moebiusReal a * moebiusReal b *
          dyadicMertensShiftWeight j b := by
      rw [Finset.mul_sum, Finset.sum_mul]
      apply Finset.sum_congr rfl
      intro a _
      ring

/-- Reversal of the strict prefix by the positive lag `h = b-a`. -/
private theorem sum_Ico_strict_eq_sum_lag
    (b : ℕ) (F : ℕ → ℝ) :
    (∑ a ∈ Finset.Ico 1 b, F a) =
      ∑ h ∈ Finset.Ico 1 b, F (b - h) := by
  classical
  apply Finset.sum_bij (fun a _ => b - a)
  · intro a ha
    simp only [Finset.mem_Ico] at ha ⊢
    omega
  · intro a₁ ha₁ a₂ ha₂ h
    simp only [Finset.mem_Ico] at ha₁ ha₂
    omega
  · intro h hh
    refine ⟨b - h, ?_, ?_⟩
    · simp only [Finset.mem_Ico] at hh ⊢
      omega
    · omega
  · intro a ha
    simp only [Finset.mem_Ico] at ha
    congr 1
    omega

/-- A strict lag range can be embedded in the common right-endpoint range by
an explicit indicator. -/
private theorem sum_Ico_strict_eq_sum_if
    {Y b : ℕ} (hb : b < Y) (F : ℕ → ℝ) :
    (∑ h ∈ Finset.Ico 1 b, F h) =
      ∑ h ∈ Finset.Ico 1 Y, if h < b then F h else 0 := by
  rw [← Finset.sum_filter]
  congr 1
  ext h
  simp only [Finset.mem_Ico, Finset.mem_filter]
  omega

/-- Grouping the strict pairs by their positive lag preserves the complete
signed packet. -/
theorem weightedMertensDyadicStrictPairPacket_eq_shiftPacket (j : ℕ) :
    weightedMertensDyadicStrictPairPacket j =
      weightedMertensDyadicShiftPacket j := by
  let Y : ℕ := 2 ^ (j + 1)
  unfold weightedMertensDyadicStrictPairPacket
    weightedMertensDyadicShiftPacket
    weightedMertensDyadicShiftContribution
  rw [show 2 ^ (j + 1) = Y by rfl]
  have hrev : ∀ b ∈ Finset.Ico 1 Y,
      (∑ a ∈ Finset.Ico 1 b,
        moebiusReal a * moebiusReal b *
          dyadicMertensShiftWeight j b) =
      ∑ h ∈ Finset.Ico 1 b,
        moebiusReal (b - h) * moebiusReal b *
          dyadicMertensShiftWeight j b := by
    intro b _
    exact sum_Ico_strict_eq_sum_lag b
      (fun a => moebiusReal a * moebiusReal b *
        dyadicMertensShiftWeight j b)
  have hsumrev :
      (∑ b ∈ Finset.Ico 1 Y,
        ∑ a ∈ Finset.Ico 1 b,
          moebiusReal a * moebiusReal b *
            dyadicMertensShiftWeight j b) =
      ∑ b ∈ Finset.Ico 1 Y,
        ∑ h ∈ Finset.Ico 1 b,
          moebiusReal (b - h) * moebiusReal b *
            dyadicMertensShiftWeight j b := by
    apply Finset.sum_congr rfl
    intro b hb
    exact hrev b hb
  rw [hsumrev]
  have hext : ∀ b ∈ Finset.Ico 1 Y,
      (∑ h ∈ Finset.Ico 1 b,
        moebiusReal (b - h) * moebiusReal b *
          dyadicMertensShiftWeight j b) =
      ∑ h ∈ Finset.Ico 1 Y,
        if h < b then
          moebiusReal (b - h) * moebiusReal b *
            dyadicMertensShiftWeight j b
        else 0 := by
    intro b hb
    exact sum_Ico_strict_eq_sum_if (Finset.mem_Ico.mp hb).2
      (fun h => moebiusReal (b - h) * moebiusReal b *
        dyadicMertensShiftWeight j b)
  have hsumext :
      (∑ b ∈ Finset.Ico 1 Y,
        ∑ h ∈ Finset.Ico 1 b,
          moebiusReal (b - h) * moebiusReal b *
            dyadicMertensShiftWeight j b) =
      ∑ b ∈ Finset.Ico 1 Y,
        ∑ h ∈ Finset.Ico 1 Y,
          if h < b then
            moebiusReal (b - h) * moebiusReal b *
              dyadicMertensShiftWeight j b
          else 0 := by
    apply Finset.sum_congr rfl
    intro b hb
    exact hext b hb
  rw [hsumext, ← Finset.mul_sum]
  rw [Finset.sum_comm]
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro h _
  ring

/-- The finite tail kernel and the complete signed shift packet are identical. -/
theorem weightedMertensDyadicTriangularKernel_eq_shiftPacket (j : ℕ) :
    weightedMertensDyadicTriangularKernel j =
      weightedMertensDyadicShiftPacket j :=
  (weightedMertensDyadicTriangularKernel_eq_strictPairPacket j).trans
    (weightedMertensDyadicStrictPairPacket_eq_shiftPacket j)

/-- Exact criterion equivalence; no shift estimate is supplied. -/
theorem subpolynomialDyadicMertensShiftPacket_iff_kernel :
    SubpolynomialDyadicMertensShiftPacket ↔
      SubpolynomialDyadicTriangularKernel := by
  constructor
  · intro hshift δ hδ
    obtain ⟨C, hC, hbound⟩ := hshift δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [weightedMertensDyadicTriangularKernel_eq_shiftPacket]
    exact hbound j
  · intro hker δ hδ
    obtain ⟨C, hC, hbound⟩ := hker δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [← weightedMertensDyadicTriangularKernel_eq_shiftPacket]
    exact hbound j

theorem subpolynomialDyadicMertensShiftPacket_iff_triangular :
    SubpolynomialDyadicMertensShiftPacket ↔
      SubpolynomialDyadicTriangularMertensCorrelation :=
  subpolynomialDyadicMertensShiftPacket_iff_kernel.trans
    subpolynomialDyadicTriangularKernel_iff_triangular

theorem subpolynomialDyadicMertensShiftPacket_iff_orderedPair :
    SubpolynomialDyadicMertensShiftPacket ↔
      SubpolynomialDyadicOrderedPairMertensCorrelation :=
  subpolynomialDyadicMertensShiftPacket_iff_kernel.trans
    subpolynomialDyadicTriangularKernel_iff_orderedPair

theorem subpolynomialDyadicMertensShiftPacket_iff_block :
    SubpolynomialDyadicMertensShiftPacket ↔
      SubpolynomialDyadicBlockWeightedMertensSquare :=
  subpolynomialDyadicMertensShiftPacket_iff_kernel.trans
    subpolynomialDyadicTriangularKernel_iff_block

theorem subpolynomialDyadicMertensShiftPacket_iff_cumulative :
    SubpolynomialDyadicMertensShiftPacket ↔
      SubpolynomialCumulativeWeightedMertensSquare :=
  subpolynomialDyadicMertensShiftPacket_iff_kernel.trans
    subpolynomialDyadicTriangularKernel_iff_cumulative

theorem subpolynomialDyadicMertensShiftPacket_iff_allPositiveWeightedMertensSquare :
    SubpolynomialDyadicMertensShiftPacket ↔
      AllPositiveWeightedMertensSquare :=
  subpolynomialDyadicMertensShiftPacket_iff_kernel.trans
    subpolynomialDyadicTriangularKernel_iff_allPositiveWeightedMertensSquare

/-- Conditional terminal return.  The universal signed shift-packet estimate
remains the unproved arithmetic supplier. -/
theorem riemannHypothesis_of_subpolynomialDyadicMertensShiftPacket
    (hshift : SubpolynomialDyadicMertensShiftPacket) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialDyadicTriangularKernel
    (subpolynomialDyadicMertensShiftPacket_iff_kernel.mp hshift)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.weightedMertensDyadicTriangularKernel_eq_shiftPacket
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialDyadicMertensShiftPacket_iff_kernel
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_subpolynomialDyadicMertensShiftPacket
