# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestStressIntervalrat.Variant7e4a40a486800507b3b0193cc4692c931c9c9312a243dc943414bd09c92ce4db

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eba17d6962c45336727c62176f6e50814aecee48` · SHA-256 `7e4a40a486800507b3b0193cc4692c931c9c9312a243dc943414bd09c92ce4db`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import LeanCert.Core.IntervalRat.Taylor

open LeanCert.Core

-- Raw interval computations (debug-style).
#eval
  let I := IntervalRat.expPointComputable (1 / 2) 15
  dbg_trace "exp(1/2): [{I.lo}, {I.hi}]"
  pure ()

#eval
  let I := IntervalRat.sinhPointComputable (1 / 2) 15
  dbg_trace "sinh(1/2): [{I.lo}, {I.hi}]"
  pure ()

#eval
  let I := IntervalRat.atanhPointComputable (1 / 3) 15
  dbg_trace "atanh(1/3): [{I.lo}, {I.hi}]"
  pure ()
```
