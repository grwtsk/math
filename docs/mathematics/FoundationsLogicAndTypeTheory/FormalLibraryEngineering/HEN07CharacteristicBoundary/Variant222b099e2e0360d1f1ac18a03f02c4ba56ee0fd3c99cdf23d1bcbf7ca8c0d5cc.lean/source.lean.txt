-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Hen07CharacteristicBoundary.Variant52ccbeafc29a4807d121794c949ed54895aa93a5949103e8247c270d0317337a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"52ccbeafc29a4807d121794c949ed54895aa93a5949103e8247c270d0317337a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Hen07CharacteristicBoundary.Variant52ccbeafc29a4807d121794c949ed54895aa93a5949103e8247c270d0317337a","mathematical_subject":"Foundations.Unclassified","original_sha256":"52ccbeafc29a4807d121794c949ed54895aa93a5949103e8247c270d0317337a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Algebraization/Theorems/HEN07_CharacteristicBoundary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Algebraization.Foundations


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Hen07CharacteristicBoundary.Variant52ccbeafc29a4807d121794c949ed54895aa93a5949103e8247c270d0317337a

namespace FCRS.Algebraization.Theorems

/--
A scoped nonalgebraizable object refutes unrestricted essential surjectivity
in characteristic zero or mixed characteristic.
-/
theorem hen07_characteristicBoundary
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S)
    (hCharacteristic : S.P.characteristicZeroOrMixedProfile)
    (hCounterexample : S.P.knownRankTwoNonAlgebraizableObject) :
    ¬ EssentiallySurjective S.functors.HenPullback := by
  have hOutside :=
    registry.hen07 hCharacteristic hCounterexample
  exact counterexampleNotEssentiallySurjective
    S.functors.HenPullback
    hOutside

end FCRS.Algebraization.Theorems
