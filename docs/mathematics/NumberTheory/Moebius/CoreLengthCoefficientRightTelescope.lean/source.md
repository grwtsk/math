# Complete source: GRWTSK.NumberTheory.Moebius.CoreLengthCoefficientRightTelescope

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ee6e8d84b1f48946be1ec1a3629a98d09374dbb8` · SHA-256 `f8b657c7a908e0e7bf84d10015db346fc95403b1af620684722c504f82ecb573`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #595. Parent: draft PR #593 at
`9f7ea0164cb3d561fa9e8524082c87671dd6f69d`.
-/
import GRWTSK.NumberTheory.Moebius.CoreLengthCoefficientNonboundary

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- The right depth regime is one contiguous interval. -/
theorem rightCoefficientDepths_eq_Ico
    (j : ℕ) :
    rightCoefficientDepths j =
      Finset.Ico (2 ^ j - 1) (2 ^ (j + 1)) := by
  ext t
  simp only [rightCoefficientDepths, Finset.mem_filter,
    Finset.mem_range, Finset.mem_Ico]
  constructor
  · intro ht
    constructor
    · omega
    · exact ht.1
  · intro ht
    exact ⟨ht.2, by omega⟩

private theorem sum_Ico_indicator_lt
    (F : ℕ → ℝ) {a b c : ℕ}
    (hab : a ≤ b) (hbc : b ≤ c) :
    (∑ t ∈ Finset.Ico a c, if t < b then F t else 0) =
      ∑ t ∈ Finset.Ico a b, F t := by
  rw [← Finset.sum_filter]
  apply Finset.sum_congr
  · ext t
    simp only [Finset.mem_filter, Finset.mem_Ico]
    constructor
    · intro ht
      exact ⟨ht.1.1, ht.2⟩
    · intro ht
      exact ⟨⟨ht.1, lt_of_lt_of_le ht.2 hbc⟩, ht.2⟩
  · intro t ht
    simp only [Finset.mem_filter] at ht
    simp [ht.2]

private theorem sum_Ico_shift
    (F : ℕ → ℝ) (a b s : ℕ) :
    (∑ t ∈ Finset.Ico a b, F (t + s)) =
      ∑ m ∈ Finset.Ico (a + s) (b + s), F m := by
  classical
  apply Finset.sum_bij (fun t _ => t + s)
  · intro t ht
    simp only [Finset.mem_Ico] at ht ⊢
    omega
  · intro t₁ ht₁ t₂ ht₂ h
    omega
  · intro m hm
    refine ⟨m - s, ?_, ?_⟩
    · simp only [Finset.mem_Ico] at hm ⊢
      omega
    · omega
  · intro t ht
    rfl

/-- For a retained non-boundary length, the unique right-regime terminal depth
is `2^(j+1)-n-2`. -/
def rightTerminalDepth (j n : ℕ) : ℕ :=
  2 ^ (j + 1) - n - 2

theorem rightTerminalDepth_mem
    {j n : ℕ}
    (hn : 1 ≤ n)
    (hnX : n < 2 ^ j) :
    rightTerminalDepth j n ∈ rightCoefficientDepths j := by
  rw [rightCoefficientDepths_eq_Ico]
  simp only [Finset.mem_Ico]
  unfold rightTerminalDepth
  rw [Nat.pow_succ]
  constructor <;> omega

/-- The active count at the right terminal depth is exactly the retained
length. -/
theorem harmonicShiftCount_rightTerminalDepth
    {j n : ℕ}
    (hn : 1 ≤ n)
    (hnX : n < 2 ^ j) :
    harmonicShiftCount j (rightTerminalDepth j n) = n := by
  have ht :
      2 ^ j ≤ rightTerminalDepth j n + 1 := by
    unfold rightTerminalDepth
    rw [Nat.pow_succ]
    omega
  rw [harmonicShiftCount_eq_rightDistance ht]
  unfold rightTerminalDepth
  omega

/-- At the unique right terminal depth, the terminal selector is the final
first reciprocal difference. -/
theorem coreTerminalLengthCoefficient_rightTerminal
    {j n : ℕ}
    (hn : 1 ≤ n)
    (hnX : n < 2 ^ j) :
    coreTerminalLengthCoefficient j (rightTerminalDepth j n) n =
      reciprocalFirstDifference (2 ^ (j + 1) - 1) := by
  unfold coreTerminalLengthCoefficient
  rw [if_pos ⟨by omega, harmonicShiftCount_rightTerminalDepth hn hnX |>.symm⟩]
  unfold harmonicShiftFirstDifference reciprocalFirstDifference
  have ht :
      2 ^ j ≤ rightTerminalDepth j n + 1 := by
    unfold rightTerminalDepth
    rw [Nat.pow_succ]
    omega
  rw [harmonicShiftReciprocal_eq_right ht,
    harmonicShiftReciprocal_eq_right ht]
  unfold rightTerminalDepth
  congr 1 <;> congr 1 <;> omega

/-- Away from the unique right terminal depth, the fixed-length terminal
selector vanishes. -/
theorem coreTerminalLengthCoefficient_eq_zero_right_of_ne
    {j t n : ℕ}
    (ht : t ∈ rightCoefficientDepths j)
    (hn : 1 ≤ n)
    (hnX : n < 2 ^ j)
    (hne : t ≠ rightTerminalDepth j n) :
    coreTerminalLengthCoefficient j t n = 0 := by
  simp only [rightCoefficientDepths, Finset.mem_filter,
    Finset.mem_range] at ht
  have hright : 2 ^ j ≤ t + 1 := ht.2
  unfold coreTerminalLengthCoefficient
  rw [harmonicShiftCount_eq_rightDistance hright]
  have hneq : n ≠ 2 ^ (j + 1) - t - 2 := by
    intro h
    apply hne
    unfold rightTerminalDepth
    omega
  simp [hneq]

/-- The complete right terminal mass is exactly the final first difference. -/
theorem rightTerminalLengthCoefficientMass_eq
    {j n : ℕ}
    (hn : 1 ≤ n)
    (hnX : n < 2 ^ j) :
    (∑ t ∈ rightCoefficientDepths j,
      coreTerminalLengthCoefficient j t n) =
      reciprocalFirstDifference (2 ^ (j + 1) - 1) := by
  classical
  rw [Finset.sum_eq_single (rightTerminalDepth j n)]
  · exact coreTerminalLengthCoefficient_rightTerminal hn hnX
  · intro t ht hne
    exact coreTerminalLengthCoefficient_eq_zero_right_of_ne
      ht hn hnX hne
  · exact rightTerminalDepth_mem hn hnX

/-- In the right regime, the interior selector is present exactly before the
unique terminal depth. -/
theorem coreInteriorLengthCoefficient_right_indicator
    {j t n : ℕ}
    (ht : t ∈ rightCoefficientDepths j)
    (hnH : logarithmicShiftThreshold j ≤ n)
    (hnX : n < 2 ^ j) :
    coreInteriorLengthCoefficient j t n =
      if t < rightTerminalDepth j n then
        reciprocalSecondDifference (t + n + 1)
      else 0 := by
  simp only [rightCoefficientDepths, Finset.mem_filter,
    Finset.mem_range] at ht
  have hright : 2 ^ j ≤ t + 1 := ht.2
  by_cases hlt : t < rightTerminalDepth j n
  · rw [if_pos hlt]
    have hnN : n < harmonicShiftCount j t := by
      rw [harmonicShiftCount_eq_rightDistance hright]
      unfold rightTerminalDepth at hlt
      omega
    rw [coreInteriorLengthCoefficient_eq_right hright hnH hnN]
    unfold reciprocalSecondDifference reciprocalFirstDifference
    congr 1 <;> congr 1 <;> omega
  · rw [if_neg hlt]
    unfold coreInteriorLengthCoefficient
    rw [harmonicShiftCount_eq_rightDistance hright]
    have hnot :
        ¬ (logarithmicShiftThreshold j ≤ n ∧
          n < 2 ^ (j + 1) - t - 2) := by
      intro h
      apply hlt
      unfold rightTerminalDepth
      omega
    simp [hnot]

/-- The right interior mass telescopes to the first difference at
`2^j+n` minus the final terminal first difference. -/
theorem rightInteriorLengthCoefficientMass_eq
    {j n : ℕ}
    (hnH : logarithmicShiftThreshold j ≤ n)
    (hnX : n < 2 ^ j) :
    (∑ t ∈ rightCoefficientDepths j,
      coreInteriorLengthCoefficient j t n) =
      reciprocalFirstDifference (2 ^ j + n) -
        reciprocalFirstDifference (2 ^ (j + 1) - 1) := by
  have hn : 1 ≤ n := by
    have hH : 1 ≤ logarithmicShiftThreshold j := by
      unfold logarithmicShiftThreshold
      omega
    omega
  rw [rightCoefficientDepths_eq_Ico]
  have hLT :
      2 ^ j - 1 ≤ rightTerminalDepth j n := by
    unfold rightTerminalDepth
    rw [Nat.pow_succ]
    omega
  have hTY :
      rightTerminalDepth j n ≤ 2 ^ (j + 1) := by
    unfold rightTerminalDepth
    omega
  calc
    (∑ t ∈ Finset.Ico (2 ^ j - 1) (2 ^ (j + 1)),
      coreInteriorLengthCoefficient j t n) =
      ∑ t ∈ Finset.Ico (2 ^ j - 1) (2 ^ (j + 1)),
        if t < rightTerminalDepth j n then
          reciprocalSecondDifference (t + n + 1)
        else 0 := by
      apply Finset.sum_congr rfl
      intro t ht
      rw [coreInteriorLengthCoefficient_right_indicator
        (by
          rw [rightCoefficientDepths_eq_Ico]
          exact ht)
        hnH hnX]
    _ = ∑ t ∈ Finset.Ico (2 ^ j - 1) (rightTerminalDepth j n),
        reciprocalSecondDifference (t + n + 1) := by
      exact sum_Ico_indicator_lt reciprocalSecondDifference hLT hTY
    _ = ∑ m ∈ Finset.Ico (2 ^ j + n) (2 ^ (j + 1) - 1),
        reciprocalSecondDifference m := by
      rw [sum_Ico_shift reciprocalSecondDifference
        (2 ^ j - 1) (rightTerminalDepth j n) (n + 1)]
      congr 2 <;>
        unfold rightTerminalDepth <;> omega
    _ = reciprocalFirstDifference (2 ^ j + n) -
        reciprocalFirstDifference (2 ^ (j + 1) - 1) := by
      apply sum_reciprocalSecondDifference_Ico
      rw [Nat.pow_succ]
      omega

/-- Exact right-regime terminal-plus-interior telescope. -/
theorem rightLengthCoefficientMass_eq
    {j n : ℕ}
    (hnH : logarithmicShiftThreshold j ≤ n)
    (hnX : n < 2 ^ j) :
    rightLengthCoefficientMass j n =
      reciprocalFirstDifference (2 ^ j + n) := by
  unfold rightLengthCoefficientMass
  rw [Finset.sum_add_distrib,
    rightTerminalLengthCoefficientMass_eq
      (by
        have hH : 1 ≤ logarithmicShiftThreshold j := by
          unfold logarithmicShiftThreshold
          omega
        omega)
      hnX,
    rightInteriorLengthCoefficientMass_eq hnH hnX]
  ring

/-- The isolated right-regime telescope from #591 is now discharged. -/
theorem rightLengthCoefficientTelescoping :
    RightLengthCoefficientTelescoping := by
  intro j n hnH hnX
  exact rightLengthCoefficientMass_eq hnH hnX

/-- Full non-boundary coefficient mass has the claimed reciprocal-square
bound with explicit constant three. -/
theorem fullLengthCoefficientMass_le_three_inv_sq
    {j n : ℕ}
    (hnH : logarithmicShiftThreshold j ≤ n)
    (hnX : n < 2 ^ j) :
    fullLengthCoefficientMass j n ≤
      3 * ((((2 ^ j + n : ℕ) : ℝ))⁻¹ ^ 2) :=
  fullLengthCoefficientMass_le_three_inv_sq_of_rightTelescope
    rightLengthCoefficientTelescoping hnH hnX

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.rightInteriorLengthCoefficientMass_eq
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.rightLengthCoefficientMass_eq
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.fullLengthCoefficientMass_le_three_inv_sq
```
