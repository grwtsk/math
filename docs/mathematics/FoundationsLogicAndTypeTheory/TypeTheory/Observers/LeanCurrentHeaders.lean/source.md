# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.TypeTheory.Observers.LeanCurrentHeaders

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6d85929efc24344028214534221388217aa410d4` · SHA-256 `3c9717e1bd0e6547ff8e2bf07d66fd64a190ea8fb648e4beb189699ec5be49e6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean

/-! PRIVATE header-only observation. Body elaboration and original environments
are separate obligations. A successful header parse is never a typed theorem. -/
def main (args : List String) : IO UInt32 := do
  if Lean.versionString != "4.33.0" then
    IO.eprintln "BLOCKED_TOOLCHAIN"
    return 3
  let [request, output] := args | do
    IO.eprintln "usage: LeanCurrentHeaders.lean PATH_ARRAY_JSON NEW_OUTPUT_JSONL"
    return 2
  let requestPath : System.FilePath := request
  if (← requestPath.metadata).byteSize > 128 * 1024 * 1024 then
    throw <| IO.userError "RESOURCE_BOUNDED_REQUEST"
  let paths : Array String ← IO.ofExcept <| Lean.fromJson? (← IO.ofExcept <| Lean.Json.parse (← IO.FS.readFile request))
  if paths.size > 200000 then
    throw <| IO.userError "RESOURCE_BOUNDED_PATHS"
  let h ← IO.FS.Handle.mk output .write
  for path in paths do
    let mut record := Lean.Json.mkObj [("path", Lean.toJson path)]
    try
      let sourcePath : System.FilePath := path
      if (← sourcePath.metadata).byteSize > 64 * 1024 * 1024 then
        throw <| IO.userError "RESOURCE_BOUNDED_SOURCE"
      let input ← IO.FS.readFile path
      let ctx := Lean.Parser.mkInputContext input path
      let (header, state, messages) ← Lean.Parser.parseHeader ctx
      let mut diagnostics : Array String := #[]
      for message in messages.toList do
        diagnostics := diagnostics.push (← message.toString)
      record := Lean.Json.mkObj [
        ("path", Lean.toJson path), ("header_end_byte", Lean.toJson state.pos.byteIdx),
        ("imports", Lean.toJson (Lean.Elab.headerToImports header |>.map fun i => i.module.toString)),
        ("header_failed", Lean.toJson messages.hasErrors), ("diagnostics", Lean.toJson diagnostics),
        ("compiler_observation", Lean.toJson "HEADER_ONLY_LEAN_4_33_0"),
        ("body_commands", Lean.toJson "UNAVAILABLE_EXACT_ORIGINAL_ENVIRONMENT_REQUIRED"),
        ("elaborated_declarations", Lean.toJson "NOT_OBSERVED")]
    catch e =>
      record := Lean.Json.mkObj [("path", Lean.toJson path), ("header_failed", Lean.toJson true),
        ("unavailable_reason", Lean.toJson e.toString), ("elaborated_declarations", Lean.toJson "NOT_OBSERVED")]
    h.putStrLn record.compress
    h.flush
  return 0
```
