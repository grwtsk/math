# SnapshotTree.findInfoTreeAtPos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:17fd77f70a1a87d751bbf1d3125ba049fb01ecd5a116ebd7991a349d4bfdb636",
  "kind": "def",
  "lexical_name": "SnapshotTree.findInfoTreeAtPos",
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
  "slug": "snapshottree-findinfotreeatpos--eaaafa112b5a6becbb8ed01b",
  "source": {
    "blob": "c3d3567550c36bc17864ff884e4a4e620ae5a15d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 108,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Requests/Variant064d31bc02bec694f7f594bd7c72f6577161d2e386ad0d01f460dfae3e6342e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eaaafa112b5a6becbb8ed01b4080933d1a5ca81ae1aca2ce8c044de0f58a56c4",
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

Occurrence: `declaration:17fd77f70a1a87d751bbf1d3125ba049fb01ecd5a116ebd7991a349d4bfdb636`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def SnapshotTree.findInfoTreeAtPos (text : FileMap) (tree : SnapshotTree)
    (hoverPos : String.Pos.Raw) (includeStop : Bool) : ServerTask (Option Elab.InfoTree) :=
  tree.foldSnaps (init := none) fun snap _ => Id.run do
    let some stx := snap.stx?
      -- One of the invariants of the snapshot tree is that `stx? = none` implies that
      -- this entire subtree has no relevant `InfoTree` information, so we can safely discard it
      -- here.
      | return .pure (none, .proceed (foldChildren := false))
    let some range := stx.getRangeWithTrailing? (canonicalOnly := true)
      -- In the worst case, the `infoTreeSnap` of the `CommandParsedSnap` will have canonical
      -- syntax that we can use here, so ignoring snapshots with non-canonical syntax can only
      -- at worst break incrementality in request handlers.
      | return .pure (none, .proceed (foldChildren := true))
    if ! text.rangeContainsHoverPos range hoverPos includeStop then
      -- Subtrees of the snapshot tree always have syntax ranges that are contained in those of
      -- their parents, so we can terminate early here.
      return .pure (none, .proceed (foldChildren := false))
    return snap.task.asServerTask.mapCheap fun tree => Id.run do
      let some infoTree := tree.element.infoTree?
        | return (none, .proceed (foldChildren := true))
      return (infoTree, .done)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Requests/Variant064d31bc02bec694f7f594bd7c72f6577161d2e386ad0d01f460dfae3e6342e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Requests/Variant064d31bc02bec694f7f594bd7c72f6577161d2e386ad0d01f460dfae3e6342e2.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3d3567550c36bc17864ff884e4a4e620ae5a15d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
