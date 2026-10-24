# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ChangeClassification.Variantc09f52c281d310fd4905e4f9a09390942eba4951461aff5ddbfd3a0549c01109

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2d52077d97095c21c5bc7cced76c01b900f8b3c0` · SHA-256 `c09f52c281d310fd4905e4f9a09390942eba4951461aff5ddbfd3a0549c01109`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import CordTheory.ClaimDiscipline

/-!
# Ontology and topology change classification

Semantic model-locus change and operational-topology change are orthogonal.
Every exact comparison uses one common finite profile.  Failure to construct a
faithful common profile is represented as indeterminate rather than unchanged.
-/

namespace Cord

structure OntologyChange where
  id : RecordId
  beforeSnapshot : OntologySnapshotId
  candidateOrAfterSnapshot : OntologySnapshotId
  commonComparisonProfile : Option ProfileId
  beforeIdeal : Option RecordId
  afterIdeal : Option RecordId
  beforeModelLocus : Option RecordId
  afterModelLocus : Option RecordId
  authority : IndependentStatus
  receipt : Option ReceiptId

inductive SemanticChangeClass
  | consistencyRestoration
  | unsatisfiableAfterChange
  | semanticallyInvariantAndSatisfiable
  | strengthening
  | weakening
  | revision
  deriving DecidableEq, Repr, Inhabited

inductive UnsatisfiableChangeStatus
  | inconsistencyIntroduced
  | inconsistencyPersisted
  deriving DecidableEq, Repr, Inhabited

namespace SemanticChangeClass

variable {X : Type*} [DecidableEq X]

/-- Proper inclusion for finite model loci. -/
def ProperSubset (a b : Finset X) : Prop := a ⊆ b ∧ a ≠ b

instance (a b : Finset X) : Decidable (ProperSubset a b) := by
  unfold ProperSubset
  infer_instance

/-- Exact six-way semantic classifier. -/
def classify (oldLocus newLocus : Finset X) : SemanticChangeClass :=
  if oldLocus = ∅ ∧ newLocus ≠ ∅ then
    .consistencyRestoration
  else if newLocus = ∅ then
    .unsatisfiableAfterChange
  else if oldLocus = newLocus then
    .semanticallyInvariantAndSatisfiable
  else if ProperSubset newLocus oldLocus then
    .strengthening
  else if ProperSubset oldLocus newLocus then
    .weakening
  else
    .revision

/-- Model-locus proposition represented by each primary class. -/
def Holds : SemanticChangeClass → Finset X → Finset X → Prop
  | .consistencyRestoration, oldLocus, newLocus =>
      oldLocus = ∅ ∧ newLocus ≠ ∅
  | .unsatisfiableAfterChange, _, newLocus =>
      newLocus = ∅
  | .semanticallyInvariantAndSatisfiable, oldLocus, newLocus =>
      oldLocus = newLocus ∧ newLocus ≠ ∅
  | .strengthening, oldLocus, newLocus =>
      newLocus ≠ ∅ ∧ ProperSubset newLocus oldLocus
  | .weakening, oldLocus, newLocus =>
      oldLocus ≠ ∅ ∧ ProperSubset oldLocus newLocus
  | .revision, oldLocus, newLocus =>
      ¬ oldLocus ⊆ newLocus ∧ ¬ newLocus ⊆ oldLocus

/-- The executable classifier satisfies its exact set-theoretic specification. -/
theorem classify_sound (oldLocus newLocus : Finset X) :
    Holds (classify oldLocus newLocus) oldLocus newLocus := by
  by_cases hrestore : oldLocus = ∅ ∧ newLocus ≠ ∅
  · simp [classify, hrestore, Holds]
  · by_cases hnewEmpty : newLocus = ∅
    · simp [classify, hnewEmpty, Holds]
    · have holdNonempty : oldLocus ≠ ∅ := by
        intro holdEmpty
        exact hrestore ⟨holdEmpty, hnewEmpty⟩
      by_cases heq : oldLocus = newLocus
      · simp [classify, hnewEmpty, heq, Holds]
      · by_cases hstrength : ProperSubset newLocus oldLocus
        · simp [classify, hnewEmpty, heq, hstrength, Holds,
            holdNonempty]
        · by_cases hweak : ProperSubset oldLocus newLocus
          · simp [classify, hnewEmpty, heq, hstrength, hweak,
              Holds, holdNonempty]
          · have hnotOldSubNew : ¬ oldLocus ⊆ newLocus := by
              intro hsub
              exact hweak ⟨hsub, heq⟩
            have hnotNewSubOld : ¬ newLocus ⊆ oldLocus := by
              intro hsub
              apply hstrength
              constructor
              · exact hsub
              · intro hEqReverse
                exact heq hEqReverse.symm
            simp [classify, hnewEmpty, heq, hstrength, hweak,
              Holds, holdNonempty, hnotOldSubNew, hnotNewSubOld]

/-- The class produced by `classify` is unique. -/
theorem classify_deterministic (oldLocus newLocus : Finset X) :
    ∃! c, c = classify oldLocus newLocus := by
  exact ⟨classify oldLocus newLocus, rfl, by intro y hy; exact hy⟩

end SemanticChangeClass

structure SemanticChangeClassification where
  id : RecordId
  change : RecordId
  comparisonProfile : ProfileId
  primaryClass : SemanticChangeClass
  unsatisfiableStatus : Option UnsatisfiableChangeStatus
  beforeLocus : Set RecordId
  afterLocus : Set RecordId
  exact : Bool
  limitations : Set String

inductive TopologyChangeClass
  | topologicallyInvariant
  | topologyRefinement
  | topologyCoarsening
  | topologicalRevision
  | carrierChanged
  | indeterminate
  | notEvaluated
  deriving DecidableEq, Repr, Inhabited

namespace TopologyChangeClass

variable {X : Type*} [DecidableEq X]

/-- Exact comparison for two topologies represented by their finite open-set families. -/
def classifyExact (oldOpen newOpen : Finset (Finset X)) : TopologyChangeClass :=
  if oldOpen = newOpen then
    .topologicallyInvariant
  else if oldOpen ⊆ newOpen then
    .topologyRefinement
  else if newOpen ⊆ oldOpen then
    .topologyCoarsening
  else
    .topologicalRevision

/-- Exact topology comparison is available only under a common profile. -/
def classifyWithProfile
    (profile : Option ProfileId)
    (oldOpen newOpen : Finset (Finset X)) : TopologyChangeClass :=
  match profile with
  | none => .indeterminate
  | some _ => classifyExact oldOpen newOpen

@[simp] theorem classifyWithProfile_none (oldOpen newOpen : Finset (Finset X)) :
    classifyWithProfile none oldOpen newOpen = .indeterminate := rfl

@[simp] theorem classifyWithProfile_some (profile : ProfileId)
    (oldOpen newOpen : Finset (Finset X)) :
    classifyWithProfile (some profile) oldOpen newOpen =
      classifyExact oldOpen newOpen := rfl

/-- Soundness of exact topology comparison. -/
theorem classifyExact_sound (oldOpen newOpen : Finset (Finset X)) :
    match classifyExact oldOpen newOpen with
    | .topologicallyInvariant => oldOpen = newOpen
    | .topologyRefinement => oldOpen ⊆ newOpen ∧ oldOpen ≠ newOpen
    | .topologyCoarsening => newOpen ⊆ oldOpen ∧ oldOpen ≠ newOpen
    | .topologicalRevision => ¬ oldOpen ⊆ newOpen ∧ ¬ newOpen ⊆ oldOpen
    | .carrierChanged => False
    | .indeterminate => False
    | .notEvaluated => False := by
  by_cases heq : oldOpen = newOpen
  · simp [classifyExact, heq]
  · by_cases hrefine : oldOpen ⊆ newOpen
    · simp [classifyExact, heq, hrefine]
    · by_cases hcoarsen : newOpen ⊆ oldOpen
      · simp [classifyExact, heq, hrefine, hcoarsen]
      · simp [classifyExact, heq, hrefine, hcoarsen]

end TopologyChangeClass

structure TopologyChangeClassification where
  id : RecordId
  change : RecordId
  comparisonProfile : Option ProfileId
  classification : TopologyChangeClass
  closureDelta : IndependentStatus
  interiorDelta : IndependentStatus
  boundaryDelta : IndependentStatus
  specializationOrderDelta : IndependentStatus
  t0QuotientDelta : IndependentStatus
  continuityImpact : IndependentStatus
  homeomorphismStatus : HomeomorphismStatus
  theoremApplicabilityImpact : IndependentStatus
  limitations : Set String

inductive ChangeAxis
  | presentation
  | serialization
  | metadata
  | semanticModelLocus
  | operationalTopology
  | identity
  | equivalence
  | authority
  | evidence
  | proof
  | certificate
  | validation
  | version
  | validTime
  | transactionTime
  | moduleAndImport
  | implementation
  | migration
  | rollback
  | continuation
  deriving DecidableEq, Repr, Inhabited, Ord

namespace ChangeAxis

/-- The complete orthogonal-axis universe required by the theory. -/
def all : Finset ChangeAxis :=
  {.presentation, .serialization, .metadata, .semanticModelLocus,
   .operationalTopology, .identity, .equivalence, .authority, .evidence,
   .proof, .certificate, .validation, .version, .validTime,
   .transactionTime, .moduleAndImport, .implementation, .migration,
   .rollback, .continuation}

@[simp] theorem mem_all (axis : ChangeAxis) : axis ∈ all := by
  cases axis <;> decide

end ChangeAxis

inductive ChangeAxisStatus
  | unchanged
  | changed
  | notApplicable
  | indeterminate
  | notEvaluated
  deriving DecidableEq, Repr, Inhabited

structure OrthogonalChangeClassification where
  id : RecordId
  change : RecordId
  status : ChangeAxis → ChangeAxisStatus
  residual : ChangeAxis → Option ResidualId

namespace OrthogonalChangeClassification

/-- Every required axis is evaluated or retained as explicit residue. -/
def Complete (c : OrthogonalChangeClassification) : Prop :=
  ∀ axis,
    c.status axis ≠ .notEvaluated ∧
    (c.status axis = .indeterminate → c.residual axis ≠ none)

end OrthogonalChangeClassification

inductive ConcernDispositionKind
  | noImpact
  | revisionRequired
  | migrationRequired
  | validationRequired
  | proofReviewRequired
  | implementationReviewRequired
  | topologyReviewRequired
  | blockedAtResidualFrontier
  deriving DecidableEq, Repr, Inhabited

structure ConcernDisposition where
  concern : String
  kind : ConcernDispositionKind
  reason : String
  residual : Option ResidualId

structure ConcernImpact where
  id : RecordId
  change : RecordId
  impactedConcerns : Set String
  disposition : String → Option ConcernDisposition

structure DependencyImpact where
  id : RecordId
  change : RecordId
  seeds : Set RecordId
  affected : Set RecordId
  traversedEdges : Set DependencyId
  revised : Set RecordId
  retainedWithReason : Set RecordId
  superseded : Set RecordId
  migrated : Set RecordId
  blocked : Set RecordId

/-- Missing a common comparison profile is classified as indeterminate. -/
theorem missing_common_profile_is_indeterminate
    {X : Type*} [DecidableEq X]
    (change : OntologyChange)
    (h : change.commonComparisonProfile = none)
    (oldOpen newOpen : Finset (Finset X)) :
    TopologyChangeClass.classifyWithProfile
      change.commonComparisonProfile oldOpen newOpen = .indeterminate := by
  rw [h]
  rfl

/-- Missing a common profile can never be reported as topologically unchanged. -/
theorem missing_common_profile_not_unchanged
    {X : Type*} [DecidableEq X]
    (change : OntologyChange)
    (h : change.commonComparisonProfile = none)
    (oldOpen newOpen : Finset (Finset X)) :
    TopologyChangeClass.classifyWithProfile
      change.commonComparisonProfile oldOpen newOpen ≠ .topologicallyInvariant := by
  rw [missing_common_profile_is_indeterminate change h oldOpen newOpen]
  decide

end Cord
```
