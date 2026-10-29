-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.ModelTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.GroundedResponse.Variant998cf06725d8709a84c12e1650c2024606882e2be7009e6d3aa0897bef6e4878","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"998cf06725d8709a84c12e1650c2024606882e2be7009e6d3aa0897bef6e4878","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.ModelTheory.SourceCorpus.GroundedResponse.Variant998cf06725d8709a84c12e1650c2024606882e2be7009e6d3aa0897bef6e4878","mathematical_subject":"Logic.ModelTheory","original_sha256":"998cf06725d8709a84c12e1650c2024606882e2be7009e6d3aa0897bef6e4878","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Language/GroundedResponse.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Language.GroundedClause
import DAF.Rhetorical.Grounding

/-!
# Grounded responses

Response validation stops at the first rejected clause.  It never repairs a
model response, and a successful response contains a proof that every
assertive clause passed the exact source and terrain checks.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.GroundedResponse.Variant998cf06725d8709a84c12e1650c2024606882e2be7009e6d3aa0897bef6e4878

namespace DAF.Language

open DAF.Universe
open DAF.Rhetorical

/-- Snapshot-pinned response emitted by an external language model. -/
structure GroundedResponse where
  responseId : StableId
  snapshotId : SnapshotId
  clauses : List GroundedClause
  /-- Optional external-model navigation metadata.  The legacy validator
  rejects a nonempty list; callers must use the registry-aware validator. -/
  rhetoricalLocators : List ExternalRhetoricalLocator := []

inductive ResponseGroundingError
  | staleSnapshot
  | clauseRejected (clauseId : ClaimId) (reason : GroundingError)
  | rhetoricalRegistryRequired
  deriving DecidableEq, Repr

/-- Every clause in a list has a proof-bearing grounding certificate. -/
structure CheckedClauseList
    (context : GroundingContext)
    (clauses : List GroundedClause) : Type where
  checked : ∀ clause ∈ clauses, clause.Accepted context

/-- Recursively validate a response without silently deleting failed clauses. -/
noncomputable def validateClauseList
    (context : GroundingContext)
    (clauses : List GroundedClause) :
    Except ResponseGroundingError (CheckedClauseList context clauses) := by
  induction clauses with
  | nil =>
      exact .ok { checked := by simp }
  | cons first remaining inductionHypothesis =>
      cases firstResult : validateGroundedClause context first with
      | error reason => exact .error (.clauseRejected first.clauseId reason)
      | ok firstChecked =>
          cases remainingResult : inductionHypothesis with
          | error reason => exact .error reason
          | ok remainingChecked =>
              exact .ok
                { checked := by
                    intro clause membership
                    simp only [List.mem_cons] at membership
                    rcases membership with same | later
                    · subst clause
                      exact ⟨firstChecked⟩
                    · exact remainingChecked.checked clause later }

/-- Successful validation for a whole response. -/
structure CheckedGroundedResponse
    (context : GroundingContext)
    (response : GroundedResponse) : Type where
  snapshotMatches : response.snapshotId = context.terrain.manifest.snapshotId
  clausesChecked : CheckedClauseList context response.clauses
  noUncheckedRhetoricalLocators : response.rhetoricalLocators = []

/-- Fail closed on a stale snapshot or the first invalid clause. -/
noncomputable def validateGroundedResponse
    (context : GroundingContext)
    (response : GroundedResponse) :
    Except ResponseGroundingError (CheckedGroundedResponse context response) := by
  by_cases snapshotMatches :
      response.snapshotId = context.terrain.manifest.snapshotId
  · by_cases noUncheckedRhetoricalLocators : response.rhetoricalLocators = []
    · cases clausesResult : validateClauseList context response.clauses with
      | error reason => exact .error reason
      | ok clausesChecked => exact .ok {
          snapshotMatches
          clausesChecked
          noUncheckedRhetoricalLocators }
    · exact .error .rhetoricalRegistryRequired
  · exact .error .staleSnapshot

namespace ExternalRhetoricalLocator

/-- A rhetorical locator belongs to an assertive clause in this response. -/
def ClauseBound
    (clauses : List GroundedClause)
    (locator : ExternalRhetoricalLocator) : Prop :=
  ∃ clause ∈ clauses,
    clause.clauseId = locator.clauseId ∧ clause.kind = .assertion

end ExternalRhetoricalLocator

/-- Stable fail-closed errors for externally supplied rhetorical metadata. -/
inductive RhetoricalLocatorError
  | orphanedClause
  | staleKernelDigest
  | uncertifiedGramTrace
  | staleTraceDigest
  | emptyPointSet
  | zeroNormPoint
  | uncertifiedPoint
  | invalidScoreShape
  | uncertifiedScore
  | authorityPromotion
  deriving DecidableEq, Repr

/-- A successful locator validation retains all navigational obligations. -/
structure CheckedExternalRhetoricalLocator
    (registry : RhetoricalEvidenceRegistry)
    (clauses : List GroundedClause)
    (locator : ExternalRhetoricalLocator) : Type where
  clauseBound : ExternalRhetoricalLocator.ClauseBound clauses locator
  kernelFresh : locator.KernelFresh registry
  traceRegistered : locator.TraceRegistered registry
  traceDigestFresh : locator.TraceDigestFresh registry
  gramCertified : locator.GramCertified registry
  pointsNonempty : locator.points ≠ []
  pointNormsPositive : locator.PointNormsPositive
  pointsCertified : locator.PointsCertified registry
  scoreShapesValid : locator.ScoreShapesValid
  scoresCertified : locator.ScoresCertified registry
  navigationOnly : locator.NavigationOnly

/-- Check a locator only against trusted registry entries.  The locator's
certificate identifiers and scores cannot certify themselves. -/
noncomputable def validateExternalRhetoricalLocator
    (registry : RhetoricalEvidenceRegistry)
    (clauses : List GroundedClause)
    (locator : ExternalRhetoricalLocator) :
    Except RhetoricalLocatorError
      (CheckedExternalRhetoricalLocator registry clauses locator) := by
  classical
  by_cases clauseBound : ExternalRhetoricalLocator.ClauseBound clauses locator
  · by_cases kernelFresh : locator.KernelFresh registry
    · by_cases traceRegistered : locator.TraceRegistered registry
      · by_cases traceDigestFresh : locator.TraceDigestFresh registry
        · by_cases gramCertified : locator.GramCertified registry
          · by_cases pointsNonempty : locator.points ≠ []
            · by_cases pointNormsPositive : locator.PointNormsPositive
              · by_cases pointsCertified : locator.PointsCertified registry
                · by_cases scoreShapesValid : locator.ScoreShapesValid
                  · by_cases scoresCertified : locator.ScoresCertified registry
                    · by_cases navigationOnly : locator.NavigationOnly
                      · exact .ok {
                          clauseBound
                          kernelFresh
                          traceRegistered
                          traceDigestFresh
                          gramCertified
                          pointsNonempty
                          pointNormsPositive
                          pointsCertified
                          scoreShapesValid
                          scoresCertified
                          navigationOnly }
                      · exact .error .authorityPromotion
                    · exact .error .uncertifiedScore
                  · exact .error .invalidScoreShape
                · exact .error .uncertifiedPoint
              · exact .error .zeroNormPoint
            · exact .error .emptyPointSet
          · exact .error .uncertifiedGramTrace
        · exact .error .staleTraceDigest
      · exact .error .uncertifiedGramTrace
    · exact .error .staleKernelDigest
  · exact .error .orphanedClause

/-- Checked navigation scores are never theorem evidence. -/
theorem CheckedExternalRhetoricalLocator.score_navigation_only
    {registry : RhetoricalEvidenceRegistry}
    {clauses : List GroundedClause}
    {locator : ExternalRhetoricalLocator}
    (checked : CheckedExternalRhetoricalLocator registry clauses locator)
    {score : RhetoricalNavigationScore}
    (membership : score ∈ locator.scores) :
    score.authority = .navigationOnly :=
  checked.navigationOnly.2 score membership

/-- Every retained relation value has the closed arity/value form for its
profile. -/
theorem CheckedExternalRhetoricalLocator.score_shape_valid
    {registry : RhetoricalEvidenceRegistry}
    {clauses : List GroundedClause}
    {locator : ExternalRhetoricalLocator}
    (checked : CheckedExternalRhetoricalLocator registry clauses locator)
    {score : RhetoricalNavigationScore}
    (membership : score ∈ locator.scores) :
    score.ShapeValid :=
  checked.scoreShapesValid score membership

/-- Every retained score resolves to an exact report in the accepted foreign
trace; changing a fixture value cannot create a certificate. -/
theorem CheckedExternalRhetoricalLocator.score_report_certified
    {registry : RhetoricalEvidenceRegistry}
    {clauses : List GroundedClause}
    {locator : ExternalRhetoricalLocator}
    (checked : CheckedExternalRhetoricalLocator registry clauses locator)
    {score : RhetoricalNavigationScore}
    (membership : score ∈ locator.scores) :
    ∃ certificate,
      registry.gramTraceFor locator.activeGramTraceId = some certificate ∧
      certificate.ScoreCertified score := by
  rcases checked.scoresCertified with ⟨certificate, lookup, certified⟩
  exact ⟨certificate, lookup, certified score membership⟩

/-- Checked concept-role coordinates have a strictly positive kernel
diagonal, so normalization cannot silently divide by zero. -/
theorem CheckedExternalRhetoricalLocator.point_diagonal_pos
    {registry : RhetoricalEvidenceRegistry}
    {clauses : List GroundedClause}
    {locator : ExternalRhetoricalLocator}
    (checked : CheckedExternalRhetoricalLocator registry clauses locator)
    {point : RhetoricalPointLocator}
    (membership : point ∈ locator.points) :
    0 < point.diagonalRe :=
  checked.pointNormsPositive point membership

/-- Every external locator in a response has a proof-bearing validation
record. -/
inductive CheckedRhetoricalLocatorList
    (registry : RhetoricalEvidenceRegistry)
    (clauses : List GroundedClause) :
    List ExternalRhetoricalLocator → Type
  | nil : CheckedRhetoricalLocatorList registry clauses []
  | cons
      {first : ExternalRhetoricalLocator}
      {remaining : List ExternalRhetoricalLocator}
      (firstChecked : CheckedExternalRhetoricalLocator registry clauses first)
      (remainingChecked : CheckedRhetoricalLocatorList registry clauses remaining) :
      CheckedRhetoricalLocatorList registry clauses (first :: remaining)

/-- Validate all locators without dropping or repairing a rejected entry. -/
noncomputable def validateRhetoricalLocatorList
    (registry : RhetoricalEvidenceRegistry)
    (clauses : List GroundedClause)
    (locators : List ExternalRhetoricalLocator) :
    Except (StableId × RhetoricalLocatorError)
      (CheckedRhetoricalLocatorList registry clauses locators) := by
  induction locators with
  | nil => exact .ok .nil
  | cons first remaining inductionHypothesis =>
      cases firstResult : validateExternalRhetoricalLocator registry clauses first with
      | error reason => exact .error (first.locatorId, reason)
      | ok firstChecked =>
          cases remainingResult : inductionHypothesis with
          | error reason => exact .error reason
          | ok remainingChecked =>
              exact .ok (.cons firstChecked remainingChecked)

/-- Combined failure vocabulary for the production, registry-aware response
validator. -/
inductive RhetoricalResponseGroundingError
  | staleSnapshot
  | clauseRejected (clauseId : ClaimId) (reason : GroundingError)
  | rhetoricalLocatorRejected
      (locatorId : StableId) (reason : RhetoricalLocatorError)
  deriving DecidableEq, Repr

/-- A response accepted by the production boundary has both ordinary source
grounding and independently checked rhetorical navigation metadata. -/
structure CheckedRhetoricalGroundedResponse
    (context : GroundingContext)
    (registry : RhetoricalEvidenceRegistry)
    (response : GroundedResponse) : Type where
  snapshotMatches : response.snapshotId = context.terrain.manifest.snapshotId
  clausesChecked : CheckedClauseList context response.clauses
  rhetoricalLocatorsChecked :
    CheckedRhetoricalLocatorList registry response.clauses response.rhetoricalLocators

/-- Production validator for responses which contain rhetorical locations.
Completeness and theorem authority continue to come only from the ordinary
grounding certificate; rhetorical fields are checked as navigation evidence. -/
noncomputable def validateRhetoricallyGroundedResponse
    (context : GroundingContext)
    (registry : RhetoricalEvidenceRegistry)
    (response : GroundedResponse) :
    Except RhetoricalResponseGroundingError
      (CheckedRhetoricalGroundedResponse context registry response) := by
  by_cases snapshotMatches :
      response.snapshotId = context.terrain.manifest.snapshotId
  · cases clausesResult : validateClauseList context response.clauses with
    | error error =>
        cases error with
        | clauseRejected clauseId reason =>
            exact .error (.clauseRejected clauseId reason)
        | staleSnapshot => exact .error .staleSnapshot
        | rhetoricalRegistryRequired =>
            exact .error
              (.rhetoricalLocatorRejected response.responseId .uncertifiedGramTrace)
    | ok clausesChecked =>
        cases locatorResult : validateRhetoricalLocatorList
            registry response.clauses response.rhetoricalLocators with
        | error rejected =>
            exact .error (.rhetoricalLocatorRejected rejected.1 rejected.2)
        | ok rhetoricalLocatorsChecked =>
            exact .ok {
              snapshotMatches
              clausesChecked
              rhetoricalLocatorsChecked }
  · exact .error .staleSnapshot

/-- Every clause in an accepted response has a grounding certificate. -/
theorem CheckedGroundedResponse.clause_accepted
    {context : GroundingContext}
    {response : GroundedResponse}
    (checked : CheckedGroundedResponse context response)
    {clause : GroundedClause}
    (membership : clause ∈ response.clauses) :
    clause.Accepted context :=
  checked.clausesChecked.checked clause membership

/-- An accepted assertive clause cannot be supported by an embedding alone. -/
theorem CheckedAssertion.not_embedding_only
    {context : GroundingContext}
    {clause : GroundedClause}
    (checked : CheckedAssertion context clause) :
    checked.claim.binding.support ≠ .embeddingOnly := by
  exact checked.assertiveSupportValid checked.clauseIsAssertion

/-- Model-only support cannot promote itself to an established claim. -/
theorem CheckedAssertion.model_authored_not_established
    {context : GroundingContext}
    {clause : GroundedClause}
    (checked : CheckedAssertion context clause)
    (modelAuthored : checked.claim.binding.support = .modelAuthored) :
    checked.claim.binding.establishment ≠ .established :=
  (checked.modelSupportValid modelAuthored).1

end DAF.Language
