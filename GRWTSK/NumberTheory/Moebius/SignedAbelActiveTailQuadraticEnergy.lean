/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #497. Direct stacked parent: draft PR #493 at
`69837fb753aa0c71fb9926264275dac4a8141c3d`.
-/
import GRWTSK.NumberTheory.Moebius.SignedAbelMassQuadraticEnergy

/-!
# Reciprocal active-tail expansion of the Abel quadratic energy

The dyadic shift kernel is constant below the left endpoint `2^j`. Therefore
its Abel difference vanishes there exactly. On the active tail
`2^j <= b < 2^(j+1)`, the constant endpoint subtraction cancels and the
Abel drop is the reciprocal difference

`1 / b - 1 / (b+1)`.

This module exposes that exact piecewise formula and rewrites the global
Abel-weighted quadratic energy using only the active reciprocal tail.

No arithmetic estimate is proved.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Below the left dyadic endpoint the kernel is constant, so the forward Abel
drop vanishes exactly. -/
theorem dyadicMertensShiftWeightDrop_eq_zero_of_lt_left
    {j h t : ℕ}
    (hb : t + 1 + h < 2 ^ j) :
    dyadicMertensShiftWeightDrop j h t = 0 := by
  unfold dyadicMertensShiftWeightDrop
  rw [dyadicMertensShiftWeight_eq_max j (t + 1 + h),
    dyadicMertensShiftWeight_eq_max j ((t + 1) + 1 + h)]
  have h0 : max (2 ^ j) (t + 1 + h) = 2 ^ j :=
    max_eq_left (Nat.le_of_lt hb)
  have h1le : (t + 1) + 1 + h ≤ 2 ^ j := by
    omega
  have h1 : max (2 ^ j) ((t + 1) + 1 + h) = 2 ^ j :=
    max_eq_left h1le
  rw [h0, h1]
  ring

/-- Once the left endpoint has been reached, the Abel drop is exactly one
reciprocal difference. The endpoint subtraction cancels. -/
theorem dyadicMertensShiftWeightDrop_eq_reciprocalDiff_of_left_le
    {j h t : ℕ}
    (hb : 2 ^ j ≤ t + 1 + h) :
    dyadicMertensShiftWeightDrop j h t =
      (((t + 1 + h : ℕ) : ℝ))⁻¹ -
        ((((t + 1) + 1 + h : ℕ) : ℝ))⁻¹ := by
  unfold dyadicMertensShiftWeightDrop
  rw [dyadicMertensShiftWeight_eq_max j (t + 1 + h),
    dyadicMertensShiftWeight_eq_max j ((t + 1) + 1 + h)]
  have hb1 : 2 ^ j ≤ (t + 1) + 1 + h := by
    omega
  rw [max_eq_right hb, max_eq_right hb1]
  ring

/-- Explicit reciprocal active-tail weight. It is zero both before the left
dyadic endpoint and after the exact triangular support ends. -/
def signedAbelActiveReciprocalWeight
    (j t h : ℕ) : ℝ :=
  if 2 ^ j ≤ t + 1 + h ∧
      t + 1 + h < 2 ^ (j + 1) then
    (((t + 1 + h : ℕ) : ℝ))⁻¹ -
      ((((t + 1) + 1 + h : ℕ) : ℝ))⁻¹
  else 0

/-- The zero-extended Abel weight from the source-specific dispersion module is
exactly the reciprocal active-tail weight. -/
theorem signedAbelDepthWeight_eq_activeReciprocalWeight
    (j t h : ℕ) :
    signedAbelDepthWeight j t h =
      signedAbelActiveReciprocalWeight j t h := by
  unfold signedAbelDepthWeight signedAbelActiveReciprocalWeight
  by_cases hsupp : t < 2 ^ (j + 1) - h - 1
  · have hbY : t + 1 + h < 2 ^ (j + 1) := by
      omega
    rw [if_pos hsupp]
    by_cases hbX : 2 ^ j ≤ t + 1 + h
    · rw [if_pos ⟨hbX, hbY⟩,
        dyadicMertensShiftWeightDrop_eq_reciprocalDiff_of_left_le hbX]
    · have hbX' : t + 1 + h < 2 ^ j := Nat.lt_of_not_ge hbX
      rw [if_neg]
      · exact dyadicMertensShiftWeightDrop_eq_zero_of_lt_left hbX'
      · intro hbad
        exact hbX hbad.1
  · rw [if_neg hsupp]
    have hactive :
        ¬ (2 ^ j ≤ t + 1 + h ∧
          t + 1 + h < 2 ^ (j + 1)) := by
      intro hb
      have : t < 2 ^ (j + 1) - h - 1 := by
        omega
      exact hsupp this
    rw [if_neg hactive]

/-- Immediate exact controls on the two inactive regions. -/
theorem signedAbelActiveReciprocalWeight_eq_zero_of_lt_left
    {j t h : ℕ}
    (hb : t + 1 + h < 2 ^ j) :
    signedAbelActiveReciprocalWeight j t h = 0 := by
  unfold signedAbelActiveReciprocalWeight
  rw [if_neg]
  intro hactive
  exact (Nat.not_le_of_gt hb) hactive.1

theorem signedAbelActiveReciprocalWeight_eq_zero_of_right_le
    {j t h : ℕ}
    (hb : 2 ^ (j + 1) ≤ t + 1 + h) :
    signedAbelActiveReciprocalWeight j t h = 0 := by
  unfold signedAbelActiveReciprocalWeight
  rw [if_neg]
  intro hactive
  exact (Nat.not_lt_of_ge hb) hactive.2

/-- Exact active-tail presentation of the reciprocal drop. -/
theorem signedAbelActiveReciprocalWeight_eq_reciprocalDiff
    {j t h : ℕ}
    (hX : 2 ^ j ≤ t + 1 + h)
    (hY : t + 1 + h < 2 ^ (j + 1)) :
    signedAbelActiveReciprocalWeight j t h =
      (((t + 1 + h : ℕ) : ℝ))⁻¹ -
        ((((t + 1) + 1 + h : ℕ) : ℝ))⁻¹ := by
  simp [signedAbelActiveReciprocalWeight, hX, hY]

/-- The same global quadratic obstruction, now written only with the explicit
reciprocal active-tail weight. -/
def weightedMertensSignedAbelActiveTailQuadraticEnergy
    (j : ℕ) : ℝ :=
  ∑ t ∈ Finset.range (2 ^ (j + 1)),
    ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
      signedAbelDepthAmplitude j t h ^ 2 *
        signedAbelActiveReciprocalWeight j t h

/-- Exact source-preserving replacement of the abstract zero-extended Abel
weight by the explicit reciprocal active tail. -/
theorem weightedMertensSignedAbelGlobalQuadraticEnergy_eq_activeTail
    (j : ℕ) :
    weightedMertensSignedAbelGlobalQuadraticEnergy j =
      weightedMertensSignedAbelActiveTailQuadraticEnergy j := by
  unfold weightedMertensSignedAbelGlobalQuadraticEnergy
    weightedMertensSignedAbelDepthQuadraticEnergy
    weightedMertensSignedAbelActiveTailQuadraticEnergy
  apply Finset.sum_congr rfl
  intro t _ht
  apply Finset.sum_congr rfl
  intro h _hh
  rw [signedAbelDepthWeight_eq_activeReciprocalWeight]

theorem weightedMertensSignedAbelActiveTailQuadraticEnergy_nonneg
    (j : ℕ) :
    0 ≤ weightedMertensSignedAbelActiveTailQuadraticEnergy j := by
  rw [← weightedMertensSignedAbelGlobalQuadraticEnergy_eq_activeTail]
  exact weightedMertensSignedAbelGlobalQuadraticEnergy_nonneg j

/-- All-scale arithmetic supplier stated directly on the reciprocal active-tail
energy. -/
def SubpolynomialDyadicSignedAbelActiveTailQuadraticEnergy : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      weightedMertensSignedAbelActiveTailQuadraticEnergy j ≤
        (C * (((2 ^ j : ℕ) : ℝ) ^ δ)) ^ 2

/-- Exact all-scale equivalence: the active-tail supplier is a representation
change of the preceding global quadratic supplier, not a stronger estimate. -/
theorem subpolynomialDyadicSignedAbelActiveTailQuadraticEnergy_iff_global :
    SubpolynomialDyadicSignedAbelActiveTailQuadraticEnergy ↔
      SubpolynomialDyadicSignedAbelGlobalQuadraticEnergy := by
  constructor
  · intro hTail δ hδ
    obtain ⟨C, hC, hscale⟩ := hTail δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [weightedMertensSignedAbelGlobalQuadraticEnergy_eq_activeTail]
    exact hscale j
  · intro hGlobal δ hδ
    obtain ⟨C, hC, hscale⟩ := hGlobal δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [← weightedMertensSignedAbelGlobalQuadraticEnergy_eq_activeTail]
    exact hscale j

/-- Conditional RH endpoint from the exact reciprocal active-tail supplier.
The arithmetic supplier itself remains open. -/
theorem riemannHypothesis_of_subpolynomialDyadicSignedAbelActiveTailQuadraticEnergy
    (hTail : SubpolynomialDyadicSignedAbelActiveTailQuadraticEnergy) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialDyadicSignedAbelGlobalQuadraticEnergy
    (subpolynomialDyadicSignedAbelActiveTailQuadraticEnergy_iff_global.mp hTail)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.dyadicMertensShiftWeightDrop_eq_zero_of_lt_left
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.signedAbelDepthWeight_eq_activeReciprocalWeight
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.weightedMertensSignedAbelGlobalQuadraticEnergy_eq_activeTail
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_subpolynomialDyadicSignedAbelActiveTailQuadraticEnergy
