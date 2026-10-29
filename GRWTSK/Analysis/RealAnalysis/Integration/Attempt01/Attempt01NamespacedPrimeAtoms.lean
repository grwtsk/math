-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.PrimeAtoms.Variant4451f7e9e77b9a52f05ea1f619f8896588a63206a8d1ad1c3bb0e92d60e1cdef","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4451f7e9e77b9a52f05ea1f619f8896588a63206a8d1ad1c3bb0e92d60e1cdef","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.PrimeAtoms.Variant4451f7e9e77b9a52f05ea1f619f8896588a63206a8d1ad1c3bb0e92d60e1cdef","mathematical_subject":"Analysis.Integration","original_sha256":"4451f7e9e77b9a52f05ea1f619f8896588a63206a8d1ad1c3bb0e92d60e1cdef","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-tandem-01a1149a/prime-atom-decoder/attempt01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DensityDecoder

/-!
Prime-informed correction of the literal density decoder.
Direction: grwtsk contributors. Scratch proof construction: OpenAI Codex.
This changes approximation cost only; a uniform signed lower budget remains open.
-/

namespace GRWTSK.Analysis.RealAnalysis.Integration.PrimeAtoms.Variant4451f7e9e77b9a52f05ea1f619f8896588a63206a8d1ad1c3bb0e92d60e1cdef

set_option autoImplicit false
noncomputable section
namespace RH16Tandem.PrimeAtomDecoder
open MeasureTheory Set
open JointUniformResearch FinitePairedDecoderResearch ContinuousResearch.DensityDecoder
open FormalResearch.RiemannHypothesis
open SourceCriticalDensityQuadrature SourceCriticalRemovedPrimeWork SourceCriticalDecayWork
open SourcePairedTailTest WeightedPrimeAbel

/-- The complete closed atom set, with the source's unchanged cutoff. -/
def primeAtoms (A : ℝ) : Finset ℝ :=
  (primeLogInventory (2*A)).image (fun p : ℕ => Real.log (p : ℝ))

/-- Actual prime observations replace only point values of a finite reconstruction. -/
def primeCorrected (A : ℝ) (F : ℝ → ℝ) (u : ℝ) : ℝ :=
  if u ∈ primeAtoms A then pairedTailTest A u else F u

theorem primeCorrected_at_atom (A : ℝ) (F : ℝ → ℝ) (p : ℕ)
    (hp : p ∈ primeLogInventory (2*A)) :
    primeCorrected A F (Real.log p) = pairedTailTest A (Real.log p) := by
  have hm : Real.log (p : ℝ) ∈ primeAtoms A :=
    Finset.mem_image.mpr ⟨p, hp, rfl⟩
  simp [primeCorrected, hm]

theorem primeCorrected_ae (A : ℝ) (F : ℝ → ℝ) :
    primeCorrected A F =ᵐ[volume] F := by
  filter_upwards [(primeAtoms A).finite_toSet.countable.ae_notMem volume] with u hu
  simp only [Finset.mem_coe] at hu
  simp [primeCorrected, hu]

theorem primeCorrected_integrable (A : ℝ) (F : ℝ → ℝ)
    (hF : Integrable F) : Integrable (primeCorrected A F) :=
  hF.congr (primeCorrected_ae A F).symm

theorem primeCorrected_primeLogSum (A : ℝ) (F : ℝ → ℝ) :
    primeLogSum (2*A) (primeCorrected A F) =
      primeLogSum (2*A) (pairedTailTest A) := by
  unfold primeLogSum
  apply Finset.sum_congr rfl
  intro p hp
  rw [primeCorrected_at_atom A F p hp]

theorem primeCorrected_density_integral (A : ℝ) (F : ℝ → ℝ) :
    (∫ u in 0..2*A, criticalDensity u*primeCorrected A F u) =
      ∫ u in 0..2*A, criticalDensity u*F u := by
  apply intervalIntegral.integral_congr_ae
  filter_upwards [primeCorrected_ae A F] with u hu
  intro _
  rw [hu]

/-- Atomic uncertainty is zero; only the original continuous density error remains. -/
theorem primeCorrected_readout_error {A ε : ℝ} (hA : 1 ≤ A) (hε : 0 ≤ ε)
    (F : ℝ → ℝ) (hF : IntervalIntegrable F volume 0 (2*A))
    (herr : ∀ u∈Icc 0 (2*A), |F u-pairedTailTest A u|≤ε) :
    |densityReadout A (primeCorrected A F)-criticalRemovedPairedWork A| ≤
      ε*(2*A-1+criticalDecay (2*A)) := by
  rw [← densityReadout_actual hA]
  unfold densityReadout
  rw [primeCorrected_primeLogSum, primeCorrected_density_integral]
  have he : primeLogSum (2*A) (pairedTailTest A) -
      (∫ u in 0..2*A, criticalDensity u*F u) -
      (primeLogSum (2*A) (pairedTailTest A) -
        ∫ u in 0..2*A, criticalDensity u*pairedTailTest A u) =
      -((∫ u in 0..2*A, criticalDensity u*F u) -
        ∫ u in 0..2*A, criticalDensity u*pairedTailTest A u) := by ring
  rw [he, abs_neg]
  exact density_integral_error hA hε F hF herr

#print axioms primeCorrected_at_atom
#print axioms primeCorrected_ae
#print axioms primeCorrected_integrable
#print axioms primeCorrected_primeLogSum
#print axioms primeCorrected_density_integral
#print axioms primeCorrected_readout_error
end RH16Tandem.PrimeAtomDecoder
