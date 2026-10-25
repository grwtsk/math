# groupedByFilename

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e4a1218d349eabe2ad17f9119c871732db7fbe365ee23783b7953d3618d797c3",
  "kind": "def",
  "lexical_name": "groupedByFilename",
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
  "slug": "groupedbyfilename--2c013d275b9a0efee053abee",
  "source": {
    "blob": "5d33524c4e2dc3f9ae9d35d0b4274b4f2500d40e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 205,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant63afe961b1555c3d642f9e16dfd7eba81e758cba119e442469f64d64c12a21ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2c013d275b9a0efee053abee539d85da1d3290caac2a6cc43757f741619f673d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant63afe961b1555c3d642f9e16dfd7eba81e758cba119e442469f64d64c12a21ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e4a1218d349eabe2ad17f9119c871732db7fbe365ee23783b7953d3618d797c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def groupedByFilename (results : Std.HashMap Name MessageData) (useErrorFormat : Bool := false) :
    CoreM MessageData := do
  let sp ← if useErrorFormat then getSrcSearchPath else pure {}
  let grouped : Std.HashMap Name (System.FilePath × Std.HashMap Name MessageData) ←
    results.foldM (init := {}) fun grouped declName msg => do
      let mod ← findModuleOf? declName
      let mod := mod.getD (← getEnv).mainModule
      grouped.insert mod <$>
        match grouped[mod]? with
        | some (fp, msgs) => pure (fp, msgs.insert declName msg)
        | none => do
          let fp ← if useErrorFormat then
            pure <| (← sp.findWithExt "lean" mod).getD (modToFilePath "." mod "lean")
          else pure default
          pure (fp, .insert {} declName msg)
  let grouped' := grouped.toArray.qsort fun (a, _) (b, _) => toString a < toString b
  (MessageData.joinSep · (Format.line ++ Format.line)) <$>
    grouped'.toList.mapM fun (mod, fp, msgs) => do
      pure m!"-- {mod}\n{← printWarnings msgs (filePath := fp) (useErrorFormat := useErrorFormat)}"

/--
Formats the linter results as Lean code with comments and `#check` commands.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant63afe961b1555c3d642f9e16dfd7eba81e758cba119e442469f64d64c12a21ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant63afe961b1555c3d642f9e16dfd7eba81e758cba119e442469f64d64c12a21ac.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d33524c4e2dc3f9ae9d35d0b4274b4f2500d40e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
