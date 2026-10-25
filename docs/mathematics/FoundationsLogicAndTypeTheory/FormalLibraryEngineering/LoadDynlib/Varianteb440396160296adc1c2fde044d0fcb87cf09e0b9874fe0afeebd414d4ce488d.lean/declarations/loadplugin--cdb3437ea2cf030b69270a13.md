# loadPlugin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7adc7190591642060c557eb9ce265b6cb6faa558b70f9f4bef870fe1808ce295",
  "kind": "def",
  "lexical_name": "loadPlugin",
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
  "slug": "loadplugin--cdb3437ea2cf030b69270a13",
  "source": {
    "blob": "a29e581680979ed0009dd179d0f6471b1cff08c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 95,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoadDynlib/Varianteb440396160296adc1c2fde044d0fcb87cf09e0b9874fe0afeebd414d4ce488d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cdb3437ea2cf030b69270a134b6d1ef98a5e9ddee48db30fa375ece1cc824aeb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoadDynlib/Varianteb440396160296adc1c2fde044d0fcb87cf09e0b9874fe0afeebd414d4ce488d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7adc7190591642060c557eb9ce265b6cb6faa558b70f9f4bef870fe1808ce295`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def loadPlugin (path : System.FilePath) (initFn? : Option String := none) : IO Unit := do
  -- We never want to look up plugins using the system library search
  let path ← IO.FS.realPath path
  let name ← initFn?.getDM do
    let some name := path.fileStem
    | throw <| IO.userError s!"error, plugin has invalid file name '{path}'"
    -- Lean libraries can be prefixed with `lib` or suffixed with `_shared`
    -- under some configurations. We strip these from the default initializer symbol.
    let name := name.dropPrefix "lib" |>.dropSuffix "_shared"
    return s!"initialize_{name}"
  let dynlib ← Dynlib.load path
  let some sym := dynlib.get? name
    | throw <| IO.userError s!"error loading plugin, initializer not found '{name}'"
  -- Lean never unloads plugins (once initialized).
  -- Safety: There are no concurrent accesses to `dynlib` at this point.
  let _ ← unsafe Runtime.markPersistent dynlib
  /-
  Safety:
  * As `dynlib` is marked persistent, there is no danger of garbage collection.
  * There is still no guarantee that `sym` has the proper signature, but this
    is about as safe as it can be. The default initializer naming convention helps
    avoid accidentally mistaking non-plugins as plugins.
  -/
  unsafe sym.runAsInit
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoadDynlib/Varianteb440396160296adc1c2fde044d0fcb87cf09e0b9874fe0afeebd414d4ce488d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoadDynlib/Varianteb440396160296adc1c2fde044d0fcb87cf09e0b9874fe0afeebd414d4ce488d.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a29e581680979ed0009dd179d0f6471b1cff08c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
