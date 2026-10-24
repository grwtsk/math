import Surface.AST.Core
import Surface.Legacy.BinaryLogicMatrix.Core
import Surface.Legacy.AffineTopos.NativeSyntacticTopos

namespace Surface
namespace Legacy

namespace StreamBridge

inductive WitnessAuthority where
  | combinatorial
  | modelProposed
  | kernelChecked
deriving DecidableEq, Repr

inductive StreamEventKind where
  | matrixObserved
  | reducerStep
  | certificateProposed
  | leanCandidateEmitted
  | leanChecked
  | leanRejected
  | trainingExampleEmitted
deriving DecidableEq, Repr

structure BinaryLogicMatrixStreamEvent where
  kind : StreamEventKind
  rows : Nat
  cols : Nat
  matrixHash : String
  payloadHash : String
  source : String
  boundary : List String
deriving Repr

structure BinaryLogicMatrixStreamWitness where
  rows : Nat
  cols : Nat
  matrix : BinaryLogicMatrix rows cols
  eventTrace : List BinaryLogicMatrixStreamEvent
  witnessHash : String
  proposedTheoremName : String
  proposedType : String
  authority : WitnessAuthority
  claimBoundary : List String

def BinaryLogicMatrixStreamWitness.isOnlyCombinatorial
    (w : BinaryLogicMatrixStreamWitness) : Prop :=
  w.authority = WitnessAuthority.combinatorial ∨
    w.authority = WitnessAuthority.modelProposed

structure KernelCheckedTheorem
    (expectedName : String) where
  declaration : AST.LeanDeclarationAst
  name_matches :
    declaration.fullName = expectedName
  kind_is_theorem :
    declaration.kind = AST.LeanDeclarationKind.theorem
  proof_checked :
    declaration.proofStatus = AST.LeanProofStatus.checkedByLean
  trusted_decl :
    declaration.trusted = true
  forbiddenKernelAssumptions : List String
  no_forbidden_kernel_assumptions :
    forbiddenKernelAssumptions = []
  boundary_visible :
    declaration.claimBoundary = declaration.claimBoundary

structure StreamToCheckedTheoremBridge
    (w : BinaryLogicMatrixStreamWitness) where
  checked : KernelCheckedTheorem w.proposedTheoremName
  witness_not_authority :
    w.authority ≠ WitnessAuthority.kernelChecked →
      w.isOnlyCombinatorial
  fixture_or_dependency_link :
    w.witnessHash ∈ checked.declaration.fixtures ∨
      w.witnessHash ∈ checked.declaration.dependencies ∨
      w.witnessHash ∈ checked.declaration.claimBoundary
  bridgeBoundary : List String

theorem bridge_outputs_checked_theorem
    {w : BinaryLogicMatrixStreamWitness}
    (B : StreamToCheckedTheoremBridge w) :
    B.checked.declaration.proofStatus =
      AST.LeanProofStatus.checkedByLean :=
  B.checked.proof_checked

theorem bridge_outputs_theorem_declaration
    {w : BinaryLogicMatrixStreamWitness}
    (B : StreamToCheckedTheoremBridge w) :
    B.checked.declaration.kind =
      AST.LeanDeclarationKind.theorem :=
  B.checked.kind_is_theorem

theorem combinatorial_witness_not_checked_by_itself
    (w : BinaryLogicMatrixStreamWitness)
    (h : w.authority = WitnessAuthority.combinatorial) :
    w.authority ≠ WitnessAuthority.kernelChecked := by
  intro hc
  rw [h] at hc
  cases hc

structure PascalReductionNode
    (S : NativeSyntacticTopos.Site.{u, v})
    (Payload : Type w) where
  payload : Payload
  children : List String
  internalGoal :
    NativeSyntacticTopos.InternalLanguage.InternalProp S
  forced? : Bool
  modality : String
  claimBoundary : List String
  witnessHash : String
  leanTheorem? : Option AST.LeanDeclarationAst

structure StreamArrow
    (α : Type u)
    (β : Type v) where
  run : α → List β
  boundary : List String

structure GuardedFeedback
    (State : Type u)
    (Event : Type v) where
  step : State → Event → State
  feedback : State → Option Event
  rank : State → Nat
  feedback_decreases :
    ∀ s e,
      feedback s = some e →
        rank (step s e) < rank s
  boundary : List String

namespace GuardedFeedback

def safeStep
    {State : Type u}
    {Event : Type v}
    (G : GuardedFeedback State Event)
    (s : State) : State :=
  match G.feedback s with
  | none => s
  | some e => G.step s e

end GuardedFeedback

structure ConwayLikeStreamController where
  State : Type u
  Event : Type v
  init : State
  accept : State → Event → State
  feedback? : State → Option Event
  rank : State → Nat
  guarded :
    ∀ s e,
      feedback? s = some e →
        rank (accept s e) < rank s
  abelianOrderIndependent : Prop
  haltsWhenRankZero : Prop
  boundary : List String

end StreamBridge

end Legacy
end Surface
