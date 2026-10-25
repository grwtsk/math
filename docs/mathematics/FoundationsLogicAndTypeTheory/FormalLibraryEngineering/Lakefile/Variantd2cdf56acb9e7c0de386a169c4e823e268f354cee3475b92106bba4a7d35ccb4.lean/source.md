# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lakefile.Variantd2cdf56acb9e7c0de386a169c4e823e268f354cee3475b92106bba4a7d35ccb4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `638908e0940e1627fe281a08269b417baf4cd99c` · SHA-256 `d2cdf56acb9e7c0de386a169c4e823e268f354cee3475b92106bba4a7d35ccb4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lake
open Lake DSL

package «folder» where
  version := v!"0.1.0"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.31.0"

@[default_target]
lean_lib Folder where
  srcDir := "src"
```
