# SnapshotTree.foldSnaps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0c0ad02c21f09f86eb0c9707691925058ea1b0277d529f02c976ded5ed4f7638",
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
  "slug": "snapshottree-foldsnaps--e1dcb3a0f7d594e808d61dc9",
  "source": {
    "blob": "ac4760b9f6d58a14edcc06cff2ffa079ca067d59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 67,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Requests/Variant4588f572ec38640c742a49473bd0dcaffc9c8a4b7364b43062e28e2193ccba1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e1dcb3a0f7d594e808d61dc97992740561c0ed4ecc718778102ee98e3b841361",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Requests/Variant4588f572ec38640c742a49473bd0dcaffc9c8a4b7364b43062e28e2193ccba1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0c0ad02c21f09f86eb0c9707691925058ea1b0277d529f02c976ded5ed4f7638`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–99.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Requests/Variant4588f572ec38640c742a49473bd0dcaffc9c8a4b7364b43062e28e2193ccba1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Requests/Variant4588f572ec38640c742a49473bd0dcaffc9c8a4b7364b43062e28e2193ccba1f.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac4760b9f6d58a14edcc06cff2ffa079ca067d59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
