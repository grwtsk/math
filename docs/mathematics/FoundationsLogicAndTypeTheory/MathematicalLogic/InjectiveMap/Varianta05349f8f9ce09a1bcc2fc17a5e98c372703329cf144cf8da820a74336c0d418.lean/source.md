# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.InjectiveMap.Varianta05349f8f9ce09a1bcc2fc17a5e98c372703329cf144cf8da820a74336c0d418

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4f41a5b33a59597b891101790a92d5f90390de83` · SHA-256 `e4ed8ee25b2b4236ff5eb14ba5784e0b515b516ac5f825356d55d9a9e426ba8d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.InjectiveMapWitness.Variant4efcb018377eef26eb47f549e5e3192a81d6dd4401ceb61572e3062458d2adea","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4efcb018377eef26eb47f549e5e3192a81d6dd4401ceb61572e3062458d2adea","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.InjectiveMapWitness.Variant4efcb018377eef26eb47f549e5e3192a81d6dd4401ceb61572e3062458d2adea","mathematical_subject":"Logic.Foundations","original_sha256":"4efcb018377eef26eb47f549e5e3192a81d6dd4401ceb61572e3062458d2adea","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/ControlledSpherical/InjectiveMap.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.ControlledSpherical.GraphRealization
import FCRS.ControlledSpherical.SphereCarriers


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.InjectiveMapWitness.Variant4efcb018377eef26eb47f549e5e3192a81d6dd4401ceb61572e3062458d2adea

universe uA uB

namespace FCRS.ControlledSpherical

/--
A signature-level injective map between opaque point sorts.  This structure
has no topology, continuity, edge-path, or homeomorphism-on-image content.
-/
structure InjectiveMapWitness (A : Type uA) (B : Type uB) where
  map : A → B
  injective : Function.Injective map

end FCRS.ControlledSpherical
```
