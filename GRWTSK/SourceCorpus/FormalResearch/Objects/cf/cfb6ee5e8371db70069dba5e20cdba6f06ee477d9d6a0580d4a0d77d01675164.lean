import Think.Bit1.Bit1.Bit0.Bit1.Bit1.Bit0.Bit0.Bit0.M56616c69646174696f6e2f4272616964436f6e666f726d616e63652e6c65616e

/- source-tree-label: STL1|L|addr=110010111|role=proof_code_atom|slug=validation-braidnonclaimclosure|owner=canonical_owner|core=Validation/BraidNonclaimClosure.lean|leaf=M56616c69646174696f6e2f42726169644e6f6e636c61696d436c6f737572652e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Braid.Validation

def canonicalNonclaimClosure (contract : ModuleContract) : Prop :=
  nonclaimsClosed contract

theorem default_contract_nonclaims_closed
    (tripleId moduleName reason : String) :
    canonicalNonclaimClosure
      (defaultModuleContract tripleId moduleName reason) := by
  intro nonclaim hNonclaim
  exact hNonclaim

end Think.Braid.Validation
