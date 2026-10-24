import Think.Bit0.Bit1.Bit1.Bit1.Bit1.Bit0.Bit0.M536f75726365547265652f506f6c6541737369676e6d656e742e6c65616e


/- source-tree-label: STL1|L|addr=0001111|role=proof_code_atom|slug=sourcetree-coverage|owner=canonical_owner|core=SourceTree/Coverage.lean|leaf=M536f75726365547265652f436f7665726167652e6c65616e.lean -/

set_option autoImplicit false

namespace Think.SourceTree

def coveredPhases : List Think.PhaseId :=
  allPhasePlacements.map (fun q => q.phase)

theorem coveredPhases_eq_centerSpine :
    coveredPhases = Think.centerSpine := by
  rfl

theorem every_center_phase_covered (p : Think.PhaseId) :
    p ∈ coveredPhases := by
  rw [coveredPhases_eq_centerSpine]
  exact Think.centerSpine_complete p

end Think.SourceTree
