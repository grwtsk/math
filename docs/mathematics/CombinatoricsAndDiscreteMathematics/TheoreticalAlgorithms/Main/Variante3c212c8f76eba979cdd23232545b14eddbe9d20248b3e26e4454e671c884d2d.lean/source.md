# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Main.Variante3c212c8f76eba979cdd23232545b14eddbe9d20248b3e26e4454e671c884d2d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2608b1c930ffbbb28c582de94d946b511fe8b0da` · SHA-256 `e3c212c8f76eba979cdd23232545b14eddbe9d20248b3e26e4454e671c884d2d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import tools.LeanEnvironmentExtractElements.Module

open Lean System

namespace MathematicsLeanEnvironmentExtractElements

private def moduleName (value : String) : Name :=
  value.splitOn "." |>.foldl (init := Name.anonymous) fun result part =>
    Name.str result part

private def parseArguments : List String → IO (Name × Name)
  | ["--module", value, "--scope", scope] =>
      return (moduleName value, moduleName scope)
  | ["--help"] =>
      IO.println
        "usage: mathematics_lean_element_extract --module Module.Name --scope Scope.Root" *>
        IO.Process.exit 0
  | _ =>
      throw <| IO.userError
        "usage: mathematics_lean_element_extract --module Module.Name --scope Scope.Root"

end MathematicsLeanEnvironmentExtractElements

def main (arguments : List String) : IO Unit := do
  Lean.initSearchPath (← Lean.findSysroot)
  let (moduleName, scopeName) ←
    MathematicsLeanEnvironmentExtractElements.parseArguments arguments
  let emitter ← MathematicsLeanEnvironmentExtractElements.EventEmitter.create
  MathematicsLeanEnvironmentExtractElements.emitModule emitter moduleName scopeName
```
