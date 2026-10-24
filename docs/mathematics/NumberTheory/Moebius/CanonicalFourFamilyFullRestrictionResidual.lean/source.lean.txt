/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Moebius.CanonicalFourFamilyVisibleReconstruction

/-! # A full-family obstruction to the one-cell reconstruction

At every X>=3, the genuine anchor-5 cell has centered Möbius amplitude -1.
Retaining only this cell gives an actual coordinate-restriction difference
of energy one. Every reconstruction with zero anchor-5 coordinate has
residual energy at least one on that packet. In particular the previously
constructed anchor-3 reconstruction cannot have q<1 on the full restriction
difference family at ANY such scale. This does not rule out a different
reconstruction that also reconstructs the missing coordinates.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.RiemannHypothesis

def canonicalAnchorFiveRestriction (X : ℕ) (hX : 3 ≤ X) :
    CanonicalFourFamilyRestrictionConfig X :=
  ⟨{((true, false), 2)}, by
    intro p hp
    have he := Finset.mem_singleton.mp hp
    subst p
    simp [canonicalFourFamilyCells]
    omega⟩

def canonicalAnchorFivePacket : CanonicalFourFamilyRealPacket :=
  fun F c => if F = (true, false) ∧ c = 2 then -1 else 0

theorem canonicalAnchorFive_actual_amplitude {X : ℕ} (hX : 3 ≤ X) :
    canonicalFourFamilyCenteredData X (true, false) 2 = -1 := by
  have hs : zeroWindingCenteredShiftSet (2 * X) 1 2
      (canonicalFourFamilyShiftSet (2 * X) (true, false)) = {2} := by
    ext h
    simp only [zeroWindingCenteredShiftSet, canonicalFourFamilyShiftSet,
      Bool.false_eq_true, if_false, positiveEndpointEvenShiftSet, positiveEndpointShiftSet,
      Finset.mem_filter, Finset.mem_Ico, Finset.mem_singleton]
    omega
  change parityCenteredIntegerCoordinateAmplitude (2 * X) 1
    (canonicalFourFamilyShiftSet (2 * X) (true, false)) 2 = -1
  rw [authentic_integer_center_amplitude_eq_centered_sum]
  unfold parityZeroWindingCenteredMobiusCorrelation
  rw [hs]
  norm_num [moebiusReal, ArithmeticFunction.moebius_apply_prime
    (by norm_num : Nat.Prime 5)]

theorem canonicalAnchorFive_actual_packet {X : ℕ} (hX : 3 ≤ X) :
    canonicalFourFamilyRestrictionPacket X (canonicalAnchorFiveRestriction X hX) =
      canonicalAnchorFivePacket := by
  funext F c
  simp only [canonicalFourFamilyRestrictionPacket, canonicalAnchorFiveRestriction,
    canonicalAnchorFivePacket, Finset.mem_singleton, Prod.mk.injEq]
  split_ifs with h
  · obtain ⟨rfl, rfl⟩ := h
    exact canonicalAnchorFive_actual_amplitude hX
  · rfl

theorem canonicalAnchorFive_mem_full_differences {X : ℕ} (hX : 3 ≤ X) :
    canonicalAnchorFivePacket ∈ CanonicalFourFamilyRestrictionDifferenceSet X := by
  refine ⟨canonicalAnchorFiveRestriction X hX, canonicalFourFamilyEmptyRestriction X, ?_⟩
  rw [canonicalFourFamilyRestrictionPacket_empty, sub_zero,
    canonicalAnchorFive_actual_packet hX]

theorem canonicalAnchorFive_energy {X : ℕ} (hX : 3 ≤ X) :
    canonicalFourFamilyAmbientSourceEnergy X canonicalAnchorFivePacket = 1 := by
  classical
  have hc : 2 ∈ Finset.range (2 * X + 1) := by simp; omega
  simp [canonicalFourFamilyAmbientSourceEnergy, canonicalAnchorFivePacket,
    ite_and, Finset.sum_ite_eq', hc]

/-- Quantitative necessary condition on the FULL genuine restriction family.
The hypothesis about R is a coordinate equation, not a source substitution. -/
theorem fullRestriction_residual_ge_one_of_anchorFive_zero {X : ℕ} (hX : 3 ≤ X)
    (R : ({n : ℕ // n ∈ centeredGreenWindow X} → ℝ) → CanonicalFourFamilyRealPacket)
    (hR : ∀ y, R y (true, false) 2 = 0) (q : ℝ)
    (hres : ∀ v ∈ CanonicalFourFamilyRestrictionDifferenceSet X,
      canonicalFourFamilyAmbientSourceEnergy X
        (canonicalFourFamilyReconstructionResidual X R v) ≤
        q * canonicalFourFamilyAmbientSourceEnergy X v) : 1 ≤ q := by
  classical
  let w := canonicalFourFamilyReconstructionResidual X R canonicalAnchorFivePacket
  have hw : w (true, false) 2 = -1 := by
    simp [w, canonicalFourFamilyReconstructionResidual, canonicalAnchorFivePacket, hR]
  have hc : 2 ∈ Finset.range (2 * X + 1) := by simp; omega
  have hcell := Finset.single_le_sum
    (f := fun c => (w (true, false) c) ^ 2) (fun _ _ => sq_nonneg _) hc
  rw [hw] at hcell
  have hrow := Finset.single_le_sum
    (f := fun F : CanonicalFourFamily => ∑ c ∈ Finset.range (2 * X + 1), (w F c) ^ 2)
    (fun _ _ => Finset.sum_nonneg (fun _ _ => sq_nonneg _))
    (Finset.mem_univ (true, false))
  have he : 1 ≤ canonicalFourFamilyAmbientSourceEnergy X w := by
    norm_num at hcell
    exact hcell.trans hrow
  have hh := hres canonicalAnchorFivePacket (canonicalAnchorFive_mem_full_differences hX)
  rw [canonicalAnchorFive_energy hX, mul_one] at hh
  exact he.trans hh

/-- The explicit visible reconstruction cannot meet the FULL-family residual
premise with q<1 at any X>=3, even though its energy estimate is uniform. -/
theorem canonicalVisibleReconstruction_full_residual_ge_one {X : ℕ} (hX : 3 ≤ X)
    (q : ℝ)
    (hres : ∀ v ∈ CanonicalFourFamilyRestrictionDifferenceSet X,
      canonicalFourFamilyAmbientSourceEnergy X
        (canonicalFourFamilyReconstructionResidual X (canonicalVisibleReconstruction X hX) v) ≤
        q * canonicalFourFamilyAmbientSourceEnergy X v) : 1 ≤ q := by
  apply fullRestriction_residual_ge_one_of_anchorFive_zero hX
    (canonicalVisibleReconstruction X hX) ?_ q hres
  intro y
  simp [canonicalVisibleReconstruction, canonicalVisibleCellPacketThree]

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
