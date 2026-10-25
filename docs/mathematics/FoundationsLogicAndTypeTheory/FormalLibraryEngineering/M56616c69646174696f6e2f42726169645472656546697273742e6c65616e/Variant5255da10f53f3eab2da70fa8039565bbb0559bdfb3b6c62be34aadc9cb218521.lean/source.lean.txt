import Think.Bit1.Bit1.Bit0.Bit1.Bit1.Bit0.Bit0.Bit0.M56616c69646174696f6e2f4272616964436f6e666f726d616e63652e6c65616e

/- source-tree-label: STL1|L|addr=010101111|role=proof_code_atom|slug=validation-braidtreefirst|owner=canonical_owner|core=Validation/BraidTreeFirst.lean|leaf=M56616c69646174696f6e2f42726169645472656546697273742e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Braid.Validation

def treeFirstLocallyGrounded (v : TreeValidation) : Prop :=
  ∀ m ∈ v.modules, moduleLocallyGrounded m

theorem tree_first_locally_grounded_is_V10
    (v : TreeValidation) :
    treeFirstLocallyGrounded v = V10_not_registry_string_only v := rfl

end Think.Braid.Validation
