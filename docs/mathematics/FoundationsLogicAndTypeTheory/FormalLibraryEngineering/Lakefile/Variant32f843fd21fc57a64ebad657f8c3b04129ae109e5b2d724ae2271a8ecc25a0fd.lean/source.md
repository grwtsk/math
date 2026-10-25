# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lakefile.Variant32f843fd21fc57a64ebad657f8c3b04129ae109e5b2d724ae2271a8ecc25a0fd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4232358eff394c16fef03578002f61cd5712c4df` · SHA-256 `32f843fd21fc57a64ebad657f8c3b04129ae109e5b2d724ae2271a8ecc25a0fd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lake

open Lake DSL

package std where
  moreLeanArgs := moreServerArgs.push "-DwarningAsError=true"
  moreServerArgs := moreServerArgs
where
  moreServerArgs := Id.run do
    let mut moreServerArgs := #["-Dlinter.missingDocs=true"]
    if get_config? disable_new_compiler |>.isSome then
      moreServerArgs := moreServerArgs.push "-Dcompiler.enableNew=false"
    moreServerArgs

@[default_target]
lean_lib Std

@[default_target]
lean_exe runLinter where
  srcDir := "scripts"
  supportInterpreter := true

meta if get_config? doc = some "on" then
require «doc-gen4» from git "https://github.com/leanprover/doc-gen4" @ "main"
```
