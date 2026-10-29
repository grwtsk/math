-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteTracePerturbationCertificate.Variantf0e230e9c2ac72d5aa24170ab28c83684c90ee70a5a6a59bb32d278f283d02e8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f0e230e9c2ac72d5aa24170ab28c83684c90ee70a5a6a59bb32d278f283d02e8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FiniteTracePerturbationCertificate.Variantf0e230e9c2ac72d5aa24170ab28c83684c90ee70a5a6a59bb32d278f283d02e8","mathematical_subject":"Foundations.Unclassified","original_sha256":"f0e230e9c2ac72d5aa24170ab28c83684c90ee70a5a6a59bb32d278f283d02e8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/Boundary/Perturbation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Connector perturbation bounds

Residual terms are explicit fields and cannot disappear in limit notation.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteTracePerturbationCertificate.Variantf0e230e9c2ac72d5aa24170ab28c83684c90ee70a5a6a59bb32d278f283d02e8

namespace Mathematics.StratifiedBoundary

structure FiniteTracePerturbationCertificate where
  traceDiscrepancy : Nat
  observableLipschitzScale : Nat
  invariantLawDisplacement : Nat
  bound :
    traceDiscrepancy ≤
      observableLipschitzScale * invariantLawDisplacement

theorem finite_trace_perturbation_bound
    (certificate : FiniteTracePerturbationCertificate) :
    certificate.traceDiscrepancy ≤
      certificate.observableLipschitzScale *
        certificate.invariantLawDisplacement :=
  certificate.bound

structure StratumConnectorPerturbationCertificate where
  traceConnectorDefect : Nat
  lawConnectorContribution : Nat
  observableMismatch : Nat
  bound :
    traceConnectorDefect ≤
      lawConnectorContribution + observableMismatch

theorem stratum_connector_perturbation_bound
    (certificate :
      StratumConnectorPerturbationCertificate) :
    certificate.traceConnectorDefect ≤
      certificate.lawConnectorContribution +
        certificate.observableMismatch :=
  certificate.bound

end Mathematics.StratifiedBoundary
