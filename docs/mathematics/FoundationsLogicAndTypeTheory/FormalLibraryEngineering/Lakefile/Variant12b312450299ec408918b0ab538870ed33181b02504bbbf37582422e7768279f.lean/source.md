# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lakefile.Variant12b312450299ec408918b0ab538870ed33181b02504bbbf37582422e7768279f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c81ef5d39b83cf9f307807acadf6eb109ae650e2` · SHA-256 `12b312450299ec408918b0ab538870ed33181b02504bbbf37582422e7768279f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lake
open Lake DSL

package think where
  srcDir := "."

@[default_target]
lean_lib Think where
  roots := #[`Think]
```
