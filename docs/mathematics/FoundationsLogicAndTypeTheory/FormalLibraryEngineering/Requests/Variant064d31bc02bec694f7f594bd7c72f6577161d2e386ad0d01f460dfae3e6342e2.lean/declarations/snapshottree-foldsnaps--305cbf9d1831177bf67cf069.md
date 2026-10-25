# SnapshotTree.foldSnaps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:71ffb7c1212043753c975a41a0dc373f0d72d1b6df6107261c32e7685b08116b",
  "kind": "def",
  "lexical_name": "SnapshotTree.foldSnaps",
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
  "slug": "snapshottree-foldsnaps--305cbf9d1831177bf67cf069",
  "source": {
    "blob": "c3d3567550c36bc17864ff884e4a4e620ae5a15d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 75,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Requests/Variant064d31bc02bec694f7f594bd7c72f6577161d2e386ad0d01f460dfae3e6342e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:305cbf9d1831177bf67cf0692ea684b7110905d8598b4c51853ea43f08dac6a7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Requests/Variant064d31bc02bec694f7f594bd7c72f6577161d2e386ad0d01f460dfae3e6342e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:71ffb7c1212043753c975a41a0dc373f0d72d1b6df6107261c32e7685b08116b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def SnapshotTree.foldSnaps (tree : SnapshotTree) (init : α)
    (f : SnapshotTask SnapshotTree → α → ServerTask (α × foldSnaps.Control)) : ServerTask α :=
  let t := traverseTree init tree
  t.mapCheap (·.1)
where
  traverseTree (acc : α) (tree : SnapshotTree) : ServerTask (α × Bool) :=
    traverseChildren acc tree.children.toList

  traverseChildren (acc : α) : List (SnapshotTask SnapshotTree) → ServerTask (α × Bool)
    | [] => .pure (acc, false)
    | child::otherChildren =>
      f child acc |>.bindCheap fun (acc, control) => Id.run do
        let .proceed foldChildrenOfChild := control
          | return .pure (acc, true)
        if ! foldChildrenOfChild then
          return traverseChildren acc otherChildren
        let subtreeTask := child.task.asServerTask.bindCheap fun tree =>
          traverseTree acc tree
        return subtreeTask.bindCheap fun (acc, done) => Id.run do
          if done then
            return .pure (acc, done)
          return traverseChildren acc otherChildren

/--
Finds the first (in pre-order) snapshot task in `tree` that contains `hoverPos`
(including whitespace) and which contains an info tree, and then returns that info tree,
waiting for any snapshot tasks on the way.
Subtrees that do not contain the position are skipped without forcing their tasks.
If the caller of this function needs the correct snapshot when the cursor is on whitespace,
then this function is likely the wrong one to call, as it simply yields the first snapshot
that contains `hoverPos` in its whitespace, which is not necessarily the correct one
(e.g. it may be indentation-sensitive).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Requests/Variant064d31bc02bec694f7f594bd7c72f6577161d2e386ad0d01f460dfae3e6342e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Requests/Variant064d31bc02bec694f7f594bd7c72f6577161d2e386ad0d01f460dfae3e6342e2.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3d3567550c36bc17864ff884e4a4e620ae5a15d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
