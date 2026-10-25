# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M496d706f7274732f4e6f6e736574746c696e67417574686f72697479526563656970742e6c65616.Variant44d5c6d1b8734f317d7edd08173ba07cc62ee4553f8a614a9946160f3badfe9f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5bcf68b8d7e9576c831b3a7801b96dbf520ef1c6` · SHA-256 `44d5c6d1b8734f317d7edd08173ba07cc62ee4553f8a614a9946160f3badfe9f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
