-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cs11SignatureReconstruction.Variant312cda292d425f8b47e6fc48b040d764615766b9edeee0af434d47af79ccf2d6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"312cda292d425f8b47e6fc48b040d764615766b9edeee0af434d47af79ccf2d6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Cs11SignatureReconstruction.Variant312cda292d425f8b47e6fc48b040d764615766b9edeee0af434d47af79ccf2d6","mathematical_subject":"Foundations.Unclassified","original_sha256":"312cda292d425f8b47e6fc48b040d764615766b9edeee0af434d47af79ccf2d6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/ControlledSpherical/Theorems/CS11_SignatureReconstruction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.ControlledSpherical.Registry


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cs11SignatureReconstruction.Variant312cda292d425f8b47e6fc48b040d764615766b9edeee0af434d47af79ccf2d6

namespace FCRS.ControlledSpherical.Theorems

open FCRS.ControlledPlane

/--
CS-11 derives the observation-image signature isomorphism only from an
explicit full-signature preservation contract, including its one designated
binary operation, together with the decoder.
-/
theorem cs11_signatureReconstruction
    (S : RealizationSystem)
    (M : ControlledPlaneModel S)
    (SM : ControlledSphericalModel S M)
    (D : LosslessDecoder M.observation)
    (hPreserves :
      ControlledSignaturePreservation
        SM.provenanceSignature M.observation SM.observedSignature) :
    CS11Claim SM D :=
  ⟨controlledSignatureIso_of_decoder
    SM.provenanceSignature SM.observedSignature D hPreserves⟩

end FCRS.ControlledSpherical.Theorems
