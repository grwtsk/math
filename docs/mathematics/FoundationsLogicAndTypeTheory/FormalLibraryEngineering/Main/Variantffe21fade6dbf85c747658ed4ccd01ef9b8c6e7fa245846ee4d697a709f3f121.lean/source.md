# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Main.Variantffe21fade6dbf85c747658ed4ccd01ef9b8c6e7fa245846ee4d697a709f3f121

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ceab7495d508681113d9df631231f4338a6eaf39` · SHA-256 `ffe21fade6dbf85c747658ed4ccd01ef9b8c6e7fa245846ee4d697a709f3f121`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lake.CLI.Main
open Lake Lean

unsafe def main (args : List String) : IO UInt32 := do
  unless args.length == 1 do
    println! "This command takes exactly one argument: the path to a file containing a list of declarations to check."
    return 1
  let filename : System.FilePath := args[0]!
  unless ← filename.pathExists do
    println! "Could not find declaration list {filename}."
    return 1
  let (elanInstall?, leanInstall?, lakeInstall?) ← findInstall?
  let config ← MonadError.runEIO <| mkLoadConfig { elanInstall?, leanInstall?, lakeInstall? }
  let (ws?, log) ← (loadWorkspace config).run?
  log.replay (logger := .stderr)
  let some ws := ws? | return 1
  let imports := ws.root.leanLibs.flatMap (·.config.roots.map fun module => { module })
  -- see comments in https://github.com/leanprover/lean4/pull/6325
  enableInitializersExecution
  let env ← Lean.importModules imports {}
  let mut ok := true
  for line in ← IO.FS.lines filename do
    unless env.contains line.toName do
      println! "{line} is missing."
      ok := false
  return if ok then 0 else 1
```
