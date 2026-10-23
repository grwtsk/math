/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #913. Parent: draft PR #912 at 0734e455f24706489205e4e0053fdc68834b270f.
-/
import GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredFourDistinctShiftPairCount

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Exact finite carrier of centers for which c+ell remains in the endpoint. -/
def endpointValidCenterSetAtLag (b ell : ℕ) : Finset ℕ :=
  (Finset.range (b + 1)).filter fun c => c + ell < b + 1

theorem endpointValidCenterSetAtLag_eq_range
    (b ell : ℕ) :
    endpointValidCenterSetAtLag b ell =
      Finset.range ((b + 1) - ell) := by
  ext c
  simp [endpointValidCenterSetAtLag]
  omega

theorem card_endpointValidCenterSetAtLag
    (b ell : ℕ) :
    (endpointValidCenterSetAtLag b ell).card =
      (b + 1) - ell := by
  rw [endpointValidCenterSetAtLag_eq_range]
  simp

/-- Lag-sensitive raw support count for the genuinely four-distinct surface. -/
def centeredFourDistinctRawSupportCount
    (b r ell : ℕ) (H : Finset ℕ) : ℕ :=
  ∑ c ∈ endpointValidCenterSetAtLag b ell,
    (centeredAffineFourMobiusDistinctShiftPairs b r c ell H).card

/-- At lag ell the raw support shrinks linearly with the number of valid
centers. -/
theorem centeredFourDistinctRawSupportCount_le_lagSensitive
    (b r ell : ℕ) (H : Finset ℕ) :
    centeredFourDistinctRawSupportCount b r ell H ≤
      ((b + 1) - ell) * ((b + 1) * (b + 1)) := by
  unfold centeredFourDistinctRawSupportCount
  calc
    _ ≤ ∑ _c ∈ endpointValidCenterSetAtLag b ell,
        (b + 1) * (b + 1) := by
      apply Finset.sum_le_sum
      intro c hc
      have hcRange :
          c < b + 1 := (Finset.mem_filter.mp hc).1 |> Finset.mem_range.mp
      have hcell :
          c + ell < b + 1 := (Finset.mem_filter.mp hc).2
      exact card_centeredAffineFourMobiusDistinctShiftPairs_le_endpointSquare
        H hcRange hcell
    _ = ((b + 1) - ell) * ((b + 1) * (b + 1)) := by
      simp [card_endpointValidCenterSetAtLag]

theorem centeredFourDistinctRawSupportCount_eq_zero_of_endpoint_lt_lag
    {b r ell : ℕ} (H : Finset ℕ)
    (h : b < ell) :
    centeredFourDistinctRawSupportCount b r ell H = 0 := by
  have hz : (b + 1) - ell = 0 := by omega
  have hle := centeredFourDistinctRawSupportCount_le_lagSensitive b r ell H
  rw [hz] at hle
  omega

/-- Raw support ceiling at square-modulus winding lag z*d^2. -/
def centeredFourDistinctWindingRawSupportCeiling
    (b d z : ℕ) : ℕ :=
  ((b + 1) - z * (d * d)) * ((b + 1) * (b + 1))

theorem centeredFourDistinctRawSupportCount_le_windingCeiling
    (b d r z : ℕ) (H : Finset ℕ) :
    centeredFourDistinctRawSupportCount b r (z * (d * d)) H ≤
      centeredFourDistinctWindingRawSupportCeiling b d z := by
  exact centeredFourDistinctRawSupportCount_le_lagSensitive
    b r (z * (d * d)) H

/-- Deterministic winding sum of the lag-sensitive raw support ceilings. -/
def centeredFourDistinctWindingRawSupportCeilingSum
    (b d : ℕ) : ℕ :=
  ∑ z ∈ Finset.Icc 1 (centeredWindingRadius b d),
    centeredFourDistinctWindingRawSupportCeiling b d z

/-- The lag-sensitive winding ceiling is no worse than the previous endpoint
cube times the exact winding radius. -/
theorem centeredFourDistinctWindingRawSupportCeilingSum_le
    (b d : ℕ) :
    centeredFourDistinctWindingRawSupportCeilingSum b d ≤
      centeredWindingRadius b d *
        ((b + 1) * ((b + 1) * (b + 1))) := by
  unfold centeredFourDistinctWindingRawSupportCeilingSum
  calc
    _ ≤ ∑ _z ∈ Finset.Icc 1 (centeredWindingRadius b d),
        (b + 1) * ((b + 1) * (b + 1)) := by
      apply Finset.sum_le_sum
      intro z hz
      unfold centeredFourDistinctWindingRawSupportCeiling
      have hsub : (b + 1) - z * (d * d) ≤ b + 1 := Nat.sub_le ..
      nlinarith
    _ ≤ centeredWindingRadius b d *
        ((b + 1) * ((b + 1) * (b + 1))) := by
      simp only [Finset.sum_const, nsmul_eq_mul]
      have hcard :
          (Finset.Icc 1 (centeredWindingRadius b d)).card ≤
            centeredWindingRadius b d := by
        simp
      exact Nat.mul_le_mul_right _ hcard

structure RegularCenteredFourDistinctLagSupportSourceData where
  theoremStatement : Prop
  exactValidCenterCarrierMatched : Prop
  validCenterCardinalityMatched : Prop
  lagSensitiveSupportBoundMatched : Prop
  zeroBeyondEndpointMatched : Prop
  squareModulusWindingSpecializationMatched : Prop
  windingSupportSumDefined : Prop
  analyticCancellationNotAsserted : Prop

def RegularCenteredFourDistinctLagSupportSource
    (d : RegularCenteredFourDistinctLagSupportSourceData) : Prop :=
  d.theoremStatement ∧
  d.exactValidCenterCarrierMatched ∧
  d.validCenterCardinalityMatched ∧
  d.lagSensitiveSupportBoundMatched ∧
  d.zeroBeyondEndpointMatched ∧
  d.squareModulusWindingSpecializationMatched ∧
  d.windingSupportSumDefined ∧
  d.analyticCancellationNotAsserted

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
