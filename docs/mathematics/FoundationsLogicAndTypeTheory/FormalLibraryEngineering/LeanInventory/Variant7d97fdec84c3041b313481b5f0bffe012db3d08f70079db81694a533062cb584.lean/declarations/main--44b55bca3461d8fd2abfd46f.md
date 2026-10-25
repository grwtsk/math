# main

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4c2f6ffaf50e00b96852349783532c222f8b3b9020d2917e5f0bf1fa438ac953",
  "kind": "def",
  "lexical_name": "main",
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
  "slug": "main--44b55bca3461d8fd2abfd46f",
  "source": {
    "blob": "a4ce5bbf56672345c89cc8c366b250f574b610c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 207,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanInventory/Variant7d97fdec84c3041b313481b5f0bffe012db3d08f70079db81694a533062cb584.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:44b55bca3461d8fd2abfd46f4bd2c59dc376e5c0ffbff6f543c06883ff75be1d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanInventory/Variant7d97fdec84c3041b313481b5f0bffe012db3d08f70079db81694a533062cb584.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4c2f6ffaf50e00b96852349783532c222f8b3b9020d2917e5f0bf1fa438ac953`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
unsafe def main (args : List String) : IO UInt32 := do
  initSearchPath (← findSysroot)
  if args.length == 2 && args[0]! == "ast-fixtures" then
    let fixtures ← IO.ofExcept Phase1Inventory.astFixtures
    IO.FS.writeFile args[1]! fixtures.compress
    return 0
  if args.length == 3 && args[0]! == "imports" then
    let paths ← IO.FS.lines args[1]!
    let rows ← paths.mapM fun (path : String) => do
      let (imports, _, messages) ← Elab.parseImports (← IO.FS.readFile path) (some path)
      if messages.hasErrors then throw <| IO.userError s!"invalid Lean import header: {path}"
      pure <| Json.mkObj [("path", toJson path), ("imports", toJson (imports.map (·.module.toString)))]
    IO.FS.writeFile args[2]! (toJson rows).compress
    return 0
  unless args.length == 3 && (args[0]! == "inventory" || args[0]! == "declaration" || args[0]! == "bridge") do
    throw <| IO.userError "usage: LeanInventory.lean imports|inventory|declaration|bridge INPUT OUTPUT"
  enableInitializersExecution
  let input ← IO.FS.readFile args[1]!
  let parsed ← IO.ofExcept (Json.parse input)
  let modules ← IO.ofExcept (parsed.getObjValAs? (Array String) "modules")
  let imports ← if args[0]! == "inventory" then do
      let root ← IO.ofExcept (parsed.getObjValAs? String "root_module")
      pure #[({module := root.toName, importAll := true} : Import)]
    else pure <| modules.map fun n => ({module := n.toName, importAll := true} : Import)
  let env ← importModules imports {} (trustLevel := 0) (loadExts := true) (level := .private)
  let env := env.setExporting false
  let action := if args[0]! == "inventory" then do
      let roots ← Phase1Inventory.liftExcept (parsed.getObjValAs? (Array String) "namespace_roots")
      Phase1Inventory.inventory modules none roots
    else if args[0]! == "declaration" then do
      let name ← Phase1Inventory.liftExcept (parsed.getObjValAs? String "declaration_name")
      Phase1Inventory.inventory modules (some name)
    else Phase1Inventory.checkedBridge parsed
  let options := ({} : Options) |>.set `maxRecDepth (16384 : Nat) |>.set `maxHeartbeats (0 : Nat)
  let context : Core.Context := {fileName := "phase1-inventory", fileMap := default, options}
  let (result, _) ← action.toIO context {env} {} {}
  IO.FS.writeFile args[2]! result.compress
  return 0
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanInventory/Variant7d97fdec84c3041b313481b5f0bffe012db3d08f70079db81694a533062cb584.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanInventory/Variant7d97fdec84c3041b313481b5f0bffe012db3d08f70079db81694a533062cb584.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4ce5bbf56672345c89cc8c366b250f574b610c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
