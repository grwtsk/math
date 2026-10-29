-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.PurityOnTraceSpectrum.Variant255e60437f2103379be5a1a44a56769859c852c690a1d97d73dc215d7aa0e6fd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"255e60437f2103379be5a1a44a56769859c852c690a1d97d73dc215d7aa0e6fd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.NormedSpaces.SourceCorpus.PurityOnTraceSpectrum.Variant255e60437f2103379be5a1a44a56769859c852c690a1d97d73dc215d7aa0e6fd","mathematical_subject":"Analysis.NormedSpaces","original_sha256":"255e60437f2103379be5a1a44a56769859c852c690a1d97d73dc215d7aa0e6fd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/MobiusOntology/PurityBridge.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.MobiusOntology.TraceIdentity

/-!
# Purity on the trace spectrum

Functional symmetry is not used as a half-plane theorem.  The certificate is
indexed by the actual spectrum appearing in the exact trace identity.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.PurityOnTraceSpectrum.Variant255e60437f2103379be5a1a44a56769859c852c690a1d97d73dc215d7aa0e6fd

namespace Mathematics.MobiusOntology

open scoped BigOperators

universe u v w

structure PurityOnTraceSpectrum
    (Scale : Type u) (Spectrum : Type v) (Carrier : Type w)
    [Fintype Spectrum] [NormedAddCommGroup Carrier]
    (trace : TraceCertificate Scale Spectrum Carrier) where
  realPart : Spectrum → ℝ
  occurs : Scale → Spectrum → Prop
  sameSpectrum :
    ∀ scale spectral,
      trace.spectralTerm scale spectral ≠ 0 →
        occurs scale spectral
  halfPlane :
    ∀ {scale spectral},
      occurs scale spectral →
        realPart spectral ≤ (1 : ℝ) / 2

structure SpectralVariationCertificate
    (Scale : Type u) (Spectrum : Type v)
    [Fintype Spectrum] where
  variation : Scale → Spectrum → ℝ≥0
  uniformBound : ℝ≥0
  variationBound :
    ∀ scale,
      ∑ spectral, variation scale spectral ≤ uniformBound
  jordanOrder : Spectrum → Nat
  logarithmicOrder : Nat
  jordanBound :
    ∀ spectral,
      jordanOrder spectral ≤ logarithmicOrder + 1

end Mathematics.MobiusOntology
