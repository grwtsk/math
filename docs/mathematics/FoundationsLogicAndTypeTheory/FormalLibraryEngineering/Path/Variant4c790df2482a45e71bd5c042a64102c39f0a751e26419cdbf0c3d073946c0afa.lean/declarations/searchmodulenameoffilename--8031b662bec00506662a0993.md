# searchModuleNameOfFileName

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:092f3c437fc76218d9ee26fc110eac4669ae93bb72c74eda9f285a9cfb4f61d1",
  "kind": "def",
  "lexical_name": "searchModuleNameOfFileName",
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
  "slug": "searchmodulenameoffilename--8031b662bec00506662a0993",
  "source": {
    "blob": "9428659d26be33e4093781f8190a902787e27cae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 170,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Path/Variant4c790df2482a45e71bd5c042a64102c39f0a751e26419cdbf0c3d073946c0afa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8031b662bec00506662a09933c4558424a525d6f856257194b31a9f9efe5653c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Path/Variant4c790df2482a45e71bd5c042a64102c39f0a751e26419cdbf0c3d073946c0afa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:092f3c437fc76218d9ee26fc110eac4669ae93bb72c74eda9f285a9cfb4f61d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def searchModuleNameOfFileName (fname : FilePath) (rootDirs : SearchPath) : IO (Option Name) := do
  for rootDir in rootDirs do
    try
      return some <| ← moduleNameOfFileName fname <| some rootDir
    catch
      -- Try the next one
      | _ => pure ()
  return none

/--
  Find the system root of the given `lean` command
  by calling `lean --print-prefix` and returning the path it prints.
  Defaults to trying the `lean` in `PATH`.
  If set, the `LEAN_SYSROOT` environment variable takes precedence.
  Note that the called `lean` binary might not be part of the system root,
  e.g. in the case of `elan`'s proxy binary.
  Users internal to Lean should use `Lean.getBuildDir` instead.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Path/Variant4c790df2482a45e71bd5c042a64102c39f0a751e26419cdbf0c3d073946c0afa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Path/Variant4c790df2482a45e71bd5c042a64102c39f0a751e26419cdbf0c3d073946c0afa.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9428659d26be33e4093781f8190a902787e27cae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
