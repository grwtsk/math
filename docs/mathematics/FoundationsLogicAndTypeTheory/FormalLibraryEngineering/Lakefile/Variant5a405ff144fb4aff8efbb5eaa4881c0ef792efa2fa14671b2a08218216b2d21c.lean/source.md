# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lakefile.Variant5a405ff144fb4aff8efbb5eaa4881c0ef792efa2fa14671b2a08218216b2d21c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3c67999d3c2fb8e2e8e22ea1d669ad53669c95a7` · SHA-256 `5a405ff144fb4aff8efbb5eaa4881c0ef792efa2fa14671b2a08218216b2d21c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lake
open Lake DSL

package geometry_formal where
  srcDir := "."

@[default_target]
lean_lib Formal where
  roots := #[`Formal]
```
