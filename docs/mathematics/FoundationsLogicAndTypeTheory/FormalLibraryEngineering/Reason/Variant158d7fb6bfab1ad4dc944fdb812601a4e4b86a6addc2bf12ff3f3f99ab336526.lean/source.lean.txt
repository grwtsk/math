import Mathematics.Element.Edge

/-! # Governed barriers and collapse reasons -/

namespace Mathematics.Element

open Mathematics

inductive BarrierState
  | movable
  | movableWithContext
  | mustCoLocate
  | immovableUnderProfile
  | unresolved
  deriving DecidableEq, Repr, Inhabited

inductive CollapseReasonKind
  | mutualBlock
  | generatedFamily
  | sectionVariable
  | localDeclaration
  | privateNameCluster
  | syntaxProvider
  | macroProvider
  | notationProvider
  | optionState
  | attributeState
  | localInstance
  | scopedInstance
  | commandElaborator
  | typeclassSearchDelta
  | publicApiDelta
  | proofTermDelta
  | trustClosureDelta
  | generatedNameDelta
  | importCycle
  | parserFailure
  | elaboratorFailure
  | unreconstructableExtensionState
  deriving DecidableEq, Repr, Inhabited

structure RefactorBarrier where
  commandId : SourceCommandId
  state : BarrierState
  reason : CollapseReasonKind
  provider : Option SourceCommandId
  evidenceDigest : Digest
  deriving DecidableEq, Repr

end Mathematics.Element
