# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ResidueCoverage.Variant587d18fd7e33c0100ca979acdb116e5b58da7c894f34cb354ffda87afa25ea04

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7690f70ca1fbab684aa3a0e563d731e13426c862` · SHA-256 `587d18fd7e33c0100ca979acdb116e5b58da7c894f34cb354ffda87afa25ea04`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Validation.PhaseOrderCorrect
import Think.SourceTree.Legacy.Residues.All

set_option autoImplicit false

namespace Think.Validation

theorem residueCoverageCount :
    Think.Residues.ledger.length = 71 := by
  rfl

end Think.Validation
```
