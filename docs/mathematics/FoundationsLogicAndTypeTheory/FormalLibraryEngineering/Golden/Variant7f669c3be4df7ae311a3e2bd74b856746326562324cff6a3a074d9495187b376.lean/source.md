# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Golden.Variant7f669c3be4df7ae311a3e2bd74b856746326562324cff6a3a074d9495187b376

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6452601f420269966411e15b279b95b64c3d69f1` · SHA-256 `7f669c3be4df7ae311a3e2bd74b856746326562324cff6a3a074d9495187b376`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic
import CompositeElements.Invariants

/-! # Kernel-checked finite golden facts. -/

namespace URSM.Composite

example : importsBits 3 0 = true := by decide
example : importsBits 3 1 = true := by decide
example : importsBits 3 2 = true := by decide
example : importsBits 4 0 = true := by decide
example : importsBits 4 2 = true := by decide
example : importsBits 5 0 = true := by decide
example : importsBits 5 3 = true := by decide
example : importsBits 5 4 = true := by decide
example : importsBits 0 3 = false := by decide
example : exactBridgeBits 2 2 = true := by decide
example : exactBridgeBits 0 1 = true := by decide
example : transportBits 2 0 = true := by decide
example : exactBridgeBits 2 0 = false := by decide
example :
    staticPlanes.conflict.square.read? 0 1 = some false := by
  decide
example :
    staticPlanes.conflict.square.read? 1 2 = none := by
  decide

example :
    (URSM.Contracts.ResolvedSquare.unresolved :
      URSM.Contracts.ResolvedSquare 2).read? 0 1 = none := by
  simp

example :
    URSM.Bridge.rowMajor
      ((7 : Fin 8), (7 : Fin 8)) = (63 : Fin 64) := by
  apply Fin.ext
  decide

example :
    URSM.Bridge.rowMajor
      ((1 : Fin 2), (1 : Fin 33)) = (34 : Fin 66) := by
  apply Fin.ext
  decide

end URSM.Composite
```
