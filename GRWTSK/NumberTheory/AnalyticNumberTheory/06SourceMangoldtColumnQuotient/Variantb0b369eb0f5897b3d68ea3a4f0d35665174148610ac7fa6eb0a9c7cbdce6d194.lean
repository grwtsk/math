import SourceJointMangoldtColumn

/-!
# Literal quotient support of the joint Mangoldt column

Research preparation, UNCOMPILED. The actual two long inventories and centered
coefficient remain fixed. The quotient endpoint is included, and the full
original centered diagonal and independent main term are retained.
-/

namespace FormalResearch.RiemannHypothesis.SourceMangoldtColumnQuotient

open ArithmeticFunction
open scoped InnerProductSpace
open SourceVaughanHankel SourceJointMangoldtColumn
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel EstimatePlainKernel
open EstimateBetaCentering

noncomputable section

/-- Each actual column above the product-support quotient vanishes termwise. -/
theorem actual_mangoldt_column_eq_zero_of_quotient_lt (A : ℝ) (hA : 1 ≤ A)
    (k : ℕ) (hk : sourceKernelCutoff A / (vaughanCutoff A + 1) < k) :
    (∑ m ∈ longInventory A,
      vonMangoldt m * sourcePlainWeight A ((m * k : ℕ) : ℝ)) = 0 := by
  classical
  have hprod : sourceKernelCutoff A < k * (vaughanCutoff A + 1) :=
    (Nat.div_lt_iff_lt_mul (by omega : 0 < vaughanCutoff A + 1)).1 hk
  apply Finset.sum_eq_zero
  intro m hm
  have hmlo : vaughanCutoff A + 1 ≤ m := by
    have := (Finset.mem_Ioc.mp hm).1
    omega
  have hmul := Nat.mul_le_mul_left k hmlo
  have hcut : sourceKernelCutoff A < m * k :=
    hprod.trans_le (by simpa only [Nat.mul_comm] using hmul)
  rw [sourcePlainWeight_zero_of_cutoff_lt A hA (m * k) hcut]
  exact mul_zero _

/-- The quotient ceiling is inclusive, including its possible final B(K)R(K). -/
theorem mangoldt_inner_eq_quotient_truncated_column_increments (A : ℝ) (hA : 1 ≤ A) :
    ⟪mangoldtL2 A hA, centeredMobiusReflectedL2 A hA⟫_ℝ =
      let U := vaughanCutoff A
      let N := sourceKernelCutoff A
      let K := N / (U + 1)
      let B : ℕ → ℝ := fun k => ∑ n ∈ Finset.Ioc U k, centeredBeta U n
      let R : ℕ → ℝ := fun k =>
        ∑ m ∈ longInventory A, vonMangoldt m * sourcePlainWeight A ((m * k : ℕ) : ℝ)
      ∑ k ∈ Finset.Ioc U K, B k * (R k - R (k + 1)) := by
  classical
  let U := vaughanCutoff A
  let N := sourceKernelCutoff A
  let K := N / (U + 1)
  let B : ℕ → ℝ := fun k => ∑ n ∈ Finset.Ioc U k, centeredBeta U n
  let R : ℕ → ℝ := fun k =>
    ∑ m ∈ longInventory A, vonMangoldt m * sourcePlainWeight A ((m * k : ℕ) : ℝ)
  have hU : 1 ≤ U := vaughanCutoff_pos A hA
  have hUN : U ≤ N := vaughanCutoff_le_sourceKernelCutoff A hA
  have hN : 0 < N := by omega
  have hK : K < N := Nat.div_lt_self hN (by omega : 1 < U + 1)
  have hsub : Finset.Ioc U K ⊆ Finset.Ico (U + 1) N := by
    intro k hk
    rcases Finset.mem_Ioc.mp hk with ⟨hu, hk⟩
    exact Finset.mem_Ico.mpr ⟨by omega, hk.trans_lt hK⟩
  rw [mangoldt_inner_eq_centered_prefix_column_increments A hA]
  change (∑ k ∈ Finset.Ico (U + 1) N, B k * (R k - R (k + 1))) =
    ∑ k ∈ Finset.Ioc U K, B k * (R k - R (k + 1))
  symm
  apply Finset.sum_subset hsub
  intro k hk hnot
  have hu : U < k := by have := (Finset.mem_Ico.mp hk).1; omega
  have htail : K < k := by
    by_contra hn
    exact hnot (Finset.mem_Ioc.mpr ⟨hu, by omega⟩)
  have hzero : R k = 0 := actual_mangoldt_column_eq_zero_of_quotient_lt A hA k htail
  have hsucc : R (k + 1) = 0 :=
    actual_mangoldt_column_eq_zero_of_quotient_lt A hA (k + 1) (by
      change K < k + 1
      omega)
  rw [hzero, hsucc, sub_self, mul_zero]

/-- The literal covariance remainder retains the complete original compensation. -/
theorem covariance_sub_main_eq_quotient_truncated_column_increments
    (A : ℝ) (hA : 1 ≤ A) :
    VaughanOperatorReview.covarianceOperatorValue A / 2 -
        SourceSamplingLedger.independentMainTerm A =
      let U := vaughanCutoff A
      let N := sourceKernelCutoff A
      let K := N / (U + 1)
      let B : ℕ → ℝ := fun k => ∑ n ∈ Finset.Ioc U k, centeredBeta U n
      let R : ℕ → ℝ := fun k =>
        ∑ m ∈ longInventory A, vonMangoldt m * sourcePlainWeight A ((m * k : ℕ) : ℝ)
      (∑ k ∈ Finset.Ioc U K, B k * (R k - R (k + 1))) -
        centeredDeletedDiagonal A - SourceSamplingLedger.independentMainTerm A := by
  rw [covarianceOperator_half_eq_pairing_sub_diagonal A hA]
  have hj := mangoldt_inner_eq_quotient_truncated_column_increments A hA
  rw [← sourceHankelPairing_eq_l2_inner A hA] at hj
  exact congrArg (fun J : ℝ =>
    J - centeredDeletedDiagonal A - SourceSamplingLedger.independentMainTerm A) hj

end
end FormalResearch.RiemannHypothesis.SourceMangoldtColumnQuotient
