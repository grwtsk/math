-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.H0RealZerosFromSpectralRealization.Variantfcbeed6624ad16a9314dae640d2fe8813cc7baf9a241149b7867240e99105744","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fcbeed6624ad16a9314dae640d2fe8813cc7baf9a241149b7867240e99105744","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.H0RealZerosFromSpectralRealization.Variantfcbeed6624ad16a9314dae640d2fe8813cc7baf9a241149b7867240e99105744","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"fcbeed6624ad16a9314dae640d2fe8813cc7baf9a241149b7867240e99105744","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/RH/ConditionalCriteria.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.RH.ConditionalCriteria

/-!
# Folder.Theorem.RH.ConditionalCriteria

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports checked conditional RH criteria.
Ontology: proof.rh.conditional_criteria
Pivot role: spectral
Zero typology: zeta
Contract boundary: theorem-wrapper
Composite stack role: rh
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.H0RealZerosFromSpectralRealization.Variantfcbeed6624ad16a9314dae640d2fe8813cc7baf9a241149b7867240e99105744

namespace Folder
namespace Theorem
namespace RH
namespace ConditionalCriteria

theorem h0_real_zeros_from_spectral_realization
    (O : Folder.RH.RHOperatorData)
    (hzero :
      ∀ z : ℂ,
        Folder.RH.H0Zero z ↔
          ∃ mu ∈ Folder.RH.RHSpectrum O.D, Folder.RH.spectralParameter mu = z)
    (hreal :
      ∀ mu ∈ Folder.RH.RHSpectrum O.D,
        Folder.RH.H0ZeroIsReal (Folder.RH.spectralParameter mu)) :
    Folder.RH.H0RealZeros :=
  Folder.RH.h0_real_zeros_from_spectral_realization O hzero hreal

theorem rh_of_h0_selfadjoint_realization
    (O : Folder.RH.RHOperatorData)
    (hsa : Folder.RH.IsSelfAdjoint O.D)
    (hcompact : Folder.RH.HasCompactResolvent O.D)
    (hzero :
      ∀ z : ℂ,
        Folder.RH.H0Zero z ↔
          ∃ mu ∈ Folder.RH.RHSpectrum O.D, Folder.RH.spectralParameter mu = z)
    (hreal :
      ∀ mu ∈ Folder.RH.RHSpectrum O.D,
        Folder.RH.H0ZeroIsReal (Folder.RH.spectralParameter mu))
    (htranslate : Folder.RH.RiemannHypothesis ↔ Folder.RH.H0RealZeros) :
    Folder.RH.RiemannHypothesis :=
  Folder.RH.rh_of_h0_selfadjoint_realization
    O hsa hcompact hzero hreal htranslate

theorem rh_of_trace_positivity_and_zero_correspondence
    (O : Folder.RH.RHOperatorData)
    (pairing : Folder.RH.TracePairing)
    (htrace :
      ∀ φ : Folder.RH.RHTestFunction,
        pairing.spectral.eval φ = pairing.index.eval φ)
    (hpos : Folder.RH.ProvenPositivity O)
    (hzero :
      ∀ z : ℂ,
        Folder.RH.H0Zero z ↔
          ∃ mu ∈ Folder.RH.RHSpectrum O.D, Folder.RH.spectralParameter mu = z)
    (hreal :
      ∀ mu ∈ Folder.RH.RHSpectrum O.D,
        Folder.RH.H0ZeroIsReal (Folder.RH.spectralParameter mu))
    (htranslate : Folder.RH.RiemannHypothesis ↔ Folder.RH.H0RealZeros) :
    Folder.RH.RiemannHypothesis :=
  Folder.RH.rh_of_trace_positivity_and_zero_correspondence
    O pairing htrace hpos hzero hreal htranslate

end ConditionalCriteria
end RH
end Theorem
end Folder
