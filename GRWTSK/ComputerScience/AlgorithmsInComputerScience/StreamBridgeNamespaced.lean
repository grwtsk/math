-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.WitnessAuthority.Variant59ff1c24eb45cb1e20e7de0bf56a6398164e49d279831e9ef317f2be93955f98","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"59ff1c24eb45cb1e20e7de0bf56a6398164e49d279831e9ef317f2be93955f98","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.WitnessAuthority.Variant59ff1c24eb45cb1e20e7de0bf56a6398164e49d279831e9ef317f2be93955f98","mathematical_subject":"Computation.DataStructures","original_sha256":"59ff1c24eb45cb1e20e7de0bf56a6398164e49d279831e9ef317f2be93955f98","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/StreamBridge.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.AST.Core
import Surface.Legacy.BinaryLogicMatrix.Core
import Surface.Legacy.AffineTopos.NativeSyntacticTopos


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.WitnessAuthority.Variant59ff1c24eb45cb1e20e7de0bf56a6398164e49d279831e9ef317f2be93955f98

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
