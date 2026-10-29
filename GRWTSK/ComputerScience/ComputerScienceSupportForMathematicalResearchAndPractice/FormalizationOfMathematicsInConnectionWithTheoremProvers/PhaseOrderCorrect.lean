import Think.Bit0.Bit0.Bit0.Bit0.Bit1.Bit0.Bit1.Bit1.M56616c69646174696f6e2f5068617365436f7665726167652e6c65616e


/- source-tree-label: STL1|L|addr=01111110|role=proof_code_atom|slug=validation-phaseordercorrect|owner=canonical_owner|core=Validation/PhaseOrderCorrect.lean|leaf=M56616c69646174696f6e2f50686173654f72646572436f72726563742e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Validation

theorem phaseOrderComplete :
    Think.centerSpine.length = 61 := by
  rfl

theorem phaseOrderNoDup :
    Think.centerSpine.Nodup := by
  exact Think.centerSpine_nodup

end Think.Validation
