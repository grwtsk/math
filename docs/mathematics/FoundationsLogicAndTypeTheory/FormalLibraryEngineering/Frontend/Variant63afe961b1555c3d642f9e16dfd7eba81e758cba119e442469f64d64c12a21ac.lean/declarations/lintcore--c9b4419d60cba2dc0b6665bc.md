# lintCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2074d2a0bd588822f715cb32c916c31f46821c6fcdc7c6106d40cfc8df1b5c6a",
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
  "slug": "lintcore--c9b4419d60cba2dc0b6665bc",
  "source": {
    "blob": "5d33524c4e2dc3f9ae9d35d0b4274b4f2500d40e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 132,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant63afe961b1555c3d642f9e16dfd7eba81e758cba119e442469f64d64c12a21ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c9b4419d60cba2dc0b6665bc66b149fa1ded8ca9e0688a88ca6e9f317978e5b1",
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

Occurrence: `declaration:2074d2a0bd588822f715cb32c916c31f46821c6fcdc7c6106d40cfc8df1b5c6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def lintCore (decls : Array Name) (linters : Array NamedLinter)
    -- For tracing:
    (currentModule : Option Name := none) (inIO : Bool := false) :
    CoreM (Array (NamedLinter × Std.HashMap Name MessageData)) := do
  traceLint
      s!"Running linters:\n  {"\n  ".intercalate <| linters.map (s!"{·.name}") |>.toList}"
      inIO currentModule

  let tasks : Array (NamedLinter × Array (Name × Task (Except Exception <| Option MessageData))) ←
    linters.mapM fun linter => do
      traceLint "(0/2) Starting..." inIO currentModule linter.name
      let decls ← decls.filterM (shouldBeLinted linter.name)
      (linter, ·) <$> decls.mapM fun decl => (decl, ·) <$> do
        let act : MetaM (Option MessageData) := do
          let result ← linter.test decl
          if inIO then
            -- Ensure any trace messages are propagated to stdout
            printTraces
          return result
        EIO.asTask <| (← Core.wrapAsync (fun _ =>
          act |>.run' mkMetaContext -- We use the context used by `Command.liftTermElabM`
        ) (cancelTk? := none)) ()

  let result ← tasks.mapM fun (linter, decls) => do
    traceLint "(1/2) Getting..." inIO currentModule linter.name
    let mut msgs : Std.HashMap Name MessageData := {}
    for (declName, msgTask) in decls do
      let msg? ← match msgTask.get with
      | Except.ok msg? => pure msg?
      | Except.error err => pure m!"LINTER FAILED:\n{err.toMessageData}"

      if let .some msg := msg? then
        msgs := msgs.insert declName msg
    traceLint
      s!"(2/2) {if msgs.isEmpty then "Passed!" else
        s!"Failed with {msgs.size} messages\
        {if inIO then ", but these may include declarations in `nolints.json`" else ""}."}"
      inIO currentModule linter.name
    pure (linter, msgs)
  traceLint "Completed linting!" inIO currentModule
  return result


/-- Sorts a map with declaration keys as names by line number. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant63afe961b1555c3d642f9e16dfd7eba81e758cba119e442469f64d64c12a21ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant63afe961b1555c3d642f9e16dfd7eba81e758cba119e442469f64d64c12a21ac.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d33524c4e2dc3f9ae9d35d0b4274b4f2500d40e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
