# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceSyntheticCriticalObstruction.Variant1c39bc4fa1a013318968e11c9f8a7e7f3f4a8f64f17472bb0117b744a67b1c03

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `03194ff7cdf39e202e94b4a6ac0bb422bfdf4c57` · SHA-256 `4ed52d6e16fb64475589974657f0f06db606b33679fec4fc9754631d500d3798`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SyntheticCriticalReadout.Varianta8897a074dff5d55cf6a12c553eaaae1fdb12ac3f1132563ddcee70af588cd3c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a8897a074dff5d55cf6a12c553eaaae1fdb12ac3f1132563ddcee70af588cd3c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SyntheticCriticalReadout.Varianta8897a074dff5d55cf6a12c553eaaae1fdb12ac3f1132563ddcee70af588cd3c","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"a8897a074dff5d55cf6a12c553eaaae1fdb12ac3f1132563ddcee70af588cd3c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle17/next-synthetic-critical-obstruction/SourceSyntheticCriticalObstruction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceCriticalDensityQuadrature
import FormalResearch.RiemannHypothesis.SourcePairedTailPrimeBlock
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCorrelation

/-!
# Unverified private synthetic readout obstruction candidate

This candidate uses the actual source tail and actual critical density in a
separately specified synthetic readout. It constructs no comparison measure and
asserts no measure properties or actual prime estimate. All compiler and review
status is external; this draft is outside canonical thirteen and private twenty.

AI attribution: developed with OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SyntheticCriticalReadout.Varianta8897a074dff5d55cf6a12c553eaaae1fdb12ac3f1132563ddcee70af588cd3c

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceSyntheticCriticalObstruction

open MeasureTheory Set
open scoped Interval
open SourceCriticalDensityQuadrature SourceCriticalDecayWork
open SourcePairedTailTest SourcePairedTailPrimeBlock SourceFirstPrimeAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateCorrelation

/-- A synthetic scalar readout, with no identification with the actual prime row. -/
def syntheticCriticalReadout (A : ℝ) : ℝ :=
  Real.exp (-(1/2 : ℝ))*pairedTailTest A (A/80) -
    ∫ u in 0..1, criticalDensity u*pairedTailTest A u

/-- The literal source tail is uniformly controlled on this fixed short interval. -/
theorem actualUnitWindowTail_abs_le {A u : ℝ} (hA : 1 ≤ A) (hu : u ∈ Icc 0 1) :
    |pairedTailTest A u| ≤ 1+Real.exp (1/2 : ℝ) := by
  have huL : u ∈ Icc 0 (2*A) := ⟨hu.1, by linarith [hu.2]⟩
  have hs0 := negativeSurvival_nonneg hA huL
  have hs1 := negativeSurvival_le_one hA huL
  have hs : |negativeSurvival A u| ≤ 1 := by
    simpa only [abs_of_nonneg hs0] using hs1
  have hc := actual_correlation_abs_le_one A u hA
  have he : Real.exp (u/2) ≤ Real.exp (1/2 : ℝ) :=
    Real.exp_le_exp.mpr (by linarith [hu.2])
  have hg : |criticalPrimeTest A u| ≤ Real.exp (1/2 : ℝ) := by
    unfold criticalPrimeTest
    rw [abs_mul, abs_of_pos (Real.exp_pos _)]
    calc
      _ ≤ Real.exp (u/2)*1 :=
        mul_le_mul_of_nonneg_left hc (Real.exp_pos _).le
      _ ≤ _ := by simpa only [mul_one] using he
  calc
    _ = |-criticalPrimeTest A u+negativeSurvival A u| := rfl
    _ ≤ |-criticalPrimeTest A u|+|negativeSurvival A u| := abs_add _ _
    _ ≤ Real.exp (1/2 : ℝ)+1 :=
      add_le_add (by simpa only [abs_neg] using hg) hs
    _ = _ := by ring

/-- This scalar integrand is genuinely integrable, independently of its norm bound. -/
theorem unitDensityTail_intervalIntegrable {A : ℝ} (hA : 1 ≤ A) :
    IntervalIntegrable (fun u => criticalDensity u*pairedTailTest A u) volume 0 1 := by
  have hd : Continuous criticalDensity := by
    unfold criticalDensity criticalDecay
    fun_prop
  exact (hd.mul (pairedTailTest_continuous hA)).intervalIntegrable 0 1

/-- Only the unit interval is used in the fixed compensating integral. -/
theorem unitDensityTail_integral_abs_le {A : ℝ} (hA : 1 ≤ A) :
    |∫ u in 0..1, criticalDensity u*pairedTailTest A u| ≤
      1+Real.exp (1/2 : ℝ) := by
  have hb := intervalIntegral.norm_integral_le_of_norm_le_const
    (a := (0 : ℝ)) (b := 1) (C := 1+Real.exp (1/2 : ℝ))
    (f := fun u : ℝ => criticalDensity u*pairedTailTest A u) (fun u hu => by
      have hu' : u ∈ Icc (0 : ℝ) 1 := by
        simp only [uIoc_of_le (by norm_num : (0 : ℝ) ≤ 1), mem_Ioc] at hu
        exact ⟨hu.1.le, hu.2⟩
      have hr := criticalDensity_mem_Icc u hu'.1
      have hd := actualUnitWindowTail_abs_le hA hu'
      have hr0 : 0 ≤ criticalDensity u := by linarith [hr.1]
      calc
        _ = |criticalDensity u|*|pairedTailTest A u| := by
          rw [Real.norm_eq_abs, abs_mul]
        _ = criticalDensity u*|pairedTailTest A u| := by rw [abs_of_nonneg hr0]
        _ ≤ 1*(1+Real.exp (1/2 : ℝ)) :=
          mul_le_mul hr.2 hd (abs_nonneg _) (by norm_num)
        _ = _ := by ring)
  simpa only [Real.norm_eq_abs, sub_zero, abs_one, mul_one] using hb

/-- The removed unit-interval density mass supplies a nonzero fixed coefficient. -/
theorem decayHalf_mem_Icc :
    (1/2 : ℝ) ≤ Real.exp (-(1/2 : ℝ)) ∧ Real.exp (-(1/2 : ℝ)) ≤ 1 := by
  constructor
  · linarith [Real.add_one_le_exp (-(1/2 : ℝ))]
  · rw [Real.exp_le_one_iff]
    norm_num

/-- Exponential negativity concerns only this synthetic readout, not the prime interaction. -/
theorem syntheticCriticalReadout_le {A : ℝ} (hA : 160 ≤ A) :
    syntheticCriticalReadout A ≤
      -(7/32 : ℝ)*Real.exp (A/160)+1+Real.exp (1/2 : ℝ) := by
  have hA1 : 1 ≤ A := by linarith
  have hearly := earlyTailTest_le (u := A/80) hA (le_refl _) (by linarith)
  have hdelta := decayHalf_mem_Icc
  have hdelta0 : 0 ≤ Real.exp (-(1/2 : ℝ)) := (Real.exp_pos _).le
  have hp := mul_le_mul_of_nonneg_left hearly hdelta0
  have hc : Real.exp (-(1/2 : ℝ))*(-(7/16 : ℝ)*Real.exp (A/160)) ≤
      -(7/32 : ℝ)*Real.exp (A/160) := by
    nlinarith [Real.exp_pos (A/160)]
  have hi := (abs_le.mp (unitDensityTail_integral_abs_le hA1)).1
  unfold syntheticCriticalReadout
  linarith

end FormalResearch.RiemannHypothesis.SourceSyntheticCriticalObstruction
```
