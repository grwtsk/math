import Think.Bit0.Bit0.Bit0.Bit0.Bit0.Bit1.Bit1.M506970656c696e652f43656e7465722f42726169645461786f6e6f6d792e6c65616e

/- source-tree-label: STL1|L|addr=01101011|role=proof_code_atom|slug=pipeline-center-braidabsorption|owner=canonical_owner|core=Pipeline/Center/BraidAbsorption.lean|leaf=M506970656c696e652f43656e7465722f42726169644162736f727074696f6e2e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Braid.Taxonomy

def declaredBraidAbsorbsDeclaredIds : Prop :=
  declaredBraid.length = declaredTripleIds.length

theorem declared_braid_absorbs_declared_ids :
    declaredBraidAbsorbsDeclaredIds := by
  rfl

end Think.Braid.Taxonomy
