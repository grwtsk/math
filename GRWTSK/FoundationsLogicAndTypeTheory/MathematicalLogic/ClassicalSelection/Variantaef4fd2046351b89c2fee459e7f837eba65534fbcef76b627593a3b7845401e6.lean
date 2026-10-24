import FCRS.Transport.Witness

universe uInput uWitness

namespace FCRS.Transport.Mathematical

/-!
This module is the isolated mathematical choice boundary.  Materialized
transport theorem modules do not import it, and its result is indexed by
`ClassicalChoice`, so it cannot masquerade as verified search or another
materializable selection method.
-/

/-- Explicitly noncomputable selection from existential evidence. -/
noncomputable def classicalSelectedWitness
    {Input : Type uInput} {Witness : Type uWitness}
    {profile : IntervalProfile Input Witness}
    {certified : CertifiedIntervalTheorem profile}
    {input : Input}
    {application : TheoremApplication certified input}
    {existence : ExistenceEvidence application}
    {method : SelectionMethod .ClassicalChoice Input Witness}
    (eventArtifact : ArtifactRef .selectionEvent)
    (methodEvidence :
      method.certifies input (Classical.choose existence.witnessExists)) :
    Σ selection : WitnessSelectionEvent existence method,
      SelectedWitness selection :=
  let candidate : IntervalWitness profile input := {
    value := Classical.choose existence.witnessExists
    evidence := Classical.choose_spec existence.witnessExists
  }
  let selection : WitnessSelectionEvent existence method := {
    eventArtifact := eventArtifact
    result := candidate
    methodEvidence := methodEvidence
  }
  ⟨selection, {
    intervalWitness := candidate
    eventResultExact := rfl
  }⟩

end FCRS.Transport.Mathematical
