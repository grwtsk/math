# fromJson?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:06f675fbec2dc147fa662d0df4800658fd63e35277b7448bd3632025a9da2e3c",
  "kind": "def",
  "lexical_name": "fromJson?",
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
  "slug": "fromjson--92028f55f71ed62dde8bbe83",
  "source": {
    "blob": "0b559831ec32017e399594ca98ab286325ea97eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 131,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variant65c493670ae24a3ea8924eba6fc1bb00ece89611a10fb87a245606959ec625ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:92028f55f71ed62dde8bbe839f26bec4e3f329acacea0d841cb5f63de01319e0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variant65c493670ae24a3ea8924eba6fc1bb00ece89611a10fb87a245606959ec625ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:06f675fbec2dc147fa662d0df4800658fd63e35277b7448bd3632025a9da2e3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public protected def fromJson? (json : Json) : Except String PackageEntry := do
  let obj ← JsonObject.fromJson? json |>.mapError (s!"package entry: {·}")
  let name ← obj.get "name" |>.mapError (s!"package entry: {·}")
  let scope ← obj.getD "scope" ""
  try
    let type ← obj.get "type"
    let inherited ← obj.get "inherited"
    let configFile ← obj.getD "configFile" defaultConfigFile
    let manifestFile ← obj.getD "manifestFile" defaultManifestFile
    let src : PackageEntrySrc ← id do
      match type with
      | "path" =>
        let dir ← obj.get "dir"
        return .path dir
      | "git" =>
        let url ← obj.get "url"
        let rev ← obj.get "rev"
        let inputRev? ← obj.get? "inputRev"
        let subDir? ← obj.get? "subDir"
        return .git url rev inputRev? subDir?
      | _ =>
        throw s!"unknown package entry type '{type}'"
    return {
      name, scope, inherited
      configFile, manifestFile? := manifestFile, src
      : PackageEntry
    }
  catch e =>
    throw s!"package entry '{name}': {e}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variant65c493670ae24a3ea8924eba6fc1bb00ece89611a10fb87a245606959ec625ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variant65c493670ae24a3ea8924eba6fc1bb00ece89611a10fb87a245606959ec625ca.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b559831ec32017e399594ca98ab286325ea97eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
