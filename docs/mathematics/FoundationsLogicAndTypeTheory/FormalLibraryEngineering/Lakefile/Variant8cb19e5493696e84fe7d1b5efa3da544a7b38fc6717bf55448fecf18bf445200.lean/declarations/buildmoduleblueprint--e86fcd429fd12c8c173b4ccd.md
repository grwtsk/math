# buildModuleBlueprint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2c24267fff0d02e148cf13025cc3a2108101c4b21bfc1033548fc4fc8bd1997e",
  "kind": "def",
  "lexical_name": "buildModuleBlueprint",
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
  "slug": "buildmoduleblueprint--e86fcd429fd12c8c173b4ccd",
  "source": {
    "blob": "257a0b4b46c3e39d66b2fa46afc70de7fe73e3d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 43,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variant8cb19e5493696e84fe7d1b5efa3da544a7b38fc6717bf55448fecf18bf445200.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e86fcd429fd12c8c173b4ccdeea757e2f92c1c3c9935ec4a3c634b15ac4b74e8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variant8cb19e5493696e84fe7d1b5efa3da544a7b38fc6717bf55448fecf18bf445200.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2c24267fff0d02e148cf13025cc3a2108101c4b21bfc1033548fc4fc8bd1997e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def buildModuleBlueprint (mod : Module) (ext : String) (extractArgs : Array String) : FetchM (Job Unit) := do
  let exeJob ← extract_blueprint.fetch
  let modJob ← mod.leanArts.fetch
  let buildDir := (← getRootPackage).buildDir
  let mainFile := mod.filePath (buildDir / "blueprint" / "module") ext
  let leanOptions := Lean.toJson mod.leanOptions |>.compress
  exeJob.bindM fun exeFile => do
    modJob.mapM fun _ => do
      -- The output is a main file plus a list of auxiliary files
      buildFileUnlessUpToDate' mainFile do
        proc {
          cmd := exeFile.toString
          args := #["single", "--build", buildDir.toString, "--options", leanOptions, mod.name.toString] ++ extractArgs
          env := ← getAugmentedEnv
        }

/-- A facet to extract the blueprint for a module. -/
module_facet blueprint (mod : Module) : Unit := do
  buildModuleBlueprint mod "tex" #[]

/-- A facet to extract JSON data of blueprint for a module. -/
module_facet blueprintJson (mod : Module) : Unit := do
  buildModuleBlueprint mod "json" #["--json"]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variant8cb19e5493696e84fe7d1b5efa3da544a7b38fc6717bf55448fecf18bf445200.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variant8cb19e5493696e84fe7d1b5efa3da544a7b38fc6717bf55448fecf18bf445200.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `257a0b4b46c3e39d66b2fa46afc70de7fe73e3d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
