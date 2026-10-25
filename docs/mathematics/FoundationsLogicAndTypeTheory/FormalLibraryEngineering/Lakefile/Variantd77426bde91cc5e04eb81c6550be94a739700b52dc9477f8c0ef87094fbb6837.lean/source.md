# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lakefile.Variantd77426bde91cc5e04eb81c6550be94a739700b52dc9477f8c0ef87094fbb6837

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e28ea0a5dcfeab5c4e8c32778d462a0876fce561` · SHA-256 `d77426bde91cc5e04eb81c6550be94a739700b52dc9477f8c0ef87094fbb6837`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lake
open Lake DSL

package «checkdecls» {
  -- add package configuration options here
}

@[default_target]
lean_exe «checkdecls» {
  root := `Main
  supportInterpreter := true
  weakLinkArgs := #["-lLake"]
}
```
