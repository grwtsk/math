/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #551. Direct stacked parent: draft PR #550 at
`3a5c6d4ff09962d7da406868062fb96313b27b69`.
-/
import GRWTSK.NumberTheory.Moebius.MertensShallowDepthPayment

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Shallow portion of the nonnegative normalized short-length budget. -/
def logarithmicShallowNormalizedShortBudget (j : ℕ) : ℝ :=
  ∑ t ∈ Finset.range (logarithmicShallowDepthCount j),
    normalizedShortDepthBudget j t

/-- The normalized short-depth budget is pointwise nonnegative. -/
theorem normalizedShortDepthBudget_nonneg
    (j t : ℕ) :
    0 ≤ normalizedShortDepthBudget j t := by
  unfold normalizedShortDepthBudget
  apply mul_nonneg
  · positivity
  · unfold harmonicShiftFirstDifference harmonicShiftReciprocal
    apply sub_nonneg.mpr
    apply one_div_le_one_div_of_le
    · positivity
    · exact_mod_cast Nat.le_succ
        (t + 1 + harmonicShiftLower j t)

/-- The shallow portion of the short-length budget is bounded by the complete
short-length packet budget. -/
theorem logarithmicShallowNormalizedShortBudget_le_full
    (j : ℕ) :
    logarithmicShallowNormalizedShortBudget j ≤
      normalizedShortPacketBudget j := by
  unfold logarithmicShallowNormalizedShortBudget
    normalizedShortPacketBudget
  apply Finset.sum_le_sum_of_subset_of_nonneg
  · intro t ht
    simp only [Finset.mem_range] at ht ⊢
    have hD :
        logarithmicShallowDepthCount j ≤ 2 ^ (j + 1) := by
      unfold logarithmicShallowDepthCount
      exact le_trans (min_le_right _ _) (Nat.sub_le _ _)
    omega
  · intro t _ht _hnot
    exact normalizedShortDepthBudget_nonneg j t

/-- The signed shallow normalized short-length contribution. -/
def logarithmicShallowShortSignedPacket (j : ℕ) : ℝ :=
  ∑ t ∈ Finset.range (logarithmicShallowDepthCount j),
    2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ *
      harmonicCumulativeShortContribution
        j t (logarithmicShiftThreshold j)

/-- The shallow long remainder is exactly shallow full depth minus shallow
short-length contribution. -/
theorem logarithmicShallowLongRemainderPacket_eq_sub
    (j : ℕ) :
    logarithmicShallowLongRemainderPacket j =
      logarithmicShallowDepthPacket j -
        logarithmicShallowShortSignedPacket j := by
  unfold logarithmicShallowLongRemainderPacket
    logarithmicLongDepthRemainder
    logarithmicShallowDepthPacket
    logarithmicShallowShortSignedPacket
  rw [Finset.sum_sub_distrib]

/-- Absolute value of the shallow signed short-length contribution is bounded
by its nonnegative shallow budget. -/
theorem abs_logarithmicShallowShortSignedPacket_le_budget
    (j : ℕ) :
    |logarithmicShallowShortSignedPacket j| ≤
      logarithmicShallowNormalizedShortBudget j := by
  unfold logarithmicShallowShortSignedPacket
    logarithmicShallowNormalizedShortBudget
  calc
    |∑ t ∈ Finset.range (logarithmicShallowDepthCount j),
      2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ *
        harmonicCumulativeShortContribution
          j t (logarithmicShiftThreshold j)| ≤
      ∑ t ∈ Finset.range (logarithmicShallowDepthCount j),
        |2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ *
          harmonicCumulativeShortContribution
            j t (logarithmicShiftThreshold j)| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ t ∈ Finset.range (logarithmicShallowDepthCount j),
        normalizedShortDepthBudget j t := by
      apply Finset.sum_le_sum
      intro t _ht
      rw [abs_mul, abs_of_nonneg (by positivity :
        0 ≤ 2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹)]
      exact normalized_shortContribution_le_budget j t

/-- Deterministic shallow-long remainder bound by the sum of the two already
paid shallow budgets. -/
theorem abs_logarithmicShallowLongRemainderPacket_le
    (j : ℕ) :
    |logarithmicShallowLongRemainderPacket j| ≤
      |logarithmicShallowDepthPacket j| +
        logarithmicShallowNormalizedShortBudget j := by
  rw [logarithmicShallowLongRemainderPacket_eq_sub]
  calc
    |logarithmicShallowDepthPacket j -
        logarithmicShallowShortSignedPacket j| ≤
      |logarithmicShallowDepthPacket j| +
        |logarithmicShallowShortSignedPacket j| := abs_sub _ _
    _ ≤ |logarithmicShallowDepthPacket j| +
        logarithmicShallowNormalizedShortBudget j := by
      exact add_le_add_left
        (abs_logarithmicShallowShortSignedPacket_le_budget j) _

/-- The shallow-long remainder is subpolynomial. -/
def SubpolynomialLogarithmicShallowLongRemainderPacket : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      |logarithmicShallowLongRemainderPacket j| ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Deterministic source-level inhabitant of the shallow-long supplier. -/
theorem subpolynomialLogarithmicShallowLongRemainderPacket :
    SubpolynomialLogarithmicShallowLongRemainderPacket := by
  intro δ hδ
  obtain ⟨Cdepth, hCdepth, hdepth⟩ :=
    subpolynomialLogarithmicShallowDepthPacket δ hδ
  obtain ⟨Cshort, hCshort, hshort⟩ :=
    subpolynomialLogThresholdShortPacketBudget δ hδ
  refine ⟨Cdepth + Cshort, add_nonneg hCdepth hCshort, ?_⟩
  intro j
  calc
    |logarithmicShallowLongRemainderPacket j| ≤
      |logarithmicShallowDepthPacket j| +
        logarithmicShallowNormalizedShortBudget j :=
      abs_logarithmicShallowLongRemainderPacket_le j
    _ ≤ |logarithmicShallowDepthPacket j| +
        normalizedShortPacketBudget j := by
      exact add_le_add_left
        (logarithmicShallowNormalizedShortBudget_le_full j) _
    _ ≤ Cdepth * (((2 ^ j : ℕ) : ℝ) ^ δ) +
        Cshort * (((2 ^ j : ℕ) : ℝ) ^ δ) := by
      exact add_le_add (hdepth j) (hshort j)
    _ = (Cdepth + Cshort) *
        (((2 ^ j : ℕ) : ℝ) ^ δ) := by ring

/-- A subpolynomial deep-long remainder supplies the complete long remainder
once the deterministic shallow-long part is restored. -/
theorem subpolynomialLongHarmonicRemainderPacket_of_deep
    (hDeep : SubpolynomialDeepLongHarmonicRemainderPacket) :
    SubpolynomialLongHarmonicRemainderPacket := by
  intro δ hδ
  obtain ⟨Cshallow, hCshallow, hshallow⟩ :=
    subpolynomialLogarithmicShallowLongRemainderPacket δ hδ
  obtain ⟨Cdeep, hCdeep, hdeep⟩ :=
    hDeep δ hδ
  refine ⟨Cshallow + Cdeep, add_nonneg hCshallow hCdeep, ?_⟩
  intro j
  rw [logarithmicLongRemainder_eq_shallow_add_deep]
  calc
    logarithmicShallowLongRemainderPacket j +
        logarithmicDeepLongRemainderPacket j ≤
      |logarithmicShallowLongRemainderPacket j| +
        logarithmicDeepLongRemainderPacket j := by
      exact add_le_add_right (le_abs_self _) _
    _ ≤ Cshallow * (((2 ^ j : ℕ) : ℝ) ^ δ) +
        Cdeep * (((2 ^ j : ℕ) : ℝ) ^ δ) := by
      exact add_le_add (hshallow j) (hdeep j)
    _ = (Cshallow + Cdeep) *
        (((2 ^ j : ℕ) : ℝ) ^ δ) := by ring

/-- The deep-long supplier is now the sole analytic premise on this branch. -/
theorem riemannHypothesis_of_subpolynomialDeepLongHarmonicRemainderPacket
    (hDeep : SubpolynomialDeepLongHarmonicRemainderPacket) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialLongHarmonicRemainderPacket
    (subpolynomialLongHarmonicRemainderPacket_of_deep hDeep)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialLogarithmicShallowLongRemainderPacket
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialLongHarmonicRemainderPacket_of_deep
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_subpolynomialDeepLongHarmonicRemainderPacket
