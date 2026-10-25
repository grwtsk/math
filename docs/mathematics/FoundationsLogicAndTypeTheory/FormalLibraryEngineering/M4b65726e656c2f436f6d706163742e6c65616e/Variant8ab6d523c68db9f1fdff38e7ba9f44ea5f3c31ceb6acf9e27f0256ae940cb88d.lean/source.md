# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M4b65726e656c2f436f6d706163742e6c65616e.Variant8ab6d523c68db9f1fdff38e7ba9f44ea5f3c31ceb6acf9e27f0256ae940cb88d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `233f1e4e2b199820db013b79c5a50ffc45528e97` · SHA-256 `8ab6d523c68db9f1fdff38e7ba9f44ea5f3c31ceb6acf9e27f0256ae940cb88d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit0.Bit0.Bit1.Bit0.Bit1.Bit0.Bit1.Bit1.M4b65726e656c2f526573696475652e6c65616e


/- source-tree-label: STL1|L|addr=1101011|role=proof_code_atom|slug=kernel-compact|owner=canonical_owner|core=Kernel/Compact.lean|leaf=M4b65726e656c2f436f6d706163742e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Compact

inductive CompactAuthority where
  | finiteWitness
  | externalBoundary
  | residueOnly
  | validationSurface
deriving DecidableEq, Repr

structure CompactKernel where
  authority : CompactAuthority
  finiteOnly : Bool
  theoremAuthorityImported : Bool
deriving Repr

def rootKernel : CompactKernel :=
  { authority := CompactAuthority.finiteWitness
    finiteOnly := true
    theoremAuthorityImported := false }

theorem rootKernel_finiteOnly :
    rootKernel.finiteOnly = true := by
  rfl

theorem rootKernel_noTheoremAuthority :
    rootKernel.theoremAuthorityImported = false := by
  rfl

end Think.Compact
```
