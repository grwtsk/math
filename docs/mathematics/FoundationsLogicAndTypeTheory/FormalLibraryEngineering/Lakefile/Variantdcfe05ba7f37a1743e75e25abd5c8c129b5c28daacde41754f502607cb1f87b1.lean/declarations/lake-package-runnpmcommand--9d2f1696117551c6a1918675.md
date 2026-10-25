# Lake.Package.runNpmCommand

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4588bb74bf9e443b82f44e9f97a4cec5ce35e352544cf4c3818c1bf6aec55237",
  "kind": "def",
  "lexical_name": "Lake.Package.runNpmCommand",
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
  "slug": "lake-package-runnpmcommand--9d2f1696117551c6a1918675",
  "source": {
    "blob": "10b5aa40787947acab5cf6a94c35f15133e881e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 19,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variantdcfe05ba7f37a1743e75e25abd5c8c129b5c28daacde41754f502607cb1f87b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9d2f1696117551c6a1918675685ad7a35843e0f4082128c6c75200669856c019",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variantdcfe05ba7f37a1743e75e25abd5c8c129b5c28daacde41754f502607cb1f87b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4588bb74bf9e443b82f44e9f97a4cec5ce35e352544cf4c3818c1bf6aec55237`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Lake.Package.runNpmCommand (pkg : Package) (args : Array String) : LogIO Unit :=
  -- Running `cmd := "npm.cmd"` directly fails on Windows sometimes
  -- (https://github.com/leanprover-community/ProofWidgets4/issues/97)
  -- so run in PowerShell instead (`cmd.exe` also doesn't work.)
  if Platform.isWindows then
    proc {
      cmd := "powershell"
      args := #["-Command", "npm.cmd"] ++ args
      cwd := some pkg.widgetDir
    } (quiet := true) -- use `quiet` here or `lake` will replay the output in downstream projects.
  else
    proc {
      cmd := "npm"
      args
      cwd := some pkg.widgetDir
    } (quiet := true)

input_file widgetPackageJson where
  path := widgetDir / "package.json"
  text := true

/-- Target to update `package-lock.json` whenever `package.json` has changed. -/
target widgetPackageLock pkg : FilePath := do
  let packageFile ← widgetPackageJson.fetch
  let packageLockFile := pkg.widgetDir / "package-lock.json"
  buildFileAfterDep (text := true) packageLockFile packageFile fun _srcFile => do
    pkg.runNpmCommand #["install"]

input_file widgetRollupConfig where
  path := widgetDir / "rollup.config.js"
  text := true

input_file widgetTsconfig where
  path := widgetDir / "tsconfig.json"
  text := true

/-- The TypeScript widget modules in `widget/src`. -/
input_dir widgetJsSrcs where
  path := widgetDir / "src"
  filter := .extension <| .mem #["ts", "tsx", "js", "jsx"]
  text := true

/-- Target to build all widget modules from `widgetJsSrcs`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variantdcfe05ba7f37a1743e75e25abd5c8c129b5c28daacde41754f502607cb1f87b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variantdcfe05ba7f37a1743e75e25abd5c8c129b5c28daacde41754f502607cb1f87b1.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10b5aa40787947acab5cf6a94c35f15133e881e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
