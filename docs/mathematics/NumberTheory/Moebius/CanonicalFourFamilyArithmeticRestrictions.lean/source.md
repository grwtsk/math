# Complete source: GRWTSK.NumberTheory.Moebius.CanonicalFourFamilyArithmeticRestrictions

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8d16fe5e6d37bd0b9eef28ca51b16c0b767dbb8c` · SHA-256 `91f6dbeb8eaf8cdf5ea59fdeeade1c20a84a2358b1eeda1de355aafb083b9cb2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Moebius.CanonicalFourFamilyRestrictedObservability

/-! # Finite restrictions of the actual four-family arithmetic packet

A configuration selects finite cells of the literal centered Möbius amplitude.
It changes neither the Möbius function nor the coefficients in a retained cell.
This is an explicitly declared family of coordinate restrictions, not a claim
that the full arithmetic configuration at a fixed scale has free parameters.
The empty and full restrictions recover zero and the finite source packet.
The terminal restriction supplies an obstruction whenever its actual amplitude
is nonzero. This does not obstruct a different family which excludes it.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

def canonicalFourFamilyCells (X : ℕ) : Finset (CanonicalFourFamily × ℕ) :=
  Finset.univ ×ˢ Finset.range (2 * X + 1)

abbrev CanonicalFourFamilyRestrictionConfig (X : ℕ) :=
  {S : Finset (CanonicalFourFamily × ℕ) // S ⊆ canonicalFourFamilyCells X}

def canonicalFourFamilyRestrictionPacket (X : ℕ)
    (S : CanonicalFourFamilyRestrictionConfig X) : CanonicalFourFamilyRealPacket :=
  fun F c => if (F, c) ∈ S.val then canonicalFourFamilyCenteredData X F c else 0

def canonicalFourFamilyEmptyRestriction (X : ℕ) :
    CanonicalFourFamilyRestrictionConfig X := ⟨∅, Finset.empty_subset _⟩

def canonicalFourFamilyFullRestriction (X : ℕ) :
    CanonicalFourFamilyRestrictionConfig X := ⟨canonicalFourFamilyCells X, fun _ h => h⟩

theorem canonicalFourFamilyRestrictionPacket_empty (X : ℕ) :
    canonicalFourFamilyRestrictionPacket X (canonicalFourFamilyEmptyRestriction X) = 0 := by
  funext F c
  simp [canonicalFourFamilyRestrictionPacket, canonicalFourFamilyEmptyRestriction]

theorem canonicalFourFamilyRestrictionPacket_full (X : ℕ)
    (F : CanonicalFourFamily) {c : ℕ} (hc : c ∈ Finset.range (2 * X + 1)) :
    canonicalFourFamilyRestrictionPacket X (canonicalFourFamilyFullRestriction X) F c =
      canonicalFourFamilyCenteredData X F c := by
  simp [canonicalFourFamilyRestrictionPacket, canonicalFourFamilyFullRestriction,
    canonicalFourFamilyCells, hc]

theorem canonicalFourFamilyRestrictionPacket_support_admissible (X : ℕ)
    (S : CanonicalFourFamilyRestrictionConfig X) :
    CanonicalFourFamilySupportAdmissible X (canonicalFourFamilyRestrictionPacket X S) := by
  intro F c hne
  have hmem : (F, c) ∈ S.val := by
    by_contra h
    simp [canonicalFourFamilyRestrictionPacket, h] at hne
  refine ⟨(Finset.mem_product.mp (S.property hmem)).2, ?_⟩
  by_contra h
  have hempty := Finset.not_nonempty_iff_eq_empty.mp h
  have hz : canonicalFourFamilyCenteredData X F c = 0 := by
    unfold canonicalFourFamilyCenteredData
    rw [authentic_integer_center_amplitude_eq_centered_sum]
    simp [parityZeroWindingCenteredMobiusCorrelation, hempty]
  simp [canonicalFourFamilyRestrictionPacket, hmem, hz] at hne

def CanonicalFourFamilyRestrictionDifferenceSet (X : ℕ) :
    Set CanonicalFourFamilyRealPacket :=
  {v | ∃ S T : CanonicalFourFamilyRestrictionConfig X,
    v = canonicalFourFamilyRestrictionPacket X S - canonicalFourFamilyRestrictionPacket X T}

theorem canonicalFourFamilyRestrictionDifference_support_admissible (X : ℕ)
    {v : CanonicalFourFamilyRealPacket}
    (hv : v ∈ CanonicalFourFamilyRestrictionDifferenceSet X) :
    CanonicalFourFamilySupportAdmissible X v := by
  obtain ⟨S, T, rfl⟩ := hv
  intro F c hne
  by_cases hs : canonicalFourFamilyRestrictionPacket X S F c = 0
  · apply canonicalFourFamilyRestrictionPacket_support_admissible X T F c
    intro ht
    simp [hs, ht] at hne
  · exact canonicalFourFamilyRestrictionPacket_support_admissible X S F c hs

/-- The omitted cells retain their actual signed amplitudes. -/
def canonicalFourFamilyRestrictionOmittedPacket (X : ℕ)
    (S : CanonicalFourFamilyRestrictionConfig X) : CanonicalFourFamilyRealPacket :=
  canonicalFourFamilyCenteredData X - canonicalFourFamilyRestrictionPacket X S

/-- Other-shift and newly omitted-cell channels, with their exact signs. -/
def canonicalFourFamilyRestrictionSignedCorrection (X n : ℕ)
    (S : CanonicalFourFamilyRestrictionConfig X) : ℝ :=
  canonicalFourFamilyOtherShiftDivisor X n -
    canonicalFourFamilyGreenMatrixApply X n (canonicalFourFamilyRestrictionOmittedPacket X S)

theorem canonicalFourFamilyRestriction_omitted_matrix (X n : ℕ)
    (S : CanonicalFourFamilyRestrictionConfig X) :
    canonicalFourFamilyGreenMatrixApply X n (canonicalFourFamilyRestrictionOmittedPacket X S) =
      canonicalFourFamilyGreenMatrixApply X n (canonicalFourFamilyCenteredData X) -
      canonicalFourFamilyGreenMatrixApply X n (canonicalFourFamilyRestrictionPacket X S) := by
  simp [canonicalFourFamilyGreenMatrixApply, canonicalFourFamilyRestrictionOmittedPacket,
    mul_sub, Finset.sum_sub_distrib]

theorem vonMangoldt_eq_restriction_corrected {X n : ℕ}
    (hn : n ∈ centeredGreenWindow X) (S : CanonicalFourFamilyRestrictionConfig X) :
    ArithmeticFunction.vonMangoldt n =
      canonicalFourFamilyGreenMatrixApply X n (canonicalFourFamilyRestrictionPacket X S) -
        canonicalFourFamilyRestrictionSignedCorrection X n S +
        canonicalFourFamilyZeroShiftBoundary n := by
  rw [canonicalFourFamilyRestrictionSignedCorrection,
    canonicalFourFamilyRestriction_omitted_matrix,
    vonMangoldt_eq_canonicalFourFamilyMatrix_corrected hn]
  ring

/-- Literal original 1/n, complex cast, and location, with both signed
defect channels and the unchanged a=1,2 boundary retained. -/
def canonicalFourFamilyRestrictionCorrectedGreenCoordinate (X : ℕ)
    (S : CanonicalFourFamilyRestrictionConfig X) (φ : ℝ → ℂ) : ℂ :=
  ∑ n ∈ centeredGreenWindow X,
    (((canonicalFourFamilyGreenMatrixApply X n (canonicalFourFamilyRestrictionPacket X S) -
      canonicalFourFamilyRestrictionSignedCorrection X n S +
      canonicalFourFamilyZeroShiftBoundary n) / (n : ℝ) : ℝ) : ℂ) *
        φ (centeredGreenLocation X n)

theorem centeredGreenPrimeCoordinate_eq_restriction_corrected (X : ℕ)
    (S : CanonicalFourFamilyRestrictionConfig X) (φ : ℝ → ℂ) :
    centeredGreenPrimeCoordinate X φ =
      canonicalFourFamilyRestrictionCorrectedGreenCoordinate X S φ := by
  unfold centeredGreenPrimeCoordinate canonicalFourFamilyRestrictionCorrectedGreenCoordinate
  apply Finset.sum_congr rfl
  intro n hn
  unfold centeredGreenArithmeticCoefficient
  rw [vonMangoldt_eq_restriction_corrected hn S]

def canonicalFourFamilyTerminalRestriction (X : ℕ) (hX : 1 ≤ X) :
    CanonicalFourFamilyRestrictionConfig X :=
  ⟨{(canonicalFourFamilyOfAnchor (2 * X), X + 1)}, by
    intro p hp
    have hp' := Finset.mem_singleton.mp hp
    subst p
    simp only [canonicalFourFamilyCells, Finset.mem_product,
      Finset.mem_univ, true_and, Finset.mem_range]
    omega⟩

theorem canonicalFourFamilyTerminalRestriction_mem_difference
    (X : ℕ) (hX : 1 ≤ X) :
    canonicalFourFamilyRestrictionPacket X
        (canonicalFourFamilyTerminalRestriction X hX) ∈
      CanonicalFourFamilyRestrictionDifferenceSet X := by
  refine ⟨canonicalFourFamilyTerminalRestriction X hX,
    canonicalFourFamilyEmptyRestriction X, ?_⟩
  rw [canonicalFourFamilyRestrictionPacket_empty, sub_zero]

theorem canonicalFourFamilyTerminalRestriction_erasure
    (X : ℕ) (hX : 1 ≤ X) :
    canonicalFourFamilyTerminalErase X
      (canonicalFourFamilyRestrictionPacket X
        (canonicalFourFamilyTerminalRestriction X hX)) = 0 := by
  funext F c
  simp only [canonicalFourFamilyTerminalErase, canonicalFourFamilyRestrictionPacket,
    canonicalFourFamilyTerminalRestriction, Finset.mem_singleton, Prod.mk.injEq,
    Pi.zero_apply]
  split_ifs <;> simp_all

theorem canonicalFourFamilyTerminalRestriction_output_zero
    (X : ℕ) (hX : 1 ≤ X) :
    canonicalFourFamilyWindowOutputEnergy X
      (canonicalFourFamilyRestrictionPacket X
        (canonicalFourFamilyTerminalRestriction X hX)) = 0 := by
  rw [canonicalFourFamilyWindowOutputEnergy_eq_terminalErase,
    canonicalFourFamilyTerminalRestriction_erasure]
  simp [canonicalFourFamilyWindowOutputEnergy, canonicalFourFamilyGreenMatrixApply]

theorem canonicalFourFamilyTerminalRestriction_source_energy
    (X : ℕ) (hX : 1 ≤ X) :
    canonicalFourFamilyAmbientSourceEnergy X
      (canonicalFourFamilyRestrictionPacket X
        (canonicalFourFamilyTerminalRestriction X hX)) =
      (canonicalFourFamilyCenteredData X
        (canonicalFourFamilyOfAnchor (2 * X)) (X + 1)) ^ 2 := by
  classical
  have hc : X + 1 ∈ Finset.range (2 * X + 1) := Finset.mem_range.mpr (by omega)
  unfold canonicalFourFamilyAmbientSourceEnergy canonicalFourFamilyRestrictionPacket
    canonicalFourFamilyTerminalRestriction
  simp only [Finset.mem_singleton, Prod.mk.injEq]
  simp [ite_and, hc, Finset.sum_ite_eq']

/-- A genuine restriction difference obstructs every positive lower frame
when its retained, actual arithmetic amplitude is nonzero. -/
theorem not_restrictionLowerFrame_of_terminal_amplitude_ne_zero
    (X : ℕ) (hX : 1 ≤ X)
    (ha : canonicalFourFamilyCenteredData X
      (canonicalFourFamilyOfAnchor (2 * X)) (X + 1) ≠ 0) (A : ℝ) :
    ¬ HasCanonicalFourFamilyRestrictedLowerFrame X
      (CanonicalFourFamilyRestrictionDifferenceSet X) A := by
  rintro ⟨hA, hframe⟩
  have h := hframe _ (canonicalFourFamilyTerminalRestriction_mem_difference X hX)
  rw [canonicalFourFamilyTerminalRestriction_output_zero,
    canonicalFourFamilyTerminalRestriction_source_energy] at h
  exact (not_le_of_gt (mul_pos hA (sq_pos_of_ne_zero ha))) h

/-- Exact arithmetic control: at X=3 the terminal cell is the genuine
single shift h=2 with coefficient mu(2) mu(6) = -1. -/
theorem canonicalFourFamily_terminal_amplitude_three :
    canonicalFourFamilyCenteredData 3 (canonicalFourFamilyOfAnchor 6) 4 = -1 := by
  have hset : zeroWindingCenteredShiftSet 6 0 4
      (canonicalFourFamilyShiftSet 6 (false, false)) = {2} := by decide
  have hmu6 : moebiusReal 6 = 1 := by
    have h := ArithmeticFunction.isMultiplicative_moebius.map_mul_of_coprime
      (by norm_num : Nat.Coprime 2 3)
    rw [ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 2),
      ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 3)] at h
    unfold moebiusReal
    norm_num at h ⊢
    exact_mod_cast h
  change parityCenteredIntegerCoordinateAmplitude 6 0
    (canonicalFourFamilyShiftSet 6 (false, false)) 4 = -1
  rw [authentic_integer_center_amplitude_eq_centered_sum]
  unfold parityZeroWindingCenteredMobiusCorrelation
  rw [hset]
  have hmu6' : ArithmeticFunction.moebius 6 = 1 := by
    change ((ArithmeticFunction.moebius 6 : ℤ) : ℝ) = 1 at hmu6
    exact_mod_cast hmu6
  norm_num [hmu6', moebiusReal, ArithmeticFunction.moebius_apply_prime
    (by norm_num : Nat.Prime 2)]

theorem not_restrictionLowerFrame_three (A : ℝ) :
    ¬ HasCanonicalFourFamilyRestrictedLowerFrame 3
      (CanonicalFourFamilyRestrictionDifferenceSet 3) A := by
  apply not_restrictionLowerFrame_of_terminal_amplitude_ne_zero 3 (by omega) _ A
  rw [show 2 * 3 = 6 from rfl, show 3 + 1 = 4 from rfl,
    canonicalFourFamily_terminal_amplitude_three]
  norm_num

/-- A nonzero-energy difference of two explicitly realizable restrictions,
not merely an ambient supported vector. Its raw matrix observation is zero. -/
theorem restriction_three_realizable_kernel :
    ∃ v ∈ CanonicalFourFamilyRestrictionDifferenceSet 3,
      canonicalFourFamilyAmbientSourceEnergy 3 v = 1 ∧
      canonicalFourFamilyWindowOutputEnergy 3 v = 0 := by
  refine ⟨canonicalFourFamilyRestrictionPacket 3
    (canonicalFourFamilyTerminalRestriction 3 (by omega)),
    canonicalFourFamilyTerminalRestriction_mem_difference 3 (by omega), ?_,
    canonicalFourFamilyTerminalRestriction_output_zero 3 (by omega)⟩
  rw [canonicalFourFamilyTerminalRestriction_source_energy]
  norm_num [canonicalFourFamily_terminal_amplitude_three]

theorem no_restriction_lower_frame_at_all_scales :
    ¬ ∃ A : ℕ → ℝ, ∀ X : ℕ, 2 ≤ X →
      HasCanonicalFourFamilyRestrictedLowerFrame X
        (CanonicalFourFamilyRestrictionDifferenceSet X) (A X) := by
  rintro ⟨A, hA⟩
  exact not_restrictionLowerFrame_three (A 3) (hA 3 (by omega))

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
```
