# findCompletionInfosAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:418ff3a910565af1c6632f657f0096c1ffd68c122140b7dfc5f4b225232f5cff",
  "kind": "def",
  "lexical_name": "findCompletionInfosAt",
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
  "slug": "findcompletioninfosat--2943c45ae7a1f2387cc65514",
  "source": {
    "blob": "f896dae3f9540085503da85400ee46adf28fba5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 50,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionInfoSelection/Variantdaa6bddf7ff4d3e9657c7784c8b6a28f20b2a0bc91ee8e813cb065c6b8614d15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2943c45ae7a1f2387cc65514b1409845f8269b4b1fc35ffb33b168b93b9d695d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionInfoSelection/Variantdaa6bddf7ff4d3e9657c7784c8b6a28f20b2a0bc91ee8e813cb065c6b8614d15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:418ff3a910565af1c6632f657f0096c1ffd68c122140b7dfc5f4b225232f5cff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def findCompletionInfosAt
    (fileMap  : FileMap)
    (hoverPos : String.Pos.Raw)
    (cmdStx   : Syntax)
    (infoTree : InfoTree)
    : Array ContextualizedCompletionInfo × Bool := Id.run do
  let ⟨hoverLine, _⟩ := fileMap.toPosition hoverPos
  let mut isComplete := true
  let mut completionInfoCandidates := infoTree.foldInfo (init := #[]) (go hoverLine)
  if completionInfoCandidates.isEmpty then
    completionInfoCandidates := findSyntheticCompletions fileMap hoverPos cmdStx infoTree
    isComplete := false
  return (filterDuplicateCompletionInfos completionInfoCandidates, isComplete)
where
  go
      (hoverLine : Nat)
      (ctx       : ContextInfo)
      (info      : Info)
      (best     : Array ContextualizedCompletionInfo)
      : Array ContextualizedCompletionInfo := Id.run do
    let .ofCompletionInfo completionInfo := info
      | return best
    if ! containsHoverPos completionInfo then
      return best
    let headPos := info.pos?.get!
    let tailPos := info.tailPos?.get!
    let hoverInfo :=
      if hoverPos < tailPos then
        HoverInfo.inside (headPos.byteDistance hoverPos)
      else
        HoverInfo.after
    let ⟨headPosLine, _⟩ := fileMap.toPosition headPos
    let ⟨tailPosLine, _⟩ := fileMap.toPosition info.tailPos?.get!
    if headPosLine != hoverLine || headPosLine != tailPosLine then
      return best
    return best.push { hoverInfo, ctx, info := completionInfo }
  containsHoverPos (i : CompletionInfo) : Bool := Id.run do
    if let .option stx := i then
      if stx[1].isMissing then
        let some range := stx.getRangeWithTrailing? (canonicalOnly := true)
          | return false
        return range.contains hoverPos (includeStop := false)
    if let .endSection stx none .. := i then
      let some range := stx.getRangeWithTrailing? (canonicalOnly := true)
        | return false
      return range.contains hoverPos (includeStop := false)
    return Info.ofCompletionInfo i |>.occursInOrOnBoundary hoverPos

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionInfoSelection/Variantdaa6bddf7ff4d3e9657c7784c8b6a28f20b2a0bc91ee8e813cb065c6b8614d15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionInfoSelection/Variantdaa6bddf7ff4d3e9657c7784c8b6a28f20b2a0bc91ee8e813cb065c6b8614d15.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f896dae3f9540085503da85400ee46adf28fba5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
