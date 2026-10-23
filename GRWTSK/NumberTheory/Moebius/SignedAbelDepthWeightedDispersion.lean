/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #482. Direct stacked parent: draft PR #481 at
`2b1c075808b2365ede62f909014b5b83b30ddabf`.
-/
import GRWTSK.NumberTheory.Moebius.SignedAbelDepthDispersion
import Mathlib.Algebra.Order.BigOperators.Ring.Finset
import Mathlib.Analysis.Real.Sqrt

/-!
# Weighted dispersion for the actual signed Abel depth cells

The generic dispersion interface in the parent module is now instantiated on
the actual Möbius/Abel source.

At dyadic scale `j`, depth `t`, and positive shift `h`, define the signed
amplitude

`A(j,t,h) = 2 * C_h(t+1)`

and retain the exact Abel drop on its triangular support,

`W(j,t,h) = Delta(j,h,t)`

when `t < 2^(j+1)-h-1`, and zero otherwise.

The actual signed depth slice is first reconstructed exactly as

`sum_h A(j,t,h) * W(j,t,h)`.

Only after that identity is proved do we use finite weighted Cauchy--Schwarz.
The resulting positive dispersion radius is therefore a proved majorant of the
signed source, not a replacement definition of it.

No all-scale dispersion estimate is proved here.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

-- Retain the published named parameter without changing the interface.
set_option linter.unusedVariables false in
/-- Signed coefficient in the actual Abel depth bilinear form. -/
def signedAbelDepthAmplitude (j t h : ℕ) : ℝ :=
  2 * mertensTwoPointPrefix h (t + 1)

/-- Exact nonnegative Abel weight, zero-extended outside the triangular source
support. The positive-shift condition is supplied by the finite outer range. -/
def signedAbelDepthWeight (j t h : ℕ) : ℝ :=
  if t < 2 ^ (j + 1) - h - 1 then
    dyadicMertensShiftWeightDrop j h t
  else 0

/-- The zero-extended Abel weight is nonnegative. This is finite coefficient
positivity only; it says nothing about the sign of the depth slice. -/
theorem signedAbelDepthWeight_nonneg
    (j t h : ℕ) :
    0 ≤ signedAbelDepthWeight j t h := by
  unfold signedAbelDepthWeight
  by_cases ht : t < 2 ^ (j + 1) - h - 1
  · simp [ht, dyadicMertensShiftWeightDrop_nonneg]
  · simp [ht]

/-- On the inherited positive-shift range, the actual signed Abel cell is
exactly amplitude times zero-extended Abel weight. -/
theorem weightedMertensDyadicSignedAbelCell_eq_amplitude_mul_weight
    {j h t : ℕ}
    (hh : h ∈ Finset.Ico 1 (2 ^ (j + 1))) :
    weightedMertensDyadicSignedAbelCell j h t =
      signedAbelDepthAmplitude j t h *
        signedAbelDepthWeight j t h := by
  have hh' := Finset.mem_Ico.mp hh
  unfold weightedMertensDyadicSignedAbelCell
    signedAbelDepthAmplitude signedAbelDepthWeight
  by_cases ht : t < 2 ^ (j + 1) - h - 1
  · simp [hh'.1, hh'.2, ht]
  · simp [ht]

/-- Exact source reconstruction before any square, norm, or absolute-value
majorization is introduced. -/
theorem weightedMertensDyadicSignedAbelDepthSlice_eq_weightedBilinear
    (j t : ℕ) :
    weightedMertensDyadicSignedAbelDepthSlice j t =
      ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
        signedAbelDepthAmplitude j t h *
          signedAbelDepthWeight j t h := by
  unfold weightedMertensDyadicSignedAbelDepthSlice
  apply Finset.sum_congr rfl
  intro h hh
  exact weightedMertensDyadicSignedAbelCell_eq_amplitude_mul_weight hh

/-- Canonical source-specific inhabitant of the parent bilinear-model
interface. Its residual is identically zero. -/
def weightedMertensSignedAbelDepthBilinearModel :
    SignedAbelDepthBilinearModel where
  support := fun j _t => Finset.Ico 1 (2 ^ (j + 1))
  alpha := signedAbelDepthAmplitude
  beta := signedAbelDepthWeight
  residual := fun _j _t => 0
  slice_identity := by
    intro j t
    simpa using
      weightedMertensDyadicSignedAbelDepthSlice_eq_weightedBilinear j t

/-- Total Abel weight present at one depth after exact triangular
zero-extension. -/
def weightedMertensSignedAbelDepthMass (j t : ℕ) : ℝ :=
  ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
    signedAbelDepthWeight j t h

/-- Weighted quadratic amplitude energy at one depth. The signed prefixes are
squared only after the exact bilinear reconstruction has been exposed. -/
def weightedMertensSignedAbelDepthQuadraticEnergy (j t : ℕ) : ℝ :=
  ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
    signedAbelDepthAmplitude j t h ^ 2 *
      signedAbelDepthWeight j t h

theorem weightedMertensSignedAbelDepthMass_nonneg
    (j t : ℕ) :
    0 ≤ weightedMertensSignedAbelDepthMass j t := by
  unfold weightedMertensSignedAbelDepthMass
  exact Finset.sum_nonneg fun h _hh =>
    signedAbelDepthWeight_nonneg j t h

theorem weightedMertensSignedAbelDepthQuadraticEnergy_nonneg
    (j t : ℕ) :
    0 ≤ weightedMertensSignedAbelDepthQuadraticEnergy j t := by
  unfold weightedMertensSignedAbelDepthQuadraticEnergy
  exact Finset.sum_nonneg fun h _hh =>
    mul_nonneg (sq_nonneg _) (signedAbelDepthWeight_nonneg j t h)

/-- Finite weighted Cauchy--Schwarz on the actual reconstructed depth slice.

This is the first positive majorization in the source path. -/
theorem weightedMertensDyadicSignedAbelDepthSlice_sq_le_dispersion
    (j t : ℕ) :
    weightedMertensDyadicSignedAbelDepthSlice j t ^ 2 ≤
      weightedMertensSignedAbelDepthQuadraticEnergy j t *
        weightedMertensSignedAbelDepthMass j t := by
  rw [weightedMertensDyadicSignedAbelDepthSlice_eq_weightedBilinear]
  unfold weightedMertensSignedAbelDepthQuadraticEnergy
    weightedMertensSignedAbelDepthMass
  apply Finset.sum_sq_le_sum_mul_sum_of_sq_le_mul
  · intro h _hh
    exact mul_nonneg (sq_nonneg _)
      (signedAbelDepthWeight_nonneg j t h)
  · intro h _hh
    exact signedAbelDepthWeight_nonneg j t h
  · intro h _hh
    have heq :
        (signedAbelDepthAmplitude j t h *
            signedAbelDepthWeight j t h) ^ 2 =
          (signedAbelDepthAmplitude j t h ^ 2 *
            signedAbelDepthWeight j t h) *
              signedAbelDepthWeight j t h := by
      ring
    exact heq.le

/-- Positive radius supplied by the weighted dispersion product at one depth. -/
def weightedMertensSignedAbelDepthDispersionRadius
    (j t : ℕ) : ℝ :=
  Real.sqrt
    (weightedMertensSignedAbelDepthQuadraticEnergy j t *
      weightedMertensSignedAbelDepthMass j t)

theorem weightedMertensSignedAbelDepthDispersionRadius_nonneg
    (j t : ℕ) :
    0 ≤ weightedMertensSignedAbelDepthDispersionRadius j t :=
  Real.sqrt_nonneg _

/-- One signed depth slice is bounded above by its proved weighted-dispersion
radius. No termwise absolute-value sum over shifts appears. -/
theorem weightedMertensDyadicSignedAbelDepthSlice_le_dispersionRadius
    (j t : ℕ) :
    weightedMertensDyadicSignedAbelDepthSlice j t ≤
      weightedMertensSignedAbelDepthDispersionRadius j t := by
  have hsq :=
    weightedMertensDyadicSignedAbelDepthSlice_sq_le_dispersion j t
  have habs :
      |weightedMertensDyadicSignedAbelDepthSlice j t| ≤
        weightedMertensSignedAbelDepthDispersionRadius j t := by
    unfold weightedMertensSignedAbelDepthDispersionRadius
    exact Real.abs_le_sqrt hsq
  exact (le_abs_self _).trans habs

/-- Complete source-specific dispersion majorant over the inherited depth
range. -/
def weightedMertensDyadicSignedAbelDispersionMajorant
    (j : ℕ) : ℝ :=
  ∑ t ∈ Finset.range (2 ^ (j + 1)),
    weightedMertensSignedAbelDepthDispersionRadius j t

theorem weightedMertensDyadicSignedAbelDispersionMajorant_nonneg
    (j : ℕ) :
    0 ≤ weightedMertensDyadicSignedAbelDispersionMajorant j := by
  unfold weightedMertensDyadicSignedAbelDispersionMajorant
  exact Finset.sum_nonneg fun t _ht =>
    weightedMertensSignedAbelDepthDispersionRadius_nonneg j t

/-- Exact signed depth packet is bounded by the concrete weighted-dispersion
majorant only after each signed depth slice has been reconstructed. -/
theorem weightedMertensDyadicSignedAbelDepthPacket_le_dispersionMajorant
    (j : ℕ) :
    weightedMertensDyadicSignedAbelDepthPacket j ≤
      weightedMertensDyadicSignedAbelDispersionMajorant j := by
  unfold weightedMertensDyadicSignedAbelDepthPacket
    weightedMertensDyadicSignedAbelDispersionMajorant
  apply Finset.sum_le_sum
  intro t _ht
  exact weightedMertensDyadicSignedAbelDepthSlice_le_dispersionRadius j t

/-- Remaining all-scale arithmetic dispersion estimate. No inhabitant is
constructed in this increment. -/
def SubpolynomialDyadicSignedAbelWeightedDispersion : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      weightedMertensDyadicSignedAbelDispersionMajorant j ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- A proved source-specific weighted-dispersion estimate supplies the exact
signed depth-packet criterion. -/
theorem subpolynomialDyadicSignedAbelDepthPacket_of_weightedDispersion
    (hDisp : SubpolynomialDyadicSignedAbelWeightedDispersion) :
    SubpolynomialDyadicSignedAbelDepthPacket := by
  intro δ hδ
  obtain ⟨C, hC, hscale⟩ := hDisp δ hδ
  refine ⟨C, hC, ?_⟩
  intro j
  exact
    (weightedMertensDyadicSignedAbelDepthPacket_le_dispersionMajorant j).trans
      (hscale j)

/-- Conditional RH endpoint from the concrete weighted-dispersion supplier.
The supplier itself remains open. -/
theorem riemannHypothesis_of_subpolynomialDyadicSignedAbelWeightedDispersion
    (hDisp : SubpolynomialDyadicSignedAbelWeightedDispersion) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialDyadicSignedAbelDepthPacket
    (subpolynomialDyadicSignedAbelDepthPacket_of_weightedDispersion hDisp)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.weightedMertensDyadicSignedAbelDepthSlice_eq_weightedBilinear
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.weightedMertensDyadicSignedAbelDepthSlice_sq_le_dispersion
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.weightedMertensDyadicSignedAbelDepthPacket_le_dispersionMajorant
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_subpolynomialDyadicSignedAbelWeightedDispersion
