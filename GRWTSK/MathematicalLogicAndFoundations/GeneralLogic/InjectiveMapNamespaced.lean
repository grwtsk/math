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
