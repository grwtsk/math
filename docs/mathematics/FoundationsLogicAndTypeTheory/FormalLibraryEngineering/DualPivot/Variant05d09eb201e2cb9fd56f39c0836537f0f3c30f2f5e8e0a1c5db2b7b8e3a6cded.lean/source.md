# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DualPivot.Variant05d09eb201e2cb9fd56f39c0836537f0f3c30f2f5e8e0a1c5db2b7b8e3a6cded

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8861377c594e9e825a08c990ed0b3ff83565ed00` · SHA-256 `05d09eb201e2cb9fd56f39c0836537f0f3c30f2f5e8e0a1c5db2b7b8e3a6cded`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Core.DualPivot

/-!
# Folder.Theorem.Core.DualPivot

Radiation role: theorem-wrapper
BinaryMatrix spine: This theorem wrapper exposes dual-pivot facts for BinaryMatrix-adjacent architecture consumers.
Ontology: proof.core.dual_pivot
Pivot role: dual
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/

namespace Folder
namespace Theorem
namespace Core

theorem arithmeticPivot_val_eq_one :
    Folder.Core.arithmeticPivot.val = 1 :=
  Folder.Core.arithmeticPivot_val_eq_one

theorem spectralPivot_eq_half :
    Folder.Core.spectralPivot = (1 / 2 : ℝ) :=
  Folder.Core.spectralPivot_eq_half

end Core
end Theorem
end Folder
```
