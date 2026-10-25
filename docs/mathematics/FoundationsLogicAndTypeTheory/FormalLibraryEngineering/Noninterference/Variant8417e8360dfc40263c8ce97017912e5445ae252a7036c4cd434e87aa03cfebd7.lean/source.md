# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Noninterference.Variant8417e8360dfc40263c8ce97017912e5445ae252a7036c4cd434e87aa03cfebd7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ad524b52938fb386782b4ea2494d0badeae16e4c` · SHA-256 `c9f2023ecb76fdbb9a2c6cf773fb7500b1ba5b4d0ac59a22a2591810dd2fcd61`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NodeProfileWithPresentation.Variant1292ba180e46318acea9b4e17ab51da621f75735a7c535fd54bb5147fed123f6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1292ba180e46318acea9b4e17ab51da621f75735a7c535fd54bb5147fed123f6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.NodeProfileWithPresentation.Variant1292ba180e46318acea9b4e17ab51da621f75735a7c535fd54bb5147fed123f6","mathematical_subject":"Foundations.Unclassified","original_sha256":"1292ba180e46318acea9b4e17ab51da621f75735a7c535fd54bb5147fed123f6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemiLocalDefect/Presentation/Noninterference.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.Presentation.NodeProfile


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NodeProfileWithPresentation.Variant1292ba180e46318acea9b4e17ab51da621f75735a7c535fd54bb5147fed123f6

namespace Mathematics.SemiLocalDefect.Presentation

def NodeProfile.withPresentation
    (profile : NodeProfile)
    (presentationRef : String) :
    NodeProfile where
  nodeRef := profile.nodeRef
  capacityRef := profile.capacityRef
  openObligationRefs := profile.openObligationRefs
  presentationRef := presentationRef
  authoritativeEffect := profile.authoritativeEffect

theorem presentation_preserves_capacity_reference
    (profile : NodeProfile)
    (presentationRef : String) :
    (profile.withPresentation presentationRef).capacityRef =
      profile.capacityRef :=
  rfl

theorem presentation_has_no_authoritative_effect
    (profile : NodeProfile)
    (presentationRef : String)
    (profile_nonauthoritative :
      profile.authoritativeEffect = false) :
    (profile.withPresentation presentationRef).authoritativeEffect =
      false :=
  profile_nonauthoritative

end Mathematics.SemiLocalDefect.Presentation
```
