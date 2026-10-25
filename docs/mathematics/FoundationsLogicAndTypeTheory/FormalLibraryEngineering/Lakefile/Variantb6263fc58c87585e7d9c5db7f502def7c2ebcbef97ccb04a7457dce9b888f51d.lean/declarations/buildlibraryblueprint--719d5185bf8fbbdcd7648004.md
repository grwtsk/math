# buildLibraryBlueprint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a935ca43ac9b915261381c1000409b1c58eabfa1c2c08dc4e284ed61b2f520f4",
  "kind": "def",
  "lexical_name": "buildLibraryBlueprint",
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
  "slug": "buildlibraryblueprint--719d5185bf8fbbdcd7648004",
  "source": {
    "blob": "ad06ffa0075ebde1f3e07178574e3cddc95a7217",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 54,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variantb6263fc58c87585e7d9c5db7f502def7c2ebcbef97ccb04a7457dce9b888f51d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:719d5185bf8fbbdcd76480042c592142b87a4fbfb65b1b02c66c346e6327dd87",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variantb6263fc58c87585e7d9c5db7f502def7c2ebcbef97ccb04a7457dce9b888f51d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a935ca43ac9b915261381c1000409b1c58eabfa1c2c08dc4e284ed61b2f520f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def buildLibraryBlueprint (lib : LeanLib) (moduleFacet : Lean.Name) (ext : String) (extractArgs : Array String) : FetchM (Job Unit) := do
  let mods ← (← lib.modules.fetch).await
  let moduleJobs := Job.collectArray <| ← mods.mapM (fetch <| ·.facet moduleFacet)
  let exeJob ← extract_blueprint.fetch
  let buildDir := (← getRootPackage).buildDir
  let outputFile := buildDir / "blueprint" / "library" / lib.name.toString |>.addExtension ext
  exeJob.bindM fun exeFile => do
    moduleJobs.mapM fun _ => do
      buildFileUnlessUpToDate' outputFile do
        logInfo "Blueprint indexing"
        proc {
          cmd := exeFile.toString
          args := #["index", "--build", buildDir.toString, lib.name.toString, ",".intercalate (mods.map (·.name.toString)).toList] ++ extractArgs
          env := ← getAugmentedEnv
        }

/-- A facet to extract the blueprint for a library. -/
library_facet blueprint (lib : LeanLib) : Unit := do
  buildLibraryBlueprint lib `blueprint "tex" #[]

/-- A facet to extract the JSON data for the blueprint for a library. -/
library_facet blueprintJson (lib : LeanLib) : Unit := do
  buildLibraryBlueprint lib `blueprintJson "json" #["--json"]

/-- A facet to extract the blueprint for each library in a package. -/
package_facet blueprint (pkg : Package) : Unit := do
  let libJobs := Job.collectArray <| ← pkg.leanLibs.mapM (fetch <| ·.facet `blueprint)
  let _ ← libJobs.await
  return .nil

/-- A facet to extract the blueprint JSON data for each library in a package. -/
package_facet blueprintJson (pkg : Package) : Unit := do
  let libJobs := Job.collectArray <| ← pkg.leanLibs.mapM (fetch <| ·.facet `blueprintJson)
  let _ ← libJobs.await
  return .nil

open IO.Process in
/-- Run a command, print all outputs, and throw an error if it fails. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variantb6263fc58c87585e7d9c5db7f502def7c2ebcbef97ccb04a7457dce9b888f51d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variantb6263fc58c87585e7d9c5db7f502def7c2ebcbef97ccb04a7457dce9b888f51d.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad06ffa0075ebde1f3e07178574e3cddc95a7217` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
