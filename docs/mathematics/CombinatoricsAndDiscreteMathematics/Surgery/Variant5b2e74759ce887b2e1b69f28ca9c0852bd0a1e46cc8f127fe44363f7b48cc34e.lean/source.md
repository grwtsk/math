# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Surgery.Variant5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0e387de088be96022eb76e382f0b913dbef7a4dc` · SHA-256 `5b2e74759ce887b2e1b69f28ca9c0852bd0a1e46cc8f127fe44363f7b48cc34e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import CordTheory.PrecisionAccuracy

/-!
# Kernel-6, finite plans, bounded windows, and rollback

Kernel-6 is represented as a sufficient operation basis for its declared finite
target class.  The project proves no minimality or uniqueness theorem here.
`stage` is ordered syntax composition, not a seventh semantic atom and not a
single semantic operation from which the leaf meanings follow.
-/

namespace Cord

inductive KernelAtom
  | mark
  | incise
  | excise
  | graft
  | anastomose
  | revise
  deriving DecidableEq, Repr, Inhabited, Fintype

namespace KernelAtom

/-- The exact syntactic Kernel-6 inventory. -/
def all : Finset KernelAtom :=
  {.mark, .incise, .excise, .graft, .anastomose, .revise}

@[simp] theorem mem_all (operation : KernelAtom) : operation ∈ all := by
  cases operation <;> decide

/-- Kernel-6 has exactly six syntax atoms.  This is not semantic minimality. -/
theorem card_all : all.card = 6 := by decide

/-- The derived finite carrier also contains exactly six syntax atoms. -/
theorem card : Fintype.card KernelAtom = 6 := by decide

end KernelAtom

/-- Uniform finite plan grammar. -/
inductive FinitePlan
  | identity
  | atom (operation : KernelAtom)
  | stage (first second : FinitePlan)
  deriving DecidableEq, Repr, Inhabited

namespace FinitePlan

/-- Ordered flattening into a finite word in Kernel-6. -/
def flatten : FinitePlan → List KernelAtom
  | .identity => []
  | .atom operation => [operation]
  | .stage first second => first.flatten ++ second.flatten

@[simp] theorem flatten_identity : FinitePlan.identity.flatten = [] := rfl

@[simp] theorem flatten_atom (operation : KernelAtom) :
    (FinitePlan.atom operation).flatten = [operation] := rfl

@[simp] theorem flatten_stage (first second : FinitePlan) :
    (FinitePlan.stage first second).flatten = first.flatten ++ second.flatten := rfl

/-- Canonical right-associated syntax for a finite atom word. -/
def ofList : List KernelAtom → FinitePlan
  | [] => .identity
  | operation :: rest => .stage (.atom operation) (ofList rest)

@[simp] theorem flatten_ofList (operations : List KernelAtom) :
    (ofList operations).flatten = operations := by
  induction operations with
  | nil => rfl
  | cons operation rest ih => simp [ofList, ih]

/-- Plan equivalence is equality of ordered atom words. -/
def Equivalent (left right : FinitePlan) : Prop :=
  left.flatten = right.flatten

@[refl] theorem equivalent_refl (plan : FinitePlan) : plan.Equivalent plan := rfl

@[symm] theorem equivalent_symm {left right : FinitePlan}
    (h : left.Equivalent right) : right.Equivalent left := h.symm

@[trans] theorem equivalent_trans {first second third : FinitePlan}
    (h₁ : first.Equivalent second) (h₂ : second.Equivalent third) :
    first.Equivalent third := h₁.trans h₂

/-- Every finite plan has a canonical representative. -/
def normalize (plan : FinitePlan) : FinitePlan := ofList plan.flatten

@[simp] theorem flatten_normalize (plan : FinitePlan) :
    plan.normalize.flatten = plan.flatten := by
  simp [normalize]

theorem equivalent_normalize (plan : FinitePlan) :
    plan.Equivalent plan.normalize := by
  simp [Equivalent]

@[simp] theorem normalize_idempotent (plan : FinitePlan) :
    plan.normalize.normalize = plan.normalize := by
  simp [normalize]

/-- Equivalent plans have one unique canonical syntax representative. -/
theorem normalize_eq_of_equivalent {left right : FinitePlan}
    (h : left.Equivalent right) : left.normalize = right.normalize := by
  exact congrArg ofList h

/-- Stage association is observationally irrelevant while order is preserved. -/
theorem stage_associative (first second third : FinitePlan) :
    (FinitePlan.stage (FinitePlan.stage first second) third).Equivalent
      (FinitePlan.stage first (FinitePlan.stage second third)) := by
  simp [Equivalent, List.append_assoc]

theorem stage_identity_left (plan : FinitePlan) :
    (FinitePlan.stage .identity plan).Equivalent plan := by
  simp [Equivalent]

theorem stage_identity_right (plan : FinitePlan) :
    (FinitePlan.stage plan .identity).Equivalent plan := by
  simp [Equivalent]

/-- Every syntax tree has a finite number of leaves. -/
def atomCount (plan : FinitePlan) : Nat := plan.flatten.length

@[simp] theorem atomCount_normalize (plan : FinitePlan) :
    plan.normalize.atomCount = plan.atomCount := by
  simp [atomCount]

/-- A stage node is not definitionally a leaf atom. -/
theorem stage_ne_atom (first second : FinitePlan) (operation : KernelAtom) :
    FinitePlan.stage first second ≠ FinitePlan.atom operation := by
  intro h
  cases h

end FinitePlan

inductive BasisTheoremStatus
  | established
  | conjectural
  | refuted
  | notEvaluated
  deriving DecidableEq, Repr, Inhabited

structure MutationBasisClaim where
  id : RecordId
  targetClass : String
  atoms : Set KernelAtom
  constructiveSufficiency : BasisTheoremStatus
  minimality : BasisTheoremStatus
  uniqueness : BasisTheoremStatus
  translator : Option RecordId
  verifier : Option RecordId
  sufficiencyCertificate : Option CertificateId
  minimalityCertificate : Option CertificateId
  uniquenessCertificate : Option CertificateId
  stageIsCompositionOnly : Bool
  exclusions : Set String

namespace MutationBasisClaim

/-- Each promoted basis claim requires its own scoped certificate. -/
def Valid (claim : MutationBasisClaim) : Prop :=
  claim.id.value ≠ 0 ∧
  claim.targetClass ≠ "" ∧
  claim.atoms = Set.univ ∧
  claim.stageIsCompositionOnly = true ∧
  (claim.constructiveSufficiency = .established →
    claim.sufficiencyCertificate ≠ none) ∧
  (claim.minimality = .established → claim.minimalityCertificate ≠ none) ∧
  (claim.uniqueness = .established → claim.uniquenessCertificate ≠ none)

theorem established_minimality_has_certificate (claim : MutationBasisClaim)
    (valid : claim.Valid) (established : claim.minimality = .established) :
    claim.minimalityCertificate ≠ none := valid.2.2.2.2.2.1 established

theorem established_uniqueness_has_certificate (claim : MutationBasisClaim)
    (valid : claim.Valid) (established : claim.uniqueness = .established) :
    claim.uniquenessCertificate ≠ none := valid.2.2.2.2.2.2 established

end MutationBasisClaim

/-- Constructive sufficiency alone does not logically entail minimality. -/
theorem sufficiency_does_not_entail_minimality :
    ¬ (∀ claim : MutationBasisClaim,
      claim.constructiveSufficiency = .established →
      claim.minimality = .established) := by
  intro h
  let claim : MutationBasisClaim := {
    id := ⟨1⟩
    targetClass := "bounded fixture"
    atoms := Set.univ
    constructiveSufficiency := .established
    minimality := .notEvaluated
    uniqueness := .notEvaluated
    translator := none
    verifier := none
    sufficiencyCertificate := some ⟨1⟩
    minimalityCertificate := none
    uniquenessCertificate := none
    stageIsCompositionOnly := true
    exclusions := ∅
  }
  have := h claim rfl
  cases this

/-- Constructive sufficiency alone does not logically entail uniqueness. -/
theorem sufficiency_does_not_entail_uniqueness :
    ¬ (∀ claim : MutationBasisClaim,
      claim.constructiveSufficiency = .established →
      claim.uniqueness = .established) := by
  intro h
  let claim : MutationBasisClaim := {
    id := ⟨1⟩
    targetClass := "bounded fixture"
    atoms := Set.univ
    constructiveSufficiency := .established
    minimality := .notEvaluated
    uniqueness := .notEvaluated
    translator := none
    verifier := none
    sufficiencyCertificate := some ⟨1⟩
    minimalityCertificate := none
    uniquenessCertificate := none
    stageIsCompositionOnly := true
    exclusions := ∅
  }
  have := h claim rfl
  cases this

structure FiniteMutationPlanRecord where
  id : PlanId
  sourceSnapshot : SnapshotId
  ontologySnapshot : OntologySnapshotId
  schemaSnapshot : ContentHash
  validTime : TimeInterval
  transactionTime : TimeInterval
  streamWindow : Option RecordId
  plan : FinitePlan
  authority : IndependentStatus
  receipt : Option ReceiptId

namespace FiniteMutationPlanRecord

/-- A plan is pinned to finite source state and temporal scope. -/
def Pinned (p : FiniteMutationPlanRecord) : Prop :=
  p.id.value ≠ 0 ∧
  p.sourceSnapshot.value ≠ 0 ∧
  p.ontologySnapshot.value ≠ 0 ∧
  p.schemaSnapshot.value ≠ "" ∧
  p.validTime.Valid ∧
  p.transactionTime.Valid

end FiniteMutationPlanRecord

structure BoundedStreamWindow where
  id : RecordId
  stream : RecordId
  startOffset : Nat
  stopOffset : Nat
  watermark : Option Int
  inputSnapshot : SnapshotId
  priorCheckpoint : Option SnapshotId
  plan : PlanId
  lateArrivalPolicy : String
  resourceBounds : EntryResourceBounds
  openFrontier : Set ResidualId
  nextContinuation : Option RecordId
  receipt : ReceiptId

namespace BoundedStreamWindow

/-- A stream operation is finite exactly when the stop offset is greater than the start. -/
def Finite (w : BoundedStreamWindow) : Prop :=
  w.startOffset < w.stopOffset ∧
  w.inputSnapshot.value ≠ 0 ∧
  w.plan.value ≠ 0 ∧
  w.receipt.value ≠ 0 ∧
  w.resourceBounds.Positive

end BoundedStreamWindow

/-- An unbounded stream is handled by a sequence of bounded windows. -/
structure StreamContinuation where
  stream : RecordId
  windowAt : Nat → BoundedStreamWindow
  everyWindowFinite : ∀ n, (windowAt n).Finite

namespace StreamContinuation

/-- Mature stream handling is pointwise bounded at every continuation index. -/
theorem window_finite (continuation : StreamContinuation) (index : Nat) :
    (continuation.windowAt index).Finite :=
  continuation.everyWindowFinite index

end StreamContinuation

inductive RollbackKind
  | candidateDiscard
  | authoritativePointerRestoration
  | compensatingRevision
  | algebraicInverse
  deriving DecidableEq, Repr, Inhabited

structure RollbackRecord where
  id : RecordId
  kind : RollbackKind
  operation : RecordId
  beforeSnapshot : SnapshotId
  currentSnapshot : SnapshotId
  resultingSnapshot : SnapshotId
  retainedHistory : Prop
  inverseCertificate : Option CertificateId
  authority : IndependentStatus
  receipt : ReceiptId

namespace RollbackRecord

/-- Algebraic inverse status requires the exact inverse kind and a certificate. -/
def AlgebraicallyCertified (r : RollbackRecord) : Prop :=
  r.kind = .algebraicInverse ∧ r.inverseCertificate ≠ none

theorem algebraicallyCertified_kind (r : RollbackRecord)
    (h : r.AlgebraicallyCertified) : r.kind = .algebraicInverse := h.1

theorem algebraicallyCertified_has_certificate (r : RollbackRecord)
    (h : r.AlgebraicallyCertified) : r.inverseCertificate ≠ none := h.2

@[simp] theorem pointer_restoration_not_algebraic
    (r : RollbackRecord)
    (h : r.kind = .authoritativePointerRestoration) :
    ¬ r.AlgebraicallyCertified := by
  simp [AlgebraicallyCertified, h]

@[simp] theorem compensating_revision_not_algebraic
    (r : RollbackRecord)
    (h : r.kind = .compensatingRevision) :
    ¬ r.AlgebraicallyCertified := by
  simp [AlgebraicallyCertified, h]

end RollbackRecord

end Cord
```
