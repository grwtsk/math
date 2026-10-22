/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #492. Direct stacked parent: draft PR #481 at
`2b1c075808b2365ede62f909014b5b83b30ddabf`.
-/
import GRWTSK.NumberTheory.Moebius.SignedAbelDepthDispersion

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Complete weighted cross-shift response to the base coefficient
`mu(a+1)` at one dyadic scale and prefix depth. -/
def signedAbelDepthShiftResponse
    (j t a : ℕ) : ℝ :=
  ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
    if t < 2 ^ (j + 1) - h - 1 then
      2 * moebiusReal (a + 1 + h) *
        dyadicMertensShiftWeightDrop j h t
    else 0

/-- Exact expansion of the ordinary two-point prefix at depth `t+1`. -/
theorem mertensTwoPointPrefix_eq_baseSum
    (h t : ℕ) :
    mertensTwoPointPrefix h (t + 1) =
      ∑ a ∈ Finset.range (t + 1),
        moebiusReal (a + 1) * moebiusReal (a + 1 + h) := by
  rfl

/-- The signed depth slice factors exactly into the base Möbius coefficient and
its complete weighted response across the growing shift family. -/
theorem weightedMertensDyadicSignedAbelDepthSlice_eq_baseBilinear
    (j t : ℕ) :
    weightedMertensDyadicSignedAbelDepthSlice j t =
      ∑ a ∈ Finset.range (t + 1),
        moebiusReal (a + 1) * signedAbelDepthShiftResponse j t a := by
  unfold weightedMertensDyadicSignedAbelDepthSlice
    weightedMertensDyadicSignedAbelCell
    signedAbelDepthShiftResponse
  calc
    (∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
      if 1 ≤ h ∧ h < 2 ^ (j + 1) ∧
          t < 2 ^ (j + 1) - h - 1 then
        2 * mertensTwoPointPrefix h (t + 1) *
          dyadicMertensShiftWeightDrop j h t
      else 0) =
      ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
        ∑ a ∈ Finset.range (t + 1),
          moebiusReal (a + 1) *
            (if t < 2 ^ (j + 1) - h - 1 then
              2 * moebiusReal (a + 1 + h) *
                dyadicMertensShiftWeightDrop j h t
             else 0) := by
      apply Finset.sum_congr rfl
      intro h hh
      have hh1 := (Finset.mem_Ico.mp hh).1
      have hhY := (Finset.mem_Ico.mp hh).2
      rw [mertensTwoPointPrefix_eq_baseSum]
      by_cases ht : t < 2 ^ (j + 1) - h - 1
      · simp [hh1, hhY, ht]
        rw [Finset.mul_sum, Finset.sum_mul]
        apply Finset.sum_congr rfl
        intro a _ha
        ring
      · simp [hh1, hhY, ht]
    _ = ∑ a ∈ Finset.range (t + 1),
        ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
          moebiusReal (a + 1) *
            (if t < 2 ^ (j + 1) - h - 1 then
              2 * moebiusReal (a + 1 + h) *
                dyadicMertensShiftWeightDrop j h t
             else 0) := by
      rw [Finset.sum_comm]
    _ = ∑ a ∈ Finset.range (t + 1),
        moebiusReal (a + 1) * signedAbelDepthShiftResponse j t a := by
      apply Finset.sum_congr rfl
      intro a _ha
      simp only [signedAbelDepthShiftResponse, Finset.mul_sum]

/-- The exact source-specific bilinear model.  The residual is identically zero
because the factorization is an equality. -/
def mertensSignedAbelDepthBilinearModel :
    SignedAbelDepthBilinearModel where
  support := fun _j t => Finset.range (t + 1)
  alpha := fun _j _t a => moebiusReal (a + 1)
  beta := fun j t a => signedAbelDepthShiftResponse j t a
  residual := fun _j _t => 0
  slice_identity := by
    intro j t
    simpa [SignedAbelDepthBilinearModel.structuredSlice] using
      weightedMertensDyadicSignedAbelDepthSlice_eq_baseBilinear j t

/-- The structured packet of the source-specific model is exactly the inherited
signed depth packet. -/
theorem mertensSignedAbelDepthBilinearModel_structuredPacket_eq_depthPacket
    (j : ℕ) :
    mertensSignedAbelDepthBilinearModel.structuredPacket j =
      weightedMertensDyadicSignedAbelDepthPacket j := by
  have h :=
    mertensSignedAbelDepthBilinearModel.depthPacket_eq_structured_add_residual j
  simpa [mertensSignedAbelDepthBilinearModel,
    SignedAbelDepthBilinearModel.residualPacket] using h.symm

/-- Source-specific all-scale estimate proposition for the exact bilinear
factorization.  No inhabitant is constructed here. -/
def SubpolynomialMertensSignedAbelBilinearEstimate : Prop :=
  SubpolynomialSignedAbelDepthBilinearEstimate
    mertensSignedAbelDepthBilinearModel

/-- A proof of the exact source-specific bilinear estimate supplies the signed
depth-packet criterion. -/
theorem subpolynomialDyadicSignedAbelDepthPacket_of_mertensBilinear
    (hBilinear : SubpolynomialMertensSignedAbelBilinearEstimate) :
    SubpolynomialDyadicSignedAbelDepthPacket :=
  subpolynomialDyadicSignedAbelDepthPacket_of_bilinearEstimate
    mertensSignedAbelDepthBilinearModel hBilinear

/-- Conditional RH endpoint from the source-specific bilinear estimate. -/
theorem riemannHypothesis_of_mertensSignedAbelBilinearEstimate
    (hBilinear : SubpolynomialMertensSignedAbelBilinearEstimate) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_signedAbelDepthBilinearEstimate
    mertensSignedAbelDepthBilinearModel hBilinear

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.weightedMertensDyadicSignedAbelDepthSlice_eq_baseBilinear
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.mertensSignedAbelDepthBilinearModel_structuredPacket_eq_depthPacket
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_mertensSignedAbelBilinearEstimate
