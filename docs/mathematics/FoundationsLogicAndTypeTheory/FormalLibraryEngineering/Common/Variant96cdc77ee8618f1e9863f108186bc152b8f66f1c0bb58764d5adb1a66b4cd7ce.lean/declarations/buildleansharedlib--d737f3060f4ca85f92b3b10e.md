# buildLeanSharedLib

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ca28098944c77c348b2342a1cb329e2c3a24f9fe1c8c25fc8b7b0f108ef5997",
  "kind": "def",
  "lexical_name": "buildLeanSharedLib",
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
  "slug": "buildleansharedlib--d737f3060f4ca85f92b3b10e",
  "source": {
    "blob": "c20647096e000adccb67bf7a9f1107d2eedc18be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1070,
    "line": 1046,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Common/Variant96cdc77ee8618f1e9863f108186bc152b8f66f1c0bb58764d5adb1a66b4cd7ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d737f3060f4ca85f92b3b10e1905b3031291cbeda57c9b2dbcfce79efdaf8146",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Common/Variant96cdc77ee8618f1e9863f108186bc152b8f66f1c0bb58764d5adb1a66b4cd7ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ca28098944c77c348b2342a1cb329e2c3a24f9fe1c8c25fc8b7b0f108ef5997`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1046–1070.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def buildLeanSharedLib
  (libName : String) (libFile : FilePath)
  (linkObjs : Array (Job FilePath)) (linkLibs : Array (Job Dynlib))
  (weakArgs traceArgs : Array String := #[]) (plugin := false)
  (linkDeps := Platform.isWindows)
: SpawnM (Job Dynlib) :=
  (Job.collectArray linkObjs "linkObjs").bindM (sync := true) fun objs => do
  (Job.collectArray linkLibs "linkLibs").mapM fun libs => do
    addPureTrace traceArgs "traceArgs"
    buildLeanSharedLibSync libName libFile objs libs (weakArgs ++ traceArgs) plugin linkDeps

/--
Build an executable linking Lean by using the Lean toolchain's linker.

The executable will statically link in `linkObjs` (e.g., object files or
static libraries) and dynamically link to `linkLibs` (and their transitive
`deps`).

By default, Lean will be statically linked to the executable.
If `sharedLean := true`, it will instead be dynamically linked.
This means users of the resulting executable will need to have Lean's
shared libraries on their system.

Additional arguments to the linker can be provided via `args`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Common/Variant96cdc77ee8618f1e9863f108186bc152b8f66f1c0bb58764d5adb1a66b4cd7ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Common/Variant96cdc77ee8618f1e9863f108186bc152b8f66f1c0bb58764d5adb1a66b4cd7ce.lean#L1046).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c20647096e000adccb67bf7a9f1107d2eedc18be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
