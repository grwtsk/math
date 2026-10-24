import FCRS.Transport.Witness

universe uInput uWitness

namespace FCRS.Transport.Theorems

/-- Selection exposes only the admissibility already carried by its witness. -/
theorem tt04_selectedWitnessSound
    {Input : Type uInput} {Witness : Type uWitness}
    {profile : IntervalProfile Input Witness}
    {certified : CertifiedIntervalTheorem profile}
    {input : Input}
    {application : TheoremApplication certified input}
    {existence : ExistenceEvidence application}
    {kind : SelectionMethodKind}
    {method : SelectionMethod kind Input Witness}
    {selection : WitnessSelectionEvent existence method}
    (selected : SelectedWitness selection) :
    profile.admissible input selected.value :=
  selected.intervalWitness.evidence

end FCRS.Transport.Theorems
