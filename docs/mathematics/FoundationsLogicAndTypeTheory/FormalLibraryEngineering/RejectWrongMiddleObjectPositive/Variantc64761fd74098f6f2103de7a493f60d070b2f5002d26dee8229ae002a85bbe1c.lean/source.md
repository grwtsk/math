# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectWrongMiddleObjectPositive.Variantc64761fd74098f6f2103de7a493f60d070b2f5002d26dee8229ae002a85bbe1c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `31a1d117a9f1d5bfc9c921c89b51cc5dc5ea9068` · SHA-256 `c64761fd74098f6f2103de7a493f60d070b2f5002d26dee8229ae002a85bbe1c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

open GRWTSK.Algebra.KTheory.FormalKK
universe v
variable (T : BivariantTheory.{0,v} Nat)
example (α : T.Corr 0 1) (β : T.Corr 1 3) : T.Corr 0 3 :=
  T.product α β
```
