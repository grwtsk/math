# runInitAttrForMod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bcca62f8ce8c940397003a850ffd0246d5b93a0b4d1c41fc4a6c94251f6579f8",
  "kind": "def",
  "lexical_name": "runInitAttrForMod",
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
  "slug": "runinitattrformod--d49baa0347c2d3a2342bd790",
  "source": {
    "blob": "85e2af84af2515ac600c17ff08f48ad42033b091",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 159,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d49baa0347c2d3a2342bd7909748386077b8ed830c60db8aa73904b5cded4d65",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bcca62f8ce8c940397003a850ffd0246d5b93a0b4d1c41fc4a6c94251f6579f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private unsafe def runInitAttrForMod
    (env : Environment) (opts : Options) (mod : EffectiveImport) (modIdx : Nat) : IO Unit := do
  let initRuntime := Elab.inServer.get opts || mod.irPhases != .runtime

  -- any native Lean code reachable by the interpreter (i.e. from shared
  -- libraries with their corresponding module in the Environment) must
  -- first be initialized
  let pkg? := env.getModulePackageByIdx? modIdx
  if env.header.isModule then
    let initializedRuntime ← pure initRuntime <&&> runModInit (phases := .runtime) mod.module pkg?
    let initializedComptime ← runModInit (phases := .comptime) mod.module pkg?
    if initializedRuntime || initializedComptime then
      return
  else
    if (← runModInit (phases := .all) mod.module pkg?) then
      return

  -- As `[init]` decls can have global side effects, ensure we run them at most once,
  -- just like the compiled code does.
  if (← interpretedModInits.get).contains mod.module then
    return
  interpretedModInits.modify (·.insert mod.module)
  let modEntries := regularInitAttr.ext.getModuleEntries env modIdx
  -- `getModuleIREntries` is identical to `getModuleEntries` if we loaded only one of
  -- .olean (from `meta initialize`)/.ir (`initialize` via transitive `meta import`)
  -- so deduplicate (these lists should be very short).
  -- If we have both, we should not need to worry about their relative ordering as `meta` and
  -- non-`meta` initialize should not have interdependencies.
  let modEntries := modEntries ++ (regularInitAttr.ext.getModuleIREntries env modIdx).filter (!modEntries.contains ·)
  for (decl, initDecl) in modEntries do
    if !initRuntime && getIRPhases env decl == .runtime then
      continue
    if initDecl.isAnonymous then
        -- Don't check `meta` again as it would not respect `Elab.inServer`
      let initFn ← IO.ofExcept <| env.evalConst (checkMeta := false) (IO Unit) opts decl
      initFn
    else
      runInit env opts decl initDecl

@[export lean_run_init_attrs]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85e2af84af2515ac600c17ff08f48ad42033b091` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
