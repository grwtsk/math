/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported Mathlib results retain their original credits and Apache-2.0 license.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Moebius.CenteredLowGCDCoefficients
import Mathlib.Tactic

/-!
# Ordered correlation form of the centered low-gcd bilinear

The complete four-channel modulus bilinear is reindexed as an ordered pair sum.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators ArithmeticFunction ArithmeticFunction.Moebius

namespace GRWTSK.NumberTheory.Moebius.CenteredLowGCD

open ArithmeticFunction

/-- Ordered weighted pair correlation on the complete octave square. -/
def orderedCenteredLowGCDCorrelation
    (X Y : ℕ) (w : ℕ → ℝ) : ℝ :=
  ∑ n ∈ octaveIndexSet X,
    ∑ q ∈ octaveIndexSet X,
      w n * w q * centeredLowGCDPairKernel X Y n q


/-- The genuine bilinear form is exactly the ordered weighted pointwise genuine
pair kernel. -/
theorem genuineLowGCDBilinear_eq_ordered_pair_sum
    (X Y : ℕ) (w : ℕ → ℝ) :
    genuineLowGCDBilinear X Y w =
      ∑ n ∈ octaveIndexSet X,
        ∑ q ∈ octaveIndexSet X,
          w n * w q * genuineLowGCDPairKernel X Y n q := by
  unfold genuineLowGCDBilinear genuineModulusCoefficient
    genuineLowGCDPairKernel
  simp_rw [Finset.sum_mul, Finset.mul_sum, Finset.ite_sum_zero]
  rw [Finset.sum_comm_cycle]
  apply Finset.sum_congr rfl
  intro n hn
  rw [Finset.sum_comm_cycle]
  apply Finset.sum_congr rfl
  intro q hq
  apply Finset.sum_congr rfl
  intro d hd
  apply Finset.sum_congr rfl
  intro e he
  by_cases hdn : d ∣ n
  · by_cases heq : e ∣ q
    · by_cases hg : Nat.gcd d e ≤ Y
      · simp only [hdn, heq, hg, and_self, if_true]
        ring
      · simp [hg]
    · simp [heq]
  · simp [hdn]


/-- Ordered pair reindexing with all four centered channels retained. -/
theorem orderedCenteredLowGCDCorrelation_eq_bilinear
    {X Y : ℕ}
    (hX : 0 < X)
    (hY : 1 ≤ Y)
    (w : ℕ → ℝ) :
    orderedCenteredLowGCDCorrelation X Y w =
      centeredLowGCDBilinear X Y w := by
  rw [centeredLowGCDBilinear_eq_four_channel hX hY]
  unfold centeredLowGCDChannelBilinear
    orderedCenteredLowGCDCorrelation
    centeredLowGCDPairKernel
  simp_rw [mul_add, mul_sub, Finset.sum_add_distrib, Finset.sum_sub_distrib]
  have hgg :=
    (genuineLowGCDBilinear_eq_ordered_pair_sum X Y w).symm
  have hleft :
      (∑ n ∈ octaveIndexSet X,
        ∑ q ∈ octaveIndexSet X,
          w n * w q * genuineMobiusLogAtom X q) =
      anchorMass X w * genuineCoefficientMass X w := by
    rw [genuineCoefficientMass_eq_weighted_atom]
    unfold anchorMass
    rw [Finset.sum_mul]
    apply Finset.sum_congr rfl
    intro n hn
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro q hq
    ring
  have hright :
      (∑ n ∈ octaveIndexSet X,
        ∑ q ∈ octaveIndexSet X,
          w n * w q * genuineMobiusLogAtom X n) =
      genuineCoefficientMass X w * anchorMass X w := by
    rw [genuineCoefficientMass_eq_weighted_atom]
    unfold anchorMass
    rw [Finset.sum_mul]
    apply Finset.sum_congr rfl
    intro n hn
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro q hq
    ring
  have hanchor :
      (∑ n ∈ octaveIndexSet X,
        ∑ q ∈ octaveIndexSet X,
          w n * w q * 1) =
      anchorMass X w ^ 2 := by
    unfold anchorMass
    rw [pow_two, Finset.sum_mul_sum]
    apply Finset.sum_congr rfl
    intro n hn
    apply Finset.sum_congr rfl
    intro q hq
    ring
  rw [← hgg, hleft, hright, hanchor]


end GRWTSK.NumberTheory.Moebius.CenteredLowGCD
