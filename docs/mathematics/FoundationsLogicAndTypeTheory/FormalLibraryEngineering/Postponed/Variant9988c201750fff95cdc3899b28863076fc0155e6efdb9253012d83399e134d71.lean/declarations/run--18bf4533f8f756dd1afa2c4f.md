# run

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dddbeabc79dcfb5194c2814ed613c2763e62262f42a283da806736edbfc674df",
  "kind": "def",
  "lexical_name": "run",
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
  "slug": "run--18bf4533f8f756dd1afa2c4f",
  "source": {
    "blob": "40fd8db189b7f7db8bad2df406fac4daf4374447",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 162,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Postponed/Variant9988c201750fff95cdc3899b28863076fc0155e6efdb9253012d83399e134d71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:18bf4533f8f756dd1afa2c4f65eec66d464a359ff2d671a904303579df2519b5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Postponed/Variant9988c201750fff95cdc3899b28863076fc0155e6efdb9253012d83399e134d71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dddbeabc79dcfb5194c2814ed613c2763e62262f42a283da806736edbfc674df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def run (inPackage : Name → Bool) (shouldCheck : DeferredCheck → CoreM Bool := fun _ => pure true) :
    CoreM (Array (Name × DeferredCheck × MessageData)) := do
  let env ← getEnv
  let handlers := handlerExt.getState env
  let builtins ← builtinHandlers.get
  let moduleNames : NameSet := env.header.moduleNames.foldl (·.insert ·) {}
  let mut failures := #[]
  for (mod, c) in collect env inPackage do
    unless (← shouldCheck c) do continue
    let missing := c.imports.filter (!moduleNames.contains ·)
    if !missing.isEmpty then
      failures := failures.push (mod, c,
        m!"the check requires {missing.toList} to be imported, but they are not")
    else
      let handler? : Option DeferredCheckHandler ←
        if let some impl := builtins.find? c.check.typeName then
          pure (some impl)
        else if let some declName := handlers.find? c.check.typeName then
          pure (some (← getHandler declName))
        else
          pure none
      match handler? with
      | none =>
        failures := failures.push (mod, c,
          m!"no handler registered for deferred check `{c.check.typeName}`")
      | some handler =>
        try
          withScope c (handler c.check)
        catch e =>
          failures := failures.push (mod, c, e.toMessageData)
  return failures
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Postponed/Variant9988c201750fff95cdc3899b28863076fc0155e6efdb9253012d83399e134d71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Postponed/Variant9988c201750fff95cdc3899b28863076fc0155e6efdb9253012d83399e134d71.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40fd8db189b7f7db8bad2df406fac4daf4374447` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
