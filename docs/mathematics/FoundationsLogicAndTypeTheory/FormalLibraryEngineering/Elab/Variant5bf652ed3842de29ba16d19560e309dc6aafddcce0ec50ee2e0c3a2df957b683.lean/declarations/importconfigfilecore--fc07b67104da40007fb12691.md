# importConfigFileCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:71aca4d1036c40efcd50795baeb42a937ec6993e254bdd6473dcf71edad7fb70",
  "kind": "def",
  "lexical_name": "importConfigFileCore",
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
  "slug": "importconfigfilecore--fc07b67104da40007fb12691",
  "source": {
    "blob": "6eb11dac277c2348131fdf334d007807196c6be6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 111,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant5bf652ed3842de29ba16d19560e309dc6aafddcce0ec50ee2e0c3a2df957b683.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fc07b67104da40007fb126918c6d2d5c4d6f47554cd176e360155260a0b5bcc3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant5bf652ed3842de29ba16d19560e309dc6aafddcce0ec50ee2e0c3a2df957b683.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:71aca4d1036c40efcd50795baeb42a937ec6993e254bdd6473dcf71edad7fb70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def importConfigFileCore (olean : FilePath) (leanOpts : Options) : IO Environment := do
  /-
  We could import the olean together with its imports using one
  `importModules` call, but that would mean we pay for a full
  `finalizeImports` each time, which is linear in the number of imported
  constants and extension entries (in fact, it is paid two more times: when
  marking the `Environment` object as multi-threaded, and when releasing
  it). As most lakefiles use the same set of imports, we instead construct
  an `Environment` for it only once, and then apply the lakefile contents
  on top of it like the elaborator would. Thus the non-shared part of the
  `Environment` is very small.
  -/
  let (mod, _) ← readModuleData olean
  let env ← importModulesUsingCache mod.imports leanOpts 1024
  -- Apply constants (does not go through the kernel, so order is irrelevant)
  let env := mod.constants.foldl addToEnv env
  /-
  Below, we pass module environment extension entries to
  `PersistentEnvExtension.addEntryFn` - but for an extension of
  non-erased type `PersistentEnvExtension α β σ`, the former are of type
  `α` while `addEntryFn` expects `β`s (the type-erased
  `persistentEnvExtensionsRef` ought to be `unsafe` to prevent this from
  simply compiling but it isn't right now). Fortunately, all extensions
  relevant for workspace loading, which we filter for here, have `α = β`;
  entries for any other extensions can safely be ignored.
  -/
  let extDescrs ← persistentEnvExtensionsRef.get
  let extNameIdx ← mkExtNameMap 0
  let env := mod.entries.foldl (init := env) fun env (extName, ents) =>
    if lakeExts.contains extName then
      match extNameIdx[extName]? with
      | some entryIdx =>
        -- Use `sync` to avoid `async` checks, which are not relevant here as there is only one
        -- environment branch.
        ents.foldl (extDescrs[entryIdx]!.addEntry (asyncMode := .sync)) env
      | none => env
    else
      env
  return env
where
  lakeExts :=
    NameSet.empty
    -- Lake Persistent Extensions
    |>.insert ``packageAttr
    |>.insert ``packageDepAttr
    |>.insert ``postUpdateAttr
    |>.insert ``scriptAttr
    |>.insert ``defaultScriptAttr
    |>.insert ``leanLibAttr
    |>.insert ``leanExeAttr
    |>.insert ``externLibAttr
    |>.insert ``targetAttr
    |>.insert ``defaultTargetAttr
    |>.insert ``testDriverAttr
    |>.insert ``lintDriverAttr
    |>.insert ``moduleFacetAttr
    |>.insert ``packageFacetAttr
    |>.insert ``libraryFacetAttr
    -- Docstring Extension (e.g., for scripts)
    |>.insert ``docStringExt
    -- IR Extension (for constant evaluation)
    |>.insert ``IR.declMapExt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant5bf652ed3842de29ba16d19560e309dc6aafddcce0ec50ee2e0c3a2df957b683.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant5bf652ed3842de29ba16d19560e309dc6aafddcce0ec50ee2e0c3a2df957b683.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6eb11dac277c2348131fdf334d007807196c6be6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
