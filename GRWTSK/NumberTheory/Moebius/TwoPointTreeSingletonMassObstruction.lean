/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: MATHEMATICAL_REFUTATION_DOCUMENTED / SOURCE_DRAFT /
  NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #460. Direct stacked parent: draft PR #459 at
`9d620074415a05694028538a7b2e9d9c10fd0577`.
-/
import GRWTSK.NumberTheory.Moebius.TwoPointTreeEnergyCoordinates

/-!
# Singleton-mass obstruction for the complete two-point tree energy

The complete aligned-dyadic coordinate energy contains every singleton block
at scale zero.  For the zero-padded two-point Möbius source, summing those
singletons over all shifts and positions counts every pair of squarefree source
indices below the dyadic endpoint.  This creates unavoidable quadratic mass.

This module proves the exact generic scale-zero lower bound and packages the
remaining arithmetic reindexing/growth data as an explicit refutation
certificate.  No positivity is assumed for the RH consumer, and no finite
computation or source declaration is promoted to kernel evidence.

The generic finite tree comparison, zero-padding identity, and coordinate
expansion remain useful.  The refuted object is only the proposed all-scale
subpolynomial bound for the complete unweighted sum over every block position.
-/

set_option autoImplicit false
noncomputable section

open Filter
open scoped BigOperators Topology

namespace GRWTSK.Analysis.FiniteSum.DyadicBlockSquareMaximal

/-- Sum of the squares of all singleton blocks in `[0,2^m)`. -/
def singletonScaleSquareEnergy (m : ℕ) (a : ℕ → ℝ) : ℝ :=
  ∑ q ∈ Finset.range (2 ^ m), a q ^ 2

/-- A scale-zero aligned block is exactly one source coefficient. -/
@[simp] theorem alignedDyadicBlockSum_zero
    (a : ℕ → ℝ) (q : ℕ) :
    alignedDyadicBlockSum a 0 q = a q := by
  simp [alignedDyadicBlockSum, finitePrefixSum, shiftedSequence]

/-- The aligned scale-zero energy is exactly the singleton-square energy. -/
@[simp] theorem alignedDyadicScaleSquareEnergy_zero
    (m : ℕ) (a : ℕ → ℝ) :
    alignedDyadicScaleSquareEnergy m 0 a =
      singletonScaleSquareEnergy m a := by
  simp [alignedDyadicScaleSquareEnergy, singletonScaleSquareEnergy]

/-- Singleton-square energy is nonnegative. -/
theorem singletonScaleSquareEnergy_nonneg
    (m : ℕ) (a : ℕ → ℝ) :
    0 ≤ singletonScaleSquareEnergy m a := by
  unfold singletonScaleSquareEnergy
  exact Finset.sum_nonneg fun q _hq => sq_nonneg (a q)

/-- Scale zero is one nonnegative summand of the complete coordinate energy. -/
theorem singletonScaleSquareEnergy_le_coordinate
    (m : ℕ) (a : ℕ → ℝ) :
    singletonScaleSquareEnergy m a ≤
      alignedDyadicCoordinateSquareEnergy m a := by
  rw [← alignedDyadicScaleSquareEnergy_zero]
  unfold alignedDyadicCoordinateSquareEnergy
  apply Finset.single_le_sum
  · intro r hr
    unfold alignedDyadicScaleSquareEnergy
    exact Finset.sum_nonneg fun q _hq =>
      sq_nonneg (alignedDyadicBlockSum a r q)
  · simp

end GRWTSK.Analysis.FiniteSum.DyadicBlockSquareMaximal

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
namespace TwoPointConjectureJunction

open GRWTSK.Analysis.FiniteSum.DyadicBlockSquareMaximal

/-- Complete scale-zero mass of the zero-padded two-point family at one dyadic
scale.  The inner range is the full dyadic interval; padding makes all cells
past the exact arithmetic cutoff literally zero. -/
def twoPointSingletonSquareMass
    (f g : ℕ → ℝ) (j : ℕ) : ℝ :=
  ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
    singletonScaleSquareEnergy (j + 1)
      (paddedTwoPointSequence f g j h)

/-- The complete two-point singleton mass is nonnegative. -/
theorem twoPointSingletonSquareMass_nonneg
    (f g : ℕ → ℝ) (j : ℕ) :
    0 ≤ twoPointSingletonSquareMass f g j := by
  unfold twoPointSingletonSquareMass
  exact Finset.sum_nonneg fun h _hh =>
    singletonScaleSquareEnergy_nonneg (j + 1)
      (paddedTwoPointSequence f g j h)

/-- The complete coordinate energy dominates its unavoidable singleton layer. -/
theorem twoPointSingletonSquareMass_le_coordinateBlockEnergySum
    (f g : ℕ → ℝ) (j : ℕ) :
    twoPointSingletonSquareMass f g j ≤
      twoPointCoordinateBlockEnergySum f g j := by
  unfold twoPointSingletonSquareMass twoPointCoordinateBlockEnergySum
  apply Finset.sum_le_sum
  intro h _hh
  unfold twoPointCoordinateBlockEnergy
  exact singletonScaleSquareEnergy_le_coordinate
    (j + 1) (paddedTwoPointSequence f g j h)

/-- Actual Möbius singleton mass. -/
def mertensTwoPointSingletonSquareMass (j : ℕ) : ℝ :=
  twoPointSingletonSquareMass moebiusReal moebiusReal j

/-- The actual complete coordinate energy dominates the Möbius singleton mass. -/
theorem mertensTwoPointSingletonSquareMass_le_coordinateBlockEnergySum
    (j : ℕ) :
    mertensTwoPointSingletonSquareMass j ≤
      twoPointCoordinateBlockEnergySum
        moebiusReal moebiusReal j := by
  exact twoPointSingletonSquareMass_le_coordinateBlockEnergySum
    moebiusReal moebiusReal j

/-- Pair-square mass in arithmetic coordinates `1 ≤ a < b < 2^(j+1)`.
This is the exact target of the finite reindexing
`q=a-1`, `h=b-a`. -/
def mertensSquarePairMass (j : ℕ) : ℝ :=
  ∑ a ∈ Finset.Ico 1 (2 ^ (j + 1)),
    ∑ b ∈ Finset.Ico (a + 1) (2 ^ (j + 1)),
      moebiusReal a ^ 2 * moebiusReal b ^ 2

/-- Number of squarefree positive source indices below the dyadic endpoint. -/
def mertensSquarefreeCountAtScale (j : ℕ) : ℕ :=
  ((Finset.Ico 1 (2 ^ (j + 1))).filter
    (fun n => Squarefree n)).card

/-- A source-bound certificate for the exact arithmetic part of the
singleton-mass obstruction.

The first two fields are finite identities.  The final field is the exact
growth statement needed to contradict the quarter-power instance of the
complete-tree supplier.  A future Lean proof may construct this record from an
explicit squarefree-count lower bound; the record itself assumes no result. -/
structure MertensSingletonMassRefutationCertificate : Type where
  pair_reindex : ∀ j : ℕ,
    mertensTwoPointSingletonSquareMass j =
      mertensSquarePairMass j
  squarefree_pair_count : ∀ j : ℕ,
    mertensSquarePairMass j =
      ((Nat.choose (mertensSquarefreeCountAtScale j) 2 : ℕ) : ℝ)
  quarterPower_escape : ∀ A : ℝ, 0 ≤ A → ∃ j : ℕ,
    (A * (((2 ^ j : ℕ) : ℝ) ^ ((1 : ℝ) / 4))) ^ 2 *
        ((2 ^ (j + 1) : ℕ) : ℝ) <
      ((j : ℝ) + 2) * mertensTwoPointSingletonSquareMass j

/-- The one fixed exponent needed for the scoped contradiction. -/
def QuarterPowerMertensCoordinateEnergyBudget : Prop :=
  ∃ A : ℝ, 0 ≤ A ∧ ∀ j : ℕ,
    ((j : ℝ) + 2) *
        twoPointCoordinateBlockEnergySum
          moebiusReal moebiusReal j ≤
      (A * (((2 ^ j : ℕ) : ℝ) ^ ((1 : ℝ) / 4))) ^ 2 *
        ((2 ^ (j + 1) : ℕ) : ℝ)

/-- The all-positive-exponent supplier would in particular provide its
quarter-power instance. -/
theorem quarterPowerBudget_of_subpolynomialCoordinateEnergy
    (h : SubpolynomialDyadicMertensTwoPointCoordinateEnergyWithDepthCost) :
    QuarterPowerMertensCoordinateEnergyBudget := by
  obtain ⟨A, hA, hscale⟩ :=
    h ((1 : ℝ) / 4) (by norm_num)
  exact ⟨A, hA, hscale⟩

/-- An exact singleton-mass certificate refutes the quarter-power complete-tree
budget. -/
theorem not_quarterPowerBudget_of_singletonMassCertificate
    (cert : MertensSingletonMassRefutationCertificate) :
    ¬ QuarterPowerMertensCoordinateEnergyBudget := by
  rintro ⟨A, hA, hbudget⟩
  obtain ⟨j, hescape⟩ := cert.quarterPower_escape A hA
  have hsingle :=
    mertensTwoPointSingletonSquareMass_le_coordinateBlockEnergySum j
  have hdepth : 0 ≤ (j : ℝ) + 2 := by positivity
  have hscaled :
      ((j : ℝ) + 2) * mertensTwoPointSingletonSquareMass j ≤
        ((j : ℝ) + 2) *
          twoPointCoordinateBlockEnergySum
            moebiusReal moebiusReal j :=
    mul_le_mul_of_nonneg_left hsingle hdepth
  have hupper := hscaled.trans (hbudget j)
  exact (not_lt_of_ge hupper) hescape

/-- Scoped refutation of the complete unweighted coordinate/tree supplier,
conditional only on the explicit arithmetic singleton-mass certificate. -/
theorem not_subpolynomialCoordinateEnergy_of_singletonMassCertificate
    (cert : MertensSingletonMassRefutationCertificate) :
    ¬ SubpolynomialDyadicMertensTwoPointCoordinateEnergyWithDepthCost := by
  intro h
  exact not_quarterPowerBudget_of_singletonMassCertificate cert
    (quarterPowerBudget_of_subpolynomialCoordinateEnergy h)

/-- Named disposition for the complete unweighted all-block supplier. -/
def CompleteTreeSupplierRefutedAtScope : Prop :=
  ¬ SubpolynomialDyadicMertensTwoPointCoordinateEnergyWithDepthCost

/-- The source-bound certificate inhabits the scoped refutation disposition. -/
theorem completeTreeSupplierRefutedAtScope_of_certificate
    (cert : MertensSingletonMassRefutationCertificate) :
    CompleteTreeSupplierRefutedAtScope :=
  not_subpolynomialCoordinateEnergy_of_singletonMassCertificate cert

end TwoPointConjectureJunction
end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.Analysis.FiniteSum.DyadicBlockSquareMaximal.singletonScaleSquareEnergy_le_coordinate
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.TwoPointConjectureJunction.mertensTwoPointSingletonSquareMass_le_coordinateBlockEnergySum
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.TwoPointConjectureJunction.not_subpolynomialCoordinateEnergy_of_singletonMassCertificate
