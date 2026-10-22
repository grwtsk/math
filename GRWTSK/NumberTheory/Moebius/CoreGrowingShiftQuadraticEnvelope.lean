/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #707. Parent: draft PR #703 at
`4a7d962f7abc1df0756bf998f5c1d05f21af62b0`.
-/
import GRWTSK.NumberTheory.Moebius.CoreGrowingShiftPrefixSquareEnergy
import GRWTSK.NumberTheory.Moebius.DyadicQuadraticMertensTwoPointPrefix

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- One active growing-shift prefix is controlled by its shift-wise quadratic
envelope.  All endpoint and prefix-length conditions are proved from the exact
harmonic support. -/
theorem coreGrowingShiftPrefix_sq_le_shiftEnvelope
    {j t k : ℕ} (U : ℕ → ℝ)
    (hk : k < harmonicShiftCount j t)
    (hshift :
      ∀ h : ℕ, 1 ≤ h → h < 2 ^ (j + 1) →
        MertensTwoPointShiftEnvelope j h (U h)) :
    mertensTwoPointPrefix
        (harmonicShiftLower j t + k) (t + 1) ^ 2 ≤
      U (harmonicShiftLower j t + k) ^ 2 := by
  have hkUpper :
      harmonicShiftLower j t + k < harmonicShiftUpper j t := by
    unfold harmonicShiftCount at hk
    omega
  have hshiftPos :
      1 ≤ harmonicShiftLower j t + k := by
    have hL : 1 ≤ harmonicShiftLower j t := by
      unfold harmonicShiftLower
      exact le_max_left _ _
    omega
  have hshiftY :
      harmonicShiftLower j t + k < 2 ^ (j + 1) := by
    unfold harmonicShiftUpper at hkUpper
    omega
  have hlength :
      t + 1 ≤
        2 ^ (j + 1) - (harmonicShiftLower j t + k) - 1 := by
    unfold harmonicShiftUpper at hkUpper
    omega
  let henv :=
    hshift (harmonicShiftLower j t + k) hshiftPos hshiftY
  have habs :
      |mertensTwoPointPrefix
        (harmonicShiftLower j t + k) (t + 1)| ≤
        U (harmonicShiftLower j t + k) :=
    henv.2 (t + 1) hlength
  have hU : 0 ≤ U (harmonicShiftLower j t + k) := henv.1
  rcases (abs_le.mp habs) with ⟨hneg, hpos⟩
  nlinarith

/-- At one depth, the active shifts are a subset of the complete dyadic shift
range, so one quadratic shift envelope controls the complete active prefix
square energy at that depth. -/
theorem coreGrowingShiftBinaryPrefixSquareDepth_le_shiftSquareSum
    {j t : ℕ} (U : ℕ → ℝ)
    (hshift :
      ∀ h : ℕ, 1 ≤ h → h < 2 ^ (j + 1) →
        MertensTwoPointShiftEnvelope j h (U h)) :
    coreGrowingShiftBinaryPrefixSquareDepth j t ≤
      ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)), U h ^ 2 := by
  unfold coreGrowingShiftBinaryPrefixSquareDepth
  calc
    (∑ k ∈ Finset.range (harmonicShiftCount j t),
      mertensTwoPointPrefix
        (harmonicShiftLower j t + k) (t + 1) ^ 2) ≤
      ∑ k ∈ Finset.range (harmonicShiftCount j t),
        U (harmonicShiftLower j t + k) ^ 2 := by
      apply Finset.sum_le_sum
      intro k hk
      exact coreGrowingShiftPrefix_sq_le_shiftEnvelope
        U (Finset.mem_range.mp hk) hshift
    _ = ∑ h ∈ Finset.Ico (harmonicShiftLower j t)
          (harmonicShiftUpper j t),
        U h ^ 2 := by
      unfold harmonicShiftCount
      rw [Finset.sum_Ico_eq_sum_range]
    _ ≤ ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)), U h ^ 2 := by
      apply Finset.sum_le_sum_of_subset_of_nonneg
      · intro h hh
        simp only [Finset.mem_Ico] at hh ⊢
        constructor
        · have hL : 1 ≤ harmonicShiftLower j t := by
            unfold harmonicShiftLower
            exact le_max_left _ _
          exact le_trans hL hh.1
        · unfold harmonicShiftUpper at hh
          omega
      · intro h _hh _hnot
        exact sq_nonneg (U h)

/-- The existing normalized quadratic shift envelope controls the complete
active growing-shift square energy.  The only deterministic loss is the number
of core depths, bounded by the right dyadic endpoint. -/
theorem coreGrowingShiftBinaryPrefixSquareEnergy_le_quadraticEnvelope
    {j : ℕ} {B : ℝ}
    (henv : DyadicMertensTwoPointQuadraticEnvelope j B) :
    coreGrowingShiftBinaryPrefixSquareEnergy j ≤
      (B * (((2 ^ (j + 1) : ℕ) : ℝ))) ^ 2 := by
  obtain ⟨hB, U, hshift, hquad⟩ := henv
  let Y : ℕ := 2 ^ (j + 1)
  let S : ℝ := ∑ h ∈ Finset.Ico 1 Y, U h ^ 2
  have hS : 0 ≤ S := by
    dsimp [S]
    positivity
  have hcard :
      ((coreLongDeepDepths j).card : ℝ) ≤ (Y : ℝ) := by
    exact_mod_cast coreLongDeepDepths_card_le_rightScale j
  have hquadY : S ≤ B ^ 2 * (Y : ℝ) := by
    simpa [S, Y] using hquad
  unfold coreGrowingShiftBinaryPrefixSquareEnergy
  calc
    (∑ t ∈ coreLongDeepDepths j,
      coreGrowingShiftBinaryPrefixSquareDepth j t) ≤
      ∑ _t ∈ coreLongDeepDepths j, S := by
      apply Finset.sum_le_sum
      intro t _ht
      simpa [S, Y] using
        coreGrowingShiftBinaryPrefixSquareDepth_le_shiftSquareSum
          (j := j) (t := t) U hshift
    _ = ((coreLongDeepDepths j).card : ℝ) * S := by simp
    _ ≤ (Y : ℝ) * S := by
      exact mul_le_mul_of_nonneg_right hcard hS
    _ ≤ (Y : ℝ) * (B ^ 2 * (Y : ℝ)) := by
      exact mul_le_mul_of_nonneg_left hquadY (Nat.cast_nonneg Y)
    _ = (B * (Y : ℝ)) ^ 2 := by ring
    _ = (B * (((2 ^ (j + 1) : ℕ) : ℝ))) ^ 2 := by rfl

/-- The repository's existing all-scale quadratic two-point prefix source
supplies the active growing-shift prefix square energy with constant loss two. -/
theorem subpolynomialCoreGrowingShiftBinaryPrefixSquareEnergy_of_quadratic
    (hQuadratic : SubpolynomialDyadicQuadraticMertensTwoPointPrefix) :
    SubpolynomialCoreGrowingShiftBinaryPrefixSquareEnergy := by
  intro δ hδ
  obtain ⟨A, hA, henv⟩ := hQuadratic δ hδ
  refine ⟨2 * A, mul_nonneg (by norm_num) hA, ?_⟩
  intro j
  let X : ℝ := ((2 ^ j : ℕ) : ℝ)
  have hYX :
      (((2 ^ (j + 1) : ℕ) : ℝ)) = 2 * X := by
    dsimp [X]
    rw [Nat.pow_succ]
    norm_num
    ring
  have hbound :=
    coreGrowingShiftBinaryPrefixSquareEnergy_le_quadraticEnvelope
      (henv j)
  calc
    coreGrowingShiftBinaryPrefixSquareEnergy j ≤
      ((A * X ^ δ) *
        (((2 ^ (j + 1) : ℕ) : ℝ))) ^ 2 := by
      simpa [X] using hbound
    _ = ((2 * A) * X * X ^ δ) ^ 2 := by
      rw [hYX]
      ring
    _ = ((2 * A) * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)) ^ 2 := by rfl

/-- The quadratic shift-envelope source therefore supplies the exact signed
growing-shift packet through the averaged active energy from #699. -/
theorem subpolynomialCoreGrowingShiftFirstDifferencePacket_of_quadratic
    (hQuadratic : SubpolynomialDyadicQuadraticMertensTwoPointPrefix) :
    SubpolynomialCoreGrowingShiftFirstDifferencePacket :=
  subpolynomialCoreGrowingShiftFirstDifferencePacket_of_prefixSquareEnergy
    (subpolynomialCoreGrowingShiftBinaryPrefixSquareEnergy_of_quadratic
      hQuadratic)

/-- Concrete source descriptor for the existing quadratic two-point premise. -/
def dyadicQuadraticTwoPointGrowingShiftSource :
    GrowingShiftBinaryMobiusSource where
  sourceStatement := SubpolynomialDyadicQuadraticMertensTwoPointPrefix
  anchorControl := True
  growingShiftRangeControl := True
  firstDifferenceWeightControl := True
  depthUniformity := True
  finiteSmallScaleControl := True

/-- Actual adapter value from the existing quadratic shift-envelope source into
the exact RH-facing growing-shift packet. -/
def dyadicQuadraticTwoPointToCoreGrowingShiftAdapter :
    ToCoreGrowingShiftFirstDifferencePacketAdapter
      dyadicQuadraticTwoPointGrowingShiftSource where
  toPacket := by
    intro hQuadratic _ _ _ _ _
    exact
      subpolynomialCoreGrowingShiftFirstDifferencePacket_of_quadratic
        hQuadratic

/-- Conditional endpoint routed through the quadratic shift-envelope source. -/
theorem riemannHypothesis_of_quadraticTwoPoint_via_coreGrowingShift
    (hQuadratic : SubpolynomialDyadicQuadraticMertensTwoPointPrefix) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialCoreGrowingShiftFirstDifferencePacket
    (subpolynomialCoreGrowingShiftFirstDifferencePacket_of_quadratic
      hQuadratic)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftPrefix_sq_le_shiftEnvelope
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftBinaryPrefixSquareEnergy_le_quadraticEnvelope
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialCoreGrowingShiftBinaryPrefixSquareEnergy_of_quadratic
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_quadraticTwoPoint_via_coreGrowingShift
