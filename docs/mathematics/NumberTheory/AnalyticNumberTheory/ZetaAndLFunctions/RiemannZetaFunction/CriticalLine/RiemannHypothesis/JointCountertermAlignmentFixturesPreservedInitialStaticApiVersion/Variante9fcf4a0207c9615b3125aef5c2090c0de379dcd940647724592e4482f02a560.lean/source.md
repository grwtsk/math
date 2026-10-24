# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.JointCountertermAlignmentFixturesPreservedInitialStaticApiVersion.Variante9fcf4a0207c9615b3125aef5c2090c0de379dcd940647724592e4482f02a560

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `732cbcd692f6bab5d579f4035f01099da16e7a60` · SHA-256 `e9fcf4a0207c9615b3125aef5c2090c0de379dcd940647724592e4482f02a560`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceJointCountertermAlignment
import FormalResearch.RiemannHypothesis.SourceCorrelationSignChange

/-!
# Mean cancellation scope and hostile controls

UNCOMPILED fixtures. Scalar controls test signs and omitted terms, not an actual
arithmetic estimate. Actual centered-prefix and correlation controls are stated
separately. No positivity or uniform signed witness follows from this adapter.
-/

namespace FormalResearch.RiemannHypothesis.JointCountertermAlignmentFixtures

open ArithmeticFunction MeasureTheory
open scoped BigOperators Interval
open SourceJointCountertermAlignment SourceJointMangoldtWork SourceVaughanHankel
open SourceDivisorCounterterms SourceMangoldtAbel SourceCorrelationSignChange
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource EstimateSourceMobiusKernel EstimatePlainKernel
open EstimateVaughanIdentity EstimateBetaCentering EstimateMertensAbel

noncomputable section

private def B (U k : ℕ) : ℝ := ∑ n ∈ Finset.Ioc U k, centeredBeta U n

private theorem inventory_three : Finset.Icc 1 3 = {1, 2, 3} := by decide

private theorem mobius_two : (moebius 2 : ℝ) = -1 := by
  exact_mod_cast moebius_apply_prime Nat.prime_two

private theorem mobius_three : (moebius 3 : ℝ) = -1 := by
  exact_mod_cast moebius_apply_prime (by norm_num : Nat.Prime 3)

/-- The global baseline is part of the original independent main term. -/
theorem original_main_term_keeps_global_baseline (A : ℝ) :
    SourceSamplingLedger.independentMainTerm A = globalBaseline A +
      ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d * divisorCounterterm A d :=
  independentMainTerm_eq_baseline_add_divisors A

/-- The same reciprocal mean cancels once against the same divisor counterterm. -/
theorem original_divisor_mean_cancels_once (A : ℝ) (hA : 1 ≤ A) (d : ℕ) :
    divisorInteraction A d - divisorCounterterm A d = divisorRemainder A d :=
  divisorInteraction_sub_counterterm A hA d

/-- The divisor-one remainder is minus its counterterm, rather than an erased zero. -/
theorem divisor_one_remainder_keeps_counterterm (A : ℝ) (hA : 1 ≤ A) :
    divisorRemainder A 1 = -divisorCounterterm A 1 := divisorRemainder_one A hA

/-- The full centered diagonal includes the actual finite mean correction. -/
theorem centered_diagonal_keeps_mean (A : ℝ) (hA : 1 ≤ A) :
    centeredDeletedDiagonal A =
      EstimateVaughanDiagonalArithmetic.typeTwoDiagonal A +
        alpha (vaughanCutoff A) * deletedDiagonalMean A :=
  centeredDeletedDiagonal_eq_old_diagonal_add_centering A hA

/-- The physical equal-index term is deleted. -/
theorem physical_equal_index_deleted (z : ℝ) :
    (if (2 : ℕ) = 2 then 0 else z) = 0 := by simp

/-- A distinct arithmetic index remains; no divisor-fiber diagonal is substituted. -/
theorem physical_distinct_index_retained (z : ℝ) :
    (if (3 : ℕ) = 2 then 0 else z) = z := by simp

/-- The original centered prefix is positive at one literal arithmetic point. -/
theorem actual_centered_prefix_positive : B 3 4 = 1 / 6 := by
  unfold B
  rw [centeredBeta_interval_eq_discrepancy 3 3 4 (by omega) le_rfl (by omega)]
  norm_num [floorDiscrepancy, inventory_three, mobius_two, mobius_three]

/-- That same arithmetic prefix is negative at its next literal point. -/
theorem actual_centered_prefix_negative : B 3 5 = -2 / 3 := by
  unfold B
  rw [centeredBeta_interval_eq_discrepancy 3 3 5 (by omega) le_rfl (by omega)]
  norm_num [floorDiscrepancy, inventory_three, mobius_two, mobius_three]

/-- The actual source correlation also has a negative value in its positive half-support. -/
theorem actual_correlation_is_not_pointwise_positive (A : ℝ) (hA : 0 < A) :
    ∃ t : ℝ, 0 < t ∧ t < 2 * A ∧ sourceCorrelation explicitSecondDerivative A t < 0 :=
  sourceCorrelation_exists_neg_in_half_support hA

/-- Empty strict inventories give the literal zero test, without deleting compensation. -/
theorem empty_strict_inventory_test_zero (A t : ℝ)
    (hK : sourceKernelCutoff A / (vaughanCutoff A + 1) ≤ vaughanCutoff A + 1) :
    jointMangoldtTestProfile A t = 0 := by
  simp only [jointMangoldtTestProfile]
  rw [Finset.Ico_eq_empty_of_le hK, Finset.sum_empty]

/-- A synthetic lower boundary has the minus sign in the aligned readout. -/
theorem lower_boundary_sign_is_retained :
    (20 - 3 - 2 - 5 - 7 + 11 : ℝ) = 14 ∧
      (20 + 3 - 2 - 5 - 7 + 11 : ℝ) ≠ 14 := by norm_num

/-- A synthetic counterterm is subtracted once; the endpoint is added once. -/
theorem counterterm_and_endpoint_signs_are_retained :
    (20 - 3 - 2 - 5 - 7 + 11 : ℝ) ≠ (20 - 3 - 2 - 5 + 7 + 11 : ℝ) ∧
      (20 - 3 - 2 - 5 - 7 + 11 : ℝ) ≠ (20 - 3 - 2 - 5 - 7 : ℝ) := by norm_num

/-- A one-sided upper estimate alone neither bounds absolute value nor supplies positivity. -/
theorem upper_bound_is_not_absolute_or_positive :
    (-5 : ℝ) ≤ 0 ∧ ¬(0 : ℝ) ≤ -5 ∧ ¬|(-5 : ℝ)| ≤ 0 := by norm_num

/-- A scalar mean cancellation is not a bound on the remaining signed value. -/
theorem mean_cancellation_supplies_no_synthetic_upper_bound (V : ℝ) :
    (7 + V - 7 : ℝ) = V := by ring

end
end FormalResearch.RiemannHypothesis.JointCountertermAlignmentFixtures
```
