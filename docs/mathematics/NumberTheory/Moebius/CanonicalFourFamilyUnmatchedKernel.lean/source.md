# Complete source: GRWTSK.NumberTheory.Moebius.CanonicalFourFamilyUnmatchedKernel

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `77e30c7fc211ce94a6ad00c30c69e5e9fc8586e2` · SHA-256 `422eb497d688fe7d79aef0761a8c36aa203e4bf8a05e815edc74cc8491175adc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI. -/
import GRWTSK.NumberTheory.Moebius.CanonicalFourFamilyScaleBounds

/-! # An actual unmatched source cell and a scale-ten restriction kernel
The parity-one cell at center X would require anchor 2X+1, outside the source
index range. At X=10 its actual amplitude is one. The resulting genuine
restriction difference refutes a positive lower frame at that scale. -/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.RiemannHypothesis

theorem parityOne_scaleCenter_entry_zero (X n : ℕ) (j : Bool) :
    canonicalFourFamilyGreenMatrixEntry X n (true,j) X = 0 := by
  unfold canonicalFourFamilyGreenMatrixEntry
  apply Finset.sum_eq_zero
  intro p _
  split_ifs with h
  · have htop := (Finset.mem_Icc.mp h.1).2
    have hr := congrArg canonicalFourFamilyEndpointParity h.2.2.1
    rw [canonicalFourFamilyEndpointParity_of_anchor] at hr
    change 1 = (anchoredMobiusPair p.1).r at hr
    have hc := h.2.2.2
    by_cases he : p.1 % 2 = 0
    · simp [anchoredMobiusPair,he] at hr
    · simp [anchoredMobiusPair,CenteredAdditiveMobiusPair.center,he] at hc
      omega
  · rfl

theorem parityOne_scaleTen_amplitude : canonicalFourFamilyCenteredData 10 (true,false) 10 = 1 := by
  have hs : zeroWindingCenteredShiftSet 20 1 10
      (canonicalFourFamilyShiftSet 20 (true,false)) = {2,4,6,8} := by decide
  have h9 : ArithmeticFunction.moebius 9 = 0 := by
    simpa using ArithmeticFunction.moebius_apply_prime_pow (by norm_num : Nat.Prime 3)
      (by norm_num : (2:ℕ) ≠ 0)
  have h15 : ArithmeticFunction.moebius 15 = 1 := by
    have h := ArithmeticFunction.isMultiplicative_moebius.map_mul_of_coprime
      (by norm_num : Nat.Coprime 3 5)
    norm_num [ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 3),
      ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 5)] at h
    exact h
  change parityCenteredIntegerCoordinateAmplitude 20 1
    (canonicalFourFamilyShiftSet 20 (true,false)) 10 = 1
  rw [authentic_integer_center_amplitude_eq_centered_sum]
  unfold parityZeroWindingCenteredMobiusCorrelation
  rw [hs]
  norm_num [moebiusReal,h9,h15,
    ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 3),
    ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 5),
    ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 7),
    ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 17),
    ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 19)]

def unmatchedTenRestriction : CanonicalFourFamilyRestrictionConfig 10 :=
  ⟨{((true,false),10)},by simp [canonicalFourFamilyCells]⟩

def unmatchedTenPacket : CanonicalFourFamilyRealPacket :=
  canonicalFourFamilyRestrictionPacket 10 unmatchedTenRestriction

theorem unmatchedTenPacket_apply (F : CanonicalFourFamily) (c : ℕ) :
    unmatchedTenPacket F c = if F=(true,false) ∧ c=10 then 1 else 0 := by
  unfold unmatchedTenPacket canonicalFourFamilyRestrictionPacket unmatchedTenRestriction
  simp only [Finset.mem_singleton,Prod.mk.injEq]
  split_ifs with h
  · obtain ⟨rfl,rfl⟩ := h
    exact parityOne_scaleTen_amplitude
  · rfl

theorem unmatchedTen_realizable_kernel :
    unmatchedTenPacket ∈ CanonicalFourFamilyRestrictionDifferenceSet 10 ∧
    canonicalFourFamilyAmbientSourceEnergy 10 unmatchedTenPacket = 1 ∧
    canonicalFourFamilyWindowOutputEnergy 10 unmatchedTenPacket = 0 := by
  refine ⟨⟨unmatchedTenRestriction,canonicalFourFamilyEmptyRestriction 10,?_⟩,?_,?_⟩
  · rw [canonicalFourFamilyRestrictionPacket_empty,sub_zero]
    rfl
  · simp [canonicalFourFamilyAmbientSourceEnergy,unmatchedTenPacket_apply,ite_and,Finset.sum_ite_eq']
  · unfold canonicalFourFamilyWindowOutputEnergy
    apply Finset.sum_eq_zero
    intro n _
    have hz : canonicalFourFamilyGreenMatrixApply 10 n unmatchedTenPacket = 0 := by
      simp [canonicalFourFamilyGreenMatrixApply,unmatchedTenPacket_apply,ite_and,
        Finset.sum_ite_eq',parityOne_scaleCenter_entry_zero]
    rw [hz]
    norm_num

theorem not_restrictionLowerFrame_ten (A : ℝ) :
    ¬ HasCanonicalFourFamilyRestrictedLowerFrame 10
      (CanonicalFourFamilyRestrictionDifferenceSet 10) A := by
  rintro ⟨hA,hframe⟩
  have h := hframe unmatchedTenPacket unmatchedTen_realizable_kernel.1
  rw [unmatchedTen_realizable_kernel.2.1,unmatchedTen_realizable_kernel.2.2,mul_one] at h
  exact (not_le_of_gt hA) h
/-- Raising the old scale-three cutoff merely to ten cannot repair the full-family claim. -/
theorem no_restriction_lower_frame_from_ten :
    ¬ ∃ A : ℕ → ℝ, ∀ X : ℕ, 10 ≤ X →
      HasCanonicalFourFamilyRestrictedLowerFrame X
        (CanonicalFourFamilyRestrictionDifferenceSet X) (A X) := by
  rintro ⟨A,hA⟩
  exact not_restrictionLowerFrame_ten (A 10) (hA 10 (by omega))
end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
```
