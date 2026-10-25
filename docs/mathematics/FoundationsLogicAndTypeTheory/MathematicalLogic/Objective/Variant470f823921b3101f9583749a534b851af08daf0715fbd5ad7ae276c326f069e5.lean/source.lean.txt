-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.AccessProductKind.Variant9dc7fe6bcce2945d8ac3f281535bb8265e2fd7b435df31464135375f5e6a0081","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9dc7fe6bcce2945d8ac3f281535bb8265e2fd7b435df31464135375f5e6a0081","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.AccessProductKind.Variant9dc7fe6bcce2945d8ac3f281535bb8265e2fd7b435df31464135375f5e6a0081","mathematical_subject":"Logic.Foundations","original_sha256":"9dc7fe6bcce2945d8ac3f281535bb8265e2fd7b435df31464135375f5e6a0081","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/GraphAccess/Objective.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.GraphAccess.Authority

/-!
# Graph-access objectives

Objectives determine the result category and minimum access capability before
any traversal implementation is selected.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.AccessProductKind.Variant9dc7fe6bcce2945d8ac3f281535bb8265e2fd7b435df31464135375f5e6a0081

namespace Mathematics.GraphAccess

inductive AccessProductKind
  | path
  | coverage
  | sample
  | proposal
  | obstruction
deriving DecidableEq, Repr

inductive AccessObjective
  | minimumHop
  | minimumCost
  | goalDirectedCost
  | fairExploration
  | universalCoverage
  | finitePatternCoverage
  | invariantSampling
  | multiscaleDiversification
  | primitiveObstruction
  | limitCylinderAccess
deriving DecidableEq, Repr

def AccessObjective.productKind :
    AccessObjective → AccessProductKind
  | .minimumHop => .path
  | .minimumCost => .path
  | .goalDirectedCost => .path
  | .fairExploration => .coverage
  | .universalCoverage => .coverage
  | .finitePatternCoverage => .coverage
  | .invariantSampling => .sample
  | .multiscaleDiversification => .proposal
  | .primitiveObstruction => .obstruction
  | .limitCylinderAccess => .coverage

def AccessObjective.requiresTarget :
    AccessObjective → Bool
  | .minimumHop => true
  | .minimumCost => true
  | .goalDirectedCost => true
  | _ => false

def AccessObjective.requiredCapability :
    AccessObjective → AccessCapability
  | .minimumHop => .traverse
  | .minimumCost => .traverse
  | .goalDirectedCost => .traverse
  | .fairExploration => .traverse
  | .universalCoverage => .traverse
  | .finitePatternCoverage => .traverse
  | .invariantSampling => .sample
  | .multiscaleDiversification => .propose
  | .primitiveObstruction => .traverse
  | .limitCylinderAccess => .traverse

def AuthoritySupports
    (authority : AccessAuthority)
    (objective : AccessObjective) : Prop :=
  authority.grants objective.requiredCapability = true

instance
    (authority : AccessAuthority)
    (objective : AccessObjective) :
    Decidable (AuthoritySupports authority objective) :=
  by
    unfold AuthoritySupports
    infer_instance

end Mathematics.GraphAccess
