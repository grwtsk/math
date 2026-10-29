import Think.Bit1.Bit0.Bit1.Bit1.Bit0.Bit1.Bit0.Bit1.M496d706f7274732f417574686f72697479526563656970742e6c65616e


/- source-tree-label: STL1|L|addr=11111111|role=proof_code_atom|slug=imports-nonsettlingauthorityreceipt|owner=canonical_owner|core=Imports/NonsettlingAuthorityReceipt.lean|leaf=M496d706f7274732f4e6f6e736574746c696e67417574686f72697479526563656970742e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Imports

structure NonsettlingAuthorityReceipt where
  receipt : AuthorityReceipt
  forbids : receipt.forbidsTargetSettlement = true

namespace NonsettlingAuthorityReceipt

theorem nonsettling_receipt_not_checked_proved
    (nonsettling : NonsettlingAuthorityReceipt)
    (P : Prop) (r : FWR.Residue) :
    ¬ ∃ proof : P,
      nonsettling.receipt.targetBoundaryCheck P r =
        FWR.Checked.proved proof := by
  exact
    AuthorityReceipt.targetBoundaryCheck_ne_proved
      nonsettling.receipt nonsettling.forbids P r

theorem nonsettling_receipt_has_boundary_residue
    (nonsettling : NonsettlingAuthorityReceipt)
    (P : Prop) (r : FWR.Residue) :
    (nonsettling.receipt.targetBoundaryCheck P r).hasResidue = true := by
  exact
    AuthorityReceipt.targetBoundaryCheck_hasResidue
      nonsettling.receipt nonsettling.forbids P r

end NonsettlingAuthorityReceipt

end Think.Imports
