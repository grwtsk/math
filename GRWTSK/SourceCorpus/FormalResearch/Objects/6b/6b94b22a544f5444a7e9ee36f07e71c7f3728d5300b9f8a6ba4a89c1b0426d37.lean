import Think.Bit0.Bit0.Bit1.Bit1.Bit1.Bit1.Bit1.Bit1.M506970656c696e652f5068617365732f506861736553796d6d657472792e6c65616e


/- source-tree-label: STL1|L|addr=01011110|role=proof_code_atom|slug=pipeline-phases-phaseresidue|owner=canonical_owner|core=Pipeline/Phases/PhaseResidue.lean|leaf=M506970656c696e652f5068617365732f5068617365526573696475652e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Phases

structure PrunedWitness where
  oldPath : String
  newPath : String
  oldWeight : Nat
  newWeight : Nat
  sameWeight : oldWeight = newWeight
  residueClass : String
  reason : String

def phase37Witness : PrunedWitness :=
  { oldPath := "binomial-retired:Pipeline/Phases/Phase37_WeightScoring.lean"
    newPath := "formal/Think/Bit0/Bit1/Bit0/Bit1/Bit0/Bit0/Bit1/Bit1/Bit0/Bit1/M506970656c696e652f5068617365732f50686173655461626c652e6c65616e.lean"
    oldWeight := phaseWeight 37
    newWeight := phaseWeight 23
    sameWeight := by rfl
    residueClass := "Classifier.WeightScore"
    reason := "phase-table contraction preserving mirror Phase23" }

theorem phase37Witness_preservesWeight :
    phase37Witness.oldWeight = phase37Witness.newWeight :=
  phase37Witness.sameWeight

end Think.Pipeline.Phases
