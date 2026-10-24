# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.02ActualMixedWorkFubiniFixtures.Varianteaa63773eab08b88e84085a71413216717f95d5b9a339df25576a2dab931515e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fc859906f0c6096376155f99f92282a9ca89b989` · SHA-256 `eaa63773eab08b88e84085a71413216717f95d5b9a339df25576a2dab931515e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualMixedWorkFubini

/-!
Twenty UNCOMPILED hostile and scope controls. Scalar opposite-row/sign fixtures
are synthetic controls, not claims about actual arithmetic coefficients. The
actual work formula leaves its original compensation terms to PRIVATE34.
AI attribution: OpenAI Codex source preparation; native verification is held.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceActualMixedWorkFubiniFixtures

open MeasureTheory Set
open scoped BigOperators Interval
open SourceActualMixedWorkFubini SourceJointMangoldtWork SourcePairing
open SourceMangoldtAbel SourceCorrelationCurvature
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity
open EstimateVaughanSource EstimateSourceMobiusKernel EstimateBetaCentering

noncomputable section

theorem actual_factorization_keeps_independent_rows (A : ℝ) (hA : 1 ≤ A) :
    let U := vaughanCutoff A
    let N := sourceKernelCutoff A
    let K := N / (U + 1)
    let B : ℕ → ℝ := fun k => ∑ n ∈ Finset.Ioc U k, centeredBeta U n
    let q : ℝ → ℝ := normalizedTest explicitSecondDerivative A
    let X0 : ℝ → ℝ := fun v => ∫ t in Real.log (U : ℝ)..Real.log (N : ℝ),
      mangoldtLogError t * Real.exp (t / 2) * q (v - t)
    let X1 : ℝ → ℝ := fun v => ∫ t in Real.log (U : ℝ)..Real.log (N : ℝ),
      mangoldtLogError t * Real.exp (t / 2) * deriv q (v - t)
    let Y0 : ℝ → ℝ := fun v => ∑ k ∈ Finset.Ico (U + 1) K,
      B k * (∫ u in (k : ℝ)..((k : ℝ) + 1), q (v + Real.log u) / (u * Real.sqrt u))
    let Y1 : ℝ → ℝ := fun v => ∑ k ∈ Finset.Ico (U + 1) K,
      B k * (∫ u in (k : ℝ)..((k : ℝ) + 1), deriv q (v + Real.log u) /
        (u * Real.sqrt u))
    SourceJointMangoldtWork.jointMangoldtErrorWork A =
      (∫ v : ℝ, X1 v * Y1 v) + (1 / 4 : ℝ) * (∫ v : ℝ, X0 v * Y0 v) := by
  exact jointMangoldtErrorWork_eq_actual_bilinear_profiles A hA

theorem actual_compensation_is_still_complete (A : ℝ) (hA : 1 ≤ A) :
    SourceStrictColumnInterior.strictColumnInterior A =
      (∫ t in Real.log (vaughanCutoff A : ℝ)..Real.log (sourceKernelCutoff A : ℝ),
        jointMangoldtTestProfile A t) -
      mangoldtLogError (Real.log (vaughanCutoff A : ℝ)) *
        jointMangoldtTestProfile A (Real.log (vaughanCutoff A : ℝ)) -
      jointMangoldtErrorWork A - SourceVaughanHankel.centeredDeletedDiagonal A -
      SourceSamplingLedger.independentMainTerm A :=
  strictColumnInterior_eq_joint_mangoldt_error_work A hA

theorem empty_time_window_has_zero_profile (r : ℝ → ℝ) (l v : ℝ) :
    (∫ t in l..l, mangoldtLogError t * Real.exp (t / 2) * r (v - t)) = 0 := by
  simp

theorem empty_strict_inventory_keeps_zero_test (A t : ℝ)
    (hK : sourceKernelCutoff A / (vaughanCutoff A + 1) ≤ vaughanCutoff A + 1) :
    jointMangoldtTestProfile A t = 0 := by
  simp only [jointMangoldtTestProfile]
  rw [Finset.Ico_eq_empty_of_le hK, Finset.sum_empty]

theorem actual_cell_denominator_is_positive {k u : ℝ} (hk : 0 < k)
    (hu : u ∈ Icc k (k + 1)) : 0 < u * Real.sqrt u := by
  exact mul_pos (hk.trans_le hu.1) (Real.sqrt_pos.mpr (hk.trans_le hu.1))

theorem continuous_left_overlap_is_not_discrete_left {U A : ℝ} (hU : 1 ≤ U) :
    Real.log U - A < Real.log (U + 1) - A := by
  have hp : 0 < U := by linarith
  exact sub_lt_sub_right (Real.log_lt_log hp (by linarith)) A

theorem reflected_lag_is_a_sum (t u : ℝ) :
    Real.log u - (-t) = t + Real.log u := by
  ring

theorem actual_source_only_needs_global_C1 {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 1 (normalizedTest explicitSecondDerivative A) :=
  normalizedTest_contDiff A hA

theorem actual_correlation_has_global_C2 {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 2 (sourceCorrelation explicitSecondDerivative A) :=
  sourceCorrelation_contDiff_two hA

theorem reflected_first_derivative_carries_minus {A : ℝ} (hA : 0 < A) (x : ℝ) :
    HasDerivAt (fun y => normalizedTest explicitSecondDerivative A (-y))
      (-deriv (normalizedTest explicitSecondDerivative A) (-x)) x :=
  reflectedTest_hasDerivAt hA x

theorem actual_curvature_at_zero_keeps_negative_square {A : ℝ} (hA : 0 < A) :
    deriv (deriv (sourceCorrelation explicitSecondDerivative A)) 0 =
      -(∫ v : ℝ, (deriv (normalizedTest explicitSecondDerivative A) v) ^ 2) := by
  rw [sourceCorrelation_second_deriv_eq_integral hA]
  simp only [sub_zero, pow_two]

theorem two_negative_sectors_give_plus (p q : ℝ) :
    -(-p - (1 / 4 : ℝ) * q) = p + (1 / 4 : ℝ) * q := by
  ring

theorem synthetic_unequal_rows_do_not_inherit_gram_sign :
    -(1 * (-1 : ℝ)) - (1 / 4 : ℝ) * (1 * (-1)) > 0 := by
  norm_num

theorem synthetic_one_sided_bound_does_not_bound_absolute_value :
    (-20 : ℝ) ≤ 0 ∧ ¬ |(-20 : ℝ)| ≤ 0 := by
  norm_num

theorem actual_time_row_keeps_literal_lower_endpoint (r : ℝ → ℝ) (A v : ℝ) :
    actualTimeProfile r A v =
      ∫ t in Real.log (vaughanCutoff A : ℝ)..Real.log (sourceKernelCutoff A : ℝ),
        mangoldtLogError t * Real.exp (t / 2) * r (v - t) := rfl

theorem actual_reflected_row_keeps_centered_prefix (r : ℝ → ℝ) (A v : ℝ) :
    actualReflectedProfile r A v =
      let U := vaughanCutoff A
      let N := sourceKernelCutoff A
      let K := N / (U + 1)
      ∑ k ∈ Finset.Ico (U + 1) K,
        (∑ n ∈ Finset.Ioc U k, centeredBeta U n) *
          (∫ u in (k : ℝ)..((k : ℝ) + 1), r (v + Real.log u) / (u * Real.sqrt u)) := rfl

theorem actual_left_strip_keeps_exact_half_open_endpoint (A : ℝ) :
    actualWorkLeftStrip A =
      Ico (Real.log (vaughanCutoff A : ℝ) - A)
        (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) - A) ∩
      Iic (A - Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) :=
  actualWorkLeftStrip_eq_Ico_inter A

theorem actual_lower_endpoint_can_lie_in_retained_strip (A : ℝ) (hA : 1 ≤ A)
    (hwidth : Real.log (vaughanCutoff A : ℝ) +
      Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ 2 * A) :
    Real.log (vaughanCutoff A : ℝ) - A ∈ actualWorkLeftStrip A := by
  have hU : 0 < (vaughanCutoff A : ℝ) := by
    exact_mod_cast (by have := vaughanCutoff_pos A hA; omega : 0 < vaughanCutoff A)
  have hlog : Real.log (vaughanCutoff A : ℝ) <
      Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) :=
    Real.log_lt_log hU (by exact_mod_cast Nat.lt_succ_self (vaughanCutoff A))
  rw [actualWorkLeftStrip_eq_Ico_inter]
  refine ⟨⟨le_rfl, sub_lt_sub_right hlog A⟩, ?_⟩
  change Real.log (vaughanCutoff A : ℝ) - A ≤
    A - Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)
  linarith

theorem synthetic_positive_strip_is_not_zero :
    (∫ _v in (-1 : ℝ)..0, (1 : ℝ)) = 1 := by
  norm_num [intervalIntegral.integral_const]

theorem actual_localization_uses_continuous_window (A : ℝ) (hA : 1 ≤ A) (v : ℝ)
    (hv : v ∉ actualWorkWindow A) : actualMixedWorkDensity A v = 0 :=
  actualMixedWorkDensity_zero_outside_window A hA v hv

end
end FormalResearch.RiemannHypothesis.SourceActualMixedWorkFubiniFixtures
```
