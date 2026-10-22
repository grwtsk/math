/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #693. Parent: draft PR #690 at
`6e53704c84d73b6b751169365713a7a5c688eaaa`.
-/
import GRWTSK.NumberTheory.Moebius.CoreGrowingShiftFirstDifference
import GRWTSK.NumberTheory.Moebius.DyadicUniformMertensTwoPointPrefix

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- The exact restriction of a two-point prefix envelope to the shifts and
prefix lengths consumed by the growing-shift core packet. -/
def CoreGrowingShiftPrefixEnvelope
    (j : ℕ) (U : ℝ) : Prop :=
  0 ≤ U ∧
    ∀ t ∈ coreLongDeepDepths j,
      ∀ k : ℕ, k < harmonicShiftCount j t →
        |mertensTwoPointPrefix
          (harmonicShiftLower j t + k) (t + 1)| ≤ U

/-- Every active growing shift lies in the existing full dyadic two-point
envelope. -/
theorem coreGrowingShiftPrefixEnvelope_of_dyadic
    {j : ℕ} {U : ℝ}
    (henv : DyadicMertensTwoPointEnvelope j U) :
    CoreGrowingShiftPrefixEnvelope j U := by
  refine ⟨henv.1, ?_⟩
  intro t _ht k hk
  have hL : 1 ≤ harmonicShiftLower j t := by
    unfold harmonicShiftLower
    exact le_max_left _ _
  have hkUpper :
      harmonicShiftLower j t + k < harmonicShiftUpper j t := by
    unfold harmonicShiftCount at hk
    omega
  have hshiftPos :
      1 ≤ harmonicShiftLower j t + k := by omega
  have hshiftY :
      harmonicShiftLower j t + k < 2 ^ (j + 1) := by
    unfold harmonicShiftUpper at hkUpper
    omega
  have hlength :
      t + 1 ≤
        2 ^ (j + 1) - (harmonicShiftLower j t + k) - 1 := by
    unfold harmonicShiftUpper at hkUpper
    omega
  exact henv.2
    (harmonicShiftLower j t + k) (t + 1)
    hshiftPos hshiftY hlength

/-- The beginning of every active harmonic-shift coordinate is at least the
left dyadic scale. -/
theorem leftScale_le_harmonicShiftBase
    (j t : ℕ) :
    2 ^ j ≤ t + 1 + harmonicShiftLower j t := by
  unfold harmonicShiftLower
  by_cases h : 2 ^ j ≤ t + 2
  · have hsub : 2 ^ j - t - 1 ≤ 1 := by omega
    rw [max_eq_left hsub]
    omega
  · have hsub : 1 ≤ 2 ^ j - t - 1 := by omega
    rw [max_eq_right hsub]
    omega

/-- Every reciprocal first difference in the active coordinate is
nonnegative. -/
theorem harmonicShiftFirstDifference_nonneg_all
    (j t k : ℕ) :
    0 ≤ harmonicShiftFirstDifference j t k := by
  unfold harmonicShiftFirstDifference harmonicShiftReciprocal
  apply sub_nonneg.mpr
  apply one_div_le_one_div_of_le
  · positivity
  · have hle :
        t + 1 + (harmonicShiftLower j t + k) ≤
          t + 1 + (harmonicShiftLower j t + (k + 1)) := by omega
    exact_mod_cast hle

/-- Every active reciprocal first difference is at most the reciprocal square
of the left dyadic scale. -/
theorem harmonicShiftFirstDifference_le_leftScale_inv_sq
    (j t k : ℕ) :
    harmonicShiftFirstDifference j t k ≤
      ((((2 ^ j : ℕ) : ℝ))⁻¹) ^ 2 := by
  let m : ℕ := t + 1 + (harmonicShiftLower j t + k)
  have hm : 1 ≤ m := by
    dsimp [m]
    positivity
  have hXm : 2 ^ j ≤ m := by
    have hbase := leftScale_le_harmonicShiftBase j t
    dsimp [m]
    omega
  have heq :
      harmonicShiftFirstDifference j t k =
        reciprocalFirstDifference m := by
    unfold harmonicShiftFirstDifference harmonicShiftReciprocal
      reciprocalFirstDifference
    dsimp [m]
    congr 1 <;> congr 1 <;> omega
  calc
    harmonicShiftFirstDifference j t k =
        reciprocalFirstDifference m := heq
    _ ≤ (((m : ℝ))⁻¹) ^ 2 :=
      reciprocalFirstDifference_le_inv_sq hm
    _ ≤ ((((2 ^ j : ℕ) : ℝ))⁻¹) ^ 2 := by
      have hinv :
          ((m : ℝ))⁻¹ ≤ (((2 ^ j : ℕ) : ℝ))⁻¹ := by
        apply one_div_le_one_div_of_le
        · positivity
        · exact_mod_cast hXm
      exact (sq_le_sq₀
        (inv_nonneg.mpr (by positivity : (0 : ℝ) ≤ m))
        (inv_nonneg.mpr
          (by positivity : (0 : ℝ) ≤ (2 ^ j : ℕ)))).2 hinv

/-- A core growing-shift envelope bounds every cumulative correlation by the
number of retained shifts times the common envelope. -/
theorem abs_cumulativeHarmonicShiftCorrelation_le_coreEnvelope
    {j t n : ℕ} {U : ℝ}
    (henv : CoreGrowingShiftPrefixEnvelope j U)
    (hcore : t ∈ coreLongDeepDepths j)
    (hn : n ≤ harmonicShiftCount j t) :
    |cumulativeHarmonicShiftCorrelation j t n| ≤
      (n : ℝ) * U := by
  unfold cumulativeHarmonicShiftCorrelation harmonicShiftCorrelation
  calc
    |∑ k ∈ Finset.range n,
      mertensTwoPointPrefix
        (harmonicShiftLower j t + k) (t + 1)| ≤
      ∑ k ∈ Finset.range n,
        |mertensTwoPointPrefix
          (harmonicShiftLower j t + k) (t + 1)| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ _k ∈ Finset.range n, U := by
      apply Finset.sum_le_sum
      intro k hk
      exact henv.2 t hcore k
        (lt_of_lt_of_le (Finset.mem_range.mp hk) hn)
    _ = (n : ℝ) * U := by simp

/-- The threshold anchor is controlled by `H` copies of the common envelope
and one reciprocal-square coefficient. -/
theorem abs_coreGrowingShiftAnchor_le
    {j t : ℕ} {U : ℝ}
    (henv : CoreGrowingShiftPrefixEnvelope j U)
    (hcore : t ∈ coreLongDeepDepths j) :
    |coreGrowingShiftAnchor j t| ≤
      (logarithmicShiftThreshold j : ℝ) * U *
        ((((2 ^ j : ℕ) : ℝ))⁻¹) ^ 2 := by
  have hHN :
      logarithmicShiftThreshold j ≤ harmonicShiftCount j t := by
    simpa [coreLongDeepDepths] using
      (Finset.mem_filter.mp hcore).2
  have hcum :=
    abs_cumulativeHarmonicShiftCorrelation_le_coreEnvelope
      henv hcore hHN
  have hcoefNonneg :=
    harmonicShiftFirstDifference_nonneg_all
      j t (logarithmicShiftThreshold j - 1)
  have hcoef :=
    harmonicShiftFirstDifference_le_leftScale_inv_sq
      j t (logarithmicShiftThreshold j - 1)
  unfold coreGrowingShiftAnchor
  rw [abs_mul, abs_of_nonneg hcoefNonneg]
  calc
    |cumulativeHarmonicShiftCorrelation
        j t (logarithmicShiftThreshold j)| *
        harmonicShiftFirstDifference
          j t (logarithmicShiftThreshold j - 1) ≤
      ((logarithmicShiftThreshold j : ℝ) * U) *
        harmonicShiftFirstDifference
          j t (logarithmicShiftThreshold j - 1) := by
      exact mul_le_mul_of_nonneg_right hcum hcoefNonneg
    _ ≤ ((logarithmicShiftThreshold j : ℝ) * U) *
        ((((2 ^ j : ℕ) : ℝ))⁻¹) ^ 2 := by
      apply mul_le_mul_of_nonneg_left hcoef
      exact mul_nonneg (by positivity) henv.1
    _ = _ := by ring

/-- The first-difference tail pays one reciprocal-square coefficient per
retained shift. -/
theorem abs_coreGrowingShiftFirstDifferenceTail_le
    {j t : ℕ} {U : ℝ}
    (henv : CoreGrowingShiftPrefixEnvelope j U)
    (hcore : t ∈ coreLongDeepDepths j) :
    |coreGrowingShiftFirstDifferenceTail j t| ≤
      ((harmonicShiftCount j t - logarithmicShiftThreshold j : ℕ) : ℝ) *
        U * ((((2 ^ j : ℕ) : ℝ))⁻¹) ^ 2 := by
  unfold coreGrowingShiftFirstDifferenceTail
  calc
    |∑ k ∈ Finset.Ico (logarithmicShiftThreshold j)
        (harmonicShiftCount j t),
      mertensTwoPointPrefix
          (harmonicShiftLower j t + k) (t + 1) *
        harmonicShiftFirstDifference j t k| ≤
      ∑ k ∈ Finset.Ico (logarithmicShiftThreshold j)
          (harmonicShiftCount j t),
        |mertensTwoPointPrefix
            (harmonicShiftLower j t + k) (t + 1) *
          harmonicShiftFirstDifference j t k| :=
      Finset.abs_sum_le_sum_abs _ _
    _ = ∑ k ∈ Finset.Ico (logarithmicShiftThreshold j)
          (harmonicShiftCount j t),
        |mertensTwoPointPrefix
            (harmonicShiftLower j t + k) (t + 1)| *
          harmonicShiftFirstDifference j t k := by
      apply Finset.sum_congr rfl
      intro k _hk
      rw [abs_mul,
        abs_of_nonneg (harmonicShiftFirstDifference_nonneg_all j t k)]
    _ ≤ ∑ _k ∈ Finset.Ico (logarithmicShiftThreshold j)
          (harmonicShiftCount j t),
        U * ((((2 ^ j : ℕ) : ℝ))⁻¹) ^ 2 := by
      apply Finset.sum_le_sum
      intro k hk
      have hkI := Finset.mem_Ico.mp hk
      exact mul_le_mul
        (henv.2 t hcore k hkI.2)
        (harmonicShiftFirstDifference_le_leftScale_inv_sq j t k)
        (harmonicShiftFirstDifference_nonneg_all j t k)
        henv.1
    _ = ((harmonicShiftCount j t -
          logarithmicShiftThreshold j : ℕ) : ℝ) *
        U * ((((2 ^ j : ℕ) : ℝ))⁻¹) ^ 2 := by
      simp [Finset.card_Ico, mul_assoc]

/-- At one core depth, the anchor and tail together use exactly `N` copies of
a reciprocal-square coefficient. -/
theorem abs_coreGrowingShiftFirstDifferenceDepth_le
    {j t : ℕ} {U : ℝ}
    (henv : CoreGrowingShiftPrefixEnvelope j U)
    (hcore : t ∈ coreLongDeepDepths j) :
    |coreGrowingShiftFirstDifferenceDepth j t| ≤
      2 * (harmonicShiftCount j t : ℝ) * U *
        ((((2 ^ j : ℕ) : ℝ))⁻¹) ^ 2 := by
  have hHN :
      logarithmicShiftThreshold j ≤ harmonicShiftCount j t := by
    simpa [coreLongDeepDepths] using
      (Finset.mem_filter.mp hcore).2
  have hA := abs_coreGrowingShiftAnchor_le henv hcore
  have hT := abs_coreGrowingShiftFirstDifferenceTail_le henv hcore
  unfold coreGrowingShiftFirstDifferenceDepth
  rw [abs_mul, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2)]
  calc
    2 * |coreGrowingShiftAnchor j t +
        coreGrowingShiftFirstDifferenceTail j t| ≤
      2 * (|coreGrowingShiftAnchor j t| +
        |coreGrowingShiftFirstDifferenceTail j t|) := by
      exact mul_le_mul_of_nonneg_left (abs_add _ _) (by norm_num)
    _ ≤ 2 *
        (((logarithmicShiftThreshold j : ℝ) * U *
            ((((2 ^ j : ℕ) : ℝ))⁻¹) ^ 2) +
          (((harmonicShiftCount j t -
              logarithmicShiftThreshold j : ℕ) : ℝ) * U *
            ((((2 ^ j : ℕ) : ℝ))⁻¹) ^ 2)) := by
      exact mul_le_mul_of_nonneg_left
        (add_le_add hA hT) (by norm_num)
    _ = 2 * (harmonicShiftCount j t : ℝ) * U *
        ((((2 ^ j : ℕ) : ℝ))⁻¹) ^ 2 := by
      rw [Nat.cast_sub hHN]
      ring

/-- Coarse per-depth estimate after using the deterministic bound
`harmonicShiftCount <= 2^j`. -/
theorem abs_coreGrowingShiftFirstDifferenceDepth_le_leftScale
    {j t : ℕ} {U : ℝ}
    (henv : CoreGrowingShiftPrefixEnvelope j U)
    (hcore : t ∈ coreLongDeepDepths j) :
    |coreGrowingShiftFirstDifferenceDepth j t| ≤
      2 * (((2 ^ j : ℕ) : ℝ)) * U *
        ((((2 ^ j : ℕ) : ℝ))⁻¹) ^ 2 := by
  have hN :
      (harmonicShiftCount j t : ℝ) ≤ ((2 ^ j : ℕ) : ℝ) := by
    exact_mod_cast harmonicShiftCount_le_leftScale j t
  calc
    |coreGrowingShiftFirstDifferenceDepth j t| ≤
      2 * (harmonicShiftCount j t : ℝ) * U *
        ((((2 ^ j : ℕ) : ℝ))⁻¹) ^ 2 :=
      abs_coreGrowingShiftFirstDifferenceDepth_le henv hcore
    _ = (harmonicShiftCount j t : ℝ) *
        (2 * U * ((((2 ^ j : ℕ) : ℝ))⁻¹) ^ 2) := by ring
    _ ≤ ((2 ^ j : ℕ) : ℝ) *
        (2 * U * ((((2 ^ j : ℕ) : ℝ))⁻¹) ^ 2) := by
      apply mul_le_mul_of_nonneg_right hN
      exact mul_nonneg
        (mul_nonneg (by norm_num) henv.1)
        (sq_nonneg _)
    _ = _ := by ring

/-- There are at most `2^(j+1)` genuine core depths. -/
theorem coreLongDeepDepths_card_le_rightScale
    (j : ℕ) :
    (coreLongDeepDepths j).card ≤ 2 ^ (j + 1) := by
  have hsubset :
      coreLongDeepDepths j ⊆ Finset.range (2 ^ (j + 1)) := by
    intro t ht
    simp only [coreLongDeepDepths, Finset.mem_filter,
      Finset.mem_Ico] at ht
    simp only [Finset.mem_range]
    exact ht.1.2
  exact le_trans (Finset.card_le_card hsubset) (by simp)

/-- One dyadic uniform prefix envelope controls the complete exact growing-shift
packet with only the absolute constant four. -/
theorem abs_coreGrowingShiftFirstDifferencePacket_le_four
    {j : ℕ} {U : ℝ}
    (henv : CoreGrowingShiftPrefixEnvelope j U) :
    |coreGrowingShiftFirstDifferencePacket j| ≤ 4 * U := by
  let X : ℕ := 2 ^ j
  let Y : ℕ := 2 ^ (j + 1)
  have hXpos : (0 : ℝ) < X := by
    dsimp [X]
    positivity
  have hcard :
      ((coreLongDeepDepths j).card : ℝ) ≤ (Y : ℝ) := by
    exact_mod_cast coreLongDeepDepths_card_le_rightScale j
  unfold coreGrowingShiftFirstDifferencePacket
  calc
    |∑ t ∈ coreLongDeepDepths j,
      coreGrowingShiftFirstDifferenceDepth j t| ≤
      ∑ t ∈ coreLongDeepDepths j,
        |coreGrowingShiftFirstDifferenceDepth j t| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ _t ∈ coreLongDeepDepths j,
        2 * (X : ℝ) * U * ((X : ℝ)⁻¹) ^ 2 := by
      apply Finset.sum_le_sum
      intro t ht
      simpa [X] using
        abs_coreGrowingShiftFirstDifferenceDepth_le_leftScale henv ht
    _ = ((coreLongDeepDepths j).card : ℝ) *
        (2 * (X : ℝ) * U * ((X : ℝ)⁻¹) ^ 2) := by simp
    _ ≤ (Y : ℝ) *
        (2 * (X : ℝ) * U * ((X : ℝ)⁻¹) ^ 2) := by
      apply mul_le_mul_of_nonneg_right hcard
      exact mul_nonneg
        (mul_nonneg
          (mul_nonneg (by norm_num) (by positivity)) henv.1)
        (sq_nonneg _)
    _ = 4 * U := by
      have hYX : (Y : ℝ) = 2 * (X : ℝ) := by
        dsimp [X, Y]
        rw [Nat.pow_succ]
        norm_num
      rw [hYX]
      field_simp [ne_of_gt hXpos]
      ring

/-- The existing dyadic envelope has the same constant-four packet bound. -/
theorem abs_coreGrowingShiftFirstDifferencePacket_le_four_of_dyadic
    {j : ℕ} {U : ℝ}
    (henv : DyadicMertensTwoPointEnvelope j U) :
    |coreGrowingShiftFirstDifferencePacket j| ≤ 4 * U :=
  abs_coreGrowingShiftFirstDifferencePacket_le_four
    (coreGrowingShiftPrefixEnvelope_of_dyadic henv)

/-- The existing all-scale uniform two-point prefix source supplies the exact
RH-facing growing-shift packet. -/
theorem subpolynomialCoreGrowingShiftFirstDifferencePacket_of_uniformTwoPoint
    (huniform : SubpolynomialDyadicUniformMertensTwoPointPrefix) :
    SubpolynomialCoreGrowingShiftFirstDifferencePacket := by
  intro δ hδ
  obtain ⟨A, hA, henv⟩ := huniform δ hδ
  refine ⟨4 * A, mul_nonneg (by norm_num) hA, ?_⟩
  intro j
  have habs :=
    abs_coreGrowingShiftFirstDifferencePacket_le_four_of_dyadic (henv j)
  calc
    coreGrowingShiftFirstDifferencePacket j ≤
        |coreGrowingShiftFirstDifferencePacket j| := le_abs_self _
    _ ≤ 4 * (A * (((2 ^ j : ℕ) : ℝ) ^ δ)) := habs
    _ = (4 * A) * (((2 ^ j : ℕ) : ℝ) ^ δ) := by ring

/-- Concrete source descriptor for the existing uniform finite two-point
prefix premise.  All five deterministic compatibility fields are discharged
by the direct theorem above; no fixed-shift theorem is inserted here. -/
def uniformDyadicTwoPointGrowingShiftSource :
    GrowingShiftBinaryMobiusSource where
  sourceStatement := SubpolynomialDyadicUniformMertensTwoPointPrefix
  anchorControl := True
  growingShiftRangeControl := True
  firstDifferenceWeightControl := True
  depthUniformity := True
  finiteSmallScaleControl := True

/-- Actual adapter value from the existing uniform dyadic source into the exact
growing-shift packet. -/
def uniformDyadicTwoPointToCoreGrowingShiftAdapter :
    ToCoreGrowingShiftFirstDifferencePacketAdapter
      uniformDyadicTwoPointGrowingShiftSource where
  toPacket := by
    intro huniform _ _ _ _ _
    exact
      subpolynomialCoreGrowingShiftFirstDifferencePacket_of_uniformTwoPoint
        huniform

/-- Conditional RH endpoint routed through the exact growing-shift packet. -/
theorem riemannHypothesis_of_uniformTwoPoint_via_coreGrowingShift
    (huniform : SubpolynomialDyadicUniformMertensTwoPointPrefix) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialCoreGrowingShiftFirstDifferencePacket
    (subpolynomialCoreGrowingShiftFirstDifferencePacket_of_uniformTwoPoint
      huniform)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftPrefixEnvelope_of_dyadic
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.harmonicShiftFirstDifference_le_leftScale_inv_sq
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.abs_coreGrowingShiftFirstDifferencePacket_le_four
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialCoreGrowingShiftFirstDifferencePacket_of_uniformTwoPoint
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_uniformTwoPoint_via_coreGrowingShift
