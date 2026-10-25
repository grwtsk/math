# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RodgersTaoContinuationComplex.Variant51c1b1fa2c7cbc683df08fe967e42a34a7bd393bcc800f63baea3bc564b1f3f8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `47dccefac898ca86794f9c5bc1c25a0382235b1f` · SHA-256 `f863a2a804d161d5ff0880542d5da55f08c32c77acb80067d12f0f06b9f18729`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RodgersTaoContinuationComplex.Variant046d020bea3c302b2d69773f2acbedfe63d60c7704c2f57fc27d0fc4c95b355d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"046d020bea3c302b2d69773f2acbedfe63d60c7704c2f57fc27d0fc4c95b355d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.RodgersTaoContinuationComplex.Variant046d020bea3c302b2d69773f2acbedfe63d60c7704c2f57fc27d0fc4c95b355d","mathematical_subject":"Foundations.Unclassified","original_sha256":"046d020bea3c302b2d69773f2acbedfe63d60c7704c2f57fc27d0fc4c95b355d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/CanonicalPath/RodgersTaoContinuationComplex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CanonicalPath.AnalyticContinuationMap

/-!
# Folder.CanonicalPath.RodgersTaoContinuationComplex

Radiation role: research-boundary
BinaryMatrix spine: This module records Rodgers-Tao continuation complexes.
Ontology: canonical.continuation_quasi_iso
Pivot role: spectral
Zero typology: transport-boundary
Contract boundary: theorem-target
Composite stack role: canonical-path
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RodgersTaoContinuationComplex.Variant046d020bea3c302b2d69773f2acbedfe63d60c7704c2f57fc27d0fc4c95b355d

namespace Folder
namespace CanonicalPath

structure RodgersTaoContinuationComplex where
  heatFamily : ResearchTopos.RodgersTaoHeatFamily
  complexAtTime : Type
  timeParameter : Type
  continuationMap :
    timeParameter → timeParameter → Option AnalyticContinuationMap
  compositionLaw? : Prop
  compositionLaw_certified : compositionLaw?
  identityLaw? : Prop
  identityLaw_certified : identityLaw?
  sourceLabel : String

theorem rodgers_tao_continuation_identity_if_supplied
    (C : RodgersTaoContinuationComplex) :
    C.identityLaw? :=
  C.identityLaw_certified

theorem rodgers_tao_continuation_composition_if_supplied
    (C : RodgersTaoContinuationComplex) :
    C.compositionLaw? :=
  C.compositionLaw_certified

end CanonicalPath
end Folder
```
