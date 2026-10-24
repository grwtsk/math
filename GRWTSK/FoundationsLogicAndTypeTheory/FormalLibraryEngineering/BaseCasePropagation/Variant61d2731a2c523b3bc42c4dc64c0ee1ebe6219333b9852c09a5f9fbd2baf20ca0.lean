-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TransportedBaseCaseEulerNonzero.Variantd3c38bb40ef53a207f33617b2e3e8e26a271cc2128ce2ac826595d9ca039d383","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d3c38bb40ef53a207f33617b2e3e8e26a271cc2128ce2ac826595d9ca039d383","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.TransportedBaseCaseEulerNonzero.Variantd3c38bb40ef53a207f33617b2e3e8e26a271cc2128ce2ac826595d9ca039d383","mathematical_subject":"Foundations.Unclassified","original_sha256":"d3c38bb40ef53a207f33617b2e3e8e26a271cc2128ce2ac826595d9ca039d383","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/DerivedSheaf/BaseCasePropagation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.DerivedSheaf.BaseCasePropagation

/-!
# Folder.Theorem.DerivedSheaf.BaseCasePropagation

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports base-case propagation facts, not BinaryMatrix data.
Ontology: base.index_propagation
Pivot role: spectral
Zero typology: nonzero-index
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TransportedBaseCaseEulerNonzero.Variantd3c38bb40ef53a207f33617b2e3e8e26a271cc2128ce2ac826595d9ca039d383

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem transported_base_case_euler_nonzero
    (T : Folder.DerivedSheaf.TransportedBaseCaseEuler) :
    T.transport.eulerTransport.targetEuler.value ≠ 0 :=
  Folder.DerivedSheaf.transported_base_case_euler_nonzero T

theorem base_case_propagation_conclusion
    {M : Folder.DerivedSheaf.MellKTheory}
    (P : Folder.DerivedSheaf.BaseCaseCriticalLinePropagation M) :
    P.criticalLineConclusion :=
  Folder.DerivedSheaf.base_case_propagation_conclusion P

end DerivedSheaf
end Theorem
end Folder
