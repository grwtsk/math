-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RodgersTaoFlowIsQuasiIsomorphism.Variant238063d9b7042569c06ef693b1e2bb5c81e863433639eec42d48e8878a024db9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"238063d9b7042569c06ef693b1e2bb5c81e863433639eec42d48e8878a024db9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.RodgersTaoFlowIsQuasiIsomorphism.Variant238063d9b7042569c06ef693b1e2bb5c81e863433639eec42d48e8878a024db9","mathematical_subject":"Foundations.Unclassified","original_sha256":"238063d9b7042569c06ef693b1e2bb5c81e863433639eec42d48e8878a024db9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/DerivedSheaf/RodgersTaoQuasiIsomorphism.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.DerivedSheaf.RodgersTaoQuasiIsomorphism

/-!
# Folder.Theorem.DerivedSheaf.RodgersTaoQuasiIsomorphism

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports Rodgers-Tao quasi-isomorphism bridge facts, not BinaryMatrix data.
Ontology: derived.rodgers_tao_quasi_isomorphism
Pivot role: spectral
Zero typology: quasi-isomorphism-contract
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RodgersTaoFlowIsQuasiIsomorphism.Variant238063d9b7042569c06ef693b1e2bb5c81e863433639eec42d48e8878a024db9

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem rodgers_tao_flow_is_quasi_isomorphism
    (T : Folder.DerivedSheaf.RodgersTaoQuasiIsomorphism) :
    T.quasiIso.inducesCohomologyIso :=
  Folder.DerivedSheaf.rodgers_tao_flow_is_quasi_isomorphism T

theorem rodgers_tao_flow_has_quasi_isomorphism
    (T : Folder.DerivedSheaf.RodgersTaoQuasiIsomorphism) :
    ∃ q : Folder.DerivedSheaf.QuasiIsomorphism
        T.sourceComplex T.targetComplex,
      q.inducesCohomologyIso :=
  Folder.DerivedSheaf.rodgers_tao_flow_has_quasi_isomorphism T

theorem rodgers_tao_flow_realizes_quasi_iso
    (T : Folder.DerivedSheaf.RodgersTaoQuasiIsomorphism) :
    T.flowRealizesQuasiIso :=
  Folder.DerivedSheaf.rodgers_tao_flow_realizes_quasi_iso T

theorem rodgers_tao_index_transport_quasi_iso
    (T : Folder.DerivedSheaf.RodgersTaoIndexTransport) :
    T.quasiIso.inducesCohomologyIso :=
  Folder.DerivedSheaf.rodgers_tao_index_transport_quasi_iso T

theorem rodgers_tao_index_transport_preserves_euler
    (T : Folder.DerivedSheaf.RodgersTaoIndexTransport) :
    T.eulerTransport.targetEuler.value =
      T.eulerTransport.sourceEuler.value :=
  Folder.DerivedSheaf.rodgers_tao_index_transport_preserves_euler T

end DerivedSheaf
end Theorem
end Folder
