# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectHiddenBatchUpdatePositive.Variantc22773cb50eb28b1dc411357ee5beccb4e9a6014e30539b6998fd4dfc5e88ac1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3281689e9decaa1e37a0810bdec3a2adbedc8d8c` · SHA-256 `c22773cb50eb28b1dc411357ee5beccb4e9a6014e30539b6998fd4dfc5e88ac1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore
open GRWTSK.Interfaces.OptionalAdapterGate
example {Key : Type} [DecidableEq Key] {L M : Ledger Key}
    (P : AcceptedPlan L M) (key : Key) (h : ¬ P.Touches key) : M key = L key :=
  P.apply_eq_of_not_touches h
```
