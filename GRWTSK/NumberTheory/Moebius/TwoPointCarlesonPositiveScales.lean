/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #471. Direct stacked parent: draft PR #469 at
`f4fea7d2e9d988613a194ff5fe427d2ef47a41c5`.
-/
import GRWTSK.NumberTheory.Moebius.TwoPointCarlesonConjectureConnections

/-!
# Positive-scale two-point Möbius Carleson energy

The max-per-scale Carleson observable has already repaired the quadratic
singleton-mass defect of the complete tree energy.  This module now separates
its scale-zero term from the genuinely open positive scales.

For a sequence on `[0,2^m)`, the positive-scale energy contains exactly the
scale maxima at `1,...,m`.  The complete Carleson energy is proved to be the
scale-zero maximum square plus that positive-scale energy.

For the exact zero-padded two-point Möbius source, the inherited scale-zero
bound pays the complete singleton layer by the literal dyadic endpoint
`2^(j+1)`.  A named all-scale supplier then retains that endpoint allowance and
only asks arithmetic input for the positive scales.

No positive-scale estimate, asymptotic absorption of the depth factor,
external conjecture adapter, zero-free region, finite-height theorem, or proof
of the Riemann Hypothesis is supplied.  All proof scripts await exact-head Lean
elaboration and transitive trust review.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.Analysis.FiniteSums.DyadicBlockSquareMaximal

/-- Sum of max-per-scale squares over exactly the positive scales `1,...,m`.
The shifted finite range is empty at `m=0`. -/
def alignedDyadicPositiveScaleCarlesonEnergy
    (m : ℕ) (a : ℕ → ℝ) : ℝ :=
  ∑ r ∈ Finset.range m,
    alignedDyadicScaleMaximum m (r + 1) a ^ 2

/-- Positive-scale Carleson energy is nonnegative. -/
theorem alignedDyadicPositiveScaleCarlesonEnergy_nonneg
    (m : ℕ) (a : ℕ → ℝ) :
    0 ≤ alignedDyadicPositiveScaleCarlesonEnergy m a := by
  unfold alignedDyadicPositiveScaleCarlesonEnergy
  exact Finset.sum_nonneg fun r _hr =>
    sq_nonneg (alignedDyadicScaleMaximum m (r + 1) a)

/-- Exact decomposition of the complete max-per-scale energy into the
singleton scale and the positive scales. -/
theorem alignedDyadicCarlesonEnergy_eq_scaleZero_add_positive
    (m : ℕ) (a : ℕ → ℝ) :
    alignedDyadicCarlesonEnergy m a =
      alignedDyadicScaleMaximum m 0 a ^ 2 +
        alignedDyadicPositiveScaleCarlesonEnergy m a := by
  unfold alignedDyadicCarlesonEnergy
    alignedDyadicPositiveScaleCarlesonEnergy
  rw [Finset.sum_range_succ']

end GRWTSK.Analysis.FiniteSums.DyadicBlockSquareMaximal

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
namespace TwoPointConjectureJunction

open GRWTSK.Analysis.FiniteSums.DyadicBlockSquareMaximal

/-- Positive-scale max-per-scale energy of one exact zero-padded two-point
source. -/
def twoPointPositiveScaleCarlesonEnergy
    (f g : ℕ → ℝ) (j h : ℕ) : ℝ :=
  alignedDyadicPositiveScaleCarlesonEnergy (j + 1)
    (paddedTwoPointSequence f g j h)

/-- Sum of the positive-scale energies over every positive shift below the
current dyadic endpoint. -/
def twoPointPositiveScaleCarlesonEnergySum
    (f g : ℕ → ℝ) (j : ℕ) : ℝ :=
  ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
    twoPointPositiveScaleCarlesonEnergy f g j h

/-- Positive-scale energy of one shift is nonnegative. -/
theorem twoPointPositiveScaleCarlesonEnergy_nonneg
    (f g : ℕ → ℝ) (j h : ℕ) :
    0 ≤ twoPointPositiveScaleCarlesonEnergy f g j h := by
  exact alignedDyadicPositiveScaleCarlesonEnergy_nonneg
    (j + 1) (paddedTwoPointSequence f g j h)

/-- The complete all-shift positive-scale energy is nonnegative. -/
theorem twoPointPositiveScaleCarlesonEnergySum_nonneg
    (f g : ℕ → ℝ) (j : ℕ) :
    0 ≤ twoPointPositiveScaleCarlesonEnergySum f g j := by
  unfold twoPointPositiveScaleCarlesonEnergySum
  exact Finset.sum_nonneg fun h _hh =>
    twoPointPositiveScaleCarlesonEnergy_nonneg f g j h

/-- Exact one-shift decomposition into scale zero and positive scales. -/
theorem twoPointCarlesonEnergy_eq_scaleZero_add_positive
    (f g : ℕ → ℝ) (j h : ℕ) :
    twoPointCarlesonEnergy f g j h =
      alignedDyadicScaleMaximum (j + 1) 0
          (paddedTwoPointSequence f g j h) ^ 2 +
        twoPointPositiveScaleCarlesonEnergy f g j h := by
  unfold twoPointCarlesonEnergy twoPointPositiveScaleCarlesonEnergy
  exact alignedDyadicCarlesonEnergy_eq_scaleZero_add_positive
    (j + 1) (paddedTwoPointSequence f g j h)

/-- Exact all-shift decomposition into the complete singleton-scale maximum
sum and the complete positive-scale sum. -/
theorem twoPointCarlesonEnergySum_eq_scaleZero_add_positive
    (f g : ℕ → ℝ) (j : ℕ) :
    twoPointCarlesonEnergySum f g j =
      (∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
        alignedDyadicScaleMaximum (j + 1) 0
          (paddedTwoPointSequence f g j h) ^ 2) +
      twoPointPositiveScaleCarlesonEnergySum f g j := by
  unfold twoPointCarlesonEnergySum
    twoPointPositiveScaleCarlesonEnergySum
  calc
    (∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
        twoPointCarlesonEnergy f g j h) =
      ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
        (alignedDyadicScaleMaximum (j + 1) 0
            (paddedTwoPointSequence f g j h) ^ 2 +
          twoPointPositiveScaleCarlesonEnergy f g j h) := by
      apply Finset.sum_congr rfl
      intro h _hh
      exact twoPointCarlesonEnergy_eq_scaleZero_add_positive f g j h
    _ = (∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
          alignedDyadicScaleMaximum (j + 1) 0
            (paddedTwoPointSequence f g j h) ^ 2) +
        ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
          twoPointPositiveScaleCarlesonEnergy f g j h := by
      rw [Finset.sum_add_distrib]

/-- Actual Möbius positive-scale all-shift energy. -/
def mertensTwoPointPositiveScaleCarlesonEnergySum (j : ℕ) : ℝ :=
  twoPointPositiveScaleCarlesonEnergySum
    moebiusReal moebiusReal j

/-- Exact Möbius decomposition. -/
theorem mertensTwoPointCarlesonEnergySum_eq_singleton_add_positive
    (j : ℕ) :
    twoPointCarlesonEnergySum moebiusReal moebiusReal j =
      mertensTwoPointCarlesonSingletonSum j +
        mertensTwoPointPositiveScaleCarlesonEnergySum j := by
  simpa [mertensTwoPointCarlesonSingletonSum,
    mertensTwoPointPositiveScaleCarlesonEnergySum] using
    twoPointCarlesonEnergySum_eq_scaleZero_add_positive
      moebiusReal moebiusReal j

/-- The inherited linear singleton bound pays the scale-zero layer explicitly.
No asymptotic absorption is performed. -/
theorem mertensTwoPointCarlesonEnergySum_le_endpoint_add_positive
    (j : ℕ) :
    twoPointCarlesonEnergySum moebiusReal moebiusReal j ≤
      ((2 ^ (j + 1) : ℕ) : ℝ) +
        mertensTwoPointPositiveScaleCarlesonEnergySum j := by
  rw [mertensTwoPointCarlesonEnergySum_eq_singleton_add_positive]
  exact add_le_add_right
    (mertensTwoPointCarlesonSingletonSum_le_endpoint j)
    (mertensTwoPointPositiveScaleCarlesonEnergySum j)

/-- Finite positive-scale budget with the already proved singleton allowance
retained literally. -/
def DyadicMertensPositiveScaleCarlesonBudget
    (j : ℕ) (B : ℝ) : Prop :=
  0 ≤ B ∧
    ((j : ℝ) + 2) *
        (((2 ^ (j + 1) : ℕ) : ℝ) +
          mertensTwoPointPositiveScaleCarlesonEnergySum j) ≤
      B ^ 2 * ((2 ^ (j + 1) : ℕ) : ℝ)

/-- The all-scale source-facing supplier.  Its only nontrivial arithmetic
content is the positive-scale max-per-scale energy; scale zero is paid by the
visible endpoint term. -/
def SubpolynomialDyadicMertensPositiveScaleCarlesonWithPaidSingleton : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ A : ℝ, 0 ≤ A ∧ ∀ j : ℕ,
    DyadicMertensPositiveScaleCarlesonBudget j
      (A * (((2 ^ j : ℕ) : ℝ) ^ δ))

/-- A paid-singleton finite budget supplies the complete Carleson inequality at
that scale with the same budget parameter. -/
theorem completeCarlesonBudget_of_positiveScaleBudget
    {j : ℕ} {B : ℝ}
    (hpos : DyadicMertensPositiveScaleCarlesonBudget j B) :
    0 ≤ B ∧
      ((j : ℝ) + 2) *
          twoPointCarlesonEnergySum moebiusReal moebiusReal j ≤
        B ^ 2 * ((2 ^ (j + 1) : ℕ) : ℝ) := by
  refine ⟨hpos.1, ?_⟩
  have hdepth : 0 ≤ (j : ℝ) + 2 := by positivity
  exact
    (mul_le_mul_of_nonneg_left
      (mertensTwoPointCarlesonEnergySum_le_endpoint_add_positive j)
      hdepth).trans hpos.2

/-- The paid positive-scale supplier discharges the full max-per-scale
Carleson premise with unchanged subpolynomial constants. -/
theorem subpolynomialMertensCarlesonEnergy_of_positiveScales
    (hpos :
      SubpolynomialDyadicMertensPositiveScaleCarlesonWithPaidSingleton) :
    SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost := by
  intro δ hδ
  obtain ⟨A, hA, hscale⟩ := hpos δ hδ
  refine ⟨A, hA, ?_⟩
  intro j
  exact (completeCarlesonBudget_of_positiveScaleBudget
    (hscale j)).2

/-- Conditional return to the canonical maximal two-point energy. -/
theorem subpolynomialDyadicMaximalMertensTwoPointEnergy_of_positiveScales
    (hpos :
      SubpolynomialDyadicMertensPositiveScaleCarlesonWithPaidSingleton) :
    SubpolynomialDyadicMaximalMertensTwoPointEnergy :=
  subpolynomialDyadicMaximalMertensTwoPointEnergy_of_carleson
    (subpolynomialMertensCarlesonEnergy_of_positiveScales hpos)

/-- Conditional RH endpoint from the paid positive-scale supplier.  The
supplier itself remains open. -/
theorem riemannHypothesis_of_mertensPositiveScaleCarleson
    (hpos :
      SubpolynomialDyadicMertensPositiveScaleCarlesonWithPaidSingleton) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_mertensTwoPointCarlesonEnergy
    (subpolynomialMertensCarlesonEnergy_of_positiveScales hpos)

end TwoPointConjectureJunction
end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.Analysis.FiniteSums.DyadicBlockSquareMaximal.alignedDyadicCarlesonEnergy_eq_scaleZero_add_positive
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.TwoPointConjectureJunction.mertensTwoPointCarlesonEnergySum_eq_singleton_add_positive
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.TwoPointConjectureJunction.subpolynomialMertensCarlesonEnergy_of_positiveScales
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.TwoPointConjectureJunction.riemannHypothesis_of_mertensPositiveScaleCarleson
