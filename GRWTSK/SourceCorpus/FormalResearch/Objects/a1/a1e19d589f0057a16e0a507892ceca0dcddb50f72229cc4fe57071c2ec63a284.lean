module

public import tools.LeanSource.Frontend

public section

/-! # Canonical raw trace serialization -/

open Lean

namespace MathDiscoveryLeanSource

def writeTrace (path : System.FilePath) (trace : RawTrace) : IO Unit := do
  if let some parent := path.parent then
    IO.FS.createDirAll parent
  IO.FS.writeFile path ((toJson trace).compress ++ "\n")

end MathDiscoveryLeanSource
