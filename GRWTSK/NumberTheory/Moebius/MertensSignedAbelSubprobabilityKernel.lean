/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #503. Direct stacked parent: draft PR #501 at
`0f0a0012e15dac1b81dbda4cd4e57d218ba0243e`.
-/
import GRWTSK.NumberTheory.Moebius.MertensSignedAbelNormalizedResponse

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Nonnegative finite Abel smoothing kernel on the shift coordinate.  The
triangular support remains literal. -/
def normalizedSignedAbelShiftKernel
    (j t h : ℕ) : ℝ :=
  if 1 ≤ h ∧ h < 2 ^ (j + 1) ∧
      t < 2 ^ (j + 1) - h - 1 then
    ((2 ^ (j + 1) : ℕ) : ℝ) *
      dyadicMertensShiftWeightDrop j h t
  else 0

/-- The normalized shift kernel is pointwise nonnegative. -/
theorem normalizedSignedAbelShiftKernel_nonneg
    (j t h : ℕ) :
    0 ≤ normalizedSignedAbelShiftKernel j t h := by
  unfold normalizedSignedAbelShiftKernel
  split_ifs with hs
  · exact mul_nonneg (by positivity)
      (dyadicMertensShiftWeightDrop_nonneg j h t)
  · exact le_rfl

/-- Total normalized kernel mass over the complete positive-shift range. -/
def normalizedSignedAbelShiftKernelMass
    (j t : ℕ) : ℝ :=
  ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
    normalizedSignedAbelShiftKernel j t h

-- This finite support reindexing does not need the published depth premise.
-- Keep that premise in the API; the following mass bound still requires it.
set_option linter.unusedVariables false in
/-- On the actual depth range, the normalized kernel mass is exactly the dyadic
endpoint times the inherited Abel-drop mass. -/
theorem normalizedSignedAbelShiftKernelMass_eq_scaledWeightMass
    {j t : ℕ} (htY : t + 2 ≤ 2 ^ (j + 1)) :
    normalizedSignedAbelShiftKernelMass j t =
      ((2 ^ (j + 1) : ℕ) : ℝ) *
        signedAbelDepthShiftWeightMass j t := by
  let Y : ℕ := 2 ^ (j + 1)
  have hfilter :
      (Finset.Ico 1 Y).filter
          (fun h => 1 ≤ h ∧ h < Y ∧ t < Y - h - 1) =
        Finset.Ico 1 (Y - t - 1) := by
    ext h
    simp only [Finset.mem_filter, Finset.mem_Ico]
    omega
  unfold normalizedSignedAbelShiftKernelMass
    normalizedSignedAbelShiftKernel
    signedAbelDepthShiftWeightMass
  rw [show 2 ^ (j + 1) = Y by rfl]
  rw [← Finset.sum_filter, hfilter, Finset.sum_Ico_eq_sum_range]
  have hlen : Y - t - 1 - 1 = Y - t - 2 := by omega
  rw [hlen, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro k _hk
  rw [Nat.add_comm 1 k]

/-- The normalized kernel mass is a finite subprobability mass. -/
theorem normalizedSignedAbelShiftKernelMass_le_one
    {j t : ℕ} (htY : t + 2 ≤ 2 ^ (j + 1)) :
    normalizedSignedAbelShiftKernelMass j t ≤ 1 := by
  rw [normalizedSignedAbelShiftKernelMass_eq_scaledWeightMass htY]
  have hmass :=
    signedAbelDepthShiftWeightMass_le_right_inv htY
  let YR : ℝ := ((2 ^ (j + 1) : ℕ) : ℝ)
  have hYR : 0 ≤ YR := by
    dsimp [YR]
    positivity
  calc
    YR * signedAbelDepthShiftWeightMass j t ≤
        YR * YR⁻¹ :=
      mul_le_mul_of_nonneg_left hmass hYR
    _ = 1 := by
      field_simp [show YR ≠ 0 by
        dsimp [YR]
        positivity]

/-- The normalized response is exactly a finite subprobability convolution of
future Möbius values against the Abel kernel. -/
theorem normalizedSignedAbelDepthShiftResponse_eq_kernelSum
    (j t a : ℕ) :
    normalizedSignedAbelDepthShiftResponse j t a =
      ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
        normalizedSignedAbelShiftKernel j t h *
          moebiusReal (a + 1 + h) := by
  unfold normalizedSignedAbelDepthShiftResponse
    signedAbelDepthShiftResponse
    normalizedSignedAbelShiftKernel
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro h hh
  have hh1 := (Finset.mem_Ico.mp hh).1
  have hhY := (Finset.mem_Ico.mp hh).2
  by_cases ht : t < 2 ^ (j + 1) - h - 1
  · simp [hh1, hhY, ht]
    ring
  · simp [hh1, hhY, ht]

/-- Exact smoothed-autocorrelation presentation of one signed depth slice. -/
theorem weightedMertensDyadicSignedAbelDepthSlice_eq_kernelAutocorrelation
    (j t : ℕ) :
    weightedMertensDyadicSignedAbelDepthSlice j t =
      2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ *
        ∑ a ∈ Finset.range (t + 1),
          moebiusReal (a + 1) *
            (∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
              normalizedSignedAbelShiftKernel j t h *
                moebiusReal (a + 1 + h)) := by
  rw [weightedMertensDyadicSignedAbelDepthSlice_eq_normalizedCorrelation]
  congr 1
  apply Finset.sum_congr rfl
  intro a _ha
  rw [normalizedSignedAbelDepthShiftResponse_eq_kernelSum]

/-- The kernel is a subprobability coefficient family; this proposition records
only the exact finite size facts and carries no cancellation conclusion. -/
def NormalizedSignedAbelKernelSubprobability
    (j t : ℕ) : Prop :=
  (∀ h : ℕ, 0 ≤ normalizedSignedAbelShiftKernel j t h) ∧
    normalizedSignedAbelShiftKernelMass j t ≤ 1

/-- The actual kernel satisfies the subprobability interface on the actual depth
range. -/
theorem normalizedSignedAbelKernelSubprobability
    {j t : ℕ} (htY : t + 2 ≤ 2 ^ (j + 1)) :
    NormalizedSignedAbelKernelSubprobability j t :=
  ⟨normalizedSignedAbelShiftKernel_nonneg j t,
    normalizedSignedAbelShiftKernelMass_le_one htY⟩

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.normalizedSignedAbelShiftKernelMass_eq_scaledWeightMass
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.normalizedSignedAbelShiftKernelMass_le_one
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.normalizedSignedAbelDepthShiftResponse_eq_kernelSum
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.weightedMertensDyadicSignedAbelDepthSlice_eq_kernelAutocorrelation
