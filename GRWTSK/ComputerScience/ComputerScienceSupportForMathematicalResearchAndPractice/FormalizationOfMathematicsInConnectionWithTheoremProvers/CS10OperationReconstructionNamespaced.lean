-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cs10OperationReconstruction.Variant7943624a59ac675a9da78f23b23dbb7ae143cb6015d50256575faa19f836fd79","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7943624a59ac675a9da78f23b23dbb7ae143cb6015d50256575faa19f836fd79","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Cs10OperationReconstruction.Variant7943624a59ac675a9da78f23b23dbb7ae143cb6015d50256575faa19f836fd79","mathematical_subject":"Foundations.Unclassified","original_sha256":"7943624a59ac675a9da78f23b23dbb7ae143cb6015d50256575faa19f836fd79","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/ControlledSpherical/Theorems/CS10_OperationReconstruction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.ControlledSpherical.Registry


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cs10OperationReconstruction.Variant7943624a59ac675a9da78f23b23dbb7ae143cb6015d50256575faa19f836fd79

namespace FCRS.ControlledSpherical.Theorems

open FCRS.ControlledPlane

/--
CS-10 reconstructs the one designated binary operation under its explicit
homomorphism witness.
-/
theorem cs10_operationReconstruction
    (S : RealizationSystem)
    (M : ControlledPlaneModel S)
    (D : LosslessDecoder M.observation)
    (hHom :
      OperationHomomorphic
        M.sourceOperation M.observedOperation M.observation) :
    CS10Claim D := by
  intro x y
  exact controlledSpherical_decode_operation
    M.sourceOperation M.observedOperation D hHom x y

end FCRS.ControlledSpherical.Theorems
