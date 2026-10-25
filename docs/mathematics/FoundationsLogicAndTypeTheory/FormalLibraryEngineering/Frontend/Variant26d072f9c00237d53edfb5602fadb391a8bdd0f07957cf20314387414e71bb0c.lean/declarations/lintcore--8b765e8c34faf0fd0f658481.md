# lintCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bf1e6c0ce38bc3542c7c19d2ce6d0effa07c04b5d615503991ca089bf86c80d1",
  "kind": "def",
  "lexical_name": "lintCore",
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
  "slug": "lintcore--8b765e8c34faf0fd0f658481",
  "source": {
    "blob": "fe078355f2d3324c6dd1825f88e5a397ae95a36f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 68,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant26d072f9c00237d53edfb5602fadb391a8bdd0f07957cf20314387414e71bb0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8b765e8c34faf0fd0f65848111a53cee22fd8f704a467d94a02a0abc036537d9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant26d072f9c00237d53edfb5602fadb391a8bdd0f07957cf20314387414e71bb0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bf1e6c0ce38bc3542c7c19d2ce6d0effa07c04b5d615503991ca089bf86c80d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def lintCore (decls : Array Name) (linters : Array NamedEnvLinter) :
    CoreM (Array (NamedEnvLinter × Std.HashMap Name MessageData)) := do
  let env ← getEnv
  let tasks : Array (NamedEnvLinter × Array (Name × Task (Except Exception <| Option MessageData))) ←
    linters.mapM fun linter => do
      let decls := decls.filter (isLinterEnabledFor env linter ·)
      (linter, ·) <$> decls.mapM fun decl => (decl, ·) <$> do
        let act : MetaM (Option MessageData) := do
          linter.test decl
        EIO.asTask <| (← Core.wrapAsync (fun _ =>
          act |>.run' Elab.Command.mkMetaContext
        ) (cancelTk? := none)) ()

  let result ← tasks.mapM fun (linter, decls) => do
    let mut msgs : Std.HashMap Name MessageData := {}
    for (declName, msgTask) in decls do
      let msg? ← match msgTask.get with
      | Except.ok msg? => pure msg?
      | Except.error err => pure m!"LINTER FAILED:\n{err.toMessageData}"
      if let .some msg := msg? then
        msgs := msgs.insert declName msg
    pure (linter, msgs)
  return result

/-- Sorts a map with declaration keys as names by line number. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant26d072f9c00237d53edfb5602fadb391a8bdd0f07957cf20314387414e71bb0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant26d072f9c00237d53edfb5602fadb391a8bdd0f07957cf20314387414e71bb0c.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe078355f2d3324c6dd1825f88e5a397ae95a36f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
