# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lakefile.Variant4e110bbf183154d6e7b9900488c99557942c71974d30851f581881962fe9e51d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `16384fc98272933c2fb871a77d627e06fcf51fe7` · SHA-256 `4e110bbf183154d6e7b9900488c99557942c71974d30851f581881962fe9e51d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lake
open Lake DSL

package SpectralProof where
  srcDir := "."

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.3.0"

@[default_target]
lean_lib SpectralProof

lean_exe spectralProof where
  root := `SpectralProof.Main
```
