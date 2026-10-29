import Mathematics.Element.Reason
import Mathematics.Oracle.Naming.Name

/-! # Certified source elements and semantic receipts -/

namespace Mathematics.Element

open Mathematics

structure UnitSemanticReceipt where
  publicNamesDigest : Digest
  declarationKindsDigest : Digest
  statementDigest : Digest
  implementationDigest : Digest
  generatedFamilyDigest : Digest
  dependencyDigest : Digest
  trustClosureDigest : Digest
  safetyDigest : Digest
  deriving DecidableEq, Repr

structure SourceElement where
  id : SourceElementId
  commands : Array SourceCommandId
  emittedDeclarations : Array ExtractorDeclarationId
  contextCapsule : ContextCapsule
  imports : Array String
  mustLinkReasons : Array CollapseReasonKind
  barriers : Array RefactorBarrier
  baselineReceipt : UnitSemanticReceipt
  name? : Option Mathematics.Oracle.Naming.ElementName := none
  probeValidated : Bool
  deriving DecidableEq, Repr

def SourceElement.Valid (element : SourceElement) : Prop :=
  element.id.Valid ∧ element.commands.size > 0 ∧ element.probeValidated = true ∧
    element.barriers.all (fun barrier ↦ barrier.state != .unresolved) = true

end Mathematics.Element
