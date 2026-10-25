# groupedByFilename

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd2e7d825bcb07e55b3ad81bfae10ff309d2bc614468efc65ab2ef2669d3a99b",
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
  "slug": "groupedbyfilename--d4f39498fc56d017287075dc",
  "source": {
    "blob": "9d9fd3824554a343c4e6b96b13113b3c1ccc8611",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 150,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Varianta9fa9e3b6bf50d71bd8f3e50073d0c239d6146bc440431e8ed7bfde3e5d7ca97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d4f39498fc56d017287075dc2df09649e0c0fa3409920d7fa932896153982f34",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Varianta9fa9e3b6bf50d71bd8f3e50073d0c239d6146bc440431e8ed7bfde3e5d7ca97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd2e7d825bcb07e55b3ad81bfae10ff309d2bc614468efc65ab2ef2669d3a99b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–172.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Varianta9fa9e3b6bf50d71bd8f3e50073d0c239d6146bc440431e8ed7bfde3e5d7ca97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Varianta9fa9e3b6bf50d71bd8f3e50073d0c239d6146bc440431e8ed7bfde3e5d7ca97.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d9fd3824554a343c4e6b96b13113b3c1ccc8611` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
