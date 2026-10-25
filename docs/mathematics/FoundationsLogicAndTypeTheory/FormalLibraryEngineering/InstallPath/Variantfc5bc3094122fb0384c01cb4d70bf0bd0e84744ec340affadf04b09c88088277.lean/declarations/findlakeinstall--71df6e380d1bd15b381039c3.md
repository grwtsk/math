# findLakeInstall?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8bf047cc3544b9df0e96f78ee48b52871dee5a5e900a38a3a9f8c80dca2a3d3a",
  "kind": "def",
  "lexical_name": "findLakeInstall?",
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
  "slug": "findlakeinstall--71df6e380d1bd15b381039c3",
  "source": {
    "blob": "3c7edde02ea196e47aae32845c1ff9985008a2da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 418,
    "line": 395,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:71df6e380d1bd15b381039c3f9444f2cb3bdf78b243c5c4370aa6afcf116f51f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8bf047cc3544b9df0e96f78ee48b52871dee5a5e900a38a3a9f8c80dca2a3d3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 395–418.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def findLakeInstall? : BaseIO (Option LakeInstall) := do
  if let Except.ok lake ← IO.appPath.toBaseIO then
    if let some lake ← getLakeInstall? lake then
      return some lake
  if let some home ← IO.getEnv "LAKE_HOME" then
    return some {home}
  return none

/--
Attempt to automatically detect an Elan, Lake, and Lean installation.

First, it calls `findElanInstall?` to detect a Elan installation.
Then it attempts to detect if Lake and Lean are part of a single installation
where the `lake` executable is co-located with the `lean` executable (i.e., they
are in the same directory). If Lean and Lake are not co-located, Lake will
attempt  to find the their installations separately by calling
`findLeanInstall?` and `findLakeInstall?`. Setting `LAKE_OVERRIDE_LEAN` to true
will force Lake to use `findLeanInstall?` even if co-located.

When co-located, Lake will assume that Lean and Lake's binaries are located in
`<sysroot>/bin`, their Lean libraries  in `<sysroot>/lib/lean`, Lean's source files
in `<sysroot>/src/lean`, and Lake's source files in `<sysroot>/src/lean/lake`,
following the pattern of a regular Lean toolchain.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean#L395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c7edde02ea196e47aae32845c1ff9985008a2da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
