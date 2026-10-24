# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceCriticalCurvaturePhase.Variant6c3ccb553333a420697b8b1b51d04a9e597a7a235bb0c743f835196f3d8580fc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5e82811e3707ec749379ce92584bc23ebecbfcc5` · SHA-256 `4f501f1b4533fad2fbde235f9e837c55a3ec6e1b676c61edf88e096854e1f7fd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PairedTailTestSecondDerivEqNegOfDerivPos.Variantb1554e786ebbc54c1c16bfb5c8b39a446d8534e1d4ff1723f646347e8a9201c4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b1554e786ebbc54c1c16bfb5c8b39a446d8534e1d4ff1723f646347e8a9201c4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.PairedTailTestSecondDerivEqNegOfDerivPos.Variantb1554e786ebbc54c1c16bfb5c8b39a446d8534e1d4ff1723f646347e8a9201c4","mathematical_subject":"Analysis.Calculus","original_sha256":"b1554e786ebbc54c1c16bfb5c8b39a446d8534e1d4ff1723f646347e8a9201c4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/ingestion/descendant-incremental-20261006T223836Z/source-references/6111b69f9c23557e7547/SourceCriticalCurvaturePhase.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceCriticalSecondAbel

/-!
# Actual curvature on both strict derivative phases

Research candidate; local/kernel/main acceptance are separate receipt gates.
The literal max formula is differentiated only on strict actual derivative
phases, with the unchanged fixed-scale source mass ratio in the negative phase.
The exact exponential correlation product retains all three derivative terms.
No global paired C2 regularity, arithmetic estimate or signed witness is asserted.

Research direction, selection and evaluation: grwtsk contributors.
Construction: OpenAI Codex; independent AI review is a separate gate.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PairedTailTestSecondDerivEqNegOfDerivPos.Variantb1554e786ebbc54c1c16bfb5c8b39a446d8534e1d4ff1723f646347e8a9201c4

set_option autoImplicit false
set_option backward.isDefEq.respectTransparency false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceCriticalCurvaturePhase

open Filter Set
open scoped Topology
open SourceCriticalSecondAbel SourcePairedTailTest SourcePairedPrimeWork SourceFirstPrimeAbel
open SourcePairing SourceCorrelationCurvature
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

/-- Strict positivity selects the literal positive max branch on an ambient neighborhood. -/
theorem pairedTailTest_second_deriv_eq_neg_of_deriv_pos
    {A u : ℝ} (hA : 1 ≤ A)
    (hu : 0 < deriv (criticalPrimeTest A) u) :
    deriv (deriv (pairedTailTest A)) u =
      -deriv (deriv (criticalPrimeTest A)) u := by
  have hp : 0 < A := by linarith
  have hg : ContDiff ℝ 1 (deriv (criticalPrimeTest A)) :=
    (criticalPrimeTest_contDiff_two hp).deriv'
  have hpos : ∀ᶠ v in 𝓝 u, 0 < deriv (criticalPrimeTest A) v :=
    hg.continuous.continuousAt.preimage_mem_nhds (Ioi_mem_nhds hu)
  have he : deriv (pairedTailTest A) =ᶠ[𝓝 u]
      (fun v => -deriv (criticalPrimeTest A) v) := by
    filter_upwards [hpos] with v hv
    rw [pairedTailTest_deriv hA]
    simp only [positiveSlope, negativeSlope, max_eq_left hv.le,
      max_eq_right (neg_nonpos.mpr hv.le), mul_zero, add_zero]
  have hd := ((contDiff_one_iff_deriv.mp hg).1 u).hasDerivAt
  exact (hd.neg.congr_of_eventuallyEq he).deriv

/-- Strict negativity retains the actual fixed-scale positive-to-negative mass ratio. -/
theorem pairedTailTest_second_deriv_eq_neg_mass_mul_of_deriv_neg
    {A u : ℝ} (hA : 1 ≤ A)
    (hu : deriv (criticalPrimeTest A) u < 0) :
    deriv (deriv (pairedTailTest A)) u =
      -(positiveMass A / negativeMass A) *
        deriv (deriv (criticalPrimeTest A)) u := by
  have hp : 0 < A := by linarith
  have hg : ContDiff ℝ 1 (deriv (criticalPrimeTest A)) :=
    (criticalPrimeTest_contDiff_two hp).deriv'
  have hneg : ∀ᶠ v in 𝓝 u, deriv (criticalPrimeTest A) v < 0 :=
    hg.continuous.continuousAt.preimage_mem_nhds (Iio_mem_nhds hu)
  have he : deriv (pairedTailTest A) =ᶠ[𝓝 u]
      (fun v => -(positiveMass A / negativeMass A) *
        deriv (criticalPrimeTest A) v) := by
    filter_upwards [hneg] with v hv
    rw [pairedTailTest_deriv hA]
    simp only [positiveSlope, negativeSlope, max_eq_right hv.le,
      max_eq_left (neg_nonneg.mpr hv.le), neg_zero, zero_add]
    ring
  have hd := ((contDiff_one_iff_deriv.mp hg).1 u).hasDerivAt
  exact ((hd.const_mul (-(positiveMass A / negativeMass A))).congr_of_eventuallyEq he).deriv

/-- The critical exponential product keeps the quarter, first and second correlation terms. -/
theorem criticalPrimeTest_second_deriv_eq_correlation
    {A u : ℝ} (hA : 0 < A) :
    deriv (deriv (criticalPrimeTest A)) u =
      Real.exp (u / 2) *
        (SourcePairing.sourceCorrelation explicitSecondDerivative A u / 4 +
          deriv (SourcePairing.sourceCorrelation explicitSecondDerivative A) u +
          deriv (deriv (SourcePairing.sourceCorrelation explicitSecondDerivative A)) u) := by
  let C : ℝ → ℝ := SourcePairing.sourceCorrelation explicitSecondDerivative A
  have hC : HasDerivAt C (deriv C u) u :=
    ((contDiff_one_iff_deriv.mp (sourceCorrelation_contDiff A hA)).1 u).hasDerivAt
  have hCp : HasDerivAt (deriv C) (deriv (deriv C) u) u :=
    ((contDiff_one_iff_deriv.mp (sourceCorrelation_deriv_contDiff hA)).1 u).hasDerivAt
  have he := ((hasDerivAt_id u).div_const 2).exp
  have hg : deriv (criticalPrimeTest A) =
      (fun v => Real.exp (v / 2) * (C v / 2 + deriv C v)) :=
    funext fun v => criticalPrimeTest_deriv A v hA
  have hd : HasDerivAt
      (fun v : ℝ => Real.exp (v / 2) * (C v / 2 + deriv C v))
      (Real.exp (u / 2) * (C u / 4 + deriv C u + deriv (deriv C) u)) u :=
    (he.mul ((hC.div_const 2).add hCp)).congr_deriv (by dsimp only [id_eq, Pi.add_apply]; ring)
  change deriv (deriv (criticalPrimeTest A)) u =
    Real.exp (u / 2) * (C u / 4 + deriv C u + deriv (deriv C) u)
  rw [hg]
  exact hd.deriv

end FormalResearch.RiemannHypothesis.SourceCriticalCurvaturePhase
```
