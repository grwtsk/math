-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ResidualCause.Variant81bf002ad78ac097269aa54232e20a30128f4593fce4a1a2c86e9bf0f2195b77","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"81bf002ad78ac097269aa54232e20a30128f4593fce4a1a2c86e9bf0f2195b77","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ResidualCause.Variant81bf002ad78ac097269aa54232e20a30128f4593fce4a1a2c86e9bf0f2195b77","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"81bf002ad78ac097269aa54232e20a30128f4593fce4a1a2c86e9bf0f2195b77","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/GraphAccess/Frontier.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.GraphAccess.Request

/-!
# Certified residual frontier

A residual frontier preserves unresolved traversal state without claiming
unreachability.  Its summary law is supplied by the concrete mode.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ResidualCause.Variant81bf002ad78ac097269aa54232e20a30128f4593fce4a1a2c86e9bf0f2195b77

namespace Mathematics.GraphAccess

inductive ResidualCause
  | fuelExhausted
  | budgetExhausted
      (dimensions : Finset BudgetDimension)
  | blockedByUnknowns
  | modeStopped
  | compatibilityBudgetExhausted
deriving DecidableEq

instance : Repr ResidualCause where
  reprPrec cause precedence :=
    match cause with
    | .fuelExhausted =>
        Repr.reprPrec (0 : Nat) precedence
    | .budgetExhausted dimensions =>
        Repr.reprPrec (1, dimensions.card) precedence
    | .blockedByUnknowns =>
        Repr.reprPrec (2 : Nat) precedence
    | .modeStopped =>
        Repr.reprPrec (3 : Nat) precedence
    | .compatibilityBudgetExhausted =>
        Repr.reprPrec (4 : Nat) precedence

structure ResidualFrontier
    (G : GraphCut)
    {profiles : ModeProfileFamily G}
    (req : AdmittedAccessRequest G profiles) where
  visited : Finset G.Node
  pending : List G.Node
  activeBoundary : Finset G.Node
  blockedEdges : Finset G.Edge
  usage : TraversalUsage
  cause : ResidualCause
  stateDigest : StateDigest
  cutDigest : CutDigest
  cutDigest_eq : cutDigest = G.digest
  visitedAdmissible :
    ∀ node ∈ visited,
      NodeAdmissible req.admissibility node
  pendingAdmissible :
    ∀ node ∈ pending,
      NodeAdmissible req.admissibility node
  boundaryAdmissible :
    ∀ node ∈ activeBoundary,
      NodeAdmissible req.admissibility node
  pending_nodup : pending.Nodup
  summarySound : Prop

/--
The core has no constructor turning a resource frontier into a graph-theoretic
unreachability proof.  Concrete modes may define a separate certificate type.
-/
def HasCertifiedTargetUnreachability
    {G : GraphCut}
    {profiles : ModeProfileFamily G}
    {req : AdmittedAccessRequest G profiles}
    (_frontier : ResidualFrontier G req) : Prop :=
  False

end Mathematics.GraphAccess
