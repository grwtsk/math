-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cf08OperationHomomorphism.Variante252c76eb5236e76c9f32778540610b6086777a7c9419cfdd7d93244000652e1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e252c76eb5236e76c9f32778540610b6086777a7c9419cfdd7d93244000652e1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Cf08OperationHomomorphism.Variante252c76eb5236e76c9f32778540610b6086777a7c9419cfdd7d93244000652e1","mathematical_subject":"Foundations.Unclassified","original_sha256":"e252c76eb5236e76c9f32778540610b6086777a7c9419cfdd7d93244000652e1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/ControlledPlane/Theorems/CF08_OperationHomomorphism.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.ControlledPlane.Registry


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cf08OperationHomomorphism.Variante252c76eb5236e76c9f32778540610b6086777a7c9419cfdd7d93244000652e1

namespace FCRS.ControlledPlane.Theorems

/-- CF-08 derives decoder correctness from an explicit homomorphism contract. -/
theorem cf08_operationHomomorphism
    (S : RealizationSystem)
    (M : ControlledPlaneModel S)
    (D : LosslessDecoder M.observation)
    (hHom :
      OperationHomomorphic
        M.sourceOperation M.observedOperation M.observation) :
    CF08Claim M D := by
  exact {
    homomorphic := hHom
    decodedOperation := by
      intro x y
      exact decode_operation
        M.sourceOperation M.observedOperation hHom D x y
  }

end FCRS.ControlledPlane.Theorems
