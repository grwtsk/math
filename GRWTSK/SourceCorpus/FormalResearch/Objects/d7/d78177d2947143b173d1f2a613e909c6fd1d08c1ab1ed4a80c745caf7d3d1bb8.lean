import Think.Bit0.Bit0.Bit0.Bit1.Bit1.Bit1.Bit1.M536f75726365547265652f436f7665726167652e6c65616e


/- source-tree-label: STL1|L|addr=00000000|role=proof_code_atom|slug=sourcetree-nodup|owner=canonical_owner|core=SourceTree/NoDup.lean|leaf=M536f75726365547265652f4e6f4475702e6c65616e.lean -/

set_option autoImplicit false

namespace Think.SourceTree

theorem coveredPhases_nodup :
    coveredPhases.Nodup := by
  rw [coveredPhases_eq_centerSpine]
  exact Think.centerSpine_nodup

end Think.SourceTree
