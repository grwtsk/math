# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceLocations.Variantd042b1f76ca32debbe605c5640de243b02a6e7d6a3fa8f16e56aa30b3dbab28a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b3f474099c8bec8401573adcd588599b6a2c47d5` · SHA-256 `ffec550a153d9f0c268338d07f41dcb02201d995617853efb8f97a5cf3313a2a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Require.Variantf2abdb7927b58601a468a4e3b0921ed9f63baad6752f10de5265467892ca172f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f2abdb7927b58601a468a4e3b0921ed9f63baad6752f10de5265467892ca172f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.Require.Variantf2abdb7927b58601a468a4e3b0921ed9f63baad6752f10de5265467892ca172f","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"f2abdb7927b58601a468a4e3b0921ed9f63baad6752f10de5265467892ca172f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/native-source-intake/relocation-review/aug10-consumers/active-packages/2771b9ffb3fa677967093849d56e47c4f1699805385cd737c37d32438da50ebd/src/tools/LeanSource/SourceLocations.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module
public import Lean

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Require.Variantf2abdb7927b58601a468a4e3b0921ed9f63baad6752f10de5265467892ca172f

public section

/-! Explicit physical-source routing for retained native readers.
Logical module names and original source IDs remain unchanged. This module
confers no theorem, checker, or adoption status. -/

open Lean System
namespace FormalSourceLocations

private def require (p : Bool) (message : String) : IO Unit :=
  unless p do throw <| IO.userError message

private partial def view (directory : FilePath) : IO (Option (FilePath × Json)) := do
  let marker := directory / "SOURCE-RELOCATION-MAP.json"
  if ← marker.pathExists then
    require ((← marker.symlinkMetadata).type == .file) "source marker is linked or special"
    let value ← IO.ofExcept <| Json.parse (← IO.FS.readFile marker)
    let schema ← IO.ofExcept <| value.getObjValAs? Nat "schema"
    let original ← IO.ofExcept <| value.getObjValAs? String "original_unit_root"
    require (schema == 1 && original == directory.toString) "source marker root or schema differs"
    return some (directory, value)
  match directory.parent with
  | none => return none
  | some parent =>
    if parent == directory then return none
    view parent

private def relativeTo (root path : FilePath) : IO String := do
  let markerPrefix := root.toString ++ "/"
  require (path.toString.startsWith markerPrefix) "source path escapes its logical root"
  return (path.toString.drop markerPrefix.length).toString

private def verifiedTarget (root : FilePath) (key : String) (record : Json) : IO FilePath := do
  let relative : FilePath := ⟨key⟩
  require (!relative.isAbsolute && !(relative.components.any fun p => p == ".." || p == "."))
    "source marker key is not normalized"
  require (!(record.getObjValAs? Bool "retired_active_source").toOption.getD false) "source ID is retired"
  let original ← IO.ofExcept <| record.getObjValAs? String "logical_original_path"
  require (original == (root / key).toString) "source record changed its logical ID"
  let target ← IO.ofExcept <| record.getObjValAs? String "target_path"
  let digest ← IO.ofExcept <| record.getObjValAs? String "sha256"
  let size ← IO.ofExcept <| record.getObjValAs? Nat "byte_size"
  let physical : FilePath := ⟨target⟩
  require (physical.isAbsolute && target.startsWith "/Users/local/Desktop/NoeaaeueFormal/")
    "mapped source is outside the primary formal repository"
  require (!(physical.components.any fun p => p == ".." || p == ".")) "mapped source path is not normalized"
  let mut component : FilePath := "/"
  for part in physical.components do
    if part.isEmpty then continue
    component := component / part
    require ((← component.symlinkMetadata).type != .symlink) "mapped source has a symlink component"
  let metadata ← physical.symlinkMetadata
  require (metadata.type == .file && metadata.byteSize.toNat == size) "mapped source type or size changed"
  let result ← IO.Process.output {cmd := "/usr/bin/shasum", args := #["-a", "256", target]}
  require (result.exitCode == 0 && (result.stdout.splitOn " ").head! == digest)
    "mapped source SHA-256 changed"
  let logical := root / key
  if logical.extension == some "lean" && (← logical.pathExists) then
    require ((← logical.symlinkMetadata).type == .file) "original source is linked or special"
    let initial := (record.getObjValAs? String "original_intake_sha256").toOption.getD digest
    let old ← IO.Process.output {cmd := "/usr/bin/shasum", args := #["-a", "256", logical.toString]}
    require (old.exitCode == 0 && (old.stdout.splitOn " ").head! == initial)
      "original source changed after intake"
  return physical

/-- Resolve only an exactly declared source, leaving its logical ID unchanged. -/
def sourcePath (root relative : FilePath) : IO FilePath := do
  require (!relative.isAbsolute && !(relative.components.any fun p => p == "..")) "source ID is not relative"
  let absoluteRoot ← IO.FS.realPath root
  let logical := absoluteRoot / relative
  match ← view absoluteRoot with
  | none => return root / relative
  | some (original, map) =>
    let key ← relativeTo original logical
    let sources ← IO.ofExcept <| map.getObjVal? "sources"
    let record ← IO.ofExcept <| sources.getObjVal? key
    verifiedTarget original key record

/-- Exact logical module discovery, including detached sources and excluding
retired versions. The caller retains its original scope and exclusion rules. -/
def leanFiles (root : FilePath) : IO (Option (Array FilePath)) := do
  let absoluteRoot ← IO.FS.realPath root
  match ← view absoluteRoot with
  | none => return none
  | some (original, map) =>
    let sources ← IO.ofExcept <| (map.getObjVal? "sources").bind Json.getObj?
    let mut files := #[]
    for (key, record) in sources.toList do
      let logical := original / key
      if logical.extension != some "lean" ||
          (record.getObjValAs? Bool "retired_active_source").toOption.getD false then continue
      if !logical.toString.startsWith (absoluteRoot.toString ++ "/") then continue
      let _ ← verifiedTarget original key record
      files := files.push logical
    return some files
/-- Recover the exact declared module name without requiring the detached
logical filename to exist on disk. Target bytes were checked by `leanFiles`. -/
def logicalModuleName (root file : FilePath) : IO Name := do
  let absoluteRoot ← IO.FS.realPath root
  let relative : FilePath := ⟨← relativeTo absoluteRoot file⟩
  require (relative.extension == some "lean") "logical module does not name Lean source"
  return (relative.withExtension "").components.foldl Name.mkStr Name.anonymous

end FormalSourceLocations
```
