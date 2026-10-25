# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AddPositionInfo.Variant0dff6c876447c6b05d7339574b8502d4c6dc5b106460af1811d769af424ba80f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `095a9f97607b7b29979aa4005f7df1d498cea225` · SHA-256 `0dff6c876447c6b05d7339574b8502d4c6dc5b106460af1811d769af424ba80f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Architect.Load
import Cli


open Lean

/-! This file contains utilities for porting from an existing LaTeX blueprint. -/

open Lean Cli Architect

def runAddPositionInfo (p : Parsed) : IO UInt32 := do
  let some imports := p.flag? "imports" |>.bind (·.as? (Array ModuleName))
    | IO.throwServerError "--imports flag is required"
  let options : LeanOptions ← match p.flag? "options" with
    | some o => IO.ofExcept (Json.parse (o.as! String) >>= fromJson?)
    | none => pure (∅ : LeanOptions)
  let stdin ← IO.getStdin
  let input ← stdin.readToEnd
  let .arr jsons ← IO.ofExcept (Json.parse input)
    | IO.throwServerError "Expected a JSON array"
  let nodes : Array Node ← jsons.filterMapM fun json => do
    match fromJson? json with
    | .ok (node : Node) => return some node
    | .error e =>
      IO.eprintln s!"Ignoring node with error: {e}"
      return none
  runEnvOfImports imports options.toOptions do
    let nodesWithPos ← nodes.mapM fun node => node.toNodeWithPos
    IO.println (nodesWithPos.map NodeWithPos.toJson |>.toJson)
  return 0

def addPositionInfoCmd : Cmd := `[Cli|
  add_position_info VIA runAddPositionInfo;
  "Add position information to a JSON list of nodes."

  FLAGS:
    imports : Array ModuleName; "Comma-separated Lean modules to import."
    options : String; "LeanOptions in JSON to pass to running the imports."
]

def main (args : List String) : IO UInt32 := do
  addPositionInfoCmd.validate args
```
