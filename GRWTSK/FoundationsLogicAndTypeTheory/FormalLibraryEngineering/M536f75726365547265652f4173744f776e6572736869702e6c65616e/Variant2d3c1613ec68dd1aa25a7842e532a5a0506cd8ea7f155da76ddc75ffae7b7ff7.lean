
/- source-tree-label: STL1|L|addr=011010010|role=proof_code_atom|slug=sourcetree-astownership|owner=canonical_owner|core=SourceTree/AstOwnership.lean|leaf=M536f75726365547265652f4173744f776e6572736869702e6c65616e.lean -/

set_option autoImplicit false

namespace Think.SourceTree

inductive SourceAstLevel where
  | repositoryRoot
  | sourceFolder
  | sourceFile
  | declaration
  | astLeaf
deriving DecidableEq, Repr

structure DeclarationOwner where
  moduleName : String
  declarationName : String
deriving DecidableEq, Repr

structure AstLeafOwner where
  path : String
  declaration : DeclarationOwner
deriving DecidableEq, Repr

structure AstOwnershipReceipt where
  totalDeclarationCount : Nat
  compactDeclarationCount : Nat
  duplicateDeclarationNameCount : Nat
  astLeafCount : Nat
  ownedAstLeafCount : Nat
  unownedAstLeafCount : Nat
deriving DecidableEq, Repr

def AstOwnershipReceipt.closed
    (receipt : AstOwnershipReceipt) : Prop :=
  receipt.totalDeclarationCount = receipt.compactDeclarationCount ∧
  receipt.duplicateDeclarationNameCount = 0 ∧
  receipt.astLeafCount = receipt.ownedAstLeafCount ∧
  receipt.unownedAstLeafCount = 0

theorem astOwnershipReceipt_closed_of_zero_residue
    (receipt : AstOwnershipReceipt)
    (hDecl :
      receipt.totalDeclarationCount = receipt.compactDeclarationCount)
    (hDup : receipt.duplicateDeclarationNameCount = 0)
    (hLeaf : receipt.astLeafCount = receipt.ownedAstLeafCount)
    (hUnowned : receipt.unownedAstLeafCount = 0) :
    receipt.closed := by
  exact ⟨hDecl, hDup, hLeaf, hUnowned⟩

end Think.SourceTree
