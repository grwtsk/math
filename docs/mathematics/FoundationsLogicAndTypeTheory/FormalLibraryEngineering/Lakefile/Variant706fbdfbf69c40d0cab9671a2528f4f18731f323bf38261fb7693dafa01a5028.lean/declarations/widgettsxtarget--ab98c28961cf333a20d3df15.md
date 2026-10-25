# widgetTsxTarget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:48a837bd20460b17601b0e81688a1063e6437379069f53e2bb19a9f935d35ce9",
  "kind": "def",
  "lexical_name": "widgetTsxTarget",
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
  "slug": "widgettsxtarget--ab98c28961cf333a20d3df15",
  "source": {
    "blob": "6a1dc644af2f5201c9ee0c1f2fb78094c6b8c35f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 28,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variant706fbdfbf69c40d0cab9671a2528f4f18731f323bf38261fb7693dafa01a5028.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab98c28961cf333a20d3df1540be846372294e03a22f1e2840e65bf3460130b2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variant706fbdfbf69c40d0cab9671a2528f4f18731f323bf38261fb7693dafa01a5028.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:48a837bd20460b17601b0e81688a1063e6437379069f53e2bb19a9f935d35ce9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def widgetTsxTarget (pkg : NPackage _package.name) (nodeModulesMutex : IO.Mutex Bool)
    (tsxName : String) (deps : Array (BuildJob FilePath)) (isDev : Bool) :
    IndexBuildM (BuildJob FilePath) := do
  let jsFile := pkg.buildDir / "js" / s!"{tsxName}.js"
  buildFileAfterDepArray jsFile deps fun _srcFile => do
    /-
    HACK: Ensure that NPM modules are installed before building TypeScript, *if* we are building it.
    It would probably be better to have a proper target for `node_modules`
    that all the `.tsx` modules depend on.
    BUT when we are being built as a dependency of another package using the cloud releases feature,
    we wouldn't want that target to trigger since in that case NPM is not necessarily installed.
    Hence we put this block inside the build process for any `.tsx` file
    rather than as a top-level target.
    This only runs when some TypeScript needs building.
    It has to be guarded by a mutex to avoid multiple `.tsx` builds trampling on each other
    with multiple `npm clean-install`s.
    -/
    nodeModulesMutex.atomically (m := IO) do
      if (← get) then return
      let _ ← IO.Process.run {
        cmd := npmCmd
        args := #["clean-install"]
        cwd := some widgetDir
      }
      set true
    proc {
      cmd := npmCmd
      args :=
        if isDev then
          #["run", "build-dev", "--", "--tsxName", tsxName]
        else
          #["run", "build", "--", "--tsxName", tsxName]
      cwd := some widgetDir
    }

/-- Target to build all TypeScript widget modules that match `widget/src/*.tsx`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variant706fbdfbf69c40d0cab9671a2528f4f18731f323bf38261fb7693dafa01a5028.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variant706fbdfbf69c40d0cab9671a2528f4f18731f323bf38261fb7693dafa01a5028.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a1dc644af2f5201c9ee0c1f2fb78094c6b8c35f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
