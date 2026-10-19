import SourceJointMangoldtColumn

/-! Optional future row restriction, UNCOMPILED and outside the fixed three-root unit. -/

namespace FormalResearch.RiemannHypothesis.SourceMangoldtRowQuotientFuture

open ArithmeticFunction
open SourceVaughanHankel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel EstimatePlainKernel

noncomputable section

/-- The quotient endpoint on the unchanged literal Mangoldt row is inclusive. -/
theorem actual_mangoldt_column_eq_quotient_row (A : ℝ) (hA : 1 ≤ A) (k : ℕ)
    (hk : vaughanCutoff A + 1 ≤ k) :
    (∑ m ∈ longInventory A,
      vonMangoldt m * sourcePlainWeight A ((m * k : ℕ) : ℝ)) =
      ∑ m ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A / k),
        vonMangoldt m * sourcePlainWeight A ((m * k : ℕ) : ℝ) := by
  classical
  have hkpos : 0 < k := by omega
  have hsub : Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A / k) ⊆
      longInventory A := by
    intro m hm
    rcases Finset.mem_Ioc.mp hm with ⟨hu, hm⟩
    exact Finset.mem_Ioc.mpr ⟨hu, hm.trans (Nat.div_le_self _ _)⟩
  symm
  apply Finset.sum_subset hsub
  intro m hm hnot
  have hu := (Finset.mem_Ioc.mp hm).1
  have hdiv : sourceKernelCutoff A / k < m := by
    by_contra hn
    exact hnot (Finset.mem_Ioc.mpr ⟨hu, by omega⟩)
  have hcut : sourceKernelCutoff A < m * k := (Nat.div_lt_iff_lt_mul hkpos).1 hdiv
  rw [sourcePlainWeight_zero_of_cutoff_lt A hA (m * k) hcut]
  exact mul_zero _

end
end FormalResearch.RiemannHypothesis.SourceMangoldtRowQuotientFuture
