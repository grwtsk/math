# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Semigroup.Variant45144dd7529e88f7e06b7bed2d35ccb3dcb2af84875d12f9977bbb149e856746

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `573275270eb5936ef81fd58474d458f823562fc9` · SHA-256 `7af001298975276f2d3a63175dc9edc3dc23ba8c4981a5f38a7ca2f597d7bd84`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HeatSemigroupCertificate.Variant2db930c1badda2933f681bdcc2ab662d809ab517f7f442d95f58ee2b69b61359","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2db930c1badda2933f681bdcc2ab662d809ab517f7f442d95f58ee2b69b61359","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.HeatSemigroupCertificate.Variant2db930c1badda2933f681bdcc2ab662d809ab517f7f442d95f58ee2b69b61359","mathematical_subject":"Foundations.Unclassified","original_sha256":"2db930c1badda2933f681bdcc2ab662d809ab517f7f442d95f58ee2b69b61359","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Flow/Heat/Semigroup.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Flow.Heat.Kernel


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HeatSemigroupCertificate.Variant2db930c1badda2933f681bdcc2ab662d809ab517f7f442d95f58ee2b69b61359

namespace Surface

structure HeatSemigroupCertificate where
  flow : HeatFlowDescriptor
  identityAtZero : Prop
  compositionLaw : Prop

theorem heatSemigroup_requires_identity_and_composition
    (cert : HeatSemigroupCertificate) :
    cert.identityAtZero ->
      cert.compositionLaw ->
        cert.identityAtZero ∧ cert.compositionLaw := by
  intro h0 hcomp
  exact ⟨h0, hcomp⟩

end Surface
```
