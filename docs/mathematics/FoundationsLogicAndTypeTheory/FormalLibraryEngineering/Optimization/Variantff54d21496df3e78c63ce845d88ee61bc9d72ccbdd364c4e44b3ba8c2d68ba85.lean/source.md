# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Optimization.Variantff54d21496df3e78c63ce845d88ee61bc9d72ccbdd364c4e44b3ba8c2d68ba85

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2394a43d1204ffbd41445eceee429fca30504e0c` · SHA-256 `ff54d21496df3e78c63ce845d88ee61bc9d72ccbdd364c4e44b3ba8c2d68ba85`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Logic.Mathlib.Layers
import Think.Wisdom.Monad.Mathlib

namespace Think.Wisdom.Monad

structure OptimizationReceipt where
  targetMonadHash : String
  kleisliReceiptHash : String
  valueObjectHash : String
  optimizationLawHash : String
  claimBearing : Bool

def OptimizationReceipt.accepted (R : OptimizationReceipt) : Prop :=
  R.claimBearing = false

theorem OptimizationReceipt.not_claim_bearing_if_accepted
    (R : OptimizationReceipt) :
    R.accepted → R.claimBearing = false :=
by
  intro h
  exact h

end Think.Wisdom.Monad
```
