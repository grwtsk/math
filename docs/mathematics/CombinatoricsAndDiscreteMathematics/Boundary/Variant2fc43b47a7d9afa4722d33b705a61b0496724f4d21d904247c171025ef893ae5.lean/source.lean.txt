-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.SemanticClause.Variant2ec978b9ac7684b928c89539c064191cfac978c475b582831b0175e7f36dde84","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2ec978b9ac7684b928c89539c064191cfac978c475b582831b0175e7f36dde84","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.SemanticClause.Variant2ec978b9ac7684b928c89539c064191cfac978c475b582831b0175e7f36dde84","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"2ec978b9ac7684b928c89539c064191cfac978c475b582831b0175e7f36dde84","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/MathDiscovery/Concept/Boundary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MathDiscovery.Concept.Authority
import Mathlib.Data.Finset.Basic

/-!
# Semantic definitions and fail-closed boundaries

The first formal boundary is intentionally extensional over reviewed semantic
clauses.  Later extractors may derive clauses from elaborated signatures, but a
similarity score never satisfies a boundary clause by itself.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.SemanticClause.Variant2ec978b9ac7684b928c89539c064191cfac978c475b582831b0175e7f36dde84

namespace MathDiscovery.Concept

/-- One normalized semantic clause used by a concept boundary. -/
structure SemanticClause where
  id : StableId
  statement : String
  deriving DecidableEq, Inhabited

/-- Auditable concept intension. -/
structure SemanticDefinition where
  summary : String
  parameters : Finset SemanticClause
  ambient : Finset SemanticClause
  hypotheses : Finset SemanticClause
  laws : Finset SemanticClause
  permittedInstances : Finset SemanticClause
  nonclaims : Finset SemanticClause
  normalizedDigest : Digest
  deriving DecidableEq

/-- Explicit inclusion, exclusion, and nonclaim boundary. -/
structure Boundary where
  includes : Finset SemanticClause
  excludes : Finset SemanticClause
  nonclaims : Finset SemanticClause
  deriving DecidableEq

/-- Semantic profile of a compiled or runtime entity proposed for assignment. -/
structure EntityProfile where
  clauses : Finset SemanticClause
  normalizedDigest : Digest
  deriving DecidableEq

namespace Boundary

/-- The entity satisfies every required clause and no excluded clause. -/
def Accepts (boundary : Boundary) (profile : EntityProfile) : Prop :=
  boundary.includes ⊆ profile.clauses ∧
    Disjoint boundary.excludes profile.clauses

instance (boundary : Boundary) (profile : EntityProfile) :
    Decidable (boundary.Accepts profile) :=
  inferInstanceAs (Decidable
    (boundary.includes ⊆ profile.clauses ∧
      Disjoint boundary.excludes profile.clauses))

/-- Adding verified clauses cannot invalidate the positive part of a boundary. -/
theorem includes_mono
    {boundary : Boundary} {small large : EntityProfile}
    (accepted : boundary.Accepts small)
    (subset : small.clauses ⊆ large.clauses)
    (noExcluded : Disjoint boundary.excludes large.clauses) :
    boundary.Accepts large :=
  ⟨Finset.Subset.trans accepted.1 subset, noExcluded⟩

/-- Any witnessed excluded clause rejects the profile. -/
theorem rejects_of_excluded
    {boundary : Boundary} {profile : EntityProfile} {clause : SemanticClause}
    (inExcluded : clause ∈ boundary.excludes)
    (inProfile : clause ∈ profile.clauses) :
    ¬ boundary.Accepts profile := by
  intro accepted
  exact Finset.disjoint_left.mp accepted.2 inExcluded inProfile

end Boundary

end MathDiscovery.Concept
