-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ReducerSeed.Variantab7c0ba98288f4705c7d2db25a53228a669190b757ee838b533b45ceffdc1a99","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ab7c0ba98288f4705c7d2db25a53228a669190b757ee838b533b45ceffdc1a99","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ReducerSeed.Variantab7c0ba98288f4705c7d2db25a53228a669190b757ee838b533b45ceffdc1a99","mathematical_subject":"Computation.DataStructures","original_sha256":"ab7c0ba98288f4705c7d2db25a53228a669190b757ee838b533b45ceffdc1a99","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Incremental/ReducerSeed.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Incremental.Request


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ReducerSeed.Variantab7c0ba98288f4705c7d2db25a53228a669190b757ee838b533b45ceffdc1a99

namespace Surface
namespace Incremental

structure ReducerSeed where
  changedFile : ChangedLeanFile
  moduleKey : ModuleKey
  resolvedBy : String
  seedReason : ChangeKind
  resolutionBoundary : List String
deriving Repr

structure SeedResolutionCertificate where
  changedFile : ChangedLeanFile
  seed : ReducerSeed
  seedMatchesChangedFile :
    seed.changedFile = changedFile
  uniqueModule : Prop
  uniqueModuleCertified : uniqueModule
  claimBoundary : List String
deriving Repr

theorem changedFile_resolves_to_reducerSeed
    (C : SeedResolutionCertificate) :
    C.seed.changedFile = C.changedFile ∧ C.uniqueModule := by
  exact ⟨C.seedMatchesChangedFile, C.uniqueModuleCertified⟩

end Incremental
end Surface
