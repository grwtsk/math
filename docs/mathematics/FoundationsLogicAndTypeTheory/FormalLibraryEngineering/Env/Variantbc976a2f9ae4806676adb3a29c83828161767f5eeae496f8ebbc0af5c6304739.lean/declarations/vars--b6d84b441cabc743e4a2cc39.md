# vars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:90aaf84a89ba32c6430e3e4a6561576e9b8268b0693e626e6374c833d4f48e54",
  "kind": "def",
  "lexical_name": "vars",
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
  "slug": "vars--b6d84b441cabc743e4a2cc39",
  "source": {
    "blob": "50f64085660a243b729c4bb3655f0b0edb28a8f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 308,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantbc976a2f9ae4806676adb3a29c83828161767f5eeae496f8ebbc0af5c6304739.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b6d84b441cabc743e4a2cc3929228003d00f81870c555a470279f5fb1669b8ba",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantbc976a2f9ae4806676adb3a29c83828161767f5eeae496f8ebbc0af5c6304739.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:90aaf84a89ba32c6430e3e4a6561576e9b8268b0693e626e6374c833d4f48e54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 308–342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def vars (env : Env) : Array (String × Option String)  :=
  let vars := env.baseVars ++ #[
    ("LAKE_CACHE_DIR", if let some cache := env.lakeCache? then cache.dir.toString else ""),
    ("LAKE_ARTIFACT_CACHE", if let some b := env.enableArtifactCache? then toString b else ""),
    ("LAKE_RESTORE_ARTIFACTS", if let some b := env.restoreAllArtifacts? then toString b else ""),
    ("LEAN_PATH", some env.leanPath.toString),
    ("LEAN_SRC_PATH", some env.leanSrcPath.toString),
    ("LEAN_GITHASH", env.leanGithash),
    ("PATH", some env.path.toString)
  ]
  if Platform.isWindows then
    vars
  else
    vars.push (sharedLibPathEnvVar, some <| env.sharedLibPath.toString)

/--
The default search path the Lake executable
uses when interpreting package configuration files.

In order to use the Lean stdlib (e.g., `Init`),
the executable needs the search path to include the directory
with the stdlib's `.olean` files (e.g., from `<lean-sysroot>/lib/lean`).
In order to use Lake's modules as well, the search path also
needs to include Lake's `.olean` files (e.g., from `build`).

While this can be done by having the user augment `LEAN_PATH` with
the necessary directories, Lake also intelligently augments the initial
search path with the `.olean` directories of the provided Lean and Lake
installations.

See `findInstall?` for more information on how Lake determines those
directories. If everything is configured as expected, the user will not
need to augment `LEAN_PATH`. Otherwise, they will need to provide Lake
with more information (either through `LEAN_PATH` or through other options).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantbc976a2f9ae4806676adb3a29c83828161767f5eeae496f8ebbc0af5c6304739.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantbc976a2f9ae4806676adb3a29c83828161767f5eeae496f8ebbc0af5c6304739.lean#L308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50f64085660a243b729c4bb3655f0b0edb28a8f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
