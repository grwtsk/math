# buildLeanSharedLibOfStatic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9ad9552b39744920b26830887acb7b0b26c178879ee7fb4733c1f97451d7d2d2",
  "kind": "def",
  "lexical_name": "buildLeanSharedLibOfStatic",
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
  "slug": "buildleansharedlibofstatic--7c995f58fc8eb234f0341d9c",
  "source": {
    "blob": "5096b9bdf9f5882b69c4bc4544cd52e5fbfb6b47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternLib/Variant44caef2c2ebcb3f20e9c819a224ab348e07e9050d8c4ead1c9d60f04db2d71f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7c995f58fc8eb234f0341d9ca77fcb4ce48f3ae9397444da0b791e7a4f45eb4a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternLib/Variant44caef2c2ebcb3f20e9c819a224ab348e07e9050d8c4ead1c9d60f04db2d71f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9ad9552b39744920b26830887acb7b0b26c178879ee7fb4733c1f97451d7d2d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def buildLeanSharedLibOfStatic
  (staticLibJob : Job FilePath)
  (weakArgs traceArgs : Array String := #[])
: SpawnM (Job FilePath) :=
  staticLibJob.mapM fun staticLib => do
    addLeanTrace
    addPureTrace traceArgs
    addPlatformTrace -- shared libraries are platform-dependent artifacts
    let dynlib := staticLib.withExtension sharedLibExt
    buildFileUnlessUpToDate' dynlib do
      let lean ← getLeanInstall
      let baseArgs :=
        if System.Platform.isOSX then
          #[s!"-Wl,-force_load,{staticLib}"]
        else
          #["-Wl,--whole-archive", staticLib.toString, "-Wl,--no-whole-archive"]
      let args := baseArgs ++ weakArgs ++ traceArgs ++
        #["-L", lean.leanLibDir.toString] ++ lean.ccLinkSharedFlags
      compileSharedLib dynlib args lean.cc
    return dynlib

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternLib/Variant44caef2c2ebcb3f20e9c819a224ab348e07e9050d8c4ead1c9d60f04db2d71f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternLib/Variant44caef2c2ebcb3f20e9c819a224ab348e07e9050d8c4ead1c9d60f04db2d71f9.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5096b9bdf9f5882b69c4bc4544cd52e5fbfb6b47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
