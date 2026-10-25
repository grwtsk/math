# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M536f75726365547265652f4173744f776e6572736869702e6c65616e.Variant00ba90e7c7d1192b7ff180a95a3bbd109b8c03dacb84b0fb8a61f3b74118d313

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2d51e627cabc5ab7f7048044c9974b85792e41aa` · SHA-256 `5945cd9e67c23c1d5f6fa24161a6b7f41de9cf89246e053cc18f160f6dce5e95`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceAstLevel.Variant2d3c1613ec68dd1aa25a7842e532a5a0506cd8ea7f155da76ddc75ffae7b7ff7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2d3c1613ec68dd1aa25a7842e532a5a0506cd8ea7f155da76ddc75ffae7b7ff7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SourceAstLevel.Variant2d3c1613ec68dd1aa25a7842e532a5a0506cd8ea7f155da76ddc75ffae7b7ff7","mathematical_subject":"Foundations.Unclassified","original_sha256":"2d3c1613ec68dd1aa25a7842e532a5a0506cd8ea7f155da76ddc75ffae7b7ff7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit0/Bit1/Bit1/Bit0/Bit1/Bit0/Bit0/Bit1/Bit0/M536f75726365547265652f4173744f776e6572736869702e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

/- source-tree-label: STL1|L|addr=011010010|role=proof_code_atom|slug=sourcetree-astownership|owner=canonical_owner|core=SourceTree/AstOwnership.lean|leaf=M536f75726365547265652f4173744f776e6572736869702e6c65616e.lean -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceAstLevel.Variant2d3c1613ec68dd1aa25a7842e532a5a0506cd8ea7f155da76ddc75ffae7b7ff7

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
```
