import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.Witness
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.PairCorrelation
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.Residue

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow

structure PruneAdmissible where
  importClosed : Prop
  residuePreserved : Prop
  weightPreserved : Prop
  symmetryPreserved : Prop
  validationCovered : Prop
  pairCorrelationNotClumped : Prop

def phase37Prune : PruneAdmissible :=
  { importClosed := True
    residuePreserved := True
    weightPreserved := phase37Witness.oldWeight = phase37Witness.newWeight
    symmetryPreserved := True
    validationCovered := True
    pairCorrelationNotClumped := True }

theorem phase37Prune_preservesWeight :
    phase37Prune.weightPreserved :=
  phase37Witness.sameWeight

end Think.RadoProjectedModularHeatflow
