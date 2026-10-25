# main

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:36d05025e5945d7b9d55de5d491a371fd125e80ddb9e8f782ed9321d00f3c1d4",
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
  "slug": "main--5fee8bc6f15e16b46702e1fe",
  "source": {
    "blob": "c8c25d0a5d5a923cd70d2abab3597f96b54d82e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 300,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanExporter/Variante39baabed023e307d50def668af184b0e79a486e4d9e3a0965ae1826bae0b688.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5fee8bc6f15e16b46702e1fe9fa61c2df0caf4b834717d1dad679bfc9a254f18",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanExporter/Variante39baabed023e307d50def668af184b0e79a486e4d9e3a0965ae1826bae0b688.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:36d05025e5945d7b9d55de5d491a371fd125e80ddb9e8f782ed9321d00f3c1d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
unsafe def main (args : List String) : IO UInt32 := do
  initSearchPath (← findSysroot)
  if args == ["package-identity"] then
    let lean ← Lake.LeanInstall.get (← findSysroot)
    let lakeEnv ← (Lake.Env.compute (Lake.LakeInstall.ofLean lean) lean none (some true)).toIO IO.userError
    let config : Lake.LoadConfig := {lakeEnv, wsDir := ← IO.currentDir}
    let some workspace ← (Lake.loadWorkspaceRoot config).toBaseIO
      | throw <| IO.userError "could not evaluate actual Lake root package"
    let package := workspace.root
    (← IO.getStdout).putStrLn (Json.mkObj [("name", toJson package.origName.toString),
      ("scope", if package.scope.isEmpty then Json.null else toJson package.scope)]).compress
    return 0
  if args == ["ast-fixtures"] then
    let fixtures ← IO.ofExcept StateExporter.astFixtures
    (← IO.getStdout).putStrLn fixtures.compress
    return 0
  let dependencyQuery := args.length == 4 && args[0]! == "dependency-closure"
  unless dependencyQuery || args.length == 3 || (args.length >= 4 && args[3]! == "evidence") do
    throw <| IO.userError "usage: LeanExporter.lean ROOT_MODULE OWNERSHIP_ROOTS_JSON owned|all [evidence]"
  unless dependencyQuery || args[2]! == "owned" || args[2]! == "all" do
    throw <| IO.userError "projection mode must be owned or all"
  enableInitializersExecution
  let root := (if dependencyQuery then args[1]! else args[0]!).toName
  let rootsJson ← IO.ofExcept (Json.parse (if dependencyQuery then args[2]! else args[1]!))
  let rootStrings : Array String ← IO.ofExcept (fromJson? rootsJson)
  let ownershipRoots := rootStrings.toList.map String.toName
  if ownershipRoots.isEmpty || ownershipRoots.any Name.isAnonymous then
    throw <| IO.userError "ownership roots must be an explicit nonempty list of Lean module names"
  let env ← importModules #[{module := root, importAll := true}] {}
    (trustLevel := 0) (loadExts := true) (level := .private)
  let env := env.setExporting false
  let options := ({} : Options) |>.set `maxRecDepth (16384 : Nat) |>.set `maxHeartbeats (0 : Nat)
  let context : Core.Context := {fileName := "state-exporter", fileMap := default, options}
  let action := if dependencyQuery then StateExporter.dependencyClosure ownershipRoots args[3]!
    else do
      let result ← StateExporter.inventory root ownershipRoots (args[2]! == "all")
        (args.length >= 4) (args.drop 4)
      if args.length == 4 then
        return result.setObjVal! "owned_kernel_audit" (← StateExporter.ownedKernelAudit ownershipRoots)
      else return result
  let (result, _) ← action.toIO context {env}
  (← IO.getStdout).putStrLn result.compress
  return 0
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanExporter/Variante39baabed023e307d50def668af184b0e79a486e4d9e3a0965ae1826bae0b688.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanExporter/Variante39baabed023e307d50def668af184b0e79a486e4d9e3a0965ae1826bae0b688.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8c25d0a5d5a923cd70d2abab3597f96b54d82e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
