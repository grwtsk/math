# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AddPositionInfo.Variant473466d1d4d0620e096e08dc4d5cc971115c36b2089df4f89a84eb88b7cdbc90

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b1ac75b4b0c749957f59c0be24b7754d7c05f8b7` · SHA-256 `1f766ffdb0c7af0f9150f6af71729d2796d3b0a1df9e22d189745854cbbe2137`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RunAddPositionInfo.Variant0dff6c876447c6b05d7339574b8502d4c6dc5b106460af1811d769af424ba80f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0dff6c876447c6b05d7339574b8502d4c6dc5b106460af1811d769af424ba80f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.RunAddPositionInfo.Variant0dff6c876447c6b05d7339574b8502d4c6dc5b106460af1811d769af424ba80f","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"0dff6c876447c6b05d7339574b8502d4c6dc5b106460af1811d769af424ba80f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/LeanArchitect/scripts/convert/add_position_info.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Architect.Load
import Cli



namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RunAddPositionInfo.Variant0dff6c876447c6b05d7339574b8502d4c6dc5b106460af1811d769af424ba80f

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
