# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lakefile.Variantc59fac08d71da0459583f55e56e3bf4f3889b2cfe52a0ad944ff8138d383f784

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4bc98751d8eb56d077a0be4ca823c83609e1b225` · SHA-256 `c59fac08d71da0459583f55e56e3bf4f3889b2cfe52a0ad944ff8138d383f784`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lake
open Lake DSL

package SpectralProof where
  srcDir := "."

@[default_target]
lean_lib SpectralProof

lean_exe spectralProof where
  root := `SpectralProof.Main
```
