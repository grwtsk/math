/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #699. Parent: draft PR #695 at
`c9b61aeeb161a49e6a17a3d45464dfd0b0980f42`.
-/
import GRWTSK.NumberTheory.Moebius.CoreGrowingShiftUniformTwoPoint

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Unified first-difference weight on one active growing-shift coordinate.
Before the logarithmic threshold, every prefix uses the threshold anchor
coefficient.  At and after the threshold, the literal first difference is
retained. -/
def coreGrowingShiftFirstDifferenceWeight
    (j t k : ℕ) : ℝ :=
  if k < logarithmicShiftThreshold j then
    harmonicShiftFirstDifference
      j t (logarithmicShiftThreshold j - 1)
  else
    harmonicShiftFirstDifference j t k

/-- One exact weighted binary-prefix sum before the outer factor two. -/
def coreGrowingShiftWeightedPrefixDepth
    (j t : ℕ) : ℝ :=
  ∑ k ∈ Finset.range (harmonicShiftCount j t),
    mertensTwoPointPrefix
        (harmonicShiftLower j t + k) (t + 1) *
      coreGrowingShiftFirstDifferenceWeight j t k

/-- The low part of the unified weighted sum is exactly the logarithmic
anchor. -/
theorem coreGrowingShiftWeightedPrefix_low_eq_anchor
    {j t : ℕ}
    (hcore : t ∈ coreLongDeepDepths j) :
    (∑ k ∈ Finset.range (logarithmicShiftThreshold j),
      mertensTwoPointPrefix
          (harmonicShiftLower j t + k) (t + 1) *
        coreGrowingShiftFirstDifferenceWeight j t k) =
      coreGrowingShiftAnchor j t := by
  have hHpos : 0 < logarithmicShiftThreshold j := by
    unfold logarithmicShiftThreshold
    omega
  unfold coreGrowingShiftFirstDifferenceWeight
    coreGrowingShiftAnchor
  have hconst :
      (∑ k ∈ Finset.range (logarithmicShiftThreshold j),
        mertensTwoPointPrefix
            (harmonicShiftLower j t + k) (t + 1) *
          harmonicShiftFirstDifference
            j t (logarithmicShiftThreshold j - 1)) =
        (∑ k ∈ Finset.range (logarithmicShiftThreshold j),
          mertensTwoPointPrefix
            (harmonicShiftLower j t + k) (t + 1)) *
          harmonicShiftFirstDifference
            j t (logarithmicShiftThreshold j - 1) := by
    rw [Finset.sum_mul]
  calc
    (∑ k ∈ Finset.range (logarithmicShiftThreshold j),
      mertensTwoPointPrefix
          (harmonicShiftLower j t + k) (t + 1) *
        (if k < logarithmicShiftThreshold j then
          harmonicShiftFirstDifference
            j t (logarithmicShiftThreshold j - 1)
        else harmonicShiftFirstDifference j t k)) =
      ∑ k ∈ Finset.range (logarithmicShiftThreshold j),
        mertensTwoPointPrefix
            (harmonicShiftLower j t + k) (t + 1) *
          harmonicShiftFirstDifference
            j t (logarithmicShiftThreshold j - 1) := by
      apply Finset.sum_congr rfl
      intro k hk
      rw [if_pos (Finset.mem_range.mp hk)]
    _ = (∑ k ∈ Finset.range (logarithmicShiftThreshold j),
        mertensTwoPointPrefix
          (harmonicShiftLower j t + k) (t + 1)) *
        harmonicShiftFirstDifference
          j t (logarithmicShiftThreshold j - 1) := hconst
    _ = cumulativeHarmonicShiftCorrelation
          j t (logarithmicShiftThreshold j) *
        harmonicShiftFirstDifference
          j t (logarithmicShiftThreshold j - 1) := by
      rfl

/-- The high part of the unified weighted sum is exactly the literal
first-difference tail. -/
theorem coreGrowingShiftWeightedPrefix_high_eq_tail
    {j t : ℕ}
    (hcore : t ∈ coreLongDeepDepths j) :
    (∑ k ∈ Finset.Ico (logarithmicShiftThreshold j)
        (harmonicShiftCount j t),
      mertensTwoPointPrefix
          (harmonicShiftLower j t + k) (t + 1) *
        coreGrowingShiftFirstDifferenceWeight j t k) =
      coreGrowingShiftFirstDifferenceTail j t := by
  unfold coreGrowingShiftFirstDifferenceWeight
    coreGrowingShiftFirstDifferenceTail
  apply Finset.sum_congr rfl
  intro k hk
  have hkH := (Finset.mem_Ico.mp hk).1
  rw [if_neg (not_lt_of_ge hkH)]

/-- The anchor and tail are one literal weighted binary-prefix sum. -/
theorem coreGrowingShiftWeightedPrefixDepth_eq_anchor_add_tail
    {j t : ℕ}
    (hcore : t ∈ coreLongDeepDepths j) :
    coreGrowingShiftWeightedPrefixDepth j t =
      coreGrowingShiftAnchor j t +
        coreGrowingShiftFirstDifferenceTail j t := by
  have hHN :
      logarithmicShiftThreshold j ≤ harmonicShiftCount j t := by
    simpa [coreLongDeepDepths] using
      (Finset.mem_filter.mp hcore).2
  unfold coreGrowingShiftWeightedPrefixDepth
  rw [← Finset.sum_range_add_sum_Ico
    (fun k =>
      mertensTwoPointPrefix
          (harmonicShiftLower j t + k) (t + 1) *
        coreGrowingShiftFirstDifferenceWeight j t k) hHN]
  rw [coreGrowingShiftWeightedPrefix_low_eq_anchor hcore,
    coreGrowingShiftWeightedPrefix_high_eq_tail hcore]

/-- Exact one-depth representation used by the quadratic dispersion layer. -/
theorem coreGrowingShiftFirstDifferenceDepth_eq_weightedPrefix
    {j t : ℕ}
    (hcore : t ∈ coreLongDeepDepths j) :
    coreGrowingShiftFirstDifferenceDepth j t =
      2 * coreGrowingShiftWeightedPrefixDepth j t := by
  unfold coreGrowingShiftFirstDifferenceDepth
  rw [coreGrowingShiftWeightedPrefixDepth_eq_anchor_add_tail hcore]

/-- Square energy of the active binary Möbius prefixes at one core depth. -/
def coreGrowingShiftBinaryPrefixSquareDepth
    (j t : ℕ) : ℝ :=
  ∑ k ∈ Finset.range (harmonicShiftCount j t),
    mertensTwoPointPrefix
      (harmonicShiftLower j t + k) (t + 1) ^ 2

/-- Square energy of the unified first-difference coefficients at one depth. -/
def coreGrowingShiftFirstDifferenceWeightSquareDepth
    (j t : ℕ) : ℝ :=
  ∑ k ∈ Finset.range (harmonicShiftCount j t),
    coreGrowingShiftFirstDifferenceWeight j t k ^ 2

/-- Total active binary-prefix square energy over all genuine core depths. -/
def coreGrowingShiftBinaryPrefixSquareEnergy
    (j : ℕ) : ℝ :=
  ∑ t ∈ coreLongDeepDepths j,
    coreGrowingShiftBinaryPrefixSquareDepth j t

/-- Total square energy of the weighted binary-prefix depth sums. -/
def coreGrowingShiftWeightedPrefixSquareEnergy
    (j : ℕ) : ℝ :=
  ∑ t ∈ coreLongDeepDepths j,
    coreGrowingShiftWeightedPrefixDepth j t ^ 2

/-- The unified first-difference weight is nonnegative. -/
theorem coreGrowingShiftFirstDifferenceWeight_nonneg
    (j t k : ℕ) :
    0 ≤ coreGrowingShiftFirstDifferenceWeight j t k := by
  unfold coreGrowingShiftFirstDifferenceWeight
  split_ifs <;>
    exact harmonicShiftFirstDifference_nonneg_all _ _ _

/-- The unified first-difference weight inherits the reciprocal-square bound
from the exact active coordinate. -/
theorem coreGrowingShiftFirstDifferenceWeight_le_leftScale_inv_sq
    (j t k : ℕ) :
    coreGrowingShiftFirstDifferenceWeight j t k ≤
      ((((2 ^ j : ℕ) : ℝ))⁻¹) ^ 2 := by
  unfold coreGrowingShiftFirstDifferenceWeight
  split_ifs <;>
    exact harmonicShiftFirstDifference_le_leftScale_inv_sq _ _ _

/-- Deterministic coefficient square mass at one depth. -/
theorem coreGrowingShiftFirstDifferenceWeightSquareDepth_le
    (j t : ℕ) :
    coreGrowingShiftFirstDifferenceWeightSquareDepth j t ≤
      (harmonicShiftCount j t : ℝ) *
        ((((2 ^ j : ℕ) : ℝ))⁻¹) ^ 4 := by
  unfold coreGrowingShiftFirstDifferenceWeightSquareDepth
  calc
    (∑ k ∈ Finset.range (harmonicShiftCount j t),
      coreGrowingShiftFirstDifferenceWeight j t k ^ 2) ≤
      ∑ _k ∈ Finset.range (harmonicShiftCount j t),
        ((((2 ^ j : ℕ) : ℝ))⁻¹) ^ 4 := by
      apply Finset.sum_le_sum
      intro k _hk
      have hnonneg :=
        coreGrowingShiftFirstDifferenceWeight_nonneg j t k
      have hupper :=
        coreGrowingShiftFirstDifferenceWeight_le_leftScale_inv_sq j t k
      have hsquare :=
        (sq_le_sq₀ hnonneg
          (by positivity :
            0 ≤ ((((2 ^ j : ℕ) : ℝ))⁻¹) ^ 2)).2 hupper
      simpa [pow_mul] using hsquare
    _ = (harmonicShiftCount j t : ℝ) *
        ((((2 ^ j : ℕ) : ℝ))⁻¹) ^ 4 := by simp

/-- Coarse one-depth coefficient square mass at the left dyadic scale. -/
theorem coreGrowingShiftFirstDifferenceWeightSquareDepth_le_leftScale
    (j t : ℕ) :
    coreGrowingShiftFirstDifferenceWeightSquareDepth j t ≤
      (((2 ^ j : ℕ) : ℝ)) *
        ((((2 ^ j : ℕ) : ℝ))⁻¹) ^ 4 := by
  calc
    coreGrowingShiftFirstDifferenceWeightSquareDepth j t ≤
      (harmonicShiftCount j t : ℝ) *
        ((((2 ^ j : ℕ) : ℝ))⁻¹) ^ 4 :=
      coreGrowingShiftFirstDifferenceWeightSquareDepth_le j t
    _ ≤ (((2 ^ j : ℕ) : ℝ)) *
        ((((2 ^ j : ℕ) : ℝ))⁻¹) ^ 4 := by
      apply mul_le_mul_of_nonneg_right
      · exact_mod_cast harmonicShiftCount_le_leftScale j t
      · positivity

/-- Finite Cauchy--Schwarz at one core depth. -/
theorem coreGrowingShiftWeightedPrefixDepth_sq_le
    (j t : ℕ) :
    coreGrowingShiftWeightedPrefixDepth j t ^ 2 ≤
      coreGrowingShiftBinaryPrefixSquareDepth j t *
        coreGrowingShiftFirstDifferenceWeightSquareDepth j t := by
  unfold coreGrowingShiftWeightedPrefixDepth
    coreGrowingShiftBinaryPrefixSquareDepth
    coreGrowingShiftFirstDifferenceWeightSquareDepth
  exact sum_mul_sq_le_sq_mul_sq
    (Finset.range (harmonicShiftCount j t))
    (fun k =>
      mertensTwoPointPrefix
        (harmonicShiftLower j t + k) (t + 1))
    (fun k => coreGrowingShiftFirstDifferenceWeight j t k)

/-- The weighted-depth square energy is controlled by the unweighted binary
prefix square energy and the deterministic reciprocal-square coefficient
mass. -/
theorem coreGrowingShiftWeightedPrefixSquareEnergy_le
    (j : ℕ) :
    coreGrowingShiftWeightedPrefixSquareEnergy j ≤
      (((2 ^ j : ℕ) : ℝ) *
        ((((2 ^ j : ℕ) : ℝ))⁻¹) ^ 4) *
          coreGrowingShiftBinaryPrefixSquareEnergy j := by
  unfold coreGrowingShiftWeightedPrefixSquareEnergy
    coreGrowingShiftBinaryPrefixSquareEnergy
  calc
    (∑ t ∈ coreLongDeepDepths j,
      coreGrowingShiftWeightedPrefixDepth j t ^ 2) ≤
      ∑ t ∈ coreLongDeepDepths j,
        ((((2 ^ j : ℕ) : ℝ) *
          ((((2 ^ j : ℕ) : ℝ))⁻¹) ^ 4) *
            coreGrowingShiftBinaryPrefixSquareDepth j t) := by
      apply Finset.sum_le_sum
      intro t _ht
      calc
        coreGrowingShiftWeightedPrefixDepth j t ^ 2 ≤
          coreGrowingShiftBinaryPrefixSquareDepth j t *
            coreGrowingShiftFirstDifferenceWeightSquareDepth j t :=
          coreGrowingShiftWeightedPrefixDepth_sq_le j t
        _ ≤ coreGrowingShiftBinaryPrefixSquareDepth j t *
            (((2 ^ j : ℕ) : ℝ) *
              ((((2 ^ j : ℕ) : ℝ))⁻¹) ^ 4) := by
          apply mul_le_mul_of_nonneg_left
          · exact
              coreGrowingShiftFirstDifferenceWeightSquareDepth_le_leftScale
                j t
          · unfold coreGrowingShiftBinaryPrefixSquareDepth
            positivity
        _ = (((2 ^ j : ℕ) : ℝ) *
              ((((2 ^ j : ℕ) : ℝ))⁻¹) ^ 4) *
            coreGrowingShiftBinaryPrefixSquareDepth j t := by ring
    _ = (((2 ^ j : ℕ) : ℝ) *
          ((((2 ^ j : ℕ) : ℝ))⁻¹) ^ 4) *
        ∑ t ∈ coreLongDeepDepths j,
          coreGrowingShiftBinaryPrefixSquareDepth j t := by
      rw [Finset.mul_sum]

/-- Packet-level weighted-prefix sum before the outer factor two. -/
def coreGrowingShiftWeightedPrefixPacket
    (j : ℕ) : ℝ :=
  ∑ t ∈ coreLongDeepDepths j,
    coreGrowingShiftWeightedPrefixDepth j t

/-- The exact growing-shift packet is twice the weighted-prefix packet. -/
theorem coreGrowingShiftFirstDifferencePacket_eq_two_mul_weightedPrefix
    (j : ℕ) :
    coreGrowingShiftFirstDifferencePacket j =
      2 * coreGrowingShiftWeightedPrefixPacket j := by
  unfold coreGrowingShiftFirstDifferencePacket
    coreGrowingShiftWeightedPrefixPacket
  calc
    (∑ t ∈ coreLongDeepDepths j,
      coreGrowingShiftFirstDifferenceDepth j t) =
      ∑ t ∈ coreLongDeepDepths j,
        2 * coreGrowingShiftWeightedPrefixDepth j t := by
      apply Finset.sum_congr rfl
      intro t ht
      exact coreGrowingShiftFirstDifferenceDepth_eq_weightedPrefix ht
    _ = 2 * ∑ t ∈ coreLongDeepDepths j,
        coreGrowingShiftWeightedPrefixDepth j t := by
      rw [Finset.mul_sum]

/-- Outer finite Cauchy--Schwarz over genuine core depths. -/
theorem coreGrowingShiftWeightedPrefixPacket_sq_le
    (j : ℕ) :
    coreGrowingShiftWeightedPrefixPacket j ^ 2 ≤
      ((coreLongDeepDepths j).card : ℝ) *
        coreGrowingShiftWeightedPrefixSquareEnergy j := by
  unfold coreGrowingShiftWeightedPrefixPacket
    coreGrowingShiftWeightedPrefixSquareEnergy
  have h := sum_mul_sq_le_sq_mul_sq
    (coreLongDeepDepths j)
    (fun _t => (1 : ℝ))
    (fun t => coreGrowingShiftWeightedPrefixDepth j t)
  simpa using h

/-- Exact quadratic dispersion comparison.  The positive square energy is
introduced only after the signed growing-shift packet has been reconstructed. -/
theorem coreGrowingShiftFirstDifferencePacket_sq_le_prefixEnergy
    (j : ℕ) :
    coreGrowingShiftFirstDifferencePacket j ^ 2 ≤
      8 * ((((2 ^ j : ℕ) : ℝ))⁻¹) ^ 2 *
        coreGrowingShiftBinaryPrefixSquareEnergy j := by
  let X : ℝ := ((2 ^ j : ℕ) : ℝ)
  have hX : 0 < X := by
    dsimp [X]
    positivity
  have hcard :
      ((coreLongDeepDepths j).card : ℝ) ≤ 2 * X := by
    have h := coreLongDeepDepths_card_le_rightScale j
    rw [Nat.pow_succ] at h
    exact_mod_cast h
  have hweighted := coreGrowingShiftWeightedPrefixSquareEnergy_le j
  have hweighted_nonneg :
      0 ≤ coreGrowingShiftWeightedPrefixSquareEnergy j := by
    unfold coreGrowingShiftWeightedPrefixSquareEnergy
    positivity
  have hprefix_nonneg :
      0 ≤ coreGrowingShiftBinaryPrefixSquareEnergy j := by
    unfold coreGrowingShiftBinaryPrefixSquareEnergy
      coreGrowingShiftBinaryPrefixSquareDepth
    positivity
  rw [coreGrowingShiftFirstDifferencePacket_eq_two_mul_weightedPrefix]
  calc
    (2 * coreGrowingShiftWeightedPrefixPacket j) ^ 2 =
      4 * coreGrowingShiftWeightedPrefixPacket j ^ 2 := by ring
    _ ≤ 4 * (((coreLongDeepDepths j).card : ℝ) *
        coreGrowingShiftWeightedPrefixSquareEnergy j) := by
      exact mul_le_mul_of_nonneg_left
        (coreGrowingShiftWeightedPrefixPacket_sq_le j) (by norm_num)
    _ ≤ 4 * ((2 * X) *
        ((X * X⁻¹ ^ 4) *
          coreGrowingShiftBinaryPrefixSquareEnergy j)) := by
      apply mul_le_mul_of_nonneg_left
      · exact mul_le_mul hcard
          (by simpa [X] using hweighted)
          hweighted_nonneg
          (by positivity)
      · norm_num
    _ = 8 * X⁻¹ ^ 2 *
        coreGrowingShiftBinaryPrefixSquareEnergy j := by
      field_simp [ne_of_gt hX]
      ring
    _ = 8 * ((((2 ^ j : ℕ) : ℝ))⁻¹) ^ 2 *
        coreGrowingShiftBinaryPrefixSquareEnergy j := by rfl

/-- Natural averaged binary-prefix square-energy source.  Its scale is the
number of active cells, `O((2^j)^2)`, times a subpolynomial square envelope.
This is weaker than controlling every prefix by one common supremum. -/
def SubpolynomialCoreGrowingShiftBinaryPrefixSquareEnergy : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      coreGrowingShiftBinaryPrefixSquareEnergy j ≤
        (C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)) ^ 2

/-- The averaged square-energy source supplies the exact signed growing-shift
packet with only an absolute constant loss. -/
theorem subpolynomialCoreGrowingShiftFirstDifferencePacket_of_prefixSquareEnergy
    (hEnergy : SubpolynomialCoreGrowingShiftBinaryPrefixSquareEnergy) :
    SubpolynomialCoreGrowingShiftFirstDifferencePacket := by
  intro δ hδ
  obtain ⟨C, hC, hbound⟩ := hEnergy δ hδ
  refine ⟨3 * C, mul_nonneg (by norm_num) hC, ?_⟩
  intro j
  let X : ℝ := ((2 ^ j : ℕ) : ℝ)
  have hX : 0 < X := by
    dsimp [X]
    positivity
  have hE :
      coreGrowingShiftBinaryPrefixSquareEnergy j ≤
        (C * X * X ^ δ) ^ 2 := by
    simpa [X] using hbound j
  have hsq :
      coreGrowingShiftFirstDifferencePacket j ^ 2 ≤
        ((3 * C) * X ^ δ) ^ 2 := by
    calc
      coreGrowingShiftFirstDifferencePacket j ^ 2 ≤
        8 * X⁻¹ ^ 2 *
          coreGrowingShiftBinaryPrefixSquareEnergy j := by
        simpa [X] using
          coreGrowingShiftFirstDifferencePacket_sq_le_prefixEnergy j
      _ ≤ 8 * X⁻¹ ^ 2 * (C * X * X ^ δ) ^ 2 := by
        apply mul_le_mul_of_nonneg_left hE
        positivity
      _ = 8 * (C * X ^ δ) ^ 2 := by
        field_simp [ne_of_gt hX]
        ring
      _ ≤ 9 * (C * X ^ δ) ^ 2 := by
        nlinarith [sq_nonneg (C * X ^ δ)]
      _ = ((3 * C) * X ^ δ) ^ 2 := by ring
  have habs := sq_le_sq.mp hsq
  have hright : 0 ≤ (3 * C) * X ^ δ := by positivity
  calc
    coreGrowingShiftFirstDifferencePacket j ≤
        |coreGrowingShiftFirstDifferencePacket j| := le_abs_self _
    _ ≤ (3 * C) * X ^ δ := by
      simpa [abs_of_nonneg hright] using habs
    _ = (3 * C) * (((2 ^ j : ℕ) : ℝ) ^ δ) := by rfl

/-- A uniform core envelope bounds the complete active prefix square energy by
cell count times the square of its common envelope. -/
theorem coreGrowingShiftBinaryPrefixSquareEnergy_le_of_envelope
    {j : ℕ} {U : ℝ}
    (henv : CoreGrowingShiftPrefixEnvelope j U) :
    coreGrowingShiftBinaryPrefixSquareEnergy j ≤
      ((coreLongDeepDepths j).card : ℝ) *
        (((2 ^ j : ℕ) : ℝ)) * U ^ 2 := by
  unfold coreGrowingShiftBinaryPrefixSquareEnergy
    coreGrowingShiftBinaryPrefixSquareDepth
  calc
    (∑ t ∈ coreLongDeepDepths j,
      ∑ k ∈ Finset.range (harmonicShiftCount j t),
        mertensTwoPointPrefix
          (harmonicShiftLower j t + k) (t + 1) ^ 2) ≤
      ∑ _t ∈ coreLongDeepDepths j,
        (((2 ^ j : ℕ) : ℝ)) * U ^ 2 := by
      apply Finset.sum_le_sum
      intro t ht
      calc
        (∑ k ∈ Finset.range (harmonicShiftCount j t),
          mertensTwoPointPrefix
            (harmonicShiftLower j t + k) (t + 1) ^ 2) ≤
          ∑ _k ∈ Finset.range (harmonicShiftCount j t),
            U ^ 2 := by
          apply Finset.sum_le_sum
          intro k hk
          have hp := henv.2 t ht k (Finset.mem_range.mp hk)
          have habs :
              |mertensTwoPointPrefix
                (harmonicShiftLower j t + k) (t + 1)| ≤ |U| := by
            simpa [abs_of_nonneg henv.1] using hp
          exact (sq_le_sq).2 habs
        _ = (harmonicShiftCount j t : ℝ) * U ^ 2 := by simp
        _ ≤ (((2 ^ j : ℕ) : ℝ)) * U ^ 2 := by
          apply mul_le_mul_of_nonneg_right
          · exact_mod_cast harmonicShiftCount_le_leftScale j t
          · positivity
    _ = ((coreLongDeepDepths j).card : ℝ) *
        (((2 ^ j : ℕ) : ℝ)) * U ^ 2 := by
      simp [mul_assoc]

/-- The preceding uniform all-prefix source is a sufficient source for the
averaged square energy.  No converse is asserted. -/
theorem subpolynomialCoreGrowingShiftBinaryPrefixSquareEnergy_of_uniform
    (huniform : SubpolynomialDyadicUniformMertensTwoPointPrefix) :
    SubpolynomialCoreGrowingShiftBinaryPrefixSquareEnergy := by
  intro δ hδ
  obtain ⟨A, hA, henv⟩ := huniform δ hδ
  refine ⟨2 * A, mul_nonneg (by norm_num) hA, ?_⟩
  intro j
  let X : ℝ := ((2 ^ j : ℕ) : ℝ)
  let U : ℝ := A * X ^ δ
  have hcoreEnv : CoreGrowingShiftPrefixEnvelope j U := by
    dsimp [U, X]
    exact coreGrowingShiftPrefixEnvelope_of_dyadic (henv j)
  have hE :=
    coreGrowingShiftBinaryPrefixSquareEnergy_le_of_envelope hcoreEnv
  have hcard :
      ((coreLongDeepDepths j).card : ℝ) ≤ 2 * X := by
    have h := coreLongDeepDepths_card_le_rightScale j
    rw [Nat.pow_succ] at h
    exact_mod_cast h
  have hU : 0 ≤ U := by
    dsimp [U]
    positivity
  calc
    coreGrowingShiftBinaryPrefixSquareEnergy j ≤
      ((coreLongDeepDepths j).card : ℝ) * X * U ^ 2 := by
        simpa [X] using hE
    _ ≤ (2 * X) * X * U ^ 2 := by
      apply mul_le_mul_of_nonneg_right hcard
      exact mul_nonneg (by positivity) (sq_nonneg U)
    _ ≤ (2 * A * X * X ^ δ) ^ 2 := by
      dsimp [U]
      nlinarith [sq_nonneg (A * X * X ^ δ)]
    _ = ((2 * A) * (((2 ^ j : ℕ) : ℝ)) *
        (((2 ^ j : ℕ) : ℝ) ^ δ)) ^ 2 := by rfl

/-- Concrete source descriptor for the averaged prefix-square energy. -/
def coreGrowingShiftPrefixSquareEnergySource :
    GrowingShiftBinaryMobiusSource where
  sourceStatement :=
    SubpolynomialCoreGrowingShiftBinaryPrefixSquareEnergy
  anchorControl := True
  growingShiftRangeControl := True
  firstDifferenceWeightControl := True
  depthUniformity := True
  finiteSmallScaleControl := True

/-- Actual adapter from averaged binary-prefix square energy to the exact
first-difference growing-shift packet. -/
def coreGrowingShiftPrefixSquareEnergyAdapter :
    ToCoreGrowingShiftFirstDifferencePacketAdapter
      coreGrowingShiftPrefixSquareEnergySource where
  toPacket := by
    intro hEnergy _ _ _ _ _
    exact
      subpolynomialCoreGrowingShiftFirstDifferencePacket_of_prefixSquareEnergy
        hEnergy

/-- Conditional RH endpoint routed through the weaker averaged square-energy
source. -/
theorem riemannHypothesis_of_coreGrowingShiftPrefixSquareEnergy
    (hEnergy : SubpolynomialCoreGrowingShiftBinaryPrefixSquareEnergy) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialCoreGrowingShiftFirstDifferencePacket
    (subpolynomialCoreGrowingShiftFirstDifferencePacket_of_prefixSquareEnergy
      hEnergy)

/-- Finite hostile witness: a signed weighted sum may vanish while its
unweighted square energy is positive.  This confirms that the averaged square
source is sufficient-only, not equivalent to signed packet cancellation. -/
theorem growingShiftPrefixSquareEnergy_hostileWitness :
    (1 : ℝ) * 1 + (-1 : ℝ) * 1 = 0 ∧
      (1 : ℝ) ^ 2 + (-1 : ℝ) ^ 2 = 2 := by
  norm_num

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftWeightedPrefixDepth_eq_anchor_add_tail
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftFirstDifferencePacket_sq_le_prefixEnergy
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialCoreGrowingShiftFirstDifferencePacket_of_prefixSquareEnergy
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialCoreGrowingShiftBinaryPrefixSquareEnergy_of_uniform
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_coreGrowingShiftPrefixSquareEnergy
