# Complete source: GRWTSK.NumberTheory.Moebius.CoreShortIntervalOneDepthTranspose

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1e3c92b3f18c2b5f7c293fd6e85945b675c2dcbb` · SHA-256 `3cc96b1b16814844ab3a79a23dcd6b114183ac9352502889902377c008444804`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #581. Parent: draft PR #580 at
`e3e9ab7291624fc85dc1c4c5593dd79dd2a511ab`.
-/
import GRWTSK.NumberTheory.Moebius.CoreShortIntervalDepthTranspose

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

private theorem sum_succ_range_filter_eq_Ico
    (F : ℕ → ℝ) {H N : ℕ} (hHN : H ≤ N) :
    (∑ k ∈ (Finset.range (N - 1)).filter (fun k => H ≤ k + 1),
      F (k + 1)) =
      ∑ n ∈ Finset.Ico H N, F n := by
  classical
  apply Finset.sum_bij (fun k _ => k + 1)
  · intro k hk
    simp only [Finset.mem_filter, Finset.mem_range] at hk
    simp only [Finset.mem_Ico]
    constructor
    · exact hk.2
    · omega
  · intro k₁ hk₁ k₂ hk₂ h
    omega
  · intro n hn
    simp only [Finset.mem_Ico] at hn
    refine ⟨n - 1, ?_, ?_⟩
    · simp only [Finset.mem_filter, Finset.mem_range]
      constructor
      · omega
      · omega
    · omega
  · intro k hk
    rfl

/-- At a genuine core depth, the terminal incompatible contribution is exactly
the retained-length selector sum. -/
theorem incompatibleTerminal_eq_lengthSelectorSum
    {j t : ℕ}
    (hcore : t ∈ coreLongDeepDepths j) :
    incompatibleDyadicBlockTerminalL1Majorant j t =
      ∑ n ∈ Finset.Ico (logarithmicShiftThreshold j)
          (2 ^ (j + 1) + 1),
        incompatibleDyadicStartBlockL1 j n *
          coreTerminalLengthCoefficient j t n := by
  have hN :
      logarithmicShiftThreshold j ≤ harmonicShiftCount j t := by
    simpa [coreLongDeepDepths] using
      (Finset.mem_filter.mp hcore).2
  have hNpos : 0 < harmonicShiftCount j t := by
    have hH : 0 < logarithmicShiftThreshold j := by
      unfold logarithmicShiftThreshold
      omega
    omega
  have hNY : harmonicShiftCount j t < 2 ^ (j + 1) + 1 := by
    unfold harmonicShiftCount harmonicShiftUpper harmonicShiftLower
    omega
  unfold incompatibleDyadicBlockTerminalL1Majorant
  rw [if_neg (Nat.ne_of_gt hNpos)]
  classical
  rw [Finset.sum_eq_single (harmonicShiftCount j t)]
  · unfold coreTerminalLengthCoefficient
    simp [hNpos]
    ring
  · intro n hn hne
    unfold coreTerminalLengthCoefficient
    simp [hne]
  · simp only [Finset.mem_Ico]
    exact ⟨hN, hNY⟩

/-- The long interior incompatible contribution is exactly the retained-length
selector sum at one core depth. -/
theorem incompatibleLongInterior_eq_lengthSelectorSum
    {j t : ℕ}
    (hcore : t ∈ coreLongDeepDepths j) :
    incompatibleDyadicBlockLongInteriorL1Majorant j t =
      ∑ n ∈ Finset.Ico (logarithmicShiftThreshold j)
          (2 ^ (j + 1) + 1),
        incompatibleDyadicStartBlockL1 j n *
          coreInteriorLengthCoefficient j t n := by
  let H : ℕ := logarithmicShiftThreshold j
  let N : ℕ := harmonicShiftCount j t
  have hHN : H ≤ N := by
    simpa [H, N, coreLongDeepDepths] using
      (Finset.mem_filter.mp hcore).2
  have hNY : N < 2 ^ (j + 1) + 1 := by
    dsimp [N]
    unfold harmonicShiftCount harmonicShiftUpper harmonicShiftLower
    omega
  unfold incompatibleDyadicBlockLongInteriorL1Majorant
  rw [sum_succ_range_filter_eq_Ico
    (F := fun n =>
      incompatibleDyadicStartBlockL1 j n *
        harmonicShiftSecondDifference j t (n - 1))
    hHN]
  calc
    (∑ n ∈ Finset.Ico H N,
      incompatibleDyadicStartBlockL1 j n *
        harmonicShiftSecondDifference j t (n - 1)) =
      ∑ n ∈ Finset.Ico H N,
        incompatibleDyadicStartBlockL1 j n *
          coreInteriorLengthCoefficient j t n := by
      apply Finset.sum_congr rfl
      intro n hn
      have hnI := Finset.mem_Ico.mp hn
      unfold coreInteriorLengthCoefficient
      simp [H, N, hnI.1, hnI.2]
    _ = ∑ n ∈ Finset.Ico H (2 ^ (j + 1) + 1),
        incompatibleDyadicStartBlockL1 j n *
          coreInteriorLengthCoefficient j t n := by
      rw [sum_Ico_eq_sum_Ico_indicator_of_le
        (f := fun n =>
          incompatibleDyadicStartBlockL1 j n *
            coreInteriorLengthCoefficient j t n)
        (h := Nat.le_of_lt hNY)]
      apply Finset.sum_congr rfl
      intro n hn
      by_cases hnN : n < N
      · simp [hnN]
      · have hnot : ¬ (H ≤ n ∧ n < N) := by
          intro h
          exact hnN h.2
        simp [coreInteriorLengthCoefficient, hnot]
  where
    sum_Ico_eq_sum_Ico_indicator_of_le
        (f : ℕ → ℝ) {a b c : ℕ} (h : b ≤ c) :
        (∑ n ∈ Finset.Ico a b, f n) =
          ∑ n ∈ Finset.Ico a c, if n < b then f n else 0 := by
      rw [← Finset.sum_filter]
      congr 1
      ext n
      simp only [Finset.mem_filter, Finset.mem_Ico]
      constructor
      · intro hn
        exact ⟨⟨hn.1, lt_of_lt_of_le hn.2 h⟩, hn.2⟩
      · intro hn
        exact ⟨hn.1.1, hn.2⟩

/-- One-depth incompatible contribution is exactly its lengthwise selector
sum. -/
theorem coreLongDepthIncompatibleDyadicL1_eq_lengthwise
    {j t : ℕ}
    (hcore : t ∈ coreLongDeepDepths j) :
    coreLongDepthIncompatibleDyadicL1 j t =
      2 * ∑ n ∈ Finset.Ico (logarithmicShiftThreshold j)
          (2 ^ (j + 1) + 1),
        incompatibleDyadicStartBlockL1 j n *
          (coreTerminalLengthCoefficient j t n +
            coreInteriorLengthCoefficient j t n) := by
  unfold coreLongDepthIncompatibleDyadicL1
  rw [incompatibleTerminal_eq_lengthSelectorSum hcore,
    incompatibleLongInterior_eq_lengthSelectorSum hcore]
  rw [← Finset.sum_add_distrib]
  apply congrArg (fun x : ℝ => 2 * x)
  apply Finset.sum_congr rfl
  intro n _hn
  ring

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.incompatibleTerminal_eq_lengthSelectorSum
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.incompatibleLongInterior_eq_lengthSelectorSum
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreLongDepthIncompatibleDyadicL1_eq_lengthwise
```
