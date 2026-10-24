# Complete source: GRWTSK.Topology.GeneralTopology.ScopeFixtures.Variant8ce4078cf86ddd38daf4565d7d61bef690130223d71b57a41acec040784968a2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f10f49591a9ab24fec79c90cb9bc21242224d8ba` · SHA-256 `190aca1e6ac6b8b48df0f70c46b277ca7ed056cf8a83cade0ef20da0d90a08e2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ActualChordBound.Variant59f8dbc0c5e50279cb58080d90eb7eb459a7ee5905ba13deff81760e9e831c2b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"59f8dbc0c5e50279cb58080d90eb7eb459a7ee5905ba13deff81760e9e831c2b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ActualChordBound.Variant59f8dbc0c5e50279cb58080d90eb7eb459a7ee5905ba13deff81760e9e831c2b","mathematical_subject":"Topology.GeneralTopology","original_sha256":"59f8dbc0c5e50279cb58080d90eb7eb459a7ee5905ba13deff81760e9e831c2b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle24/principal-origin/future-readout/private26-endpoint-chord-v1/resume-audits-v1/fixtures-v2/ScopeFixtures.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceMangoldtEndpointChord


namespace GRWTSK.Topology.GeneralTopology.ActualChordBound.Variant59f8dbc0c5e50279cb58080d90eb7eb459a7ee5905ba13deff81760e9e831c2b

noncomputable section
namespace FutureChordFixtures

open MeasureTheory Set
open FormalResearch.RiemannHypothesis
open SourceMangoldtEndpointChord SourceMangoldtAbel SourceFirstPrimeAbel
open SourcePrimePowerPartition
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PrimePowerDescent
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual

/-- The literal public contract has only the actual scale guard. -/
theorem actual_chord_bound {A : ℝ} (hA : 1 ≤ A) :
    |criticalMangoldtWork A - ∫ t in 0..2 * A,
      (mangoldtLogError t - mangoldtLogError (2 * A) / (2 * A) * t) *
        deriv (criticalPrimeTest A) t| ≤ (Real.log 4 + 4 + Real.log 2) / A :=
  criticalMangoldtWork_endpoint_chord_replacement_abs_le hA

/-- The lower included scale is an actual source specialization. -/
theorem actual_scale_one :
    |criticalMangoldtWork 1 - ∫ t in 0..2,
      (mangoldtLogError t - mangoldtLogError 2 / 2 * t) *
        deriv (criticalPrimeTest 1) t| ≤ Real.log 4 + 4 + Real.log 2 := by
  simpa using criticalMangoldtWork_endpoint_chord_replacement_abs_le
    (A := 1) (by norm_num)

/-- A second actual scale preserves the inverse scale coefficient. -/
theorem actual_scale_two :
    |criticalMangoldtWork 2 - ∫ t in 0..4,
      (mangoldtLogError t - mangoldtLogError 4 / 4 * t) *
        deriv (criticalPrimeTest 2) t| ≤ (Real.log 4 + 4 + Real.log 2) / 2 := by
  simpa only [show (2 : ℝ) * 2 = 4 by norm_num] using
    criticalMangoldtWork_endpoint_chord_replacement_abs_le (A := 2) (by norm_num)

/-- The totalized zero division does not supply the theorem's guard. -/
theorem zero_scale_excluded : ¬(1 ≤ (0 : ℝ)) := by norm_num

/-- Negative scale is outside the actual normalization domain. -/
theorem negative_scale_excluded : ¬(1 ≤ (-1 : ℝ)) := by norm_num

/-- The actual lower discrepancy anchor is zero, not an adjustable constant. -/
theorem actual_lower_error_zero : mangoldtLogError 0 = 0 := by
  simp [mangoldtLogError, mangoldtLogPrefix_zero]

/-- The literal chord preserves the actual lower endpoint. -/
theorem chord_lower_anchor (A : ℝ) :
    mangoldtLogError 0 - (mangoldtLogError (2 * A) / (2 * A)) * 0 = 0 := by
  simp [actual_lower_error_zero]

/-- The actual chord annihilates the upper endpoint only with its nonzero guard. -/
theorem chord_upper_anchor {A : ℝ} (hA : 1 ≤ A) :
    mangoldtLogError (2 * A) -
      (mangoldtLogError (2 * A) / (2 * A)) * (2 * A) = 0 := by
  have h : 2 * A ≠ 0 := by linarith
  field_simp
  simp

/-- The actual critical source already vanishes at the closed upper endpoint. -/
theorem actual_source_upper_zero {A : ℝ} (hA : 1 ≤ A) :
    criticalPrimeTest A (2 * A) = 0 := criticalPrimeTest_at_upper A (by linarith)

/-- The moment budget used by the chord bound is an actual two-sided bound. -/
theorem actual_continuous_moment_bound {A : ℝ} (hA : 1 ≤ A) :
    |criticalContinuousMoment A| ≤ 2 := criticalContinuousMoment_abs_le_two A hA

/-- The full-Mangoldt residual uses I minus W, with no extra initial minus two. -/
theorem residual_has_no_extra_initial_two {A : ℝ} (hA : 1 ≤ A) :
    mertensResidual A = criticalContinuousMoment A - criticalMangoldtWork A :=
  mertensResidual_eq_continuous_sub_Mangoldt_work A hA

/-- Even below the first atom the actual discrepancy is not identically zero. -/
theorem below_first_atom_nonzero : mangoldtLogError (Real.log 2 / 2) < 0 := by
  have h : 0 < Real.log (2 : ℝ) := Real.log_pos (by norm_num)
  rw [mangoldtLogError_below_first_atom (by linarith : Real.log 2 / 2 < Real.log 2)]
  linarith

/-- The closed upper first atom differs from its atom-free left-side formula. -/
theorem closed_first_atom_error :
    mangoldtLogError (Real.log 2) = -(Real.log 2 / 2) ∧
      mangoldtLogError (Real.log 2) ≠ -Real.log 2 := by
  have hp : mangoldtLogPrefix (Real.log 2) = Real.log 2 / 2 := by
    rw [mangoldtLogPrefix_eq_sum]
    unfold primePowerInventory
    rw [Real.exp_log (by norm_num : 0 < (2 : ℝ))]
    norm_num [ArithmeticFunction.vonMangoldt_apply_prime Nat.prime_two]
  have he : mangoldtLogError (Real.log 2) = -(Real.log 2 / 2) := by
    rw [mangoldtLogError, hp]
    ring
  refine ⟨he, ?_⟩
  rw [he]
  have h : 0 < Real.log (2 : ℝ) := Real.log_pos (by norm_num)
  linarith

/-- Synthetic sign control: removing a positive chord correction has negative difference. -/
theorem correction_orientation_fixture :
    (5 : ℝ) - (5 + 3 * 2) = -(3 * 2) ∧
      ¬((5 : ℝ) - (5 + 3 * 2) = 3 * 2) := by norm_num

end FutureChordFixtures
```
