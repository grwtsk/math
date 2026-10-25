-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProjectiveLimitPoint.Variant13aaa772c060397876a350d701d817024ee36753e796ed42642e0a693fe58d50","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"13aaa772c060397876a350d701d817024ee36753e796ed42642e0a693fe58d50","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ProjectiveLimitPoint.Variant13aaa772c060397876a350d701d817024ee36753e796ed42642e0a693fe58d50","mathematical_subject":"Foundations.Unclassified","original_sha256":"13aaa772c060397876a350d701d817024ee36753e796ed42642e0a693fe58d50","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/Boundary/LimitState.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.StratifiedBoundary.Boundary.ProjectiveSystem

/-!
# Inverse-limit state as compatibility data
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProjectiveLimitPoint.Variant13aaa772c060397876a350d701d817024ee36753e796ed42642e0a693fe58d50

namespace Mathematics.StratifiedBoundary

structure ProjectiveLimitPoint
    {State : Type u}
    (system : FinitePrefixProjectiveSystem State) where
  atStage : Nat → State
  compatible :
    ∀ {later earlier},
      earlier ≤ later →
      system.project later earlier (atStage later) =
        atStage earlier

def witnessedProjectiveLimitPoint
    {State : Type u}
    (system : FinitePrefixProjectiveSystem State) :
    ProjectiveLimitPoint system where
  atStage := system.compatibleWitness
  compatible := system.witnessCompatible

theorem projective_limit_inhabited
    {State : Type u}
    (system : FinitePrefixProjectiveSystem State) :
    Nonempty (ProjectiveLimitPoint system) :=
  ⟨witnessedProjectiveLimitPoint system⟩

end Mathematics.StratifiedBoundary
