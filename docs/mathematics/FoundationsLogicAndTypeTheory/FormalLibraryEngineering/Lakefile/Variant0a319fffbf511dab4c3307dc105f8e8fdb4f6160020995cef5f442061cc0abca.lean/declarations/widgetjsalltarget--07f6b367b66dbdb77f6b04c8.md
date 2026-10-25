# widgetJsAllTarget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4491ced723a4d766debe20fea1e375130168673ebee644725cbf8bfd06cd1dfb",
  "kind": "def",
  "lexical_name": "widgetJsAllTarget",
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
  "slug": "widgetjsalltarget--07f6b367b66dbdb77f6b04c8",
  "source": {
    "blob": "bf4cc987afca64eeb8957597421b4d133dc4d809",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 54,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variant0a319fffbf511dab4c3307dc105f8e8fdb4f6160020995cef5f442061cc0abca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:07f6b367b66dbdb77f6b04c8e42d2c75c4816489a0cc9a34e5fa8d9e01f47a29",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variant0a319fffbf511dab4c3307dc105f8e8fdb4f6160020995cef5f442061cc0abca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4491ced723a4d766debe20fea1e375130168673ebee644725cbf8bfd06cd1dfb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def widgetJsAllTarget (pkg : Package) (isDev : Bool) : FetchM (Job Unit) := do
  let srcs ← widgetJsSrcs.fetch
  let rollupConfig ← widgetRollupConfig.fetch
  let tsconfig ← widgetTsconfig.fetch
  let widgetPackageLock ← widgetPackageLock.fetch
  srcs.bindM (sync := true) fun _ =>
  rollupConfig.bindM (sync := true) fun _ =>
  tsconfig.bindM (sync := true) fun _ =>
  widgetPackageLock.mapM fun _ => do
    let depTrace := mixTrace (← getTrace) (.ofHash (.ofHashable isDev) "isDev")
    let traceFile := pkg.widgetDir / "js" / "lake.trace"
    buildUnlessUpToDate traceFile depTrace traceFile do
      if let some msg := get_config? errorOnBuild then
        error msg
      /- HACK: Ensure that NPM modules are installed before building TypeScript,
       *if* we are building Typescript.
       It would probably be better to have a proper target for `node_modules`
       that all the JS/TS modules depend on.
       BUT when we are being built as a dependency of another package
       we wouldn't want that target to trigger
       since in that case NPM is not necessarily installed.
       Hence, we put this block inside the build process for JS/TS files
       rather than as a top-level target.
       This only runs when some TypeScript needs building. -/
      pkg.runNpmCommand #["clean-install"]
      pkg.runNpmCommand #["run", if isDev then "build-dev" else "build"]

target widgetJsAll pkg : Unit :=
  widgetJsAllTarget pkg (isDev := false)

target widgetJsAllDev pkg : Unit :=
  widgetJsAllTarget pkg (isDev := true)

@[default_target]
lean_lib ProofWidgets where
  needs := #[widgetJsAll]

lean_lib ProofWidgets.Demos where
  needs := #[widgetJsAll]
  globs := #[.submodules `ProofWidgets.Demos]

@[test_driver]
lean_lib test where
  globs := #[.submodules `test]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variant0a319fffbf511dab4c3307dc105f8e8fdb4f6160020995cef5f442061cc0abca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variant0a319fffbf511dab4c3307dc105f8e8fdb4f6160020995cef5f442061cc0abca.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf4cc987afca64eeb8957597421b4d133dc4d809` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
