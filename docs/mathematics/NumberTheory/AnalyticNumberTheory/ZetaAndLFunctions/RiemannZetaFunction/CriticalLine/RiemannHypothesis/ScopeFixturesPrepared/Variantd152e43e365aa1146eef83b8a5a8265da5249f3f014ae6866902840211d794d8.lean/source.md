# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ScopeFixturesPrepared.Variantd152e43e365aa1146eef83b8a5a8265da5249f3f014ae6866902840211d794d8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b5f4ec22bc1e95d992f6db61575b660d27275e7c` · SHA-256 `d152e43e365aa1146eef83b8a5a8265da5249f3f014ae6866902840211d794d8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceMangoldtColumnQuotient
import SourceUpperBoundaryEvent

/-!
UNCOMPILED hostile controls. Generic finite columns are explicitly synthetic;
state-event and unit-source controls reuse the recorded actual review adapters.
-/

namespace FormalResearch.RiemannHypothesis.MangoldtColumnQuotientFixtures

open ArithmeticFunction
open scoped InnerProductSpace
open SourceVaughanHankel SourceMangoldtColumnQuotient
open SourceUpperBoundaryEvent SourceCompensatedReadout SourceReflectionArithmetic
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel EstimatePlainKernel
open EstimateBetaCentering

noncomputable section

private def b3 (k : ℕ) : ℝ := ∑ n ∈ Finset.Ioc 3 k, centeredBeta 3 n

private theorem short_three : Finset.Icc 1 3 = {1, 2, 3} := by decide

private theorem mu_two : (moebius 2 : ℝ) = -1 := by
  exact_mod_cast moebius_apply_prime Nat.prime_two

private theorem mu_three : (moebius 3 : ℝ) = -1 := by
  exact_mod_cast moebius_apply_prime (by norm_num : Nat.Prime 3)

private theorem b3_four : b3 4 = 1 / 6 := by
  unfold b3
  rw [centeredBeta_interval_eq_discrepancy 3 3 4 (by omega) le_rfl (by omega)]
  norm_num [floorDiscrepancy, short_three, mu_two, mu_three]

private theorem b3_five : b3 5 = -2 / 3 := by
  unfold b3
  rw [centeredBeta_interval_eq_discrepancy 3 3 5 (by omega) le_rfl (by omega)]
  norm_num [floorDiscrepancy, short_three, mu_two, mu_three]

theorem actual_tail_column_zero (A : ℝ) (hA : 1 ≤ A) (k : ℕ)
    (hk : sourceKernelCutoff A / (vaughanCutoff A + 1) < k) :
    (∑ m ∈ longInventory A,
      vonMangoldt m * sourcePlainWeight A ((m * k : ℕ) : ℝ)) = 0 := by
  exact actual_mangoldt_column_eq_zero_of_quotient_lt A hA k hk

theorem actual_quotient_successor_zero (A : ℝ) (hA : 1 ≤ A) :
    (∑ m ∈ longInventory A,
      vonMangoldt m * sourcePlainWeight A
        ((m * (sourceKernelCutoff A / (vaughanCutoff A + 1) + 1) : ℕ) : ℝ)) = 0 := by
  exact actual_mangoldt_column_eq_zero_of_quotient_lt A hA _ (by omega)

/-- Only R in this control is synthetic; the two centered prefix values are actual. -/
theorem dropped_quotient_endpoint_changes_sum :
    let R : ℕ → ℝ := fun k => if k ≤ 5 then 1 else 0
    (∑ k ∈ Finset.Ioc 3 5, b3 k * (R k - R (k + 1))) = -2 / 3 ∧
      (∑ k ∈ Finset.Ico 4 5, b3 k * (R k - R (k + 1))) = 0 := by
  have hI : Finset.Ioc 3 5 = {4, 5} := by decide
  have hJ : Finset.Ico 4 5 = {4} := by decide
  norm_num [hI, hJ, b3_five]

theorem divisible_product_endpoint_is_retained :
    (20 : ℕ) / (3 + 1) = 5 ∧ 4 * 5 ≤ 20 ∧ 20 < 4 * 6 := by decide

theorem nondivisible_product_endpoint_is_retained :
    (21 : ℕ) / (3 + 1) = 5 ∧ 4 * 5 ≤ 21 ∧ 21 < 4 * 6 := by decide

theorem quotient_equal_lower_has_empty_interval :
    Finset.Ioc 3 ((12 : ℕ) / (3 + 1)) = ∅ := by decide

theorem quotient_below_lower_has_empty_interval :
    Finset.Ioc 3 ((10 : ℕ) / (3 + 1)) = ∅ := by decide

theorem original_empty_axis_and_increment_interval :
    Finset.Ioc 3 3 = ∅ ∧ Finset.Ico (3 + 1) 3 = ∅ := by decide

theorem inclusive_quotient_inventory_differs_from_original_upper :
    5 ∈ Finset.Ioc 3 ((20 : ℕ) / 4) ∧
      6 ∉ Finset.Ioc 3 ((20 : ℕ) / 4) ∧ 19 ∈ Finset.Ico 4 20 := by decide

theorem centered_prefix_changes_sign : b3 4 = 1 / 6 ∧ b3 5 = -2 / 3 := by
  exact ⟨b3_four, b3_five⟩

theorem raw_beta_does_not_replace_centered_prefix :
    (∑ n ∈ Finset.Ioc 3 4, beta 3 n) = 0 ∧ b3 4 = 1 / 6 := by
  constructor
  · rw [beta_interval_eq_quotients 3 3 4 (by omega) le_rfl (by omega)]
    norm_num [short_three, mu_two, mu_three]
  · exact b3_four

theorem actual_state_jump_with_unchanged_complete_readout :
    0 < ‖mangoldtAt boundaryScale (by have := boundaryScale_one_le; linarith) 1 11 -
      mangoldtAt boundaryScale (by have := boundaryScale_one_le; linarith) 1 10‖ ∧
    readoutAt boundaryScale (by have := boundaryScale_one_le; linarith) 1 11 =
      readoutAt boundaryScale (by have := boundaryScale_one_le; linarith) 1 10 := by
  exact ⟨boundaryScale_mangoldt_jump_norm_pos, boundaryScale_readout_ten_eleven⟩

theorem normalized_original_source_and_full_baseline (A : ℝ) (hA : 1 ≤ A) :
    ‖sourceL2 A (by linarith)‖ ^ 2 = 1 ∧
      sourceL2 A (by linarith) =
        SourcePureRotationObstruction.originalSourceL2 A (by linarith) ∧
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
  exact ⟨sourceL2_norm_sq A hA, sourceL2_eq_originalSourceL2 A (by linarith),
    covariance_sub_main_eq_quotient_truncated_column_increments A hA⟩

/-- A support ceiling alone is no uniform bound for arbitrary signed columns and coefficients. -/
theorem generic_support_ceiling_supplies_no_uniform_bound (D : ℝ) :
    ∃ B R : ℕ → ℝ, (∀ k : ℕ, 5 < k → R k = 0) ∧
      D < ∑ k ∈ Finset.Ioc 3 5, B k * (R k - R (k + 1)) := by
  let B : ℕ → ℝ := fun k => if k = 5 then D + 1 else 0
  let R : ℕ → ℝ := fun k => if k = 5 then 1 else 0
  refine ⟨B, R, ?_, ?_⟩
  · intro k hk
    simp only [R, if_neg (by omega : k ≠ 5)]
  · have hI : Finset.Ioc 3 5 = {4, 5} := by decide
    simp [hI, B, R]

end
end FormalResearch.RiemannHypothesis.MangoldtColumnQuotientFixtures
```
