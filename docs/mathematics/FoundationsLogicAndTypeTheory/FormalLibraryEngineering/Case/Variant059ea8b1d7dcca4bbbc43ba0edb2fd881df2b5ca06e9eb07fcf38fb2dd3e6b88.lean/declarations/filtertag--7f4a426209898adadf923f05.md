# filterTag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:35faa9f650ba628703e1cc3f5ba349e59019eb0a19137fee1f26a68073563ddb",
  "kind": "def",
  "lexical_name": "filterTag",
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
  "slug": "filtertag--7f4a426209898adadf923f05",
  "source": {
    "blob": "028151d534c4251421397ff973740b59d5ad0f21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 109,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Case/Variant059ea8b1d7dcca4bbbc43ba0edb2fd881df2b5ca06e9eb07fcf38fb2dd3e6b88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7f4a426209898adadf923f05e2eed3e1515adb9739f0010f887cf1f4d789dc1b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Case/Variant059ea8b1d7dcca4bbbc43ba0edb2fd881df2b5ca06e9eb07fcf38fb2dd3e6b88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:35faa9f650ba628703e1cc3f5ba349e59019eb0a19137fee1f26a68073563ddb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def filterTag (mvarIds : List MVarId) (tag : Name) : TacticM (List MVarId) := do
  let gs ← mvarIds.toArray.filterMapM fun mvarId => do
    let userName := (← mvarId.getDecl).userName
    if tag == userName then
      return some (0, mvarId)
    else if tag.isSuffixOf userName then
      return some (1, mvarId)
    else if tag.isPrefixOf userName then
      return some (2, mvarId)
    else
      return none
  -- Insertion sort is a stable sort:
  let gs := gs.insertionSort (·.1 < ·.1)
  return gs |>.map (·.2) |>.toList

/-- Find the first goal among those matching `tag` whose type unifies with `patt`.
The `renameI` array consists of names to use to rename inaccessibles.
The `patt` term is elaborated in the context where the inaccessibles have been renamed.

Returns the found goal, goals caused by elaborating `patt`, and the remaining goals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Case/Variant059ea8b1d7dcca4bbbc43ba0edb2fd881df2b5ca06e9eb07fcf38fb2dd3e6b88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Case/Variant059ea8b1d7dcca4bbbc43ba0edb2fd881df2b5ca06e9eb07fcf38fb2dd3e6b88.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `028151d534c4251421397ff973740b59d5ad0f21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
