import Surface.ContinuousAssurance.Dependency
import Surface.ContinuousAssurance.Evidence

/-!
# Version-separated reflexive assurance

Reflexive execution is not circular authorization.  A governing run uses a
strictly earlier controller and the result must retain the governing policy
digest.  Evaluating the current controller against itself is classified as a
self-check, not an independent audit.
-/

namespace Surface.ContinuousAssurance

/-- A completed, version-separated assurance generation. -/
structure AssuranceRun where
  controllerVersion : Nat
  subjectVersion : Nat
  governingPolicyDigest : EvidenceDigest
  resultPolicyDigest : EvidenceDigest
  inputEvidence : EvidenceBundle
  outputEvidence : EvidenceBundle
  controllerIndependentlyPinned : Bool
  governingPolicyIndependentlyPinned : Bool
  versionSeparated : controllerVersion < subjectVersion
  policyStable : resultPolicyDigest = governingPolicyDigest

namespace AssuranceRun

/-- A run cannot audit and authorize the same controller version. -/
theorem cannot_authorize_controller_version
    (run : AssuranceRun) :
    run.controllerVersion ≠ run.subjectVersion :=
  Nat.ne_of_lt run.versionSeparated

/-- A run cannot alter the policy governing that same run. -/
theorem cannot_alter_governing_policy
    (run : AssuranceRun) :
    run.resultPolicyDigest = run.governingPolicyDigest :=
  run.policyStable

end AssuranceRun

/-- A version edge points from a subject to its strictly older controller. -/
def versionDependencyGraph : DependencyGraph Nat where
  direct := fun subject controller => controller < subject
  rank := id
  dependencyRankLt := by
    intro subject controller edge
    exact edge

/-- A strictly increasing reflexive assurance chain has no version cycle. -/
theorem strictlyIncreasingReflexiveChain_no_cycle
    (version : Nat) :
    ¬ DependsTransitively versionDependencyGraph.direct version version :=
  versionDependencyGraph.noTransitiveSelfDependency version

/-- Operational classification of an evaluation's independence. -/
inductive ReviewClassification
  | selfCheck
  | independentReview
  deriving DecidableEq, Repr

/--
Only version separation plus independently pinned controller and policy earns
the `independentReview` classification.
-/
def classifyReview
    (controllerVersion subjectVersion : Nat)
    (controllerPinned policyPinned : Bool) : ReviewClassification :=
  if controllerVersion < subjectVersion ∧
      controllerPinned = true ∧ policyPinned = true then
    .independentReview
  else
    .selfCheck

/-- Evaluating a controller's current version against itself is a self-check. -/
@[simp]
theorem classify_same_version_self_check
    (version : Nat)
    (controllerPinned policyPinned : Bool) :
    classifyReview version version controllerPinned policyPinned = .selfCheck := by
  simp [classifyReview]

/-- Independent review is awarded exactly when all three controls hold. -/
theorem classifyReview_eq_independentReview_iff
    (controllerVersion subjectVersion : Nat)
    (controllerPinned policyPinned : Bool) :
    classifyReview controllerVersion subjectVersion controllerPinned policyPinned =
        .independentReview ↔
      controllerVersion < subjectVersion ∧
        controllerPinned = true ∧ policyPinned = true := by
  simp [classifyReview]

end Surface.ContinuousAssurance
