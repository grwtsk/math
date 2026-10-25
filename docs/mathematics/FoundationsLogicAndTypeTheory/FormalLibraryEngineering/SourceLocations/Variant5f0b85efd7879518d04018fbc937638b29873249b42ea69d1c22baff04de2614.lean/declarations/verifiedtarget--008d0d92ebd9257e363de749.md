# verifiedTarget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1a593651e436ddaab9911d048be1394b161ea7d2c5b211a3a38b7e40c636a67f",
  "kind": "def",
  "lexical_name": "verifiedTarget",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "verifiedtarget--008d0d92ebd9257e363de749",
  "source": {
    "blob": "e092d354617148329e9de858f3e8ecd90cef09bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SourceLocations/Variant5f0b85efd7879518d04018fbc937638b29873249b42ea69d1c22baff04de2614.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:008d0d92ebd9257e363de7498a1cc099c436db8411fee819a246b08da32e5969",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SourceLocations/Variant5f0b85efd7879518d04018fbc937638b29873249b42ea69d1c22baff04de2614.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1a593651e436ddaab9911d048be1394b161ea7d2c5b211a3a38b7e40c636a67f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
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
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SourceLocations/Variant5f0b85efd7879518d04018fbc937638b29873249b42ea69d1c22baff04de2614.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SourceLocations/Variant5f0b85efd7879518d04018fbc937638b29873249b42ea69d1c22baff04de2614.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e092d354617148329e9de858f3e8ecd90cef09bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
