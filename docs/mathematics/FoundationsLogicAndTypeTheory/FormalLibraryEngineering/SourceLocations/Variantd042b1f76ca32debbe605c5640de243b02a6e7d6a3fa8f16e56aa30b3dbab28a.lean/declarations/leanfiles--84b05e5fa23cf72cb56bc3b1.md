# leanFiles

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4ae52319ab8953a94da2819bba740796d6b553464b19a950e39b82cd3fc5746a",
  "kind": "def",
  "lexical_name": "leanFiles",
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
  "slug": "leanfiles--84b05e5fa23cf72cb56bc3b1",
  "source": {
    "blob": "b3f474099c8bec8401573adcd588599b6a2c47d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 91,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SourceLocations/Variantd042b1f76ca32debbe605c5640de243b02a6e7d6a3fa8f16e56aa30b3dbab28a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:84b05e5fa23cf72cb56bc3b12e741a725d1d12cb2535dcdffd43c014c55b667b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SourceLocations/Variantd042b1f76ca32debbe605c5640de243b02a6e7d6a3fa8f16e56aa30b3dbab28a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4ae52319ab8953a94da2819bba740796d6b553464b19a950e39b82cd3fc5746a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
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
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SourceLocations/Variantd042b1f76ca32debbe605c5640de243b02a6e7d6a3fa8f16e56aa30b3dbab28a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SourceLocations/Variantd042b1f76ca32debbe605c5640de243b02a6e7d6a3fa8f16e56aa30b3dbab28a.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3f474099c8bec8401573adcd588599b6a2c47d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
