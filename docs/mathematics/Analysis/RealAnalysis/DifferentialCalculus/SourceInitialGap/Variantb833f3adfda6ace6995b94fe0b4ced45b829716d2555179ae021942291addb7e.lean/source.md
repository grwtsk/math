# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceInitialGap.Variantb833f3adfda6ace6995b94fe0b4ced45b829716d2555179ae021942291addb7e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b6a2a07fe796189bd03e91b2c08e8c0a0f3761a` · SHA-256 `b833f3adfda6ace6995b94fe0b4ced45b829716d2555179ae021942291addb7e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SelectedPrimeMean
import FormalResearch.RiemannHypothesis.SourcePairedTailTest

/-! Focused scratch research, using the unchanged actual normalized source.
The initial phase gap does not assert global derivative positivity or a signed
arithmetic repayment witness. grwtsk contributors's source direction; Codex AI
authored this supplementary proof. -/

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.SourceInitialGap

open MeasureTheory Set
open FormalResearch.RiemannHypothesis
open SourcePairing SourceCorrelationCurvature SourceFirstPrimeAbel
open SourcePairedPrimeWork SourcePairedPrimeAverages SourcePairedTailTest
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization
open ContinuousResearch.SelectedPrimeMean
open scoped Interval

theorem correlation_initial_bounds {A u : ℝ} (hA : 2 ≤ A)
    (hu : u ∈ Icc 0 (A / 32)) :
    (31 / 32 : ℝ) ≤ sourceCorrelation explicitSecondDerivative A u ∧
      -(11 / 32 : ℝ) ≤ deriv (sourceCorrelation explicitSecondDerivative A) u := by
  have hA1 : 1 ≤ A := by linarith
  have hp : 0 < A := by linarith
  have hd : 0 < 7623 * A ^ 2 := by positivity
  have husq : u ^ 2 ≤ A ^ 2 / 1024 := by
    have hs := pow_le_pow_left₀ hu.1 hu.2 2
    nlinarith only [hs]
  have h64 : 64 * u ≤ A ^ 2 := by nlinarith [hu.1, hu.2]
  have hc := (correlation_deficit hA1 u).2
  have hcb : 162826 / (7623 * A ^ 2) * u ^ 2 / 2 ≤ (1 / 32 : ℝ) := by
    rw [div_mul_eq_mul_div, div_div]
    apply (div_le_iff₀ (mul_pos hd (by norm_num : (0 : ℝ) < 2))).mpr
    nlinarith
  have hi := sourceCorrelation_deriv_increment_bound hA1 0 u
  rw [zero_add, correlation_deriv_zero hA1, sub_zero, abs_of_nonneg hu.1] at hi
  have hib : 162826 / (7623 * A ^ 2) * u ≤ (11 / 32 : ℝ) := by
    rw [div_mul_eq_mul_div]
    apply (div_le_iff₀ hd).mpr
    nlinarith
  exact ⟨by linarith, by linarith [(abs_le.mp (hi.trans hib)).1]⟩

theorem critical_deriv_positive_initial {A u : ℝ} (hA : 2 ≤ A)
    (hu : u ∈ Icc 0 (A / 32)) :
    0 < deriv (criticalPrimeTest A) u := by
  obtain ⟨hc, hd⟩ := correlation_initial_bounds hA hu
  rw [criticalPrimeTest_deriv A u (by linarith)]
  exact mul_pos (Real.exp_pos _) (by linarith)

theorem negativeSlope_zero_initial {A u : ℝ} (hA : 2 ≤ A)
    (hu : u ∈ Icc 0 (A / 32)) : negativeSlope A u = 0 := by
  exact max_eq_right (neg_nonpos.mpr (critical_deriv_positive_initial hA hu).le)

theorem negativeSurvival_one_initial {A u : ℝ} (hA : 2 ≤ A)
    (hu : u ∈ Icc 0 (A / 32)) : negativeSurvival A u = 1 := by
  have hp : 0 < A := by linarith
  have hzero : (∫ t in 0..u, negativeSlope A t) = 0 := by
    calc
      _ = ∫ _t in 0..u, (0 : ℝ) := by
        apply intervalIntegral.integral_congr
        intro t ht
        rw [uIcc_of_le hu.1] at ht
        exact negativeSlope_zero_initial hA ⟨ht.1, ht.2.trans hu.2⟩
      _ = 0 := by simp
  have hi := intervalIntegral.integral_add_adjacent_intervals (μ := volume)
    ((negativeSlope_continuous hp).intervalIntegrable 0 u)
    ((negativeSlope_continuous hp).intervalIntegrable u (2 * A))
  rw [hzero, zero_add] at hi
  unfold negativeSurvival
  rw [hi]
  exact div_self (negativeMass_pos (show 1 ≤ A by linarith)).ne'

theorem negativeSurvival_one_eventually_fixed {u : ℝ} (hu : 0 ≤ u) :
    ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A → negativeSurvival A u = 1 := by
  refine ⟨max 2 (32 * u), by linarith [le_max_left (2 : ℝ) (32 * u)], ?_⟩
  intro A hRA
  apply negativeSurvival_one_initial ((le_max_left _ _).trans hRA)
  exact ⟨hu, by linarith [le_max_right (2 : ℝ) (32 * u)]⟩

theorem pairedTest_initial_deficit {A u : ℝ} (hA : 2 ≤ A)
    (hu : u ∈ Icc 0 (A / 32)) :
    0 ≤ pairedTailTest A u - (1 - Real.exp (u / 2)) ∧
      pairedTailTest A u - (1 - Real.exp (u / 2)) ≤
        Real.exp (u / 2) * (162826 / (7623 * A ^ 2) * u ^ 2 / 2) := by
  have hc := correlation_deficit (show 1 ≤ A by linarith) u
  have he : pairedTailTest A u - (1 - Real.exp (u / 2)) =
      Real.exp (u / 2) * (1 - sourceCorrelation explicitSecondDerivative A u) := by
    rw [pairedTailTest, negativeSurvival_one_initial hA hu, criticalPrimeTest]
    ring
  rw [he]
  exact ⟨mul_nonneg (Real.exp_pos _).le hc.1,
    mul_le_mul_of_nonneg_left hc.2 (Real.exp_pos _).le⟩

#print axioms correlation_initial_bounds
#print axioms critical_deriv_positive_initial
#print axioms negativeSlope_zero_initial
#print axioms negativeSurvival_one_initial
#print axioms negativeSurvival_one_eventually_fixed
#print axioms pairedTest_initial_deficit

end ContinuousResearch.SourceInitialGap
```
