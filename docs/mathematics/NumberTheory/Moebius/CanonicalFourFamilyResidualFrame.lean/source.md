# Complete source: GRWTSK.NumberTheory.Moebius.CanonicalFourFamilyResidualFrame

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9c89a213d1950ab62392bb4a2d93bad40c8bcd1f` · SHA-256 `c1a7aecd4ff1d7e3a5d2c4778471655cbdb53c011ee9e185bb1a642c39dd7cf4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Moebius.CanonicalFourFamilyArithmeticRestrictions

/-! # Residual contraction and the actual four-family frame

The energies, window readout and restricted-frame predicate are the existing
source-defined objects. A bounded reconstruction with relative squared-energy
residual q<1 suffices; the earlier two-term estimate needed 2q<1.
The reconstruction and its two quantitative estimates remain explicit premises.
For the realizable restriction family at X=3 these estimates force q>=1.
No RH-scale reconstruction or alternative arithmetic family is assumed.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

theorem canonicalFourFamilyEnergy_weighted_add (X : ℕ)
    (f g : CanonicalFourFamilyRealPacket) (q : ℝ) :
    (1 - q ^ 2) * canonicalFourFamilyAmbientSourceEnergy X (f + g) ≤
      2 * (1 + q) * canonicalFourFamilyAmbientSourceEnergy X f +
        2 * (1 - q) * canonicalFourFamilyAmbientSourceEnergy X g := by
  unfold canonicalFourFamilyAmbientSourceEnergy
  simp only [Finset.mul_sum, ← Finset.sum_add_distrib]
  apply Finset.sum_le_sum
  intro F _
  apply Finset.sum_le_sum
  intro c _
  change (1 - q ^ 2) * (f F c + g F c) ^ 2 ≤ _
  nlinarith [sq_nonneg ((1 + q) * f F c - (1 - q) * g F c)]

def canonicalFourFamilyReconstructionResidual (X : ℕ)
    (R : ({n : ℕ // n ∈ centeredGreenWindow X} → ℝ) → CanonicalFourFamilyRealPacket)
    (v : CanonicalFourFamilyRealPacket) : CanonicalFourFamilyRealPacket :=
  v - R (canonicalFourFamilyWindowReadout X v)

/-- This is a quantitative supplier for the ACTUAL matrix, conditional on
two estimates on the same D; it does not manufacture those estimates. -/
theorem canonicalFourFamilyLowerFrame_of_residual_contraction
    (X : ℕ) (D : Set CanonicalFourFamilyRealPacket)
    (R : ({n : ℕ // n ∈ centeredGreenWindow X} → ℝ) → CanonicalFourFamilyRealPacket)
    (C q : ℝ) (hC : 0 < C) (hq : 0 ≤ q) (hsmall : q < 1)
    (hR : ∀ v ∈ D, canonicalFourFamilyAmbientSourceEnergy X
      (R (canonicalFourFamilyWindowReadout X v)) ≤
        C * canonicalFourFamilyWindowOutputEnergy X v)
    (hres : ∀ v ∈ D, canonicalFourFamilyAmbientSourceEnergy X
      (canonicalFourFamilyReconstructionResidual X R v) ≤
        q * canonicalFourFamilyAmbientSourceEnergy X v) :
    HasCanonicalFourFamilyRestrictedLowerFrame X D
      ((1 - q) ^ 2 / (2 * C * (1 + q))) := by
  have hden : 0 < 2 * C * (1 + q) := by positivity
  have hnum : 0 < (1 - q) ^ 2 := sq_pos_of_pos (by linarith)
  refine ⟨div_pos hnum hden, ?_⟩
  intro v hv
  have hsplit := canonicalFourFamilyEnergy_weighted_add X
    (R (canonicalFourFamilyWindowReadout X v))
    (canonicalFourFamilyReconstructionResidual X R v) q
  have hid : R (canonicalFourFamilyWindowReadout X v) +
      canonicalFourFamilyReconstructionResidual X R v = v := by
    unfold canonicalFourFamilyReconstructionResidual
    abel
  rw [hid] at hsplit
  have hrec := mul_le_mul_of_nonneg_left (hR v hv)
    (show 0 ≤ 2 * (1 + q) by positivity)
  have hrem := mul_le_mul_of_nonneg_left (hres v hv)
    (show 0 ≤ 2 * (1 - q) by linarith)
  have hbound : (1 - q) ^ 2 * canonicalFourFamilyAmbientSourceEnergy X v ≤
      canonicalFourFamilyWindowOutputEnergy X v * (2 * C * (1 + q)) := by
    nlinarith [hsplit, hrec, hrem]
  rw [div_mul_eq_mul_div]
  exact (div_le_iff₀ hden).mpr hbound

/-- The concrete arithmetic kernel witness excludes EVERY contraction
q<1 satisfying the proposed reconstruction bound on this family. -/
theorem restriction_three_reconstruction_residual_ge_one
    (R : ({n : ℕ // n ∈ centeredGreenWindow 3} → ℝ) → CanonicalFourFamilyRealPacket)
    (C q : ℝ) (hC : 0 < C) (hq : 0 ≤ q)
    (hR : ∀ v ∈ CanonicalFourFamilyRestrictionDifferenceSet 3,
      canonicalFourFamilyAmbientSourceEnergy 3
        (R (canonicalFourFamilyWindowReadout 3 v)) ≤
          C * canonicalFourFamilyWindowOutputEnergy 3 v)
    (hres : ∀ v ∈ CanonicalFourFamilyRestrictionDifferenceSet 3,
      canonicalFourFamilyAmbientSourceEnergy 3
        (canonicalFourFamilyReconstructionResidual 3 R v) ≤
          q * canonicalFourFamilyAmbientSourceEnergy 3 v) :
    1 ≤ q := by
  by_contra h
  exact not_restrictionLowerFrame_three _
    (canonicalFourFamilyLowerFrame_of_residual_contraction 3
      (CanonicalFourFamilyRestrictionDifferenceSet 3) R C q hC hq (by linarith) hR hres)

/-- A different, precisely specified arithmetic restriction family: retain
only the actual anchor-3 cell, or retain no cells, at X=3. -/
def canonicalVisibleCellRestrictionThree : CanonicalFourFamilyRestrictionConfig 3 :=
  ⟨{((true, true), 1)}, by
    intro p hp
    have he := Finset.mem_singleton.mp hp
    subst p
    simp [canonicalFourFamilyCells]⟩

def canonicalVisibleCellPacketThree (a : ℝ) : CanonicalFourFamilyRealPacket :=
  fun F c => if F = (true, true) ∧ c = 1 then a else 0

theorem visibleCellThree_source_energy (a : ℝ) :
    canonicalFourFamilyAmbientSourceEnergy 3 (canonicalVisibleCellPacketThree a) = a ^ 2 := by
  classical
  simp [canonicalFourFamilyAmbientSourceEnergy, canonicalVisibleCellPacketThree,
    ite_and, Finset.sum_ite_eq']

theorem visibleCellThree_row_six (a : ℝ) :
    canonicalFourFamilyGreenMatrixApply 3 6 (canonicalVisibleCellPacketThree a) =
      Real.log 2 * a := by
  classical
  have hs : (6 : ℕ).divisorsAntidiagonal.filter (fun p =>
      p.1 ∈ anchoredDyadicSourceIndices 3 ∧ 0 < (anchoredMobiusPair p.1).h ∧
        (true, true) = canonicalFourFamilyOfAnchor p.1 ∧
          1 = (anchoredMobiusPair p.1).center) = {(3, 2)} := by decide
  have he : canonicalFourFamilyGreenMatrixEntry 3 6 (true, true) 1 = Real.log 2 := by
    rw [canonicalFourFamilyGreenMatrixEntry, ← Finset.sum_filter, hs]
    norm_num [anchoredPairSign]
  simpa [canonicalFourFamilyGreenMatrixApply, canonicalVisibleCellPacketThree,
    ite_and, mul_ite, Finset.sum_ite_eq'] using congrArg (fun t : ℝ => t * a) he

theorem visibleCellThree_lower_frame (a : ℝ) :
    (Real.log 2) ^ 2 * canonicalFourFamilyAmbientSourceEnergy 3
      (canonicalVisibleCellPacketThree a) ≤
        canonicalFourFamilyWindowOutputEnergy 3 (canonicalVisibleCellPacketThree a) := by
  have h6 : 6 ∈ centeredGreenWindow 3 := by decide
  have h := Finset.single_le_sum
    (f := fun n => (canonicalFourFamilyGreenMatrixApply 3 n
      (canonicalVisibleCellPacketThree a)) ^ 2)
    (fun _ _ => sq_nonneg _) h6
  rw [visibleCellThree_row_six] at h
  rw [visibleCellThree_source_energy]
  change (Real.log 2) ^ 2 * a ^ 2 ≤ _
  simpa only [mul_pow, canonicalFourFamilyWindowOutputEnergy] using h

theorem visibleCellThree_actual_packet :
    canonicalFourFamilyRestrictionPacket 3 canonicalVisibleCellRestrictionThree =
      canonicalVisibleCellPacketThree (-1) := by
  have hset : zeroWindingCenteredShiftSet 6 1 1
      (canonicalFourFamilyShiftSet 6 (true, true)) = {1} := by decide
  have ha : canonicalFourFamilyCenteredData 3 (true, true) 1 = -1 := by
    change parityCenteredIntegerCoordinateAmplitude 6 1
      (canonicalFourFamilyShiftSet 6 (true, true)) 1 = -1
    rw [authentic_integer_center_amplitude_eq_centered_sum]
    unfold parityZeroWindingCenteredMobiusCorrelation
    rw [hset]
    norm_num [moebiusReal, ArithmeticFunction.moebius_apply_prime
      (by norm_num : Nat.Prime 3)]
  funext F c
  simp only [canonicalFourFamilyRestrictionPacket, canonicalVisibleCellRestrictionThree,
    canonicalVisibleCellPacketThree, Finset.mem_singleton, Prod.mk.injEq]
  split_ifs with h
  · obtain ⟨rfl, rfl⟩ := h
    exact ha
  · rfl

def CanonicalVisibleCellArithmeticDifferenceThree : Set CanonicalFourFamilyRealPacket :=
  {v | ∃ b d : Bool, v =
    canonicalFourFamilyRestrictionPacket 3
      (if b then canonicalVisibleCellRestrictionThree else canonicalFourFamilyEmptyRestriction 3) -
    canonicalFourFamilyRestrictionPacket 3
      (if d then canonicalVisibleCellRestrictionThree else canonicalFourFamilyEmptyRestriction 3)}

theorem visibleCellArithmeticDifferenceThree_subset :
    CanonicalVisibleCellArithmeticDifferenceThree ⊆ CanonicalFourFamilyRestrictionDifferenceSet 3 := by
  intro v hv
  obtain ⟨b, d, he⟩ := hv
  exact ⟨if b then canonicalVisibleCellRestrictionThree else canonicalFourFamilyEmptyRestriction 3,
    if d then canonicalVisibleCellRestrictionThree else canonicalFourFamilyEmptyRestriction 3, he⟩

/-- A positive frame is PROVED for this two-configuration arithmetic
family, with constant (log 2)^2. This is a finite-scale, one-cell result,
not a frame on all restrictions or a uniform RH-scale source estimate. -/
theorem hasVisibleCellArithmeticFrameThree :
    HasCanonicalFourFamilyRestrictedLowerFrame 3
      CanonicalVisibleCellArithmeticDifferenceThree ((Real.log 2) ^ 2) := by
  refine ⟨sq_pos_of_pos (Real.log_pos (by norm_num)), ?_⟩
  intro v hv
  obtain ⟨b, d, rfl⟩ := hv
  have hpacket (b : Bool) : canonicalFourFamilyRestrictionPacket 3
      (if b then canonicalVisibleCellRestrictionThree else canonicalFourFamilyEmptyRestriction 3) =
        canonicalVisibleCellPacketThree (if b then -1 else 0) := by
    cases b
    · change canonicalFourFamilyRestrictionPacket 3 (canonicalFourFamilyEmptyRestriction 3) =
        canonicalVisibleCellPacketThree 0
      rw [canonicalFourFamilyRestrictionPacket_empty]
      funext F c
      simp [canonicalVisibleCellPacketThree]
    · exact visibleCellThree_actual_packet
  rw [hpacket b, hpacket d]
  have hsub (a t : ℝ) : canonicalVisibleCellPacketThree a - canonicalVisibleCellPacketThree t =
      canonicalVisibleCellPacketThree (a - t) := by
    funext F c
    simp [canonicalVisibleCellPacketThree, Pi.sub_apply]
    split_ifs <;> ring
  rw [hsub]
  exact visibleCellThree_lower_frame _

theorem visibleCellArithmeticThree_nontrivial :
    ∃ v ∈ CanonicalVisibleCellArithmeticDifferenceThree,
      canonicalFourFamilyAmbientSourceEnergy 3 v = 1 := by
  refine ⟨canonicalFourFamilyRestrictionPacket 3 canonicalVisibleCellRestrictionThree, ?_, ?_⟩
  · refine ⟨true, false, ?_⟩
    change canonicalFourFamilyRestrictionPacket 3 canonicalVisibleCellRestrictionThree =
      canonicalFourFamilyRestrictionPacket 3 canonicalVisibleCellRestrictionThree -
        canonicalFourFamilyRestrictionPacket 3 (canonicalFourFamilyEmptyRestriction 3)
    rw [canonicalFourFamilyRestrictionPacket_empty, sub_zero]
  · rw [visibleCellThree_actual_packet, visibleCellThree_source_energy]
    norm_num

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
```
