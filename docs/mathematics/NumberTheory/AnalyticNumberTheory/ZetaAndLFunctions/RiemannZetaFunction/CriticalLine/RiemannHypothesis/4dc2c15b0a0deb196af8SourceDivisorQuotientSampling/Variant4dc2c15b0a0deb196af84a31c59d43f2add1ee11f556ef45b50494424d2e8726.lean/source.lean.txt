import SourceDivisorCounterterms
import FormalResearch.RiemannHypothesis.SourceSamplingPointwise

/-!
# Actual divisor multiples: quotient sampling with the deleted diagonal retained

AI attribution: OpenAI Codex. Every divisor block uses the original open-closed
long inventory and literal natural quotient endpoints. The unequal-index
condition is restored by subtracting its actual divisible diagonal. A full
positive-axis sample has the proved second-order source remainder; transporting
its retained main row to the compensated target is an additional signed task.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceDivisorQuotientSampling

open ArithmeticFunction
open scoped BigOperators
open SourceVaughanHankel SourceDivisorCounterterms SourceDivisorClassification
open SourcePositiveSampling SourceSamplingTaylor SourceSamplingPointwise
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel EstimatePlainKernel

noncomputable section

/-- The original multiples sector is exactly its literal quotient row minus the deleted diagonal. -/
theorem divisorMultiplesInteraction_eq_quotient_sub_diagonal
    (A : ℝ) (d : ℕ) (hd : 0 < d) :
    divisorMultiplesInteraction A d =
      (∑ m ∈ longInventory A, vonMangoldt m *
        (∑ j ∈ Finset.Icc (vaughanCutoff A / d + 1) (sourceKernelCutoff A / d),
          sourcePlainWeight A ((m * (d * j) : ℕ) : ℝ))) -
      ∑ m ∈ longInventory A,
        if d ∣ m then vonMangoldt m * sourcePlainWeight A ((m * m : ℕ) : ℝ) else 0 := by
  classical
  unfold divisorMultiplesInteraction
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  let f : ℕ → ℝ := fun n =>
    if d ∣ n then vonMangoldt m * sourcePlainWeight A ((m * n : ℕ) : ℝ) else 0
  have he : (∑ n ∈ (longInventory A).filter (fun n => n ≠ m), f n) =
      (∑ n ∈ longInventory A, f n) - f m := by
    rw [Finset.sum_filter]
    have ht : (∑ n ∈ longInventory A, if n ≠ m then f n else 0) =
        ∑ n ∈ longInventory A, (f n - if n = m then f n else 0) := by
      apply Finset.sum_congr rfl
      intro n _
      by_cases hn : n = m <;> simp [hn]
    rw [ht, Finset.sum_sub_distrib]
    simp only [Finset.sum_ite_eq', hm, if_true]
  rw [he]
  congr 1
  calc
    (∑ n ∈ longInventory A, f n) = vonMangoldt m *
        (∑ n ∈ longInventory A,
          if d ∣ n then sourcePlainWeight A ((m * n : ℕ) : ℝ) else 0) := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro n _
      dsimp only [f]
      split_ifs <;> simp
    _ = _ := by
      rw [longInventory, sum_multiples_eq_quotient_interval _ _ d hd]

/-- The original divisor remainder keeps the entire extracted quotient and divisible diagonal. -/
theorem divisorRemainder_eq_quotient_sampling
    (A : ℝ) (d : ℕ) (hd : 0 < d) :
    divisorRemainder A d =
      -(∑ m ∈ longInventory A, vonMangoldt m *
        (∑ j ∈ Finset.Icc (vaughanCutoff A / d + 1) (sourceKernelCutoff A / d),
          sourcePlainWeight A ((m * (d * j) : ℕ) : ℝ))) +
      (∑ m ∈ longInventory A,
        if d ∣ m then vonMangoldt m * sourcePlainWeight A ((m * m : ℕ) : ℝ) else 0) +
      sourceLogSamplingMainTerm A d -
      ∑ m ∈ Finset.Icc 1 (vaughanCutoff A),
        vonMangoldt m * sourcePlainSamplingMainTerm A ((d * m : ℕ) : ℝ) := by
  unfold divisorRemainder
  rw [divisorMultiplesInteraction_eq_quotient_sub_diagonal A d hd]
  ring

private theorem actual_multiple_eq_plain_sample
    (A : ℝ) {m d j : ℕ} (hm : 0 < m) (hd : 0 < d) (hj : 0 < j) :
    sourcePlainWeight A ((m * (d * j) : ℕ) : ℝ) =
      plainProfile A ((d * m : ℕ) : ℝ) (j : ℝ) := by
  have hk : 0 < ((d * m : ℕ) : ℝ) := by exact_mod_cast Nat.mul_pos hd hm
  have hjr : 0 < (j : ℝ) := by exact_mod_cast hj
  rw [plainProfile_eq_of_pos A _ hjr, sourcePlainSamplingTerm_eq_source_weight A hk hjr]
  simp only [Nat.cast_mul]
  congr 1
  ring

/-- The full actual multiplied sample retains its independent main term and exact A^-2 error. -/
theorem actual_full_multiple_sample_sub_main_abs_le
    (A : ℝ) (hA : 1 ≤ A) (m d : ℕ) (hm : 0 < m) (hd : 0 < d) :
    |(∑ j ∈ Finset.Icc 1 (sourceKernelCutoff A),
      sourcePlainWeight A ((m * (d * j) : ℕ) : ℝ)) -
        sourcePlainSamplingMainTerm A ((d * m : ℕ) : ℝ)| ≤
      16 * (162826 / 7623 : ℝ) / (A ^ 2 * Real.sqrt ((d * m : ℕ) : ℝ)) := by
  have hs : (∑ j ∈ Finset.Icc 1 (sourceKernelCutoff A),
      sourcePlainWeight A ((m * (d * j) : ℕ) : ℝ)) =
      ∑ j ∈ Finset.Icc 1 (sourceKernelCutoff A),
        plainProfile A ((d * m : ℕ) : ℝ) (j : ℝ) := by
    apply Finset.sum_congr rfl
    intro j hj
    exact actual_multiple_eq_plain_sample A hm hd (by have := (Finset.mem_Icc.mp hj).1; omega)
  rw [hs]
  exact plainProfile_sum_sub_mainTerm_abs_le hA (by
    exact_mod_cast (by nlinarith : 1 ≤ d * m))

end
end FormalResearch.RiemannHypothesis.SourceDivisorQuotientSampling
