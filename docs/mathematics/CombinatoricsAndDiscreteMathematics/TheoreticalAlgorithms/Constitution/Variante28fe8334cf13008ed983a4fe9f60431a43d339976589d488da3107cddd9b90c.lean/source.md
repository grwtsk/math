# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Constitution.Variante28fe8334cf13008ed983a4fe9f60431a43d339976589d488da3107cddd9b90c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3d78275a4ec57f2ee380319181a34aace218373f` · SHA-256 `e28fe8334cf13008ed983a4fe9f60431a43d339976589d488da3107cddd9b90c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import CordTheory.Basic

/-!
# CAP-RFC-0001 bounded constitutional fragment

This file is the deliberately small Lean carrier for the currently admitted
`CAP-RFC-0001` ontology and source contract.  It formalizes only finite
vocabularies, honest non-passing outcomes, the ordered effect boundary,
reflection non-mutation, and qualification non-strengthening.  It does not
claim the RFC's larger theorem obligations, empirical correctness,
cross-surface completeness, human authority, or full-system conformance.
-/

namespace Cord

def capRfcIdentifier : String := "CAP-RFC-0001"
def capRfcVersion : String := "1.0.0"

inductive CapConformanceProfile where
  | specification
  | lean
  | rust
  | database
  | agent
  | interface
  | system
  | verified
  deriving DecidableEq, Repr, Inhabited

inductive CapTestOutcome where
  | pass
  | fail
  | notApplicable
  | blocked
  | indeterminate
  deriving DecidableEq, Repr, Inhabited

namespace CapTestOutcome

/-- Only the literal `pass` outcome satisfies a mandatory applicable test. -/
def SatisfiesMandatory : CapTestOutcome → Prop
  | .pass => True
  | _ => False

@[simp] theorem pass_satisfies : CapTestOutcome.pass.SatisfiesMandatory := by
  trivial

@[simp] theorem fail_does_not_satisfy :
    ¬ CapTestOutcome.fail.SatisfiesMandatory := by
  simp [SatisfiesMandatory]

@[simp] theorem notApplicable_does_not_satisfy :
    ¬ CapTestOutcome.notApplicable.SatisfiesMandatory := by
  simp [SatisfiesMandatory]

@[simp] theorem blocked_does_not_satisfy :
    ¬ CapTestOutcome.blocked.SatisfiesMandatory := by
  simp [SatisfiesMandatory]

@[simp] theorem indeterminate_does_not_satisfy :
    ¬ CapTestOutcome.indeterminate.SatisfiesMandatory := by
  simp [SatisfiesMandatory]

end CapTestOutcome

inductive CapRequirementStatus where
  | satisfied
  | failed
  | notApplicable
  | blocked
  | indeterminate
  | openProofObligation
  deriving DecidableEq, Repr, Inhabited

namespace CapRequirementStatus

/-- Only an evidence-bound satisfied result closes an applicable requirement. -/
def ClosesApplicable : CapRequirementStatus → Prop
  | .satisfied => True
  | _ => False

theorem closes_iff_satisfied (status : CapRequirementStatus) :
    status.ClosesApplicable ↔ status = .satisfied := by
  cases status <;> simp [ClosesApplicable]

@[simp] theorem openProofObligation_does_not_close :
    ¬ CapRequirementStatus.openProofObligation.ClosesApplicable := by
  simp [ClosesApplicable]

end CapRequirementStatus

structure CapRequirementResult where
  requirementId : String
  status : CapRequirementStatus
  evidence : List String
  responsibilityRationale : Option String
  deriving DecidableEq, Repr

namespace CapRequirementResult

/-- A result is evidence-bound and cannot use a responsibility rationale to
hide a status other than explicit non-applicability. -/
def Honest (result : CapRequirementResult) : Prop :=
  result.requirementId ≠ "" ∧
  result.evidence ≠ [] ∧
  ((result.status = .notApplicable ∧ result.responsibilityRationale ≠ none) ∨
   (result.status ≠ .notApplicable ∧ result.responsibilityRationale = none))

end CapRequirementResult

structure CapTestResult where
  testId : String
  mandatory : Bool
  outcome : CapTestOutcome
  evidence : List String
  responsibilityRationale : Option String
  deriving DecidableEq, Repr

namespace CapTestResult

def Honest (result : CapTestResult) : Prop :=
  result.testId ≠ "" ∧
  result.evidence ≠ [] ∧
  ((result.outcome = .notApplicable ∧ result.responsibilityRationale ≠ none) ∨
   (result.outcome ≠ .notApplicable ∧ result.responsibilityRationale = none)) ∧
  (result.mandatory = true → result.outcome.SatisfiesMandatory)

theorem mandatory_blocked_is_not_honest_pass
    (result : CapTestResult)
    (hm : result.mandatory = true)
    (hb : result.outcome = .blocked) :
    ¬ result.Honest := by
  intro honest
  have satisfies := honest.2.2.2 hm
  rw [hb] at satisfies
  exact CapTestOutcome.blocked_does_not_satisfy satisfies

end CapTestResult

structure CapConformanceFrontier where
  openProofObligations : List String
  activeDiscrepancies : List String
  exclusions : List String
  partialityBoundaries : List String
  residuals : List String
  deriving DecidableEq, Repr, Inhabited

namespace CapConformanceFrontier

def Empty (frontier : CapConformanceFrontier) : Prop :=
  frontier.openProofObligations = [] ∧
  frontier.activeDiscrepancies = [] ∧
  frontier.exclusions = [] ∧
  frontier.partialityBoundaries = [] ∧
  frontier.residuals = []

end CapConformanceFrontier

structure CapConformanceClaim where
  profiles : List CapConformanceProfile
  requirementResults : List CapRequirementResult
  testResults : List CapTestResult
  frontier : CapConformanceFrontier
  deriving DecidableEq, Repr

namespace CapConformanceClaim

/-- A system claim is unavailable unless every applicable result passes and
the complete declared frontier is empty.  This is a gate, not evidence that a
claim exists. -/
def SystemReady (claim : CapConformanceClaim) : Prop :=
  CapConformanceProfile.system ∈ claim.profiles ∧
  claim.profiles ≠ [] ∧
  (∀ result ∈ claim.requirementResults,
    result.Honest ∧ result.status.ClosesApplicable) ∧
  (∀ result ∈ claim.testResults,
    result.Honest ∧ (result.mandatory = true → result.outcome.SatisfiesMandatory)) ∧
  claim.frontier.Empty

theorem system_ready_frontier_empty
    (claim : CapConformanceClaim) (ready : claim.SystemReady) :
    claim.frontier.Empty :=
  ready.2.2.2.2

theorem system_ready_has_no_open_proof_obligation
    (claim : CapConformanceClaim) (ready : claim.SystemReady) :
    claim.frontier.openProofObligations = [] :=
  ready.2.2.2.2.1

end CapConformanceClaim

inductive ConstitutionalOperationStage where
  | reify
  | interpret
  | validate
  | project
  | plan
  | execute
  | observe
  | reconcile
  | commit
  deriving DecidableEq, Repr, Inhabited

namespace ConstitutionalOperationStage

def rank : ConstitutionalOperationStage → Nat
  | .reify => 0
  | .interpret => 1
  | .validate => 2
  | .project => 3
  | .plan => 4
  | .execute => 5
  | .observe => 6
  | .reconcile => 7
  | .commit => 8

/-- Immediate constitutional progression.  No constructor skips an effect
boundary. -/
inductive Immediate :
    ConstitutionalOperationStage → ConstitutionalOperationStage → Prop where
  | reifyInterpret : Immediate .reify .interpret
  | interpretValidate : Immediate .interpret .validate
  | validateProject : Immediate .validate .project
  | projectPlan : Immediate .project .plan
  | planExecute : Immediate .plan .execute
  | executeObserve : Immediate .execute .observe
  | observeReconcile : Immediate .observe .reconcile
  | reconcileCommit : Immediate .reconcile .commit

theorem immediate_advances_one {before after : ConstitutionalOperationStage}
    (step : Immediate before after) :
    rank after = rank before + 1 := by
  cases step <;> rfl

def MayPerformObjectEffect : ConstitutionalOperationStage → Prop
  | .execute => True
  | .commit => True
  | _ => False

@[simp] theorem validate_is_nonmutating :
    ¬ ConstitutionalOperationStage.validate.MayPerformObjectEffect := by
  simp [MayPerformObjectEffect]

@[simp] theorem project_is_proposal_only :
    ¬ ConstitutionalOperationStage.project.MayPerformObjectEffect := by
  simp [MayPerformObjectEffect]

@[simp] theorem observe_is_nonmutating :
    ¬ ConstitutionalOperationStage.observe.MayPerformObjectEffect := by
  simp [MayPerformObjectEffect]

end ConstitutionalOperationStage

/-- Reflection carries an explicit proof that the represented object state did
not change.  A transformed representation is not an object-level transition. -/
structure CapReflectiveAct (State Representation : Type) where
  before : State
  after : State
  visible : Representation
  transformed : Representation
  objectStatePreserved : after = before

namespace CapReflectiveAct

theorem reflection_is_nonmutating
    {State Representation : Type}
    (act : CapReflectiveAct State Representation) :
    act.after = act.before :=
  act.objectStatePreserved

end CapReflectiveAct

inductive CapEpistemicQualification where
  | unknown
  | candidate
  | normativeCandidate
  | supported
  | established
  deriving DecidableEq, Repr, Inhabited

namespace CapEpistemicQualification

def rank : CapEpistemicQualification → Nat
  | .unknown => 0
  | .candidate => 1
  | .normativeCandidate => 2
  | .supported => 3
  | .established => 4

end CapEpistemicQualification

structure CapNonEvidentiaryTransformation where
  inputQualification : CapEpistemicQualification
  outputQualification : CapEpistemicQualification
  nonStrengthening :
    outputQualification.rank ≤ inputQualification.rank

namespace CapNonEvidentiaryTransformation

theorem qualification_does_not_silently_strengthen
    (transformation : CapNonEvidentiaryTransformation) :
    transformation.outputQualification.rank ≤
      transformation.inputQualification.rank :=
  transformation.nonStrengthening

end CapNonEvidentiaryTransformation

/-- Filesystem location and epistemic qualification are independent fields.
In particular, placement in admitted ontology does not rewrite
`normative-candidate` into a stronger qualification. -/
structure CapQualifiedOntologyRecord where
  locatedInAdmittedOntology : Bool
  qualification : CapEpistemicQualification
  deriving DecidableEq, Repr

theorem admitted_location_preserves_normative_candidate (located : Bool) :
    (CapQualifiedOntologyRecord.mk located
      .normativeCandidate).qualification = .normativeCandidate := by
  rfl

/-- Historical comparison is data-only and cannot mint active input or
authority. -/
structure CapHistoricalComparison where
  readOnly : Prop
  nonTransitive : Prop
  suppliesCurrentInput : Prop
  importsAuthority : Prop
  mutationAuthority : Prop

namespace CapHistoricalComparison

def Constitutional (comparison : CapHistoricalComparison) : Prop :=
  comparison.readOnly ∧
  comparison.nonTransitive ∧
  ¬ comparison.suppliesCurrentInput ∧
  ¬ comparison.importsAuthority ∧
  ¬ comparison.mutationAuthority

theorem no_mutation_authority
    (comparison : CapHistoricalComparison)
    (constitutional : comparison.Constitutional) :
    ¬ comparison.mutationAuthority :=
  constitutional.2.2.2.2

end CapHistoricalComparison

end Cord
```
