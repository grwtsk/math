# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SourceCriticalDensityQuadrature.Variant04605dfaccd3f56046dfa2d292ca046adabe8d2705b41a8d7baa26b3c2ed8be2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `901250803c7cb0e58d7a41e58129887b04f55517` · SHA-256 `e9fb31911d607aa2fdb9bc6d8e895fb73c452751123176f489d3f917c0d04428`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.CriticalDensity.Varianta3d12a7a0b85fabddfaad41c604978c1b7a90c25aff156bea39cfd105fd31e7e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a3d12a7a0b85fabddfaad41c604978c1b7a90c25aff156bea39cfd105fd31e7e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.CriticalDensity.Varianta3d12a7a0b85fabddfaad41c604978c1b7a90c25aff156bea39cfd105fd31e7e","mathematical_subject":"Analysis.Integration","original_sha256":"a3d12a7a0b85fabddfaad41c604978c1b7a90c25aff156bea39cfd105fd31e7e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle17/next-critical-density-quadrature/attempt-03/SourceCriticalDensityQuadrature.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceCriticalRemovedPrimeWork

/-!
# Private actual critical density and compensated paired quadrature

The independently specified decay changes the continuous density and its endpoint
mass explicitly. Weighted integration by parts retains both derivative phases,
the complete time-mean minus continuous-half drift and all closed prime atoms.
These identities and a bounded positive density supply no correlated lower
witness. Focused status is external; this unit is outside canonical thirteen.

AI attribution: developed with OpenAI Codex.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.CriticalDensity.Varianta3d12a7a0b85fabddfaad41c604978c1b7a90c25aff156bea39cfd105fd31e7e

set_option autoImplicit false
set_option backward.isDefEq.respectTransparency false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceCriticalDensityQuadrature

open MeasureTheory Set
open scoped Interval
open SourceCriticalRemovedPrimeWork SourceCriticalDecayWork SourcePairedPrimeWork
open SourcePairedPrimeAverages SourcePairedTailTest SourcePairedTailQuadrature
open SourceFirstPrimeAbel SourceDiagonalMainTerm WeightedPrimeAbel

/-- The independent decay changes the continuous prime-window drift density. -/
def criticalDensity (u : ℝ) : ℝ := 1-criticalDecay u/2

/-- The actual closed prime prefix and continuous density need not have equal total mass. -/
def criticalDensityPrefixDiscrepancy (A : ℝ) : ℝ :=
  primeLogPrefix (2*A)-∫ u in 0..2*A, criticalDensity u

private theorem decay_continuous : Continuous criticalDecay := by
  unfold criticalDecay
  fun_prop

private theorem density_continuous : Continuous criticalDensity :=
  continuous_const.sub (decay_continuous.div_const 2)

private theorem decay_hasDerivAt (u : ℝ) :
    HasDerivAt criticalDecay (-criticalDecay u/2) u := by
  convert ((hasDerivAt_id u).const_mul (-1/2 : ℝ)).exp using 1
  · funext x
    simp only [criticalDecay, id_eq]
    congr 1
    ring
  · simp only [criticalDecay, id_eq]
    ring

/-- The range is proved only on the nonnegative axis. -/
theorem criticalDensity_mem_Icc (u : ℝ) (hu : 0 ≤ u) :
    (1/2 : ℝ) ≤ criticalDensity u ∧ criticalDensity u ≤ 1 := by
  have hp : 0 ≤ criticalDecay u := (Real.exp_pos _).le
  have hh : criticalDecay u ≤ 1 := by
    unfold criticalDecay
    rw [Real.exp_le_one_iff]
    linarith
  unfold criticalDensity
  constructor <;> linarith

/-- Oriented calculus retains the lower endpoint compensation and the upper decay. -/
theorem criticalDensity_integral (A : ℝ) :
    (∫ u in 0..2*A, criticalDensity u) = 2*A-1+criticalDecay (2*A) := by
  have hd (u : ℝ) : HasDerivAt (fun x => x+criticalDecay x) (criticalDensity u) u := by
    unfold criticalDensity
    convert (hasDerivAt_id u).add (decay_hasDerivAt u) using 1 <;>
      first | rfl | ring
  have hi := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun u _ => hd u) (density_continuous.intervalIntegrable (μ := volume) 0 (2*A))
  simp only [criticalDecay, neg_zero, zero_div, Real.exp_zero, zero_add] at hi ⊢
  linarith

/-- The discrepancy is the actual prime error plus the explicit endpoint mass correction. -/
theorem criticalDensityPrefixDiscrepancy_eq (A : ℝ) :
    criticalDensityPrefixDiscrepancy A = primeLogError (2*A)+1-criticalDecay (2*A) := by
  rw [criticalDensityPrefixDiscrepancy, criticalDensity_integral]
  unfold primeLogError
  ring

/-- Source-only mass is positive at positive scales, without an arithmetic balance premise. -/
theorem criticalDensity_integral_pos {A : ℝ} (hA : 0 < A) :
    0 < ∫ u in 0..2*A, criticalDensity u := by
  have hm := intervalIntegral.integral_mono_on (μ := volume) (show 0 ≤ 2*A by linarith)
    (continuous_const.intervalIntegrable 0 (2*A))
    (density_continuous.intervalIntegrable 0 (2*A))
    (fun u hu => (criticalDensity_mem_Icc u hu.1).1)
  have he : (∫ u in 0..2*A, (1/2 : ℝ)) = A := by
    simp only [intervalIntegral.integral_const, smul_eq_mul]
    ring
  rw [he] at hm
  exact hA.trans_le hm

/-- The density mass is strictly smaller than the raw interval length at positive scales. -/
theorem criticalDensity_mass_lt_raw_length {A : ℝ} (hA : 0 < A) :
    (∫ u in 0..2*A, criticalDensity u) < 2*A := by
  rw [criticalDensity_integral]
  have hh : criticalDecay (2*A) < 1 := by
    unfold criticalDecay
    rw [Real.exp_lt_one_iff]
    linarith
  linarith

/-- Weighted integration by parts tracks the actual positive and normalized negative phases. -/
theorem criticalDensity_weighted_pairedTailTest {A : ℝ} (hA : 1 ≤ A) :
    (1/2 : ℝ)*(∫ u in 0..2*A, criticalDecay u*pairedTailTest A u) =
      -diagonalMainCoefficient A*A+1-criticalDecayNegativeMean A := by
  have hp : 0 < A := by linarith
  have hdp := positiveSlope_continuous hp
  have hdn := negativeSlope_continuous hp
  have hip : IntervalIntegrable (fun u => criticalDecay u*positiveSlope A u)
      volume 0 (2*A) :=
    (decay_continuous.mul hdp).intervalIntegrable (μ := volume) 0 (2*A)
  have hin : IntervalIntegrable (fun u => criticalDecay u*negativeSlope A u)
      volume 0 (2*A) :=
    (decay_continuous.mul hdn).intervalIntegrable (μ := volume) 0 (2*A)
  have hibp := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    (u := criticalDecay) (u' := fun u => -criticalDecay u/2)
    (v := pairedTailTest A)
    (v' := fun u => -positiveSlope A u+(positiveMass A/negativeMass A)*negativeSlope A u)
    (fun u _ => decay_hasDerivAt u) (fun u _ => pairedTailTest_hasDerivAt hA u)
    ((decay_continuous.neg.div_const 2).intervalIntegrable (μ := volume) 0 (2*A))
    ((hdp.neg.add (hdn.const_mul _)).intervalIntegrable (μ := volume) 0 (2*A))
  simp only [pairedTailTest_at_upper hA, pairedTailTest_at_zero hA, mul_zero,
    sub_zero, zero_sub] at hibp
  have hright : (fun u : ℝ => (-criticalDecay u/2)*pairedTailTest A u) =
      fun u => -(criticalDecay u*pairedTailTest A u)/2 := by
    funext u
    ring
  rw [hright, intervalIntegral.integral_div, intervalIntegral.integral_neg, neg_div] at hibp
  have hleft : (fun u : ℝ => criticalDecay u*
      (-positiveSlope A u+(positiveMass A/negativeMass A)*negativeSlope A u)) =
      fun u => -(criticalDecay u*positiveSlope A u)+
        (positiveMass A/negativeMass A)*(criticalDecay u*negativeSlope A u) := by
    funext u
    ring
  rw [hleft, intervalIntegral.integral_add hip.neg
      (hin.const_mul (positiveMass A/negativeMass A)),
    intervalIntegral.integral_neg, intervalIntegral.integral_const_mul] at hibp
  have hw : criticalDecayWork A =
      (∫ u in 0..2*A, criticalDecay u*positiveSlope A u)-
        (∫ u in 0..2*A, criticalDecay u*negativeSlope A u) := by
    unfold criticalDecayWork
    simp_rw [← slope_difference, mul_sub]
    exact intervalIntegral.integral_sub hip hin
  have hn := ne_of_gt (negativeMass_pos hA)
  have hm := negativeMass_eq_positive_add_one hA
  have he : -(∫ u in 0..2*A, criticalDecay u*positiveSlope A u)+
      (positiveMass A/negativeMass A)*(∫ u in 0..2*A, criticalDecay u*negativeSlope A u) =
        -criticalDecayWork A-criticalDecayNegativeMean A := by
    rw [hw, criticalDecayNegativeMean]
    field_simp [hn]
    rw [hm]
    ring
  rw [he, criticalDecayWork_eq_main hA] at hibp
  linarith

/-- The density absorbs the independent decay compensation while retaining the full drift. -/
theorem criticalDensity_quadrature_eq_full_drift {A : ℝ} (hA : 1 ≤ A) :
    (∫ u in 0..2*A, criticalDensity u*pairedTailTest A u) =
      negativeTimeMean A-criticalContinuousMoment A+diagonalMainCoefficient A*A-
        1+criticalDecayNegativeMean A := by
  have hD := pairedTailTest_continuous hA
  have hi := hD.intervalIntegrable (μ := volume) 0 (2*A)
  have hh : IntervalIntegrable (fun u => criticalDecay u*pairedTailTest A u)
      volume 0 (2*A) :=
    (decay_continuous.mul hD).intervalIntegrable (μ := volume) 0 (2*A)
  have hf : (fun u : ℝ => criticalDensity u*pairedTailTest A u) =
      fun u => pairedTailTest A u-(criticalDecay u*pairedTailTest A u)/2 := by
    funext u
    unfold criticalDensity
    ring
  rw [hf, intervalIntegral.integral_sub hi (hh.div_const 2),
    intervalIntegral.integral_div, pairedTailTest_integral_eq hA]
  have he := criticalDensity_weighted_pairedTailTest hA
  linarith

/-- Literal closed prime quadrature retains the new actual continuous density
in the same readout. -/
theorem criticalRemovedPairedWork_eq_density_quadrature {A : ℝ} (hA : 1 ≤ A) :
    criticalRemovedPairedWork A = primeLogSum (2*A) (pairedTailTest A)-
      ∫ u in 0..2*A, criticalDensity u*pairedTailTest A u := by
  rw [criticalRemovedPairedWork_eq_prime_quadrature hA,
    criticalDensity_quadrature_eq_full_drift hA]
  ring

end FormalResearch.RiemannHypothesis.SourceCriticalDensityQuadrature
```
