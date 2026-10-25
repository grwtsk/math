# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectAbsentAdapterAsZeroPositive.Variant042178f4e1c84db93a41641377bf22c794c6891c35e001bee28be5049ed21852

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `de34cebd1518a6abffe9593e2eed78a6d30b9054` · SHA-256 `042178f4e1c84db93a41641377bf22c794c6891c35e001bee28be5049ed21852`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore
open GRWTSK.Interfaces.OptionalAdapterGate
example {Key : Type} [DecidableEq Key] (L : Ledger Key) (key : Key) (h : L key = none) :
    applySelected L none key = none := absent_route_preserves_none L h
```
