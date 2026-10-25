# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lakefile.Variant0e01bcf2aafe59cdaa06e115c74ea35b51206e3c3bea943a6e17e57be68b99b1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `baddb97739469b3ceb1cf9b3d264f11f951a18f4` · SHA-256 `0e01bcf2aafe59cdaa06e115c74ea35b51206e3c3bea943a6e17e57be68b99b1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lake

open Lake DSL

package std where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/f969844b2f450ae2ee6376c54743e830bb2d6f996169728ed69c3e071dee1b97/src"
  moreLeanArgs := moreServerArgs.push "-DwarningAsError=true"
  moreServerArgs := moreServerArgs
where
  moreServerArgs := Id.run do
    let mut moreServerArgs := #["-Dlinter.missingDocs=true"]
    if get_config? disable_new_compiler |>.isSome then
      moreServerArgs := moreServerArgs.push "-Dcompiler.enableNew=false"
    moreServerArgs

@[default_target]
lean_lib Std where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/f969844b2f450ae2ee6376c54743e830bb2d6f996169728ed69c3e071dee1b97/src"

@[default_target]
lean_exe runLinter where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/f969844b2f450ae2ee6376c54743e830bb2d6f996169728ed69c3e071dee1b97/src/scripts"
  supportInterpreter := true

meta if get_config? doc = some "on" then
require «doc-gen4» from git "https://github.com/leanprover/doc-gen4" @ "main"
```
