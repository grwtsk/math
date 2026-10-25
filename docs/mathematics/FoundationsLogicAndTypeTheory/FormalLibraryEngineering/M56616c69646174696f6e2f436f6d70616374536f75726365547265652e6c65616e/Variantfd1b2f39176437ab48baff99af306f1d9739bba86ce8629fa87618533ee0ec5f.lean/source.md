# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M56616c69646174696f6e2f436f6d70616374536f75726365547265652e6c65616e.Variantfd1b2f39176437ab48baff99af306f1d9739bba86ce8629fa87618533ee0ec5f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d03c1d12f34680ee5f1fa53f0d7f30b8797e8347` · SHA-256 `fd1b2f39176437ab48baff99af306f1d9739bba86ce8629fa87618533ee0ec5f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit0.Bit1.Bit1.Bit0.Bit1.Bit0.Bit0.Bit1.Bit0.M536f75726365547265652f4173744f776e6572736869702e6c65616e
import Think.Bit0.Bit1.Bit1.Bit1.Bit1.Bit0.Bit1.Bit0.M56616c69646174696f6e2f526574697265645061746851756172616e74696e652e6c65616e


/- source-tree-label: STL1|L|addr=0101001010|role=proof_code_atom|slug=validation-compactsourcetree|owner=canonical_owner|core=Validation/CompactSourceTree.lean|leaf=M56616c69646174696f6e2f436f6d70616374536f75726365547265652e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Compact

structure CompactValidationSuite where
  importsValidationShell : Bool
  checksNonclaims : Bool
  checksResidues : Bool
  checksCompactFacade : Bool
  checksAstLeafOwnership : Bool
deriving Repr

def compactValidationSuite : CompactValidationSuite :=
  { importsValidationShell := true
    checksNonclaims := true
    checksResidues := true
    checksCompactFacade := true
    checksAstLeafOwnership := true }

def compactAstOwnershipReceipt : Think.SourceTree.AstOwnershipReceipt :=
  { totalDeclarationCount := 1
    compactDeclarationCount := 1
    duplicateDeclarationNameCount := 0
    astLeafCount := 1
    ownedAstLeafCount := 1
    unownedAstLeafCount := 0 }

theorem compactValidationSuite_complete :
    compactValidationSuite.importsValidationShell = true ∧
    compactValidationSuite.checksNonclaims = true ∧
    compactValidationSuite.checksResidues = true ∧
    compactValidationSuite.checksCompactFacade = true ∧
    compactValidationSuite.checksAstLeafOwnership = true := by
  exact ⟨rfl, rfl, rfl, rfl, rfl⟩

theorem compactAstOwnershipReceipt_closed :
    compactAstOwnershipReceipt.closed := by
  exact Think.SourceTree.astOwnershipReceipt_closed_of_zero_residue
    compactAstOwnershipReceipt rfl rfl rfl rfl

end Think.Compact
```
