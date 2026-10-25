# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CS11SignatureReconstruction.Variantc5984ad84095f618e0b9edc57884df15d99b7db119609783f8fd144e47c41eb7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c0e4d5d53932fd8ceb884fc7be31f9eca233f93d` · SHA-256 `f1f272ce5fb377e63b1c20a68a7f3016eb640a241fdb1b722ec068bc0c72b75e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
