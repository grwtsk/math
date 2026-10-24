# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M496d706f7274732f417574686f72697479526563656970742e6c65616e.Variantbab6fd53849eed87ace45b6030d71d2ea4ac0b6e8c69f617f380cf1768c90a61

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ad429cec43350d516c37e1b26b38c9223b4a5a04` · SHA-256 `bab6fd53849eed87ace45b6030d71d2ea4ac0b6e8c69f617f380cf1768c90a61`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit1.Bit0.Bit1.Bit1.Bit0.Bit1.Bit0.Bit1.M496d706f7274732f417574686f726974794c6576656c2e6c65616e
import Think.Bit0.Bit1.Bit0.Bit0.Bit0.Bit0.Bit0.Bit0.Bit0.M4b65726e656c2f436865636b65642e6c65616e


/- source-tree-label: STL1|L|addr=10110101|role=proof_code_atom|slug=imports-authorityreceipt|owner=canonical_owner|core=Imports/AuthorityReceipt.lean|leaf=M496d706f7274732f417574686f72697479526563656970742e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Imports

structure AuthorityReceipt where
  target : FWR.Target
  authorityLevel : AuthorityLevel
  importedModule : Option String
  importedTheorem : Option String
  clearsResidues : List String
  retainedResidues : List String
  forbidsTargetSettlement : Bool
deriving DecidableEq, Repr

namespace AuthorityReceipt

def targetBoundaryCheck
    (_receipt : AuthorityReceipt) (P : Prop) (r : FWR.Residue) :
    FWR.Checked P :=
  FWR.Checked.residue [r]

theorem targetBoundaryCheck_not_proved
    (receipt : AuthorityReceipt) (_h : receipt.forbidsTargetSettlement = true)
    (P : Prop) (r : FWR.Residue) :
    (receipt.targetBoundaryCheck P r).isProved = false := by
  rfl

theorem targetBoundaryCheck_hasResidue
    (receipt : AuthorityReceipt) (_h : receipt.forbidsTargetSettlement = true)
    (P : Prop) (r : FWR.Residue) :
    (receipt.targetBoundaryCheck P r).hasResidue = true := by
  rfl

theorem targetBoundaryCheck_ne_proved
    (receipt : AuthorityReceipt) (_h : receipt.forbidsTargetSettlement = true)
    (P : Prop) (r : FWR.Residue) :
    ¬ ∃ proof : P,
      receipt.targetBoundaryCheck P r = FWR.Checked.proved proof := by
  intro hProved
  rcases hProved with ⟨proof, hEq⟩
  cases hEq

def doesNotSettleTarget (receipt : AuthorityReceipt) : Prop :=
  receipt.forbidsTargetSettlement = true

theorem forbidsTargetSettlement_doesNotSettleTarget
    (receipt : AuthorityReceipt) :
    receipt.forbidsTargetSettlement = true ->
      receipt.doesNotSettleTarget := by
  intro h
  exact h

end AuthorityReceipt

end Think.Imports
```
