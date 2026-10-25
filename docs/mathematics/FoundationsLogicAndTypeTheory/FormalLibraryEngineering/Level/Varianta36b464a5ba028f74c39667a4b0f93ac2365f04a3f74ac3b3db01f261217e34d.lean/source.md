# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Level.Varianta36b464a5ba028f74c39667a4b0f93ac2365f04a3f74ac3b3db01f261217e34d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9e5a47c0b306ebe261641c23f3694bdc5c40e216` · SHA-256 `a36b464a5ba028f74c39667a4b0f93ac2365f04a3f74ac3b3db01f261217e34d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Core.Id

/-! # Relaxation granularity -/

namespace Mathematics.Relaxation

inductive Level
  | declaration
  | file
  | module
  | project
  | bridge
  | federation
  deriving DecidableEq, Repr

end Mathematics.Relaxation
```
