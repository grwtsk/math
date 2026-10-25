# foldTasksM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b7086a4f27bbb1cc3dbd6b98715b8961b349f670fe166f476d4dc62e404673d9",
  "kind": "def",
  "lexical_name": "foldTasksM",
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
  "slug": "foldtasksm--fe40e758bf261d57c6b1cb5f",
  "source": {
    "blob": "cbd8843a7f631cbc8788c3b2b7e685b439122e4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 92,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryPremises/Variant540a5bd36c3cf54b02c99f8a5a5d9166ba0a99a727b92679b01aa30d6bf2c167.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe40e758bf261d57c6b1cb5fa031e1d00d26a5ab7213ab42d5ec995bff800b1e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryPremises/Variant540a5bd36c3cf54b02c99f8a5a5d9166ba0a99a727b92679b01aa30d6bf2c167.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b7086a4f27bbb1cc3dbd6b98715b8961b349f670fe166f476d4dc62e404673d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def foldTasksM {α β} (tasks : Array (Task β)) (init : α) (f : α → β → MetaM α) :
    MetaM α := do
  if tasks.isEmpty then return init
  Core.checkInterrupted
  if ← (tasks.anyM IO.hasFinished : BaseIO _) then
    let (a, tasks) ← tasks.foldlM (init := (init, #[])) fun (a, tasks) task ↦ do
      if ← IO.hasFinished task then
        return (← f a task.get, tasks)
      else
        return (a, tasks.push task)
    foldTasksM tasks a f
  else
    IO.sleep 10
    foldTasksM tasks init f

/-- Spawn tasks for the given candidate premises and
return an HTML that shows the incoming results -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryPremises/Variant540a5bd36c3cf54b02c99f8a5a5d9166ba0a99a727b92679b01aa30d6bf2c167.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryPremises/Variant540a5bd36c3cf54b02c99f8a5a5d9166ba0a99a727b92679b01aa30d6bf2c167.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbd8843a7f631cbc8788c3b2b7e685b439122e4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
